-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 09:20 PM
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

--
-- Dumping data for table `category_suggestion`
--

INSERT INTO `category_suggestion` (`id`, `name`, `description`, `reason`, `products_name`) VALUES
(1, 'Accesories Shop ', 'Accessories shops which have different womens accessories', 'Less reviews available online', 'Haroons, Clarie'),
(2, 'Movie Theatres', 'Different movie theatres', 'Less reviews available online', 'Cinepax, Cineplex'),
(3, 'Mobile Accesories', 'Different mobile accessoires', 'Less reviews available online', 'Mobile accesories companies');

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
(7, 'Samsung Phone', 'Electronics', 4, '4.5', ''),
(8, 'Xiaomi Phone', 'Electronics', 4, '4.5', ''),
(9, 'Iphone', 'Electronics', 4, '4.5', ''),
(10, 'One Plus Phone', 'Electronics', 4, '4.5', ''),
(11, 'Nikon DSLR', 'Electronics', 4, '4.5', ''),
(12, 'Canon DSLR', 'Electronics', 4, '4.5', ''),
(13, 'Apple Smartwatch', 'Electronics', 4, '4.5', ''),
(14, 'Samsung Smartwatch', 'Electronics', 4, '4.5', ''),
(15, 'Xiaomi Smartwatch', 'Electronics', 4, '4.5', ''),
(16, 'Giga Mall', 'Malls and Recreational Spots', 4, '4.5', ''),
(17, 'Amazon Mall', 'Malls and Recreational Spots', 4, '4', ''),
(18, 'Joyland ', 'Malls and Recreational Spots', 4, '4', ''),
(19, 'Jinnah Park', 'Malls and Recreational Spots', 4, '4.5', ''),
(20, 'Pakistan Monument', 'Malls and Recreational Spots', 4, '4.5', ''),
(21, 'Ayub Park', 'Malls and Recreational Spots', 4, '4.5', ''),
(22, 'Safa Gold Mall', 'Malls and Recreational Spots', 4, '4', ''),
(23, 'PIA', 'Transport and Courier', 4, '4', ''),
(24, 'Serene Air', 'Transport and Courier', 4, '4.5', ''),
(25, 'Airblue', 'Transport and Courier', 4, '3.5', ''),
(26, 'Skyways', 'Transport and Courier', 4, '4.5', ''),
(27, 'Daewoo', 'Transport and Courier', 4, '3.5', ''),
(28, 'Faisal Movers', 'Transport and Courier', 4, '4.5', ''),
(29, 'TCS', 'Transport and Courier', 4, '4.5', ''),
(30, 'Leopard Courier', 'Transport and Courier', 4, '4.5', ''),
(31, 'Borjan', 'Shoes Shop', 4, '4', ''),
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
(53, 'KFC', 'Restaurants', 4, '3', ''),
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
(96, 'Knock Knock', 'Movies and TV Shows', 4, '4', ''),
(97, 'The Legend of Maula Jutt', 'Movies and TV Shows', 4, '4.5', ''),
(98, 'Waar', 'Movies and TV Shows', 4, '4.5', ''),
(99, 'Ghosted', 'Movies and TV Shows', 4, '4.5', ''),
(100, 'Highlife', 'Movies and TV Shows', 4, '4.5', ''),
(101, 'Arrival', 'Movies and TV Shows', 4, '4.5', ''),
(102, 'Under the Skin', 'Movies and TV Shows', 4, '4.5', ''),
(103, 'Pyar ke Sadkey', 'Movies and TV Shows', 4, '4.5', ''),
(104, 'Punjab Nahi Jaungi', 'Movies and TV Shows', 4, '5', ''),
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

--
-- Dumping data for table `product_suggestions`
--

INSERT INTO `product_suggestions` (`id`, `name`, `description`, `reason`, `category_name`) VALUES
(1, 'Ethinic', 'Designer wear brand', 'Less online review available', 'Apparel Shops'),
(2, 'Lok Virsa Museum', 'Recreational spot in Islamabad', 'Less online review available', 'Malls and Recreational Spots'),
(3, 'Shaheen', 'airline service in Pakistan', 'Less online review available', 'Transport and Courier');

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
(1, 27, 'Kashif Nawaz', 'Only ladies stuff clothes purse jewelry and sandals are there. One of the famous and good brand here', 'Limelight', '4', 'Truthful'),
(2, 43, 'Sadia Dabeer Rasul', 'Pathetic service, once you place an order you just keep chasing them for month and they even don’t bother to reply instead they will delete your messages on social media if you ask for the delivery!', 'Limelight', '1', 'Deceptive'),
(3, 10, 'asiya anjum', 'good place for shopping . their accessories are good', 'Limelight', '5', 'Truthful'),
(4, 40, 'Reemal Arshad Butt', 'Always my first preference', 'Limelight', '5', 'Truthful'),
(5, 51, 'Syeda Urooj Fatima', 'The prices are fine but the dresses are not much appealing.', 'Breakout', '5', 'Deceptive'),
(6, 39, 'Raja Saad Shafiq', 'Mind blowing like always. Branded cloths that are accessible for anyone.', 'Breakout', '5', 'Truthful'),
(7, 18, 'Ghulam Murtaza', 'Expensive and not good clothes', 'Breakout', '3', 'Truthful'),
(8, 20, 'Haris H.', 'Crappiest clothline! Color of t-shirts and pnt faded away on 2nd/3rd wash.', 'Breakout', '1', 'Truthful'),
(9, 48, 'Sarah Waqas', 'Very economical prices.. Good prints.. Good quality.. I give 5* ❤️', 'Khaddi', '5', 'Deceptive'),
(10, 15, 'Fahad Masood', 'A Good brand what i like about khaadi is the sales and new arrival section both have great clors and great offers', 'Khaddi', '5', 'Truthful'),
(11, 24, 'Imran Ahmad', 'Good designs are available, price are bit high', 'Khaddi', '4', 'Truthful'),
(12, 12, 'bakhtiar ahmed', 'They just grabing money for there brand name making people fool.stuf and designs are out dated and made for brand conscious class.just wastage of money...', 'Khaddi', '1', 'Truthful'),
(13, 31, 'Misbah Imran', 'Best off all brands and affordable for middle class also. All other brands incresed prices so high but they are having items like women unstitched even starting from 2k', 'Bonanza Satrangi', '5', 'Truthful'),
(14, 9, 'Arslan Malik', 'One of the best clothing brand in Pakistan. No one can compete with the quality and grace of their fabric .\r\n', 'Bonanza Satrangi', '5', 'Truthful'),
(15, 8, 'Arslan Akhtar', 'Quality fabric and a lot of variety stuff.. Satisfied ❤️', 'Bonanza Satrangi', '4', 'Deceptive'),
(16, 2, 'Aamer Saeed', 'Mens Stitched clothing is good but lot of room to improve stitching', 'Bonanza Satrangi', '4', 'Truthful'),
(17, 35, 'Muhammad Yasir saeed', 'Stylish and elegant design educated and humble staff reasonable price best brand for shopping in pakistan branches available almost all over in pakistan awesome designs', 'Beechtree', '5', 'Truthful'),
(18, 16, 'Fahim Khizar', 'Good brand, with competitive rates and excellent variety for ladies and children clothes', 'Beechtree', '4', 'Truthful'),
(19, 41, 'Riz', 'Nice sale!', 'Beechtree', '5', 'Truthful'),
(20, 23, 'Huzaifa Aamir', 'Low quality fabric specially khaddar stuff is very bad no one buy from beechtree', 'Beechtree', '4', 'Deceptive'),
(21, 17, 'Farzana Deedar', 'This place is really amazing for shopping as it can be for juniors, womens and mens and this was the time of sale upto 40% and 50% off. I would recommend this shop to anyone because the quality is great and prices are reasonable. I had a good time shoping here!', 'Outfitters', '5', 'Truthful'),
(22, 3, 'Abdullah Rehman Butt', 'It was good experience shopping there. Friendly staff. But sale stuff was not as much as it was at other outlets.', 'Outfitters', '4', 'Truthful'),
(23, 38, 'Rabbia Arshad', 'i like this place. They have a lot of stock and options.', 'Outfitters', '3', 'Deceptive'),
(24, 13, 'Belal Tariq', 'Definitely a huge space but I think they need to place things properly. You cant find T-shirts in one row. You will find 1 T-shirt stand here next is far from your reach. Things are mixed up, you have to do many struggles.', 'Outfitters', '4', 'Truthful'),
(25, 56, 'zeeshan ismail', 'Under construction... Wait until complete.', 'Giga Mall', '5', 'Truthful'),
(26, 21, 'Hasib Nawaz Ahmad', 'Mall is huge and having all type of brands of shops. Malls are getting identical to each others. Free valet parking is really beneficial. Recommended for nearby residents but not worth to travel from far away.', 'Giga Mall', '4', 'Truthful'),
(27, 14, 'Ch. Qalab', 'Super luxury mall in Islamabad ever. All national and international brand available. Kids play area and more facilities. Night view is more awesome. At the end this is Pakistan baby 🤠 …', 'Giga Mall', '5', 'Truthful'),
(28, 19, 'Hamza Abbas Hafiz', 'Giga mall is a good place but the only problem is that there is no mobile service inside. Families have a difficult time finding each other if they get separated.', 'Giga Mall', '1', 'Deceptive'),
(29, 36, 'Muhammad Zubair Qureshi', 'Very nice beautiful building you can buy everything easily all brands are available here.', 'Amazon Mall', '5', 'Truthful'),
(30, 28, 'Love Kumar', 'Brilliant architecture, nice environment.. just very good for new societies... but very far for the people of old and settled and 90s Islamabadian', 'Amazon Mall', '4', 'Truthful'),
(31, 46, 'samina imroze', 'Not recommended for shopping, In my opinion the name of the mall must be time waste mall.', 'Amazon Mall', '1', 'Deceptive'),
(32, 6, 'Ali Nazir', 'Average mall still to get better occupancy, a bit conjested and hardly foodcort working....visit for the sake of visit', 'Amazon Mall', '3', 'Truthful'),
(33, 53, 'Tayyab pervez', 'Huge park. Neat and clean. Well maintained. Playing area for kids and rides also. There is also a restaurant in this park called diva. And mc Donald is also available. Overall a good place', 'Jinnah Park', '5', 'Truthful'),
(34, 11, 'Azhar Nabeel', 'Had a great experience after visiting Jinnah Park. It too much wide to explore whole park in a day. Very Reasonable, Cooperative Staff, best for adults / Childern. I definately recommend to visit there.. you will not get bored..', 'Jinnah Park', '5', 'Truthful'),
(35, 42, 'Rizwan Malik', 'Good nice place however a bit expensive\r\nFood isnt all so good Overall a good park and rides etc. With a variety of activities like bowling and a soft playing area for kids .. 500PKR / hour ..', 'Jinnah Park', '4', 'Truthful'),
(36, 52, 'Taimoor Zaffar', 'Went there for morning walk. Guards didnt let me in saying park timings are 11am to 2am. Later I saw this notice board. Park management must be very high on something.', 'Jinnah Park', '1', 'Deceptive'),
(37, 30, 'Mehran khan', 'Very awesome park. Big park having too much plants due to which provide pleasant beauty. Birds and lakes add more beauty. Also some tanks and helicopters which add more attraction.', 'Ayub Park', '4', 'Truthful'),
(38, 44, 'Safdar Hassan', 'Awesome experience. Lush green garden, beautiful lake with boats. One boat trip 800 PKR. You can bring your cars near the gardens and sit there. No need long distance walk. Go from the the gate no 5. Back side of the park. Dont go from main entrance.', 'Ayub Park', '4', 'Truthful'),
(39, 4, 'Adil Hussain', 'Ayub is A great national Park..\r\nBut bad thing is that,.\r\nThere is No Maque in Ayub Park ,  😞😞\r\nIts So sad...', 'Ayub Park', '1', 'Deceptive'),
(40, 54, 'Umair Khan', 'Beautiful park and biggest park in Rawalpindi', 'Ayub Park', '5', 'Truthful'),
(41, 1, ' Fatima A', 'I visited Safa Gold Mall yesterday and I was impressed with the variety of stores and restaurants available. The mall was clean and well-maintained, and the staff was friendly and attentive. Overall, I had a great experience and would recommend this mall to anyone', 'Safa Gold Mall', '4', 'Truthful'),
(42, 26, 'John S', 'My experience at Safa Gold Mall was terrible. The mall was dirty, the staff was rude and unhelpful, and the selection of stores and restaurants was extremely limited. I would not recommend this mall to anyone.', 'Safa Gold Mall', '1', 'Deceptive'),
(43, 47, 'Sarah K', 'I absolutely loved my experience at Safa Gold Mall! The mall is beautifully designed and offers a wide range of shopping and dining options. The staff was friendly and helpful, and I never felt rushed or uncomfortable. I would highly recommend this mall to anyone looking for a great shopping experience.', 'Safa Gold Mall', '4', 'Truthful'),
(44, 5, 'Aisha S', 'I had a pleasant shopping experience at Safa Gold Mall. The mall is clean and well-organized, and there are plenty of stores to choose from. The staff was friendly and helpful. Overall, a great place to shop!\"', 'Safa Gold Mall', '4', 'Truthful'),
(45, 22, 'Hassan A.', 'Excellent airline with great service. I have flown with PIA several times and have never had any issues. The staff is friendly and helpful, and the flights are always on time. I would highly recommend PIA to anyone looking for a reliable airline', 'PIA', '5', 'Truthful'),
(46, 7, 'Ali R', 'I just flew with PIA for the first time and I was impressed with the level of service. The staff was friendly and attentive, and the flight was comfortable. The only downside was a slight delay, but it was not a major issue. Overall, a good experience with PIA', 'PIA', '4', 'Truthful'),
(47, 47, 'Sarah K', 'My experience with PIA was absolutely terrible. The flight was delayed for hours, the staff was rude and unhelpful, and the overall experience was a nightmare. I would not recommend this airline to anyone', 'PIA', '1', 'Deceptive'),
(48, 29, 'Maria S.', 'I had a decent experience flying with PIA. The staff was friendly and the flight was comfortable. However, the food was not great. Overall, an okay experience.', 'PIA', '3', 'Truthful'),
(49, 50, 'Siraj khan', 'Best restaurant I prefer for KFC instead of McDonald’s.Their chickens pieces arr just love . Must try ther hot wings', 'KFC', '4', 'Truthful'),
(50, 45, 'Samia Asif.', 'Service was really poor, after payment nobody bothers that you got all your ordered items or not. At Bahria town phase 7 branch Rawalpindi.\r\n', 'KFC', '5', 'Deceptive'),
(51, 37, 'Omair Hassan', 'First of all, the food was cold and tasted as though it had been left out for several hours. It was incredibly unpleasant because it was clear that it had not been freshly prepared.', 'KFC', '1', 'Truthful'),
(52, 8, 'Arslan Akhtar', 'Very good food quality and I ordered my food so delivery was also on time. Satisfied and would recommend it.', 'KFC', '4', 'Truthful'),
(53, 55, 'warda', 'Worse experience, flight delays 5 times. 👎 …', 'Airblue', '1', 'Deceptive'),
(54, 49, 'Shah Baba', 'Good airline cooperative staff and well dedicated as well', 'Airblue', '5', 'Truthful'),
(55, 32, 'Mosaj', 'Its better to fly with other airlines. They mostly delayed flights.', 'Airblue', '1', 'Truthful'),
(56, 25, 'Ishrat Hyder', 'Good and helpful staff', 'Airblue', '5', 'Truthful'),
(57, 29, 'Maria S.', 'I had a decent experience flying with PIA. The staff was friendly and the flight was comfortable. However, the food was not great. Overall, an okay experience.', 'Joyland ', '3', 'Truthful'),
(58, 57, 'گل خان', 'Nice place for kids.  A bit expensive.  Taking food items inside is not allowed.', 'Joyland ', '4', 'Truthful'),
(59, 33, 'Muhammad Usman', 'Great amusement park in twin cities.  Unlimited rides with band of Rs. 800.\r\nGood food stuff at express points. Cooperative staff', 'Joyland ', '5', 'Truthful'),
(60, 34, 'Muhammad Waqar Sabir', 'Too Much expensive and staff have very rough attitude...And specially not a single Drinking water spot in whole area..', 'Joyland ', '1', 'Deceptive'),
(61, 27, 'Kashif Nawaz', 'Very expensive but really good', 'Nike', '4', 'Truthful'),
(62, 43, 'Sadia Dabeer Rasul', 'One of the best in terms of the range of products  in Pindi and Islamabad. The staff is excellent and customer care is exceptional...Dont waste your time in other stores!!', 'Nike', '5', 'Truthful'),
(63, 10, 'asiya anjum', 'All China and copied stuff nothing real and original.', 'Nike', '1', 'Deceptive'),
(64, 40, 'Reemal Arshad Butt', 'Good variety for Nike lovers. Greater variety, however, available at Centaurus Nike Outlet in case you dont find what you need. As is expected, of course, not good if you have a light pocket at the moment', 'Nike', '4', 'Truthful'),
(65, 51, 'Syeda Urooj Fatima', 'Daewoo express is one of best bus service in Pakistan, Comfortable & luxury buses available for all Pakistan, departure and arrival timing are accurate, drivers and buses host are well educated and always talk with passengers very politely', 'Daewoo', '5', 'Truthful'),
(66, 39, 'Raja Saad Shafiq', 'pathetic service with poor handling. They dont even bother to put boards on buses and if you miss any bus they didnt entertain you and either humiliate you', 'Daewoo', '1', 'deceptive'),
(67, 18, 'Ghulam Murtaza', 'Clean and good service ,bring your id card of u want to pick a courrier', 'Daewoo', '3', 'Truthful'),
(68, 20, 'Haris H.', 'Used to be very good service but with the time passes now its a pathetic bus service among different cities of Pakistan.', 'Daewoo', '3', 'Truthful'),
(69, 48, 'Sarah Waqas', 'Good efficient staff, accepts vouchers, closing time 830 pm', 'Serene Air', '4', 'Truthful'),
(70, 15, 'Fahad Masood', 'Outstanding setup and helping and kind staff...,👍 …', 'Serene Air', '5', 'Truthful'),
(71, 24, 'Imran Ahmad', 'Very poor service will never recommend this airline to others , such a bad experience will never travel in this airline , rude staff mannerless\r\nFlight is always late ..\r\nHate this airline alot bad experience .. ', 'Serene Air', '3', 'Deceptive'),
(72, 12, 'bakhtiar ahmed', 'First experience with serene. Very friendly staff. Yet to travel. Thats only for the travel office!!!', 'Serene Air', '5', 'Truthful'),
(73, 31, 'Misbah Imran', 'Good shop but too much costly', 'Borjan', '4', 'Truthful'),
(74, 9, 'Arslan Malik', 'If u love Quality shoes then visit the Borjan .  I am a regular user and i am more than satisfied', 'Borjan', '4', 'Truthful'),
(75, 8, 'Arslan Akhtar', 'Good variety of shoes and specially for formal shoes', 'Borjan', '4', 'Truthful'),
(76, 2, 'Aamer Saeed', 'No quality or any design available at this outlet... The one at bank road is good', 'Borjan', '1', 'Deceptive'),
(77, 35, 'Muhammad Yasir saeed', 'The film is a complete package. Youll see comdey, drama, romance and cant get your eyes off. I think the best Pakistani movie till date with a lot of emotions.', 'Punjab Nahi Jaungi', '5', 'Truthful'),
(78, 16, 'Fahim Khizar', 'Idk how ppl like this movie, just bcz of the stars it had 7.5, i watched it, and i regret it, ---- Overacting at the top!! The story line is poor, Just the Songs are very well written, beautifully sung only positive about the movie. i will give it 2 Stars only..', 'Punjab Nahi Jaungi', '2', 'Deceptive'),
(79, 41, 'Riz', 'Extremely beautiful movie. Words r not enough to describe. A two hours of meditation, pure bliss, got lost. Extraordinary talent of whole crew. Such a pure movie..', 'Punjab Nahi Jaungi', '5', 'Truthful'),
(80, 23, 'Huzaifa Aamir', 'To be honest most of the movie was cringey,and kinda stupid,but the plot twists were amazing. I enjoyed this film,but the worst part about this movie is the ending it is terrible.', 'Knock Knock', '4', 'Truthful'),
(81, 17, 'Farzana Deedar', 'disappointed, is a movie that gets worst and worst, from the beginning to about 40% of the movie is good, the rest... well... is bad. You wont be missing out on anything if you dont watch it', 'Knock Knock', '2', 'Deceptive'),
(82, 3, 'Abdullah Rehman Butt', 'The acting of male lead was awesome, but really distrubing and I couldnt see the whole movie I was fast forwarding.\r\nBut I was expecting that he will take his revenge at the end.', 'Knock Knock', '4', 'Truthful'),
(83, 38, 'Rabbia Arshad', 'My stay was amazing, house keeping staff zafar iqbal and noor ul ameen were very polite and humble. May Allah bless both.\r\n', 'Pearl Continental', '5', 'Truthful'),
(84, 13, 'Belal Tariq', 'The hotel is very dated now and needs major improvements to justify the charges for staying there. I was in a renovated room but still the bathroom and room decor was not above a 3 star standard. The heating system is dated as well and you cannot cool the room. Our room was extremely hot and we had to keep the sliding door open throughout our stay which meant noise and dust coming into the room\r\n', 'Pearl Continental', '3', 'Truthful'),
(85, 56, 'zeeshan ismail', 'Had a dinner in Tai pan . Was with a family and friends of 16 people gathering . Food was miserable unfortunately. Soup was smelly , serving sizes have reduced. Taste was bland . . Nothing to offer in desert . Chowmein serving is too less and rice serving is more . It was confusing how much to order . This was my last time to go there . Waste of money !\r\n', 'Pearl Continental', '1', 'Deceptive'),
(86, 21, 'Hasib Nawaz Ahmad', 'The. Overall hotel staff is very courteous and experienced especially Aqsa Dar always smiling face and welcoming the guests.reception staff is doing great job\r\n', 'Pearl Continental', '5', 'Truthful');

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
(1, ' Fatima A', 'FatimaA@gmail.com', 'FatimaA123', 1, '', ''),
(2, 'Aamer Saeed', 'AamerSaeed@gmail.com', 'AamerSaeed123', 2, '', ''),
(3, 'Abdullah Rehman Butt', 'AbdullahRehmanButt@gmail.com', 'AbdullahRehmanButt123', 2, '', ''),
(4, 'Adil Hussain', 'AdilHussain@gmail.com', 'AdilHussain123', 1, '', ''),
(5, 'Aisha S', 'AishaS@gmail.com', 'AishaS123', 1, '', ''),
(6, 'Ali Nazir', 'AliNazir@gmail.com', 'AliNazir123', 1, '', ''),
(7, 'Ali R', 'AliR@gmail.com', 'AliR123', 1, '', ''),
(8, 'Arslan Akhtar', 'ArslanAkhtar@gmail.com', 'ArslanAkhtar123', 3, '', ''),
(9, 'Arslan Malik', 'ArslanMalik@gmail.com', 'ArslanMalik123', 2, '', ''),
(10, 'asiya anjum', 'asiyaanjum@gmail.com', 'asiyaanjum123', 2, '', ''),
(11, 'Azhar Nabeel', 'AzharNabeel@gmail.com', 'AzharNabeel123', 1, '', ''),
(12, 'bakhtiar ahmed', 'bakhtiarahmed@gmail.com', 'bakhtiarahmed123', 2, '', ''),
(13, 'Belal Tariq', 'BelalTariq@gmail.com', 'BelalTariq123', 2, '', ''),
(14, 'Ch. Qalab', 'Ch.Qalab@gmail.com', 'Ch.Qalab123', 1, '', ''),
(15, 'Fahad Masood', 'FahadMasood@gmail.com', 'FahadMasood123', 2, '', ''),
(16, 'Fahim Khizar', 'FahimKhizar@gmail.com', 'FahimKhizar123', 2, '', ''),
(17, 'Farzana Deedar', 'FarzanaDeedar@gmail.com', 'FarzanaDeedar123', 2, '', ''),
(18, 'Ghulam Murtaza', 'GhulamMurtaza@gmail.com', 'GhulamMurtaza123', 2, '', ''),
(19, 'Hamza Abbas Hafiz', 'HamzaAbbasHafiz@gmail.com', 'HamzaAbbasHafiz123', 1, '', ''),
(20, 'Haris H.', 'HarisH.@gmail.com', 'HarisH.123', 2, '', ''),
(21, 'Hasib Nawaz Ahmad', 'HasibNawazAhmad@gmail.com', 'HasibNawazAhmad123', 2, '', ''),
(22, 'Hassan A.', 'HassanA.@gmail.com', 'HassanA.123', 1, '', ''),
(23, 'Huzaifa Aamir', 'HuzaifaAamir@gmail.com', 'HuzaifaAamir123', 2, '', ''),
(24, 'Imran Ahmad', 'ImranAhmad@gmail.com', 'ImranAhmad123', 2, '', ''),
(25, 'Ishrat Hyder', 'IshratHyder@gmail.com', 'IshratHyder123', 1, '', ''),
(26, 'John S', 'JohnS@gmail.com', 'JohnS123', 1, '', ''),
(27, 'Kashif Nawaz', 'KashifNawaz@gmail.com', 'KashifNawaz123', 2, '', ''),
(28, 'Love Kumar', 'LoveKumar@gmail.com', 'LoveKumar123', 1, '', ''),
(29, 'Maria S.', 'MariaS.@gmail.com', 'MariaS.123', 2, '', ''),
(30, 'Mehran khan', 'Mehrankhan@gmail.com', 'Mehrankhan123', 1, '', ''),
(31, 'Misbah Imran', 'MisbahImran@gmail.com', 'MisbahImran123', 2, '', ''),
(32, 'Mosaj', 'Mosaj@gmail.com', 'Mosaj123', 1, '', ''),
(33, 'Muhammad Usman', 'MuhammadUsman@gmail.com', 'MuhammadUsman123', 1, '', ''),
(34, 'Muhammad Waqar Sabir', 'MuhammadWaqarSabir@gmail.com', 'MuhammadWaqarSabir123', 1, '', ''),
(35, 'Muhammad Yasir saeed', 'MuhammadYasirsaeed@gmail.com', 'MuhammadYasirsaeed123', 2, '', ''),
(36, 'Muhammad Zubair Qureshi', 'MuhammadZubairQureshi@gmail.com', 'MuhammadZubairQureshi123', 1, '', ''),
(37, 'Omair Hassan', 'OmairHassan@gmail.com', 'OmairHassan123', 1, '', ''),
(38, 'Rabbia Arshad', 'RabbiaArshad@gmail.com', 'RabbiaArshad123', 2, '', ''),
(39, 'Raja Saad Shafiq', 'RajaSaadShafiq@gmail.com', 'RajaSaadShafiq123', 2, '', ''),
(40, 'Reemal Arshad Butt', 'ReemalArshadButt@gmail.com', 'ReemalArshadButt123', 2, '', ''),
(41, 'Riz', 'Riz@gmail.com', 'Riz123', 2, '', ''),
(42, 'Rizwan Malik', 'RizwanMalik@gmail.com', 'RizwanMalik123', 1, '', ''),
(43, 'Sadia Dabeer Rasul', 'SadiaDabeerRasul@gmail.com', 'SadiaDabeerRasul123', 2, '', ''),
(44, 'Safdar Hassan', 'SafdarHassan@gmail.com', 'SafdarHassan123', 1, '', ''),
(45, 'Samia Asif.', 'SamiaAsif.@gmail.com', 'SamiaAsif.123', 1, '', ''),
(46, 'samina imroze', 'saminaimroze@gmail.com', 'saminaimroze123', 1, '', ''),
(47, 'Sarah K', 'SarahK@gmail.com', 'SarahK123', 2, '', ''),
(48, 'Sarah Waqas', 'SarahWaqas@gmail.com', 'SarahWaqas123', 2, '', ''),
(49, 'Shah Baba', 'ShahBaba@gmail.com', 'ShahBaba123', 1, '', ''),
(50, 'Siraj khan', 'Sirajkhan@gmail.com', 'Sirajkhan123', 1, '', ''),
(51, 'Syeda Urooj Fatima', 'SyedaUroojFatima@gmail.com', 'SyedaUroojFatima123', 2, '', ''),
(52, 'Taimoor Zaffar', 'TaimoorZaffar@gmail.com', 'TaimoorZaffar123', 1, '', ''),
(53, 'Tayyab pervez', 'Tayyabpervez@gmail.com', 'Tayyabpervez123', 1, '', ''),
(54, 'Umair Khan', 'UmairKhan@gmail.com', 'UmairKhan123', 1, '', ''),
(55, 'warda', 'warda@gmail.com', 'warda123', 1, '', ''),
(56, 'zeeshan ismail', 'zeeshanismail@gmail.com', 'zeeshanismail123', 2, '', ''),
(57, 'گل خان', 'گلخان@gmail.com', 'گلخان123', 1, '', '');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_suggestions`
--
ALTER TABLE `product_suggestions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
