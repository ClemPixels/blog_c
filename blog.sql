-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 07:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(4, 'Art', '&quot;Art is life&quot;'),
(5, 'Science &amp; and Technology', 'I love \r\nScience is everything'),
(6, 'Uncategorized', 'This is the uncategorized category'),
(8, 'Anime, Manga', '&quot;Passion for animated characters&quot;'),
(9, 'Wild life', 'About wild life'),
(10, 'Travel', 'About travel'),
(12, 'Music', 'About entertainment'),
(13, 'Lifestyle', 'Its all about life redefined'),
(14, 'Food', 'Let&#039;s eat');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(5, 'The Rise of Street Art', 'In the 1980s and 1990s, street art began to gain recognition as a legitimate form of art. Artists like Keith Haring and Jean-Michel Basquiat became famous for their street art, and their work was exhibited in galleries and museums around the world.\r\n\r\n', '1734484024blog30.jpg', '2024-12-18 01:07:04', 4, 4, 0),
(6, 'Jollof rice ', 'Here are the steps to prepare delicious Jollof Rice:\r\n\r\n\r\nIngredients:\r\n\r\n\r\n- 1 cup of uncooked long-grain rice\r\n- 2 cups of water\r\n- 2 tablespoons of vegetable oil\r\n- 1 large onion, chopped\r\n- 2 cloves of garlic, minced\r\n- 1 teaspoon of grated ginger\r\n- 1 Scotch bonnet pepper, chopped (optional)\r\n- 1 teaspoon of ground cumin\r\n- 1 teaspoon of paprika\r\n- Salt and black pepper, to taste\r\n- 2 cups of tomato puree or crushed tomatoes\r\n- 2 tablespoons of tomato paste\r\n\r\n\r\nInstructions:\r\n\r\n\r\n1. Rinse the rice: Rinse the rice in a fine-mesh sieve until the water runs clear. Drain and set aside.\r\n2. Heat oil in a pot: Heat the oil in a large pot over medium heat.\r\n3. Saut&eacute; the onion: Add the chopped onion to the pot and saut&eacute; until it&#039;s translucent and starting to caramelize.\r\n4. Add garlic and ginger: Add the minced garlic and grated ginger to the pot and saut&eacute; for another minute.\r\n5. Add Scotch bonnet pepper (optional): If using Scotch bonnet pepper, add it to the pot and saut&eacute; for another minute.\r\n6. Add cumin, paprika, salt, and black pepper: Add the ground cumin, paprika, salt, and black pepper to the pot and stir well.\r\n7. Add tomato puree or crushed tomatoes: Add the tomato puree or crushed tomatoes to the pot and stir well.\r\n8. Add tomato paste: Add the tomato paste to the pot and stir well.\r\n9. Add water: Add the water to the pot and bring to a boil.\r\n10. Add rice: Add the rinsed rice to the pot and stir well.\r\n11. Reduce heat and cover: Reduce the heat to low and cover the pot with a tight-fitting lid.\r\n12. Simmer: Simmer the Jollof Rice for 20-25 minutes, or until the water has been absorbed and the rice is cooked.\r\n13. Fluff with a fork: Once the Jollof Rice is cooked, fluff it with a fork to separate the grains.\r\n14. Serve: Serve the Jollof Rice hot, garnished with chopped fresh herbs like parsley or cilantro, if desired.\r\n\r\n\r\nEnjoy your delicious Jollof Rice!', '1734484669blog25.jpg', '2024-12-18 01:17:49', 14, 4, 0),
(9, 'Breakthrough in Quantum Computing', 'In a groundbreaking achievement, Google has announced that it has achieved quantum supremacy, a milestone in the development of quantum computing. This breakthrough demonstrates the power of quantum computing and its potential to solve complex problems that are currently unsolvable with traditional computers.', '1734487672blog20.jpg', '2024-12-18 02:07:52', 5, 4, 0),
(10, 'Unleashing the Power of Jujutsu: A Deep Dive into the World of Jujutsu Kaisen', 'Jujutsu Kaisen, written and illustrated by Gege Akutami, has taken the world of anime and manga by storm. This dark fantasy series has captivated audiences with its unique blend of horror, action, and supernatural elements. In this blog post, we&#039;ll delve into the world of Jujutsu Kaisen and explore its fascinating characters, plot, and themes.\r\n\r\nThe Story So Far\r\n\r\n\r\nJujutsu Kaisen follows the story of Yuji Itadori, a high school student who becomes involved in a world of cursed spirits and jujutsu sorcerers. After swallowing the finger of Sukuna, the King of Curses, Yuji becomes the host of this powerful and malevolent entity. As Yuji navigates this new world, he must confront the darkness within himself and learn to control his newfound powers.\r\n', '1734487783blog22.jpg', '2024-12-18 02:09:43', 8, 13, 0),
(11, '10 Productivity Hacks to Help You Achieve Your Goals', 'Are you tired of feeling like you&#039;re not getting enough done in a day? Do you struggle to stay focused and motivated? You&#039;re not alone. Many of us face these challenges, but the good news is that there are many productivity hacks that can help.\r\n\r\n\r\nHere are 10 productivity hacks to help you achieve your goals:\r\n\r\n1. Set clear goals: Before you start your day, take a few minutes to set clear goals for what you want to achieve. This will help you stay focused and motivated.\r\n\r\n\r\n1. Use a task list: Write down all the tasks you need to complete and check them off as you finish them. This will help you stay organized and see your progress.\r\n\r\n\r\n1. Prioritize your tasks: Identify the most important tasks and tackle them first. This will help you make the most of your time and energy.\r\n\r\n\r\n1. Use the Pomodoro Technique: Work in focused 25-minute increments, followed by a 5-minute break. This will help you stay focused and avoid burnout.\r\n\r\n\r\n1. Eliminate distractions: Identify the things that distract you the most, such as social media or email, and eliminate them while you work.\r\n\r\n1. Use technology to your advantage: There are many productivity apps and tools available that can help you stay organized and focused.\r\n\r\n\r\n1. Take breaks: Taking regular breaks can help you stay refreshed and focused.\r\n\r\n\r\n1. Stay hydrated and energized: Drink plenty of water and eat nutritious food to help you stay energized and focused.\r\n\r\n\r\n1. Get enough sleep: Getting enough sleep is essential for productivity and focus.\r\n\r\n\r\n1. Review and adjust: At the end of each day, week, or month, take a few minutes to review your progress and adjust your strategy as needed.\r\n\r\n\r\nBy incorporating these productivity hacks into your daily routine, you can achieve your goals and live a more fulfilling life.\r\n\r\n\r\n', '1734487925blog59.jpg', '2024-12-18 02:12:05', 10, 13, 0),
(12, 'The Power of Music: How it Impacts Our Emotions and Lives', 'Music has been a universal language, capable of evoking emotions and bringing people together across cultures and generations. From the soothing sounds of classical music to the energetic beats of hip-hop, music has the power to impact our emotions and lives in profound ways.\r\n\r\n\r\nThe Emotional Impact of Music\r\n\r\n\r\nMusic has the ability to evoke strong emotions, from joy and excitement to sadness and nostalgia. Research has shown that listening to music can stimulate the release of dopamine, a neurotransmitter associated with pleasure and reward. This is why music is often used as a form of therapy, helping people to manage stress, anxiety, and depression.\r\n\r\n\r\nThe Role of Music in Our Lives\r\n\r\n\r\nMusic plays a significant role in our lives, from providing a soundtrack for our daily routines to serving as a source of comfort and inspiration. Many people use music as a way to express themselves, whether through playing an instrument, singing, or dancing. Music also has the power to bring people together, creating a sense of community and belonging.\r\n\r\n\r\nThe Benefits of Listening to Music\r\n\r\n\r\nListening to music has numerous benefits, including:\r\n\r\n\r\n- Reducing stress and anxiety\r\n- Improving mood and cognitive function\r\n- Boosting creativity and productivity\r\n- Providing a sense of comfort and relaxation\r\n- Creating a sense of community and belonging\r\n\r\n\r\nConclusion\r\n\r\n\r\nMusic is a powerful force that has the ability to impact our emotions and lives in profound ways. Whether you&#039;re a music lover, a musician, or simply someone who appreciates the beauty of music, there&#039;s no denying the significant role that music plays in our lives.\r\n\r\n\r\nTags: Music, Emotions, Lifestyle, Benefits of Music\r\n\r\n\r\nMeta Description: Discover the power of music and how it impacts our emotions and lives. Learn about the benefits of listening to music and how it can improve our mood, cognitive function, and overall well-being.', '1734495255blog38.jpg', '2024-12-18 04:14:15', 12, 14, 0),
(13, 'The Majestic Beauty of Africa&#039;s Big Five: A Wildlife Adventure', 'Africa&#039;s Big Five - lion, leopard, rhinoceros, elephant, and Cape buffalo - are some of the most iconic and awe-inspiring animals in the world. A wildlife adventure to see these magnificent creatures in their natural habitat is a dream come true for many.\r\n\r\n\r\nThe Lion: The King of the Savannah\r\n\r\n\r\nThe lion is one of the most recognizable animals in the world, with its majestic mane and powerful roar. These social animals live in prides, which are typically made up of several females, their cubs, and one or more males.\r\n\r\n\r\nThe Leopard: The Elusive Hunter\r\n\r\n\r\nThe leopard is a sleek and agile hunter, with a beautiful coat and piercing eyes. These solitary animals are nocturnal, and are known for their incredible climbing abilities.\r\n\r\n\r\nThe Rhinoceros: The Armored Giant\r\n\r\n\r\nThe rhinoceros is one of the most iconic animals in Africa, with its distinctive horns and armored hide. These herbivores are found in grasslands and savannas, and are known for their aggressive behavior when threatened.\r\n\r\n\r\nThe Elephant: The Gentle Giant\r\n\r\n\r\nThe elephant is one of the largest land animals on Earth, with a highly developed brain and a strong social bond. These herbivores are found in savannas and forests, and are known for their incredible memory and gentle nature.\r\n\r\n\r\nThe Cape Buffalo: The Fearsome Herbivore\r\n\r\n\r\nThe Cape buffalo is a large and powerful herbivore, with a distinctive set of horns and a fierce reputation. These animals are found in grasslands and savannas, and are known for their aggressive behavior when threatened.\r\n\r\n\r\nConservation Efforts\r\n\r\n\r\nMany organizations and conservation efforts are working to protect Africa&#039;s Big Five and their habitats. These efforts include anti-poaching initiatives, habitat conservation, and education and outreach programs.\r\n\r\n\r\nConclusion\r\n\r\n\r\nAfrica&#039;s Big Five are some of the most incredible animals on the planet, and a wildlife adventure to see them in their natural habitat is an experience you will never forget. By supporting conservation efforts and protecting these amazing animals and their habitats, we can help ensure that they continue to thrive for generations to come.\r\n\r\n\r\nTags: Wildlife, Conservation, Africa, Big Five, Lion, Leopard, Rhinoceros, Elephant, Cape Buffalo\r\n\r\n\r\nMeta Description: Embark on a wildlife adventure to see Africa&#039;s Big Five - lion, leopard, rhinoceros, elephant, and Cape buffalo - in their natural habitat. Learn about conservation efforts and how you can help protect these incredible animals.', '1734495391blog47.jpg', '2024-12-18 04:16:31', 9, 14, 0),
(14, '10 Simple Ways to Improve Your Mental Health and Wellbeing', 'Taking care of our mental health and wellbeing is essential for living a happy and fulfilling life. However, with the demands of modern life, it can be easy to neglect our mental health. In this blog post, we&#039;ll explore 10 simple ways to improve your mental health and wellbeing.\r\n\r\n\r\n1. Practice Mindfulness\r\n\r\n\r\nMindfulness is the practice of being present in the moment and paying attention to your thoughts and feelings. You can practice mindfulness through meditation, deep breathing, or simply paying attention to your senses.\r\n\r\n\r\n1. Connect with Nature\r\n\r\n\r\nSpending time in nature can have a calming effect on the mind and body. Take a walk in a park, go for a hike, or simply sit outside and enjoy the fresh air.\r\n\r\n\r\n1. Exercise Regularly\r\n\r\n\r\nExercise is a great way to improve your mental health and wellbeing. It can help reduce stress and anxiety, improve your mood, and increase your energy levels.\r\n\r\n\r\n1. Get Enough Sleep\r\n\r\n\r\nGetting enough sleep is essential for maintaining good mental health. Aim for 7-8 hours of sleep per night and establish a consistent sleep routine.\r\n\r\n\r\n1. Eat a Healthy Diet\r\n\r\n\r\nEating a healthy diet can help improve your mental health and wellbeing. Focus on eating plenty of fruits, vegetables, whole grains, and lean proteins.\r\n\r\n\r\n1. Practice Gratitude\r\n\r\n\r\nPracticing gratitude can help shift your focus away from negative thoughts and cultivate a more positive mindset. Take a few minutes each day to write down three things you&#039;re grateful for.\r\n\r\n\r\n1. Connect with Others\r\n\r\n\r\nConnecting with others is essential for maintaining good mental health. Make time for social activities, join a club or group that interests you, or volunteer in your community.\r\n\r\n\r\n1. Take Breaks and Practice Self-Care\r\n\r\n\r\nTaking breaks and practicing self-care is essential for maintaining good mental health. Take a few minutes each day to do something you enjoy, such as reading a book, taking a bath, or practicing yoga.\r\n\r\n\r\n1. Challenge Negative Thoughts\r\n\r\n\r\nChallenging negative thoughts can help improve your mental health and wellbeing. When you notice negative thoughts, try to reframe them in a more positive light.\r\n\r\n\r\n1. Seek Professional Help\r\n\r\n\r\nIf you&#039;re struggling with your mental health, don&#039;t be afraid to seek professional help. Talk to a therapist, counselor, or psychologist who can provide you with support and guidance.\r\n\r\n\r\nConclusion:\r\n\r\n\r\nTaking care of our mental health and wellbeing is essential for living a happy and fulfilling life. By incorporating these 10 simple tips into your daily routine, you can improve your mental health and wellbeing and live a more balanced and fulfilling life.\r\n\r\n\r\nTags: Mental Health, Wellbeing, Self-Care, Mindfulness, Gratitude\r\n\r\n\r\nMeta Description: Discover 10 simple ways to improve your mental health and wellbeing. From practicing mindfulness to seeking professional help, learn how to take care of your mental health and live a more balanced and fulfilling life.', '1734499866blog26.jpg', '2024-12-18 05:31:06', 13, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(4, 'Peter', 'Safo', 'lilpee', 'lilpee@gmail.com', '$2y$10$punaFW3qi.hdSI1JGI9L2utZrj0jnPGsj3RfwEWad.EZ6auLfTO06', '1734422701avatar2.jpg', 1),
(13, 'John', 'Washington', 'john', 'johnw@gmail.com', '$2y$10$Wm7LlYlEzv7Jz1gmti884.Sphiel/xfLvA8549LyDWVy/C4dlv/qG', '1734485357avatar3.jpg', 0),
(14, 'Mathew', 'Prempeh', 'Mathew', 'mathew23@gmail.com', '$2y$10$YiM89JwkWljyiVe4RIDH4edqQsaUiPX0C9m5nlv0HVZf1tWEETAbG', '1734495029avatar13.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
