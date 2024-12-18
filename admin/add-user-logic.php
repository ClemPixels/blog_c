<?php
require 'config/database.php';

// get  form data if submit button was clicked
if(isset($_POST['submit'])) {
    $firstname = filter_var($_POST['firstname'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $lastname = filter_var($_POST['lastname'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $username = filter_var($_POST['username'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $createpassword = filter_var($_POST['createpassword'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $confirmpassword = filter_var($_POST['confirmpassword'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $is_admin = filter_var($_POST['userrole'], FILTER_SANITIZE_NUMBER_INT);
    $avatar = $_FILES['avatar'];

    // validate input values
    if (!$firstname) {
        $_SESSION['add-user'] = "Please enter your First Name";
    } elseif (!$lastname) {
        $_SESSION['add-user'] = "Please enter your Last Name";
    } elseif (!$username) {
        $_SESSION['add-user'] = "Please enter your username";
    } elseif (!$email) {
        $_SESSION['add-user'] = "Please enter a valid email address";
    } elseif (strlen($createpassword) < 8 || strlen($confirmpassword) < 8) {
        $_SESSION['add-user'] = "Password must be at least 8 characters";
    } elseif (!$avatar['name']) {
        $_SESSION['add-user'] = "Please select an avatar";
    } else {
        // check if passwords don't match
        if($createpassword !== $confirmpassword) {
            $_SESSION['add-user'] = "Passwords do not match";
        } else {
            // hash password
            $hashed_password = password_hash($createpassword, PASSWORD_DEFAULT);

            // check if username or email already exists
            $user_check_query = "SELECT * FROM users WHERE  username = '$username' OR email = '$email'";
            $user_check_result = mysqli_query($connection, $user_check_query);
            if(mysqli_num_rows($user_check_result) > 0) {
                $_SESSION['add-user'] = "Username or Email already exist";
            } else {
                // Work on avatar
                // rename avatar
                $time = time();  // make each image name unique using current timestamp
                $avatar_name = $time . $avatar['name'];
                $avatar_tmp_name = $avatar['tmp_name'];
                $avatar_destination_path = '../images/' . $avatar_name;

                // make sure file is an image
                $allowed_files = ['png', 'jpg', 'jpeg'];
                $extension = explode('.', $avatar_name);
                $extension = end($extension);
                if(in_array($extension, $allowed_files)) {
                    // make sure image is not too large (imb+)
                    if($avatar['size'] < 1000000) {
                        // upload avatar
                        move_uploaded_file($avatar_tmp_name, $avatar_destination_path);
                    } else {
                        $_SESSION['add-user'] = "Avatar file is too large. Should be less than 1mb";
                    }
                } else {
                    $_SESSION['add-user'] = "File should be a PNG, JPG, or JPEG";
                }

            }
        }
    }

    // redirect to signup page if there was a problem
    if(isset($_SESSION['add-user'])) {
        // pass form data back to signup page
        $_SESSION['add-user-data'] = $_POST;   
        header('Location:'. ROOT_URL.'admin/add-user.php');
        die();
    } else {
        // insert new users into database
        $insert_user_query = "INSERT INTO users (firstname, lastname, username, email, password, avatar, is_admin) VALUES ('$firstname', '$lastname', '$username', '$email', '$hashed_password', '$avatar_name', '$is_admin')";
        $insert_user_result = mysqli_query($connection, $insert_user_query);

        if(!mysqli_errno($connection)) {
            // redirect to login page with success message
            $_SESSION['add-user-success'] = "New User, $firstname $lastname added successfully";
            header('Location:'. ROOT_URL.'admin/manage-users.php');
            die();
        }
    }

} else {
    // if wasn't clicked then redirect to signup page
    header('Location:' . ROOT_URL . 'admin/add-user.php');
    die();
}