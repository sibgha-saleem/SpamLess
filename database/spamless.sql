-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 08:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spamless`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_of_products` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `no_of_products`) VALUES
(1, 'Apparel Shops', 6),
(3, 'Mobile Repairing', 5),
(5, 'Malls and Recreational Spots', 7),
(6, 'Transport and Courier', 8),
(7, 'Cosmetics', 15),
(11, 'Restaurants', 8),
(14, 'Cars', 10),
(18, 'Electronics', 9),
(19, 'Shoe Shops', 5),
(20, 'Hotels', 7),
(22, 'Movies and TV shows', 15),
(24, 'Home Appliances', 10);

-- --------------------------------------------------------

--
-- Table structure for table `category_suggestion`
--

CREATE TABLE `category_suggestion` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `products_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `no_of_reviews` int(100) NOT NULL,
  `overall_rating` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `no_of_reviews`, `overall_rating`, `picture`) VALUES
(1, 'Limelight', 'Apparel Shops', 4, '4.5', ''),
(2, 'Breakout', 'Apparel Shops', 4, '3', ''),
(3, 'Khaddi', 'Apparel Shops', 4, '3.5', ''),
(4, 'Bonanza Satrangi', 'Apparel Shops', 4, '4.5', ''),
(5, 'Beechtree', 'Apparel Shops', 4, '4.5', ''),
(6, 'Outfitters', 'Apparel Shops', 4, '4.5', ''),
(7, 'Samsung', 'Electronics', 4, '4.5', ''),
(8, 'Xiaomi', 'Electronics', 4, '4.5', ''),
(9, 'Iphone', 'Electronics', 4, '4.5', ''),
(10, 'One Plus', 'Electronics', 4, '4.5', ''),
(11, 'Nikon', 'Electronics', 4, '4.5', ''),
(12, 'Canon', 'Electronics', 4, '4.5', ''),
(13, 'Apple', 'Electronics', 4, '4.5', ''),
(14, 'Samsung', 'Electronics', 4, '4.5', ''),
(15, 'Xiaomi', 'Electronics', 4, '4.5', ''),
(16, 'Giga Mall', 'Malls and Recreational Spots', 4, '4.5', ''),
(17, 'Amazon Mall', 'Malls and Recreational Spots', 4, '4.5', ''),
(18, 'Joyland ', 'Malls and Recreational Spots', 4, '4.5', ''),
(19, 'Jinnah Park', 'Malls and Recreational Spots', 4, '4.5', ''),
(20, 'Pakistan Monument', 'Malls and Recreational Spots', 4, '4.5', ''),
(21, 'Ayub Park', 'Malls and Recreational Spots', 4, '4.5', ''),
(22, 'Safa Gold Mall', 'Malls and Recreational Spots', 4, '4.5', ''),
(23, 'PIA', 'Transport and Courier', 4, '4.5', ''),
(24, 'Serene Air', 'Transport and Courier', 4, '4.5', ''),
(25, 'Airblue', 'Transport and Courier', 4, '4.5', ''),
(26, 'Skyways', 'Transport and Courier', 4, '4.5', ''),
(27, 'Daewoo', 'Transport and Courier', 4, '4.5', ''),
(28, 'Faisal Movers', 'Transport and Courier', 4, '4.5', ''),
(29, 'TCS', 'Transport and Courier', 4, '4.5', ''),
(30, 'Leopard Courier', 'Transport and Courier', 4, '4.5', ''),
(31, 'Borjan', 'Shoes Shop', 4, '4.5', ''),
(32, 'Stylo', 'Shoes Shop', 4, '4.5', ''),
(33, 'Nike', 'Shoes Shop', 4, '4.5', ''),
(34, 'Hush Puppies', 'Shoes Shop', 4, '4.5', ''),
(35, 'Bata', 'Shoes Shop', 4, '4.5', ''),
(36, 'Miss Rose Primer', 'Cosmetics', 4, '4.5', ''),
(37, 'Miss Rose Foundation', 'Cosmetics', 4, '4.5', ''),
(38, 'Miss Rose Lipstick', 'Cosmetics', 4, '4.5', ''),
(39, 'Rivaj UK Sunblock', 'Cosmetics', 4, '4.5', ''),
(40, 'Rivaj UK Facewash', 'Cosmetics', 4, '4.5', ''),
(41, 'Rivaj UK Serum', 'Cosmetics', 4, '4.5', ''),
(42, 'MAC Foundation', 'Cosmetics', 4, '4.5', ''),
(43, 'MAC Primer', 'Cosmetics', 4, '4.5', ''),
(44, 'MAC Liner', 'Cosmetics', 4, '4.5', ''),
(45, 'Golden Pearl Bleach', 'Cosmetics', 4, '4.5', ''),
(46, 'Golden Pearl Cleansing Milk', 'Cosmetics', 4, '4.5', ''),
(47, 'Golden Pearl Body Butter', 'Cosmetics', 4, '4.5', ''),
(48, 'St. Ives Scrub', 'Cosmetics', 4, '4.5', ''),
(49, 'St. Ives Body Wash', 'Cosmetics', 4, '4.5', ''),
(50, 'St. Ives Lip Scurb', 'Cosmetics', 4, '4.5', ''),
(51, 'Jik Jik', 'Restaurants', 4, '4.5', ''),
(52, 'Bar B.Q. Tonight', 'Restaurants', 4, '4.5', ''),
(53, 'KFC', 'Restaurants', 4, '4.5', ''),
(54, 'The Monal', 'Restaurants', 4, '4.5', ''),
(55, 'Tuscany Courtyard', 'Restaurants', 4, '4.5', ''),
(56, 'Cheezious', 'Restaurants', 4, '4.5', ''),
(57, 'Chaaye Khana', 'Restaurants', 4, '4.5', ''),
(58, 'Asian Wok', 'Restaurants', 4, '4.5', ''),
(59, 'Honda City', 'Cars', 4, '4.5', ''),
(60, 'Honda Civic', 'Cars', 4, '4.5', ''),
(61, 'Toyota Yaris', 'Cars', 4, '4.5', ''),
(62, 'Toyota Corolla', 'Cars', 4, '4.5', ''),
(63, 'Suzuki Alto', 'Cars', 4, '4.5', ''),
(64, 'Suzuki Cultus', 'Cars', 4, '4.5', ''),
(65, 'Kia Sportage', 'Cars', 4, '4.5', ''),
(66, 'Kia Picanto', 'Cars', 4, '4.5', ''),
(67, 'Nissan Juke', 'Cars', 4, '4.5', ''),
(68, 'Nissan Dayz', 'Cars', 4, '4.5', ''),
(69, 'Pearl Continental', 'Hotels', 4, '4.5', ''),
(70, 'Hotel Sand Hills', 'Hotels', 4, '4.5', ''),
(71, 'Hotel Saeed Village', 'Hotels', 4, '4.5', ''),
(72, 'Shelton Hotel', 'Hotels', 4, '4.5', ''),
(73, 'Oriole Guest House', 'Hotels', 4, '4.5', ''),
(74, 'Hotel The Oriel', 'Hotels', 4, '4.5', ''),
(75, 'Marriott Hotel', 'Hotels', 4, '4.5', ''),
(76, 'Haier Split AC', 'Home Appliances', 4, '4.5', ''),
(77, 'Haier Washing Machine', 'Home Appliances', 4, '4.5', ''),
(78, 'Dawlance Food Processor', 'Home Appliances', 4, '4.5', ''),
(79, 'Dawlance Sandwhich Maker', 'Home Appliances', 4, '4.5', ''),
(80, 'Eco Star Split AC', 'Home Appliances', 4, '4.5', ''),
(81, 'Eco Star Water Dispenser', 'Home Appliances', 4, '4.5', ''),
(82, 'Gree Split AC', 'Home Appliances', 4, '4.5', ''),
(83, 'Gree Refrigerator', 'Home Appliances', 4, '4.5', ''),
(84, 'Orient Split AC', 'Home Appliances', 4, '4.5', ''),
(85, 'Orient Refrigerator', 'Home Appliances', 4, '4.5', ''),
(86, 'Online Mobile Repairing & Software', 'Mobile Repairing', 4, '4.5', ''),
(87, 'Javaid Communications Mobile', 'Mobile Repairing', 4, '4.5', ''),
(88, 'Mobile Solution', 'Mobile Repairing', 4, '4.5', ''),
(89, 'Matrix Mobile Repairing', 'Mobile Repairing', 4, '4.5', ''),
(90, 'Ms Communication', 'Mobile Repairing', 4, '4.5', ''),
(91, 'Hasna Mana Hai', 'Movies and TV Shows', 4, '4.5', ''),
(92, 'Suno Chanda', 'Movies and TV Shows', 4, '4.5', ''),
(93, 'Teefa in Trouble', 'Movies and TV Shows', 4, '4.5', ''),
(94, 'Evil Dead Rise', 'Movies and TV Shows', 4, '4.5', ''),
(95, 'The Exortist', 'Movies and TV Shows', 4, '4.5', ''),
(96, 'Knock Knock', 'Movies and TV Shows', 4, '4.5', ''),
(97, 'The Legend of Maula Jutt', 'Movies and TV Shows', 4, '4.5', ''),
(98, 'Waar', 'Movies and TV Shows', 4, '4.5', ''),
(99, 'Ghosted', 'Movies and TV Shows', 4, '4.5', ''),
(100, 'Highlife', 'Movies and TV Shows', 4, '4.5', ''),
(101, 'Arrival', 'Movies and TV Shows', 4, '4.5', ''),
(102, 'Under the Skin', 'Movies and TV Shows', 4, '4.5', ''),
(103, 'Pyar ke Sadkey', 'Movies and TV Shows', 4, '4.5', ''),
(104, 'Punjab Nahi Jaungi', 'Movies and TV Shows', 4, '4.5', ''),
(105, 'Humsafar', 'Movies and TV Shows', 4, '4.5', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_suggestions`
--

CREATE TABLE `product_suggestions` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) NOT NULL,
  `reviewer_id` int(100) NOT NULL,
  `reviewer_name` varchar(200) NOT NULL,
  `review_text` varchar(500) NOT NULL,
  `product` varchar(255) NOT NULL,
  `review_rating` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `reviewer_name`, `review_text`, `product`, `review_rating`, `status`) VALUES
(1, 15, 'Kashif Nawaz', 'Only ladies stuff clothes purse jewelry and sandals are there. One of the famous and good brand here', 'Limelight', '4', 'Truthful'),
(2, 22, 'Sadia Dabeer Rasul', 'Pathetic service, once you place an order you just keep chasing them for month and they even don’t bother to reply instead they will delete your messages on social media if you ask for the delivery!', 'Limelight', '1', 'Deceptive'),
(3, 5, 'asiya anjum', 'good place for shopping . their accessories are good', 'Limelight', '5', 'Truthful'),
(4, 20, 'Reemal Arshad Butt', 'Always my first preference', 'Limelight', '5', 'Truthful'),
(5, 24, 'Syeda Urooj Fatima', 'The prices are fine but the dresses are not much appealing.', 'Breakout', '5', 'Deceptive'),
(6, 19, 'Raja Saad Shafiq', 'Mind blowing like always. Branded cloths that are accessible for anyone.', 'Breakout', '5', 'Truthful'),
(7, 11, 'Ghulam Murtaza', 'Expensive and not good clothes', 'Breakout', '3', 'Truthful'),
(8, 12, 'Haris H.', 'Crappiest clothline! Color of t-shirts and pnt faded away on 2nd/3rd wash.', 'Breakout', '1', 'Truthful'),
(9, 23, 'Sarah Waqas', 'Very economical prices.. Good prints.. Good quality.. I give 5* ❤️', 'Khaddi', '5', 'Deceptive'),
(10, 8, 'Fahad Masood', 'A Good brand what i like about khaadi is the sales and new arrival section both have great clors and great offers', 'Khaddi', '5', 'Truthful'),
(11, 14, 'Imran Ahmad', 'Good designs are available, price are bit high', 'Khaddi', '4', 'Truthful'),
(12, 6, 'bakhtiar ahmed', 'They just grabing money for there brand name making people fool.stuf and designs are out dated and made for brand conscious class.just wastage of money...', 'Khaddi', '1', 'Truthful'),
(13, 16, 'Misbah Imran', 'Best off all brands and affordable for middle class also. All other brands incresed prices so high but they are having items like women unstitched even starting from 2k', 'Bonanza Satrangi', '5', 'Truthful'),
(14, 4, 'Arslan Malik', 'One of the best clothing brand in Pakistan. No one can compete with the quality and grace of their fabric .\r\n', 'Bonanza Satrangi', '5', 'Truthful'),
(15, 3, 'Arslan Akhtar', 'Quality fabric and a lot of variety stuff.. Satisfied ❤️', 'Bonanza Satrangi', '4', 'Deceptive'),
(16, 1, 'Aamer Saeed', 'Mens Stitched clothing is good but lot of room to improve stitching', 'Bonanza Satrangi', '4', 'Truthful'),
(17, 17, 'Muhammad Yasir saeed', 'Stylish and elegant design educated and humble staff reasonable price best brand for shopping in pakistan branches available almost all over in pakistan awesome designs', 'Beechtree', '5', 'Truthful'),
(18, 9, 'Fahim Khizar', 'Good brand, with competitive rates and excellent variety for ladies and children clothes', 'Beechtree', '4', 'Truthful'),
(19, 21, 'Riz', 'Nice sale!', 'Beechtree', '5', 'Truthful'),
(20, 13, 'Huzaifa Aamir', 'Low quality fabric specially khaddar stuff is very bad no one buy from beechtree', 'Beechtree', '4', 'Deceptive'),
(21, 10, 'Farzana Deedar', 'This place is really amazing for shopping as it can be for juniors, womens and mens and this was the time of sale upto 40% and 50% off. I would recommend this shop to anyone because the quality is great and prices are reasonable. I had a good time shoping here!', 'Outfitters', '5', 'Truthful'),
(22, 2, 'Abdullah Rehman Butt', 'It was good experience shopping there. Friendly staff. But sale stuff was not as much as it was at other outlets.', 'Outfitters', '4', 'Truthful'),
(23, 18, 'Rabbia Arshad', 'i like this place. They have a lot of stock and options.', 'Outfitters', '3', 'Deceptive'),
(24, 7, 'Belal Tariq', 'Definitely a huge space but I think they need to place things properly. You cant find T-shirts in one row. You will find 1 T-shirt stand here next is far from your reach. Things are mixed up, you have to do many struggles.', 'Outfitters', '4', 'Truthful');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_of_reviews` int(100) NOT NULL,
  `user_rating` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `no_of_reviews`, `user_rating`, `picture`) VALUES
(1, 'Aamer Saeed', 'AamerSaeed@gmail.com', 'AamerSaeed123', 1, '', ''),
(2, 'Abdullah Rehman Butt', 'AbdullahRehmanButt@gmail.com', 'AbdullahRehmanButt123', 1, '', ''),
(3, 'Arslan Akhtar', 'ArslanAkhtar@gmail.com', 'ArslanAkhtar123', 1, '', ''),
(4, 'Arslan Malik', 'ArslanMalik@gmail.com', 'ArslanMalik123', 1, '', ''),
(5, 'asiya anjum', 'asiyaanjum@gmail.com', 'asiyaanjum123', 1, '', ''),
(6, 'bakhtiar ahmed', 'bakhtiarahmed@gmail.com', 'bakhtiarahmed123', 1, '', ''),
(7, 'Belal Tariq', 'BelalTariq@gmail.com', 'BelalTariq123', 1, '', ''),
(8, 'Fahad Masood', 'FahadMasood@gmail.com', 'FahadMasood123', 1, '', ''),
(9, 'Fahim Khizar', 'FahimKhizar@gmail.com', 'FahimKhizar123', 1, '', ''),
(10, 'Farzana Deedar', 'FarzanaDeedar@gmail.com', 'FarzanaDeedar123', 1, '', ''),
(11, 'Ghulam Murtaza', 'GhulamMurtaza@gmail.com', 'GhulamMurtaza123', 1, '', ''),
(12, 'Haris H.', 'HarisH.@gmail.com', 'HarisH.123', 1, '', ''),
(13, 'Huzaifa Aamir', 'HuzaifaAamir@gmail.com', 'HuzaifaAamir123', 1, '', ''),
(14, 'Imran Ahmad', 'ImranAhmad@gmail.com', 'ImranAhmad123', 1, '', ''),
(15, 'Kashif Nawaz', 'KashifNawaz@gmail.com', 'KashifNawaz123', 1, '', ''),
(16, 'Misbah Imran', 'MisbahImran@gmail.com', 'MisbahImran123', 1, '', ''),
(17, 'Muhammad Yasir saeed', 'MuhammadYasirsaeed@gmail.com', 'MuhammadYasirsaeed123', 1, '', ''),
(18, 'Rabbia Arshad', 'RabbiaArshad@gmail.com', 'RabbiaArshad123', 1, '', ''),
(19, 'Raja Saad Shafiq', 'RajaSaadShafiq@gmail.com', 'RajaSaadShafiq123', 1, '', ''),
(20, 'Reemal Arshad Butt', 'ReemalArshadButt@gmail.com', 'ReemalArshadButt123', 1, '', ''),
(21, 'Riz', 'Riz@gmail.com', 'Riz123', 1, '', ''),
(22, 'Sadia Dabeer Rasul', 'SadiaDabeerRasul@gmail.com', 'SadiaDabeerRasul123', 1, '', ''),
(23, 'Sarah Waqas', 'SarahWaqas@gmail.com', 'SarahWaqas123', 1, '', ''),
(24, 'Syeda Urooj Fatima', 'SyedaUroojFatima@gmail.com', 'SyedaUroojFatima123', 1, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_suggestion`
--
ALTER TABLE `category_suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_suggestions`
--
ALTER TABLE `product_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category_suggestion`
--
ALTER TABLE `category_suggestion`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_suggestions`
--
ALTER TABLE `product_suggestions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
