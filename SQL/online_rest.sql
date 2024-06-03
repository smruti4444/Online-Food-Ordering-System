-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 04:30 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'Gujju uHemalata', 'GH807', 'gujjuhemalata2001@gmail.com', 'GH807', '2022-05-18 04:28:57'),
(2, 'Bodata Roshni', 'BR223', 'bodataroshni19@gmail.com', 'BR223', '2022-05-18 04:29:21'),
(3, 'Omshree Patro', 'OP627', 'omshreepatro@gmail.com', 'OP627', '2022-05-18 04:29:21'),
(4, 'Bishnupriya Patra', 'BP812', 'patrabishnupriya11@gmail.com', 'BP812', '2022-05-18 04:29:21'),
(5, 'Simran Dash', 'SD811', 'simrandash936@gmail.com', 'SD811', '2022-05-18 04:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'GH807'),
(2, 'BR223'),
(3, 'OP627'),
(4, 'BP812'),
(5, 'SD811');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 1, 'Bali Prawn', 'Tiger Prawns coated with cornflakes, deep fried, served with Chilli sause', '339.00', 'Baliprawn.jpg'),
(18, 1, 'Azwani Fish Tikka', 'Club pieces of Fish marinated with tandoori spices', '269.00', 'Fishtikka.jpg'),
(19, 1, 'Manchow Soup', 'Delightful thick soup which gets an extra bit of crunch with a garnish of deep-fried crispy noodles.', '89.00', 'manchowsoup.jpg'),
(20, 1, 'Nizami Paneer Tikka', 'Slices cottage cheese marinated with Cashew nuts and Tandoor cooked in Charcoal BBQ', '179.00', 'Nizamipaneertikka.jpg'),
(21, 1, '9th Street\'s Special Veg Platter', 'Tandoori Gobi, Mushroom, Paneer and Baby Corn', '279.00', 'vegplatter.jpg'),
(22, 1, 'Kali Mirchi Tikka', 'Boneless Chicken pieces marinated with tandoor spices', '199.00', 'kalimirchitikka.jpg'),
(23, 1, 'Dragon Soup', 'The soup coming with chopped veg in red colour', '79.00', 'dragonsoup.jpg'),
(24, 1, 'Cauliflower Taipei ', 'Authentic taipei style sauce tossed with crispy cauliflower', '149.00', 'cauliflowertaipei.jpeg'),
(25, 1, 'Schezwan Noddles', 'Noddles with spicy schezwan sauce and hakka noddles with soy sauce', '129.00', 'schezwannoddles.jpg'),
(26, 1, 'Chicken Biriyani', 'Savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together', '189.00', 'chickenbiryani.jpg'),
(27, 1, 'Chicken Lolliop', 'Frenched chicken winglet served hot with szechuan sauce', '159.00', 'chickenlollipop.jpg'),
(28, 1, 'Kitkat Shake', 'Luscious, chocolaty mouth-feel punctuated by crunchy titbits of KitKat', '99.00', 'Kitkatshake.jpg'),
(29, 1, 'Fruit Salad with Ice Cream', 'Consisting of various kinds of fruit served with Ice cream', '149.00', 'fruitsaladwithicecream.jpg'),
(30, 1, 'Alaska', 'Ice cream placed in a pie dish, lined with slices of sponge cake and topped with meringue', '109.00', 'alaska.jpg'),
(40, 2, 'Creamy Tomato Basil Soup', 'Fresh Tomato Soup with a rich creamy texture and corriander', '99.00', 'Tomatobasilsoup.jpg'),
(41, 2, 'Oriental sweet Corn Soup (Veg/Chicken)', 'Crushed/whole corn together with a colorful assortment of juicy vegetables', '129.00', 'Sweetcornsoup.jpeg'),
(42, 2, 'Mixed Sauce Pasta', 'Choice of pasta in pink sauce with creamy texture', '229.00', 'MixedSaucePasta.jpeg'),
(43, 2, 'Mushroom Risotto', 'Rice in white sauce and fresh mushrooms with parmesan cheese', '219.00', 'MushroomRisotto.jpeg'),
(44, 2, 'loaded Nachos', 'Crispy tortila chips topped with veggies served with salsa and sour cream', '199.00', 'Nachos.jpeg'),
(45, 2, 'Texas Spicy Chili Wings', 'Chicken wings tossed in texas spicy chili sauce', '299.00', 'ChickenWings.jpeg'),
(46, 2, 'Rajvada Paneer', 'Crushed of cottage cheese and dry fruits stuffed in paneer and cooked in clay oven', '189.00', 'RajvadaPaneer.jpeg'),
(47, 2, 'Chicken Malai Kabab', 'Mouth melting chicken kabab marinated with cream,nut and yogurt paste', '249.00', 'ChickenKabab.jpeg'),
(48, 2, 'Japanese Panko Fried Prawn', 'Fresh chilika lake prawn marinated with lemon and pepper coated with japanese panko', '329.00', 'FriedPrawn.jpeg'),
(49, 2, 'Slice Fish & Mix greens in butter sauce', 'Slice of fish with mixed green vegetables cooked in garlic butter sauce', '189.00', 'fishbuttersauce.jpg'),
(50, 2, 'Choco Truffle Cake', 'Chocolate ganache centre coated in chocolate, cocoa powder, coconut, or chopped and toasted nuts', '169.00', 'ChocoCake.jpeg'),
(51, 2, 'Gulab jamun with choice of Ice-cream', 'Fried dumpling that are made of thickened milk and then soaked in a sugar syrup topped with ice cream', '79.00', 'Gulabjamunicecream.jpg'),
(52, 2, 'Chocolate Smoothie', 'Drink having liquid base such as milk, yogurt, ice cream including chocolate', '139.00', 'ChocolateSmoothie.jpeg'),
(53, 2, 'Oreo Shake', 'Oreos combine with ice cream, milk, chocolate sauce topped with whipped cream', '139.00', 'OreoShake.jpeg'),
(54, 3, 'Tandoori veg platter', 'An assortment vegetable kebabs', '339.00', 'TandooriVegplatter.jpg'),
(55, 3, 'Veg hara bhara kebab', 'Deep fried mashed vegetables & cottage cheese spinch cake', '169.00', 'HaraBharaKabab.jpg'),
(56, 3, 'Choice of chicken', 'Butter masala, kadhai, curry, kassa, methi,punjabi,hydrabadi', '269.00', 'Chicken.jpeg'),
(57, 3, 'Malva\'s signature chicken dish', 'Dum ka murgh, chicken dak bangle', '279.00', 'Malvachicken.jpg'),
(58, 3, 'Mutton delicacies', 'Rogan josh, kasa,home style', '339.00', 'Mutton.jpg'),
(59, 3, 'Fish finger', 'Fried crumb fish stick served with tatar sauce', '299.00', 'FishFinger.jpg'),
(60, 3, 'Stuffed mushroom', 'Juicy fresh mushroom caps stuffed with garlic and cheese, deep fried served eith herb mayo', '299.00', 'StuffedMushrooms.jpg'),
(61, 3, 'Vegetable manchow soup', 'A vegetable soup with soya based', '110.00', 'VegetableManchowSoup.jpg'),
(62, 3, 'Lung fung soup', 'A specialty of us with chicken, prawn laced with egg white', '129.00', 'LungFungSoup.jpg'),
(63, 3, 'Caesar Salad Chicken', 'Lettuce, croutons, egg, grilled chicken, & caesar dressing', '239.00', 'ChickenCaesar.jpg'),
(64, 3, 'Nawabi Gobi Mutter', 'Fresh cauliflower & green peas cooked in cashew nut gravy', '220.00', 'GobiMutter.jpeg'),
(65, 3, 'Mexicano Chocolet Churros', 'Choux pasta deep fried and rolled in cinnamon & caster sugar served with hot chocolate sauce ', '150.00', 'churros.jpg'),
(66, 3, 'Caramel Custard ', 'Soft caramel on top as ooposed to creame brulee which is pudding with a herd caramel top', '169.00', 'CaramelCustardPudding.jpg'),
(67, 3, 'Chocolate Brownie', 'Hot chocolate brownie served with chocolate sauce', '189.00', 'Brownie.jpg'),
(81, 5, 'Club Sandwich', 'Three slices of toasted bread layered with tomato, cucumber, lettuce and cheese', '325.00', 'Sandwich.jpeg'),
(82, 5, 'Chicken burger\r\n', 'Chicken patty, baby lettuce, tomato and cheese slice ', '325.00', 'Chickenburger.jpeg'),
(83, 5, 'Hot and Sour Soup', 'Thick sour and spicy soup', '235.00', 'HotAndSourSoup.jpeg'),
(84, 5, 'Roasted Tomato and Coriander Soup', 'Roasted plump tomatoes simmered with coriander', '225.00', 'TomatoCorianderSoup.jpeg'),
(85, 5, 'Penne Arriabiata', 'Whole wheat penne tossed with crushed tomatoes and chillies', '395.01', 'Arriabiata.jpeg'),
(86, 5, 'Omelette ', 'Egg white omelette with multi grained toasted', '205.00', 'Omelette.jpg'),
(87, 5, 'Sushi', 'Cooked rice flavoured with vinegar and a variety of vegetable, egg or raw seafood garnishes', '239.00', 'Sushi.jpg'),
(88, 5, 'Pancakes', 'Flat cake contains eggs, milk and butter ', '139.00', 'Pancake.jpeg'),
(89, 5, 'Pan seared fish With Lemon Butter Sauce', 'Grilled fish in lemon butter sauce', '495.00', 'FishButtersauce.jpeg'),
(90, 5, 'Smoothies', 'Banana/mix fruit', '205.00', 'Smoothies.jpeg'),
(91, 5, 'Cold coffee with Ice cream', 'Blending coffee with milk and ice cream', '255.00', 'Coldcoffee.jpg'),
(92, 5, 'Gulab Jamun', 'Fried dumpling that are made of thickened milk and then soaked in a sugar syrup', '175.00', 'GulabJamun.jpeg'),
(93, 5, 'Walnut fudge Brownie with ice Cream', 'Warm and fudgy with premium ice cream melting on top with Chocolate walnut brownie', '325.00', 'walnutbrownie.jpg'),
(94, 5, 'Chocolate Cake', 'Cake flavored with melted chocolate, cocoa powder', '155.00', 'ChocolateCake.jpeg'),
(95, 4, 'Singapore Rice Noodles', 'Noodle made from rice flour and water having mild subtle flavor and a chewy texture', '225.00', 'Singaporericenoodles.jpg'),
(96, 4, 'Jiangs Chilli Chicken', 'Sweet, Spicy and crispy appetizer having boneless chicken', '450.00', 'ChilliChicken.jpeg'),
(97, 4, 'Veg Chilli Garlic Noddles', 'Noodles cooked with dry red chillies and soy sauce', '215.00', 'Garlicnoodles.jpg'),
(98, 4, 'Chicken Fried Rice', 'Cooked rice with fried chicken and mixed with other ingredients such as eggs, vegetables or meat', '225.00', 'ChickenFriedrice.jpeg'),
(99, 4, 'Chicken Sweet Corn Soup', 'Soup made of sweetcorn and Chicken', '199.00', 'Chickencornsoup.jpg'),
(100, 4, 'Prawn Peppery Lemon Soup', 'Prawn Soup with vegetables, juice and lemon Juice', '200.00', 'Prawnsoup.jpeg'),
(101, 4, 'Stir Fried Mushroom Ginger Chilli', 'Ginger Mushroom  flavoured with ginger strips and chillies', '360.00', 'Mushroomgingerchilli.jpeg'),
(102, 4, 'Crispy Chilli Potatoes', 'Crispy potato fingers glazed with chilli sauce', '320.00', 'ChilliPotatoes.jpeg'),
(103, 4, 'Pan Fried Chilli Fish', 'Fried Fish tossed with spicy chilli sauce', '470.00', 'Chillifish.jpeg'),
(104, 4, 'Momo', 'Steamed dumpling with some form of filling', '319.00', 'Momo.jpeg'),
(105, 4, 'Brownie With Hot Chocolate Sauce', 'Super soft brownie served with ice crean and hot chocolate sauce', '190.00', 'Browniechocosauce.jpg'),
(106, 4, 'Hot Chocolate Rolls With Ice Cream', 'Rich chocolate sponge cake rolled with ice crean drizzled with dark chocolate ', '225.00', 'ChocolateRolls.jpeg'),
(107, 4, 'Caramel Sponge Cake', 'Sponge and buttercream are flavoured with caramel in the cake, topped with nuggets and caramel sauce', '295.00', 'Spongecake.jpg'),
(108, 4, 'Chocolate Dome With Warm Chocolate Sauce', 'Melting chocolate Balls and freeze into the spherical shape with ice cream and various ingredients in it', '325.00', 'ChocolateDome.jpg\r\n'),
(109, 6, 'Dakgalbi', 'Spicy stir-fried chicken dish made with boneless chicken pieces, green cabbage, sweet potato and other vegetables', '169.00', 'Dakgalbi.jpg'),
(110, 6, 'Bibimbap', 'Rice bowl of vegetables, meat, egg and various vegetables', '200.00', 'Bibimbap.jpg'),
(111, 6, 'Manduguk', 'Soup made with dumplings', '185.00', 'Manduguk.jpg'),
(112, 6, 'Kimchi', 'Side dish of salted and fermented vegetables', '90.00', 'Kimchi.jpg'),
(113, 6, 'Gimbap', 'Cooked rice with ingredients such as vegetables, fish and meats', '110.00', 'Gimbap.jpg'),
(114, 6, 'Dakdoritang', 'Spicy Chicken with vegetables such as potatoes, carrots and onions', '155.00', 'Dakdoritang.jpg'),
(115, 6, 'Jajangmyeon', 'Noodle in a black bean sauce', '190.00', 'Jajangmyeon.jpg'),
(116, 6, 'Tteokbokki', 'Stir Fried rice cake with boiled egg and scallions', '140.00', 'Tteokbokki.jpg'),
(117, 6, 'Ramen', 'Wheat noodles served with meat, egg and vegetables', '150.00', 'Ramen.jpg'),
(118, 6, 'Dakgangjeong', 'Fried chickn glazed in a sticky, sweet and spicy sauce', '230.00', 'Dakgangjeong.jpg'),
(119, 6, 'Dasik', 'Cookie accompanied by tea', '85.00', 'Dasik.jpg'),
(120, 6, 'Bingsu', 'Ice dessert with sweet toppings', '99.00', 'Bingsu.jpg'),
(121, 6, 'Yugwa', 'Glutinous rice mixed with honey, water and rice wine', '75.00', 'Yugwa.jpg'),
(122, 6, 'Yakgwa', 'Deep fried, wheat based made with honey, sesame oil and ginger juice', '90.00', 'Yakgwa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`, `review`) VALUES
(1, 5, '9th Street', '9thStreet@gmail.com', '9090909907', '9th-street.business.site', '11:30am', '11pm', 'mon-sun', 'BDA City Centre Limited, Near NICCO Park, Lake Area, Unit 4, Madhusudan Nagar, Bhubaneswar, Odisha 751012', '9thstreet.jpg', '2022-05-17 13:57:35', 785),
(2, 6, 'Havana cafe & Resto', 'cc@havanacafeandresto.com', '9938848815', 'Havanacafeandresto.com', '11am', '9:30pm', 'sun-sat', 'DLF Cybercity-Mindfire Solutions,Technology Corridor,Chandaka Industrial Estate,Patia,Bhubaneswae,Odisha,751024', 'Havana.jpg', '2022-05-18 03:29:19', 688),
(3, 7, 'Malva Restaurant', 'Vaishno@gmail.com', '09040096077', 'Malvarestaurant.com', '11:45am', '10:30pm', 'sun-sat', 'KIIT ,Plot No. 1307,3B,4th floor ,Expo Towers, Nandankanan Rd, Patia, Bhubaneswar, Odisha 751024 ', 'Malvares.jpeg', '2022-05-19 03:24:44', 954),
(4, 8, 'Mainland China Resturant', 'martin@gmail.com', '09338832133', 'mainlandchina.in', '12pm', '9pm', 'sun-sat', '399 L Near Apple Showroom, Model Town,', 'mainland.jpeg', '2022-05-19 03:39:36', 907),
(5, 9, 'Tea Pot', 'teaport@gmail.com', '09238413099', 'teapot.com', '7am', '11pm', 'Sun-Sat', 'Shop No 8 MayFair Lagoon, Jayadev Vihar, Bhubaneswar, Odisha, 751013', 'Teapot.jpeg', '2022-05-19 03:04:49', 879),
(6, 10, 'Backstreet Kitchen', 'backstreet@backstreet.in', '7008091432', 'backstreet.in', '4:30pm', '10pm', 'sun-mon', 'F-16, Flat no 003, Saudamini Enclave, Lane 13, BJB Nagar, Bhubaneswar, Odisha, 751014', 'Backstreet.jpeg', '2022-05-19 03:17:55', 689);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'Simran', 'Simran', 'Dash', 'simran123@gmail.com', '8918272562', '0367f9e0cf4653f94110318342ea249a', '', 1, '2022-05-18 03:50:19'),
(2, 'Karishma', 'Karishma', 'Pattnaik', 'karishmapattnaik000@gmail.com', '9547382577', '19313ed5ecc29b72abe4af0ebade2399', '', 1, '2022-05-18 04:35:13'),
(3, 'rosni reddy', 'rosni', 'reddy', 'rosni@gmail.com', '9547382577', 'd589236f9bd32621501f78be6fd7afe6', '', 1, '2022-05-18 04:42:06'),
(4, 'gujju hema', 'gujju', 'hema', 'gujju@gmail.com', '8280568836', '6e4259dabc319d63d72d73b43f7e5dda', '', 1, '2022-05-18 04:46:41'),
(5, 'sweta sahu', 'sweta', 'sahu', 'sweta@gmail.com', '7698742502', '0bae2becdad14815f11dcfd43c0df165', '', 1, '2022-05-18 04:51:48'),
(6, 'rani dash', 'rani', 'Dash', 'rani@gmail.com', '4568921104', '197257598b799cf9c865b3572a908f4a', '', 1, '2022-05-18 04:58:20'),
(7, 'mahi dash', 'mahi', 'Dash', 'mahi@gmail.com', '7680942131', '9e190716d31b3de9810e0741e7a83ecd', '', 1, '2022-05-18 05:03:46'),
(8, 'karina patro', 'karina', 'patro', 'karina@gmail.com', '3214098765', '444fec8a696920a82e6800cb8cb0fa5d', '', 1, '2022-05-18 05:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Bali Prawn', 1, '339.00', NULL, '2022-05-18 03:51:12'),
(2, 2, 'Mixed Sauce Pasta', 1, '229.00', NULL, '2022-05-18 04:36:09'),
(3, 2, 'Gulab jamun with choice of Ice-cream', 1, '79.00', NULL, '2022-05-18 04:36:09'),
(4, 3, 'Veg hara bhara kebab', 1, '169.00', NULL, '2022-05-18 04:42:56'),
(5, 3, 'Choice of chicken', 1, '269.00', NULL, '2022-05-18 04:42:56'),
(6, 3, 'Veg hara bhara kebab', 1, '169.00', NULL, '2022-05-18 04:43:27'),
(7, 3, 'Choice of chicken', 1, '269.00', NULL, '2022-05-18 04:43:27'),
(8, 4, 'Jiangs Chilli Chicken', 1, '450.00', NULL, '2022-05-18 04:47:28'),
(9, 4, 'Singapore Rice Noodles', 1, '225.00', NULL, '2022-05-18 04:47:28'),
(12, 5, 'Chicken burger\r\n', 1, '325.00', NULL, '2022-05-18 04:53:06'),
(13, 5, 'Penne Arriabiata', 1, '395.01', NULL, '2022-05-18 04:53:06'),
(16, 6, 'Manduguk', 1, '185.00', NULL, '2022-05-18 04:59:20'),
(17, 6, 'Dakgalbi', 1, '169.00', NULL, '2022-05-18 04:59:20'),
(18, 7, 'Gimbap', 1, '110.00', NULL, '2022-05-18 05:05:18'),
(19, 7, 'Jajangmyeon', 1, '190.00', NULL, '2022-05-18 05:05:18'),
(20, 8, 'Nawabi Gobi Mutter', 1, '220.00', NULL, '2022-05-18 05:12:30'),
(21, 8, 'Nawabi Gobi Mutter', 1, '220.00', NULL, '2022-05-18 05:12:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
