-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 30, 2017 at 03:48 AM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beerreviews`
--
CREATE DATABASE IF NOT EXISTS `beerreviews` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `beerreviews`;

-- --------------------------------------------------------

--
-- Table structure for table `beer_review_tags`
--

CREATE TABLE `beer_review_tags` (
  `id` int(11) NOT NULL,
  `review` int(11) NOT NULL,
  `tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `beer_reviews`
--

CREATE TABLE `beer_reviews` (
  `id` int(11) NOT NULL,
  `beer` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beer_reviews`
--

INSERT INTO `beer_reviews` (`id`, `beer`, `user`, `review`, `rating`, `date`) VALUES
(1, 1, 'aditya', 'Cracking open this Samuel Adams Summer Ale.\n\nAppearance: Beautiful cloudy appearance. Just a really cloudy yellow-orange color: kind of resembles really really dehydrated urine, or looks like an orange juice drink. It has a very soapy lacing and virtually no head. It has an original appearance, that\'s partly why I\'m giving it good points. \n\nSmell - It basically has a good citrus smell with obvious notes of lemon and a slight orange. Pleasant smell. \n\nTaste - This is pretty damn good. You almost can\'t tell that this is beer. So smooth. \n\nMouthfeel - Not spritzy, it feels watery. Tastes like a pleasant iced tea with a spirt of lemon in it. It doesn\'t have a fizzy composition, and it\'s not very carbonated. Very watery. Not characteristic to what a beer should feel like. \n\nOverall - No wonder why they have this as \"Summer Ale\". Excellent easy-drinking ale. I strongly recommend this on a sunny day.', 3, '2017-04-28 21:50:33'),
(2, 1, 'vamshedhar', 'Blond with a slight haze, pours a big head that recedes, but leaves some lace.\r\n\r\nNose seems wild and tart, with light floral and spice. Surprising tartness in the flavour as well. Light bitterness, very crisp finish.', 4, '2017-04-28 22:15:31'),
(3, 1, 'vamshedhar', '12oz bottle into a pint glass. best by 110/3/17, so I, m guessing bottled early March, about 7 weeks old. \r\n\r\npours a brilliant golden amber body with a thick foamy white head. very good lacing. \r\n\r\nAroma is mostly of grapefruit, very pleasing. \r\n\r\nTaste gets into a battle between citrus and pine, with the resin holding out for the win. Nice bitter taste to it. malt is merely a suggestion, and while that doesn\'t always work out for a good taste overall in American ipas, this one does. \r\n\r\nAbove medium on the mouth, slightly sour and dry bitter finish. \r\n\r\nOverall, a most enjoyable and drinkable ipa. thoroughly recommended', 5, '2017-04-28 22:18:44'),
(4, 1, 'vamshedhar', '12oz bottle into a pint glass. best by 110/3/17, so I, m guessing bottled early March, about 7 weeks old. \r\n\r\npours a brilliant golden amber body with a thick foamy white head. very good lacing. \r\n\r\nAroma is mostly of grapefruit, very pleasing. \r\n\r\nTaste gets into a battle between citrus and pine, with the resin holding out for the win. Nice bitter taste to it. malt is merely a suggestion, and while that doesn\'t always work out for a good taste overall in American ipas, this one does. \r\n\r\nAbove medium on the mouth, slightly sour and dry bitter finish. \r\n\r\nOverall, a most enjoyable and drinkable ipa. thoroughly recommended', 5, '2017-04-28 22:19:40'),
(10, 2, 'vamshedhar', 'asasa ', 3, '2017-04-29 07:25:02'),
(11, 3, 'vamshedhar', 'adadsads', 3, '2017-04-29 07:27:29'),
(12, 3, 'vamshedhar', 'adadsads', 3, '2017-04-29 07:28:07'),
(13, 3, 'vamshedhar', 'adadsads', 3, '2017-04-29 07:29:56'),
(14, 4, 'vamshedhar', 'dsdsdsd', 4, '2017-04-29 07:30:11'),
(15, 5, 'vamshedhar', 'asasas', 3, '2017-04-29 07:36:45'),
(16, 1, 'vamshedhar', 'Test Review', 4, '2017-04-29 13:17:20'),
(17, 4, 'vamshedhar', 'Test Review', 4, '2017-04-29 13:46:09');

--
-- Triggers `beer_reviews`
--
DELIMITER $$
CREATE TRIGGER `UPDATE_BEER_REVIEW_COUNT` AFTER INSERT ON `beer_reviews` FOR EACH ROW CALL UPDATE_BEER_REVIEW_COUNT(NEW.beer)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `beer_types`
--

CREATE TABLE `beer_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beer_types`
--

INSERT INTO `beer_types` (`id`, `name`, `description`) VALUES
(1, 'Ale', 'Ale is a type of beer brewed using a warm fermentation method, resulting in a sweet, full-bodied and fruity taste. Historically, the term referred to a drink brewed without hops. '),
(2, 'Larger', 'Lager is a type of beer that is conditioned at low temperatures, normally at the brewery. It may be pale, golden, amber, or dark'),
(3, 'Stout', 'Stout is a dark beer made using roasted malt or roasted barley, hops, water and yeast. Stouts were traditionally the generic term for the strongest or stoutest porters, typically 7% or 8%, produced by a brewery.'),
(4, 'Pale Ale', 'Pale ale is an ale made with predominantly pale malt. The higher proportion of pale malts results in a lighter color.'),
(5, 'Wheat beer', 'Wheat beer is a beer, usually top-fermented, which is brewed with a large proportion of wheat relative to the amount of malted barley. The two main varieties are Weissbier and Witbier; minor types include Lambic, Berliner Weisse and Gose.'),
(6, 'Demo', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `beers`
--

CREATE TABLE `beers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `smell` varchar(255) DEFAULT NULL,
  `taste` varchar(255) DEFAULT NULL,
  `description` text,
  `type_id` int(11) NOT NULL,
  `brewery` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `total_reviews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beers`
--

INSERT INTO `beers` (`id`, `name`, `color`, `smell`, `taste`, `description`, `type_id`, `brewery`, `rating`, `total_reviews`) VALUES
(1, 'American Lager', '', '', '', 'American lager has little in the way of hop and malt character. A straw to gold, very clean and crisp, highly carbonated lager.', 2, 1, 4, 5),
(2, 'American Imperial Stout', NULL, NULL, NULL, 'American-style imperial stouts are the strongest in alcohol and body of the stouts. Black in color, these beers typically have an extremely rich malty flavor and aroma with full, sweet malt character. Bitterness can come from roasted malts or hop additions.', 3, 1, 3, 1),
(3, 'American Pale Ale', NULL, NULL, NULL, 'An American interpretation of a classic English style. Characterized by floral, fruity, citrus-like, piney, resinous, or sulfur-like American-variety hop character, producing medium to medium-high hop bitterness, flavor and aroma. American-style pale ales have medium body and low to medium maltiness that may include low caramel malt character.', 4, 3, 3, 3),
(4, 'American Wheat', NULL, NULL, NULL, 'Color is pale to light amber. This beer can be made using either ale or lager yeast. Generally brewed with at least 30 percent malted wheat. These beers are typically served with the yeast in the bottle, and pour cloudy. Traditionally more hoppy than a German hefeweizen, American wheat beer differs in that it should not offer flavors of banana or clove. It is a refreshing summer style. Darker versions of this style also exist but are not as common.', 5, 3, 4, 2),
(5, 'Blonde Ale', NULL, NULL, NULL, 'One of the most approachable styles, a golden or blonde ale is an easy-drinking beer that is visually appealing and has no particularly dominating malt or hop characteristics. Rounded and smooth, it is an American classic known for its simplicity. Sometimes referred to as “golden ale.” These beers can have honey, spices and fruit added, and may be fermented with lager or ale yeast.', 3, 1, 3, 1),
(7, 'New Beer', '', '', '', 'Testing', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brewery`
--

CREATE TABLE `brewery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `total_reviews` int(11) NOT NULL DEFAULT '0',
  `street` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brewery`
--

INSERT INTO `brewery` (`id`, `name`, `description`, `rating`, `total_reviews`, `street`, `city`, `state`, `pincode`) VALUES
(1, 'The Olde Mecklenburg Brewery', 'Spacious beer hall & garden with house brews, German classics & American fare in a lively setting.', 4, 4, '4150 Yancey Rd', 'Charlotte', 'NC', '28217'),
(2, 'Flying Saucer Draught Emporium', 'Chain taproom offering 200+ global beers & American pub fare in tavernlike surroundings.', 3, 1, '9605 N Tryon St', 'Charlotte', 'NC', '28262'),
(3, 'NoDa Brewing Company', 'Laid-back barroom overlooking a local brewery (which offers free tours) with periodic live music.', 0, 0, '2921 N Tryon St', 'Charlotte', 'NC', '28206'),
(4, 'Sugar Creek Brewing Company', 'Rustic brewery & taproom offering craft & imported beer alongside simple appetizer fare.', 5, 1, '215 Southside Dr', 'Charlotte', 'NC', '28217');

-- --------------------------------------------------------

--
-- Table structure for table `brewery_reviews`
--

CREATE TABLE `brewery_reviews` (
  `id` int(11) NOT NULL,
  `brewery` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brewery_reviews`
--

INSERT INTO `brewery_reviews` (`id`, `brewery`, `user`, `review`, `rating`, `date`) VALUES
(1, 1, 'anjani', 'Family friendly place, felt comfortable letting our daughter explore the grounds while we sat outside sipping suds!! Outside is casual with a food truck inside you get more food options. Everything we had was good. Did a flight found a few new favorite beers!! Look forward to going back!', 5, '2017-04-28 23:18:22'),
(2, 1, 'krutika', 'Pretty good. The kinds of beers they brew aren\'t really \"my thing\" but they aren\'t bad by any means. They have the best food selection of any local brewery--and it\'s pretty good. It is a very large seating area and HUGE outdoor seating area with an outdoor bar. Overall not a bad place to go.', 4, '2017-04-28 23:18:22'),
(3, 3, 'anjani', 'Best brewer in Charlotte. New location has plenty of seating with great outside patio/game area. Dog friendly outside. Personal favorites: Ramble on Red and Jam Session. Sells 4-pack cans on site.', 5, '2017-04-28 23:18:22'),
(4, 3, 'krutika', 'The venue is great with plenty of indoor and outdoor seating! The beer is great and they have options for everyone\'s palate. The weekly \"NoDable\" beer was amazing. If they bring it back, you have to try the Fuzzy IPA!', 5, '2017-04-28 23:18:22'),
(5, 3, 'christopher', 't was super busy while we were there, huge line, no where to park. Service was insanely fast for how busy they were and friendly as heck. Between 3 of us, we got two flights. Wasn\'t a fan of most of the beers, but there were a few of outstanding ones, the Two to Tango for example was really good. All and all a great time was had.', 4, '2017-04-28 23:18:22'),
(6, 1, 'vamshedhar', 'Test Review', 3, '2017-04-29 03:13:46'),
(8, 2, 'vamshedhar', 'assasasa', 3, '2017-04-29 07:34:53'),
(9, 1, 'vamshedhar', 'adscs dsdsd', 3, '2017-04-29 07:35:16'),
(10, 4, 'vamshedhar', 'sddsds ', 5, '2017-04-29 07:37:16');

--
-- Triggers `brewery_reviews`
--
DELIMITER $$
CREATE TRIGGER `UPDATE_BREWERY_REVIEW_COUNT` AFTER INSERT ON `brewery_reviews` FOR EACH ROW CALL UPDATE_BREWERY_REVIEW_COUNT(NEW.brewery)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `review_tags`
--

CREATE TABLE `review_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review_tags`
--

INSERT INTO `review_tags` (`id`, `tag`) VALUES
(1, 'Must Try'),
(2, 'Awsome'),
(3, 'Bitter'),
(4, 'Sweet'),
(5, 'Clear');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `first_name`, `middle_name`, `last_name`, `type`) VALUES
('aditya', 'qwerty', 'Sai Aditya Varma', NULL, 'Mudunuri', 'ADMIN'),
('anjani', 'qwerty', 'Anjani', NULL, 'Nalla', 'USER'),
('christopher', 'qwerty', 'Christopher', NULL, 'Dong', 'MANAGER'),
('krutika', 'qwerty', 'Krutika', NULL, 'Patil', 'USER'),
('tanmesh', 'qwerty', 'Tanmesh', NULL, 'Sharma', 'MANAGER'),
('vamshedhar', 'qwerty', 'Vamshedhar Reddy', NULL, 'Chintala', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`type`, `description`) VALUES
('ADMIN', 'Has all permissions'),
('BREWERY', 'BREWERY owners. Can add beers of their breweries. '),
('MANAGER', 'Can add beer types, breweries and beers'),
('USER', 'For website users. They can read/write reviews.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beer_review_tags`
--
ALTER TABLE `beer_review_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_review_id` (`review`),
  ADD KEY `tags_tag_id` (`tag`);

--
-- Indexes for table `beer_reviews`
--
ALTER TABLE `beer_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_user_id` (`user`),
  ADD KEY `review_beer_id` (`beer`);

--
-- Indexes for table `beer_types`
--
ALTER TABLE `beer_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_name` (`name`);

--
-- Indexes for table `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beer_type` (`type_id`),
  ADD KEY `beer_brewery` (`brewery`);

--
-- Indexes for table `brewery`
--
ALTER TABLE `brewery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brewery_reviews`
--
ALTER TABLE `brewery_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_brewery_id` (`brewery`),
  ADD KEY `brewery_review_user_id` (`user`);

--
-- Indexes for table `review_tags`
--
ALTER TABLE `review_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `user_type` (`type`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beer_review_tags`
--
ALTER TABLE `beer_review_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beer_reviews`
--
ALTER TABLE `beer_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `beer_types`
--
ALTER TABLE `beer_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `beers`
--
ALTER TABLE `beers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `brewery`
--
ALTER TABLE `brewery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brewery_reviews`
--
ALTER TABLE `brewery_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `review_tags`
--
ALTER TABLE `review_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `beer_review_tags`
--
ALTER TABLE `beer_review_tags`
  ADD CONSTRAINT `tags_review_id` FOREIGN KEY (`review`) REFERENCES `beer_reviews` (`id`),
  ADD CONSTRAINT `tags_tag_id` FOREIGN KEY (`tag`) REFERENCES `beer_review_tags` (`id`);

--
-- Constraints for table `beer_reviews`
--
ALTER TABLE `beer_reviews`
  ADD CONSTRAINT `review_beer_id` FOREIGN KEY (`beer`) REFERENCES `beers` (`id`),
  ADD CONSTRAINT `review_user_id` FOREIGN KEY (`user`) REFERENCES `user` (`username`);

--
-- Constraints for table `beers`
--
ALTER TABLE `beers`
  ADD CONSTRAINT `beer_brewery` FOREIGN KEY (`brewery`) REFERENCES `brewery` (`id`),
  ADD CONSTRAINT `beer_type` FOREIGN KEY (`type_id`) REFERENCES `beer_types` (`id`);

--
-- Constraints for table `brewery_reviews`
--
ALTER TABLE `brewery_reviews`
  ADD CONSTRAINT `brewery_review_user_id` FOREIGN KEY (`user`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `review_brewery_id` FOREIGN KEY (`brewery`) REFERENCES `brewery` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_type` FOREIGN KEY (`type`) REFERENCES `user_types` (`type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
