-- This is the data structure of project Amazon_webapp
-- Author: Alex Shi
-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2020 at 06:39 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `href` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, '../../assets/img/carousel1.jpeg', '', ''),
(2, '../../assets/img/carousel2.jpeg', '', ''),
(3, '../../assets/img/carousel3.jpeg', '', ''),
(4, '../../assets/img/carousel4.jpeg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `user_id`, `product_id`, `count`) VALUES
(5, 50, 6, 2),
(6, 50, 2, 2),
(7, 50, 3, 1),
(8, 51, 1, 1),
(9, 51, 5, 1),
(30, 54, 1, 3),
(32, 54, 6, 1),
(36, 58, 1, 3),
(37, 58, 4, 2),
(39, 58, 2, 1),
(40, 57, 1, 4),
(50, 59, 1, 6),
(51, 59, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pfamily` varchar(32) NOT NULL,
  `vendor` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `details` text NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `seller` varchar(64) NOT NULL,
  `pstar` decimal(2,1) NOT NULL DEFAULT 5.0,
  `is_prime` tinyint(1) NOT NULL DEFAULT 0,
  `pqty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pfamily`, `vendor`, `title`, `details`, `price`, `seller`, `pstar`, `is_prime`, `pqty`) VALUES
(1, 'Nintendo Switch', 'Nintendo', 'Animal Crossing New Horizons', 'If the hustle and bustle of modern life\'s got you down, Tom Nook has a new business venture up his sleeve that he knows you\'ll adore: the Nook Inc. Deserted Island Getaway Package! Sure, you\'ve crossed paths with colourful characters near and far. Had a grand time as one of the city folk. May\'ve even turned over a new leaf and dedicated yourself to public service! But deep down, isn\'t there a part of you that longs for...freedom? Then perhaps a long walk on the beach of a deserted island, where a rich wealth of untouched nature awaits, is just what the doctor ordered! Peaceful creativity and charm await as you roll up your sleeves and make your new life whatever you want it to be. Collect resources and craft everything from creature comforts to handy tools. Embrace your green thumb as you interact with flowers and trees in new ways. Set up a homestead where the rules of what goes indoors and out no longer apply. Make friends with new arrivals, enjoy the seasons, pole-vault across rivers as you explore, and more! This new addition to the Animal Crossing series launches March 20, 2020, exclusively for the Nintendo Switch system. FEATURES: Customize your character and home, and decorate the landscape (with furniture, if you like!), as you create your very own island paradise. Experience a robust new crafting system-collect materials to construct everything from furniture to tools! Enjoy a variety of relaxing activities like gardening, fishing, decorating, interacting with charming NPCs, and more, as classic Animal Crossing experiences come to life in fun new ways within the deserted-island setting. Up to eight players can reside on an island; four residents of the same island can play together simultaneously on a single system. Eight players can play together on one player\'s island via online multiplayer or local wireless', '69.00', 'Amazon AU', '5.0', 1, 20),
(2, 'Nintendo Switch', 'Nintendo', 'Xenoblade Chronicles 2', 'As the giant beasts march toward death, the last hope is a scavenger named Rex—and Pyra, a living weapon known as a Blade. Can you find the fabled paradise she calls home? Command a group of Blades and lead them to countless strategic victories before the world ends.', '80.94', 'Amazon AU', '4.5', 1, 1),
(3, 'Tripods & Monopods', 'NEEWER', 'Neewer Portable Aluminum Alloy Camera 2-in-1 Tripod Monopod Max.', 'Light-weight Practical 2-in-1 Tripod. Can be converted to a monopod in seconds: Loosen the knob and Pull out the center column that the center column can be used as a monopod. Adjustable 4-section Legs; Weighs only 4 pounds/1.8 kilograms, Light-weight but durable; Comes with a storage bag, easy for outdoor photographers to carry and transport.\r\n3-Way Swivel Pan Head with Quick Release Plate: 360 degree panning; Allows you to take photos at any angle with horizontally and vertically; Accurate panoramas can be easily orchestrated', '45.99', 'Neewer Global AU', '4.5', 0, 0),
(4, 'Nintendo Switch', 'Nintendo', 'Luigis Mansion 3', 'Luigi embarks on a dream vacation with Mario and friends upon receiving an invitation to a luxurious hotel. However, his dream quickly becomes a nightmare when King Boo reveals everything had been a ploy to capture Mario and friends. With the assistance of Professor E. Gadd once again, the reluctant and cowardly hero Luigi traverses up and down treacherous doors of the now-ominous hotel on a quest to save them. Wield the upgraded Poltergust G-00 to slam and blow away the ghosts\' defences, or summon Gooigi, an all-green doppelganger that can help Luigi overcome obstacles he can\'t get past alone. Interchange between Luigi and Gooigi as one player, or grab a friend and control one each. For more frenetic multiplayer action, race the timer to clear various objectives on a series of doors in ScareScraper mode. ScareScraper mode can be played online* or locally with up to eight players on four Nintendo Switch systems (additional games required; sold separately). Features: He may still be cowardly, but Luigi has more tools and abilities at his disposal than ever before. Master Luigi\'s new powerful moves of Slam, Suction Shot and Burst Team up with Professor E. Gadd\'s latest invention, Gooigi, an all-green doppelganger able to slip through tight spaces, walk on spikes, and otherwise help Luigi overcome obstacles he can\'t get past alone Interchange between Luigi and Gooigi as one player, or grab a friend and control one each at the same time Explore the Last Resort, ascending through its differently themed doors full of quirky contraptions and haunting enemies Race the timer with up to 8 players** to clear objectives on a series of doors in the ScareScraper', '69.00', 'Amazon AU', '4.5', 1, 100),
(5, 'Nintendo Switch', 'Controller Gear', 'Controller Gear Authentic and Officially Licensed Animal Crossing: New Horizons', 'Join your favorite, familiar faces over at nook Inc. On their next business Venture! Our Officially Licensed Nintendo Switch skins are a great way to customize, protect and enhance your Nintendo Switch system. For the ultimate Nintendo fan, skin your Nintendo Switch today to celebrate your favorite video game. Includes 4 Premium 3M vinyl sheets and one screen protector, Console sold separately.', '38.79', 'Amazon US', '4.5', 1, 20),
(6, 'PlayStation 4', 'Rockstar Games', 'Grand Theft Auto 5 Premium Edition', 'Grand Theft Auto V: Premium Online Edition Includes Grand Theft Auto V, Grand Theft Auto Online and the Criminal Enterprise Starter Pack Grand Theft Auto V When a young street hustler, a retired bank robber and a terrifying psychopath land themselves in trouble, they must pull off a series of dangerous heists to survive in a city in which they can trust nobody, least of all each other. The Criminal Enterprise Starter Pack The fastest way to jumpstart your ciminal empire in Grand Theft Auto Online. Launch Your Criminal Empire Launch business ventures from your Maze Bank West Executive Office, research powerful weapons technology from your underground Gunrunning Bunker and use your Counterfeit Cash Factory to start a lucrative counterfeiting operation. A fleet of powerful vehicles Tear through the streets with a range of 10 high performance vehicles including a Supercar, Motorcycles, the weaponized Dune FAV, a Helicopter, a Rally Car and more. You\'ll also get properties including a 10 car garage to store your growing fleet. Weapons, Clothing & Tattoos You\'ll also get access to the Compact Grenade Launcher, Marksman Rifle and Compact Rifle along with Stunt Racing Outfits, Biker Tattoos and more PLUS GTA $1,000,000 bonus cash to spend in Grand Theft Auto Online (in-game currency only).', '57.80', 'BestwayAU', '4.5', 0, 20),
(7, 'PlayStation 4', 'Rockstar Games', 'Red Dead Redemption II', 'America, 1899. The end of the wild west era has begun as lawmen hunt down the last remaining outlaw gangs. Those who will not surrender or succumb are killed. After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him. From the creators of Grand Theft Auto V and Red Dead Redemption, Red Dead Redemption 2 is an epic tale of life in America at the dawn of the modern age.', '89.95', 'City Of Games', '4.5', 0, 10),
(8, 'PlayStation 4', '2K GMAES', 'NBA 2K20', 'Digital Content: 5,000 Virtual Currency 5x MyCAREER Skills Boosts 1x MyCAREER Outfit 5,000 MyTEAM Points 10x MyTEAM League Packs 5x MyTEAM Heat Check Packs NBA 2K has evolved into much more than a basketball simulation. 2K continues to redefine what\'s possible in sports gaming with NBA 2K20, featuring best in class graphics & gameplay, ground breaking game modes, and unparalleled player control and customization. Plus, with its immersive open-world Neighbourhood, NBA 2K20 is a platform for gamers and ballers to come together and create what\'s next in basketball culture.', '49.00', 'Amazon AU', '4.0', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `pidd` int(11) NOT NULL,
  `img1` varchar(128) NOT NULL,
  `img2` varchar(128) NOT NULL,
  `img3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`pidd`, `img1`, `img2`, `img3`) VALUES
(1, '../../assets/productsImg/animalcrossing_1.jpeg', '../../assets/productsImg/animalcrossing_2.jpeg', '../../assets/productsImg/animalcrossing_3.jpeg'),
(2, '../../assets/productsImg/xenoblade2_1.jpeg', '../../assets/productsImg/xenoblade2_2.jpeg', '../../assets/productsImg/xenoblade2_3.jpeg'),
(3, '../../assets/productsImg/tripod_1.jpeg', '../../assets/productsImg/tripod_2.jpeg', '../../assets/productsImg/tripod_3.jpeg'),
(4, '../../assets/productsImg/luigi3_1.jpeg', '../../assets/productsImg/luigi3_2.jpeg', '../../assets/productsImg/luigi3_3.jpeg'),
(5, '../../assets/productsImg/case_1.jpeg', '../../assets/productsImg/case_2.jpeg', '../../assets/productsImg/case_3.jpeg'),
(6, '../../assets/productsImg/gta5_1.jpeg', '../../assets/productsImg/gta5_2.jpeg', '../../assets/productsImg/gta5_3.jpeg'),
(7, '../../assets/productsImg/redDead2_1.jpeg', '../../assets/productsImg/redDead2_2.jpeg', '../../assets/productsImg/redDead2_3.jpeg'),
(8, '../../assets/productsImg/nba2k20_1.jpeg', '../../assets/productsImg/nba2k20_2.jpeg', '../../assets/productsImg/nba2k20_3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `star` decimal(2,1) NOT NULL,
  `rtitle` varchar(256) NOT NULL,
  `review` text NOT NULL,
  `verifiedPurchase` tinyint(1) NOT NULL DEFAULT 1,
  `rHelpfulNum` int(64) NOT NULL DEFAULT 0,
  `isHelpClicked` tinyint(1) NOT NULL DEFAULT 0,
  `isReported` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`pid`, `rid`, `uid`, `timestamp`, `star`, `rtitle`, `review`, `verifiedPurchase`, `rHelpfulNum`, `isHelpClicked`, `isReported`) VALUES
(1, 1, 4, '2020-05-13 06:20:15', '5.0', 'Fun, relaxed, chill', 'I bought this game for my partner, she loves it! She\'s sunk dozens of hours into this game and it\'s only been out for a few weeks. Heaps of new features compared to the older versions. Lots of little secrets, I would recommend watching a few guides on YouTube as that will improve your game experience drastically.', 1, 18, 0, 0),
(1, 2, 7, '2020-05-13 06:20:15', '5.0', 'A chillax and enjoyable game - no regrets - just destress!', 'If you enjoy playing something that\'s relaxing and at a pace. This is the game for you. Very relaxing and enjoyable to just be on an island and chill and do some stuff. ', 1, 18, 0, 0),
(1, 3, 6, '2020-05-13 06:20:15', '5.0', 'Fun game and perfect delivery', 'Amazing game as expected. Brings back memories and nostalgia from previous versions. What’s more is that the game got delivered a day prior to release day, at the cheapest price online, no delivery fee (Amazon prime), and in sustainable packaging. ', 1, 18, 0, 0),
(2, 4, 5, '2020-05-13 06:20:15', '4.0', 'Not for me', 'A lot of people like like this game but for me camera don’t works well and battle feels chaotic', 1, 18, 0, 0),
(2, 5, 6, '2020-05-13 06:20:15', '5.0', 'Five Stars', '150hours plus game rice story line,unique and enjoyable battle system.', 1, 18, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `receiver_address`
--

CREATE TABLE `receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `address` varchar(128) NOT NULL,
  `city` varchar(16) NOT NULL,
  `state` varchar(16) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `postcode` char(8) NOT NULL,
  `is_default` tinyint(4) NOT NULL,
  `tag` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `upassword` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '../../assets/avatar/avatarDefault.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `upassword`, `email`, `gender`, `phone`, `nickname`, `avatar`) VALUES
(4, 'trevor', 'Aaaa1234', 'trevor@gmail.com', 1, '041234567', 'Trevor', '../../assets/avatar/trevor.jpeg'),
(5, 'michael', 'Aaaa1234', 'michael@gmail.com', 1, '0412345678', 'Michael', '../../assets/avatar/michael.jpeg'),
(6, 'franklin', 'Aaaa1234', 'franklin@gmail.com', 1, '0412345678', 'Franklin', '../../assets/avatar/franklin.jpeg'),
(7, 'Alex', 'Aaaa1234', 'alex@gmail.com', 1, '0412345678', 'Alex', '../../assets/avatar/avatarDefault.jpeg'),
(43, 'signin', 'sawi@qQ2', 'sad@qwe.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(44, '12412', '123908S8238fr', '123@123.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(45, '124123', '1239S23ed', 'sd123@123.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(46, '312314', '1239S92u', '21312@q1123.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(47, '12314', '123129sS', '123124@21312.qom', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(48, '12421', '123Sss123', '123123@3213.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(49, '1234', '123123SDd1', '123412@21312.qwe', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(50, 'alex1', 'Aaaa1234', 'aaa@aa.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(51, 'alex2', 'Aaaa1234', 'sjeu@qe.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(52, 'alex3', 'Aaaa1234', 'sad@qewq.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(53, 'alex4', 'Aaaa1234', 'alske@qq.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(54, 'alex5', 'Aaaa1234', 'sjej@wj.co', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(55, 'alexa', 'Aaaa1234', 'aaa@aa.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(56, 'alex6', 'Aaaa1234', 'alex@aa.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(57, 'alex9', 'Aaaa1234', 'aaa@aa.com', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(58, 'alex0', 'Aaaa1234', 'aaa@aa.aa', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg'),
(59, 'alex12', 'Aaaa1234', 'aaa@aa.aa', NULL, NULL, NULL, '../../assets/avatar/avatarDefault.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`pidd`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
