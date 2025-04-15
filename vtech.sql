-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 03:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `waranty` varchar(255) DEFAULT NULL,
  `device_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(100) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_phone` varchar(12) NOT NULL,
  `cust_add` varchar(1000) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_password`, `cust_phone`, `cust_add`, `user_type`) VALUES
(3, 'imran', 'imran@gmail.com', 'e0113b23a9fb5b90de4021c6c8e51278', '011-1786 647', 'asas', 'admin'),
(4, 'rocket', 'rocket@gmail.com', 'bfa0f9e51be00f0835c313f252dcecaf', '011-1786 647', '10682, KG Bukit Tunggal, 21200, Kuala Nerus, Terengganu', 'user'),
(5, 'Arashy', 'arashy@gmail.com', 'ccc125809691a4918fcf742288839c0d', '', 'd41d8cd98f00b204e9800998ecf8427e', 'admin'),
(6, 'Hilman', 'hilman@gmail.com', 'd0ec6976ee95e0ad6e71559a02c0ea13', '', '', 'admin'),
(7, 'Tobei', 'nikaniq@gmail.com', '76c5c832a0cfba1f8f222085b46f1c92', '', '', 'admin'),
(8, 'Caer', 'niksyahir@gmail.com', '1cc8ca93a53b61074e71279c88ec970b', '', '', 'admin'),
(9, 'Azib', 'azib@gmail.com', '47213254eafbad5dad80f63dc9b5af2d', '', '', 'admin'),
(10, 'drRocket', 'drrocket@gmail.com', 'd74e7bb994b3526dea55ef596895acc8', '', '', 'user'),
(11, 'armin', 'armin@gmail.com', 'fa2253a5299665b6b9243d38921be9c8', '', '', 'user'),
(12, 'Karl', 'Karl_321@gmail.com', 'bcefca209b6a375328401b13459c17fc', '011-62475824', '10682, KG Bukit Tunggal', 'user'),
(13, 'mucin', 'mucin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '011-1786 647', '10682, KG Bukit Tunggal', 'user'),
(14, 'imran01', 'imran01@gmail.com', 'e0113b23a9fb5b90de4021c6c8e51278', '011-1786 647', '10682, KG Bukit Tunggal', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `deviceID` int(225) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `build` varchar(255) DEFAULT NULL,
  `sim` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `rear` varchar(255) DEFAULT NULL,
  `selfie` varchar(255) DEFAULT NULL,
  `wintb` varchar(255) DEFAULT NULL,
  `spline_url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`deviceID`, `Name`, `price`, `image`, `dimension`, `weight`, `build`, `sim`, `os`, `chipset`, `cpu`, `gpu`, `rear`, `selfie`, `wintb`, `spline_url`) VALUES
(2, 'iPhone XR', '899', 'ipXR_Red.png', '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 12, upgradable to iOS 15', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)', '12 MP, f/1.8, 26mm (wide), 1/2.55', '7 MP, f/2.2, 32mm (standard), SL 3D, (depth/biometrics sensor)', 'iPhone XR, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphonexr-90227a28924479e7469e60c89ba2b2bb/'),
(4, 'iPhone XS', '899', 'ipXS_Gold.png', '143.6 x 70.9 x 7.7 mm (5.65 x 2.79 x 0.30 in)', '177 g (6.24 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Nano-SIM, eSIM', 'iOS 12, upgradable to iOS 15', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)', '2 MP, f/1.8, 26mm (wide), 1/2.55', '7 MP, f/2.2, 32mm (standard) SL 3D, (depth/biometrics sensor)', 'iPhone XS, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphonexsproject-69e2ffb241397f9331311196e8e07095/'),
(5, 'iPhone XS Max', '999', 'ipXS_White.png', '157.5 x 77.4 x 7.7 mm (6.20 x 3.05 x 0.30 in)', ' 208 g (7.34 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 12, upgradable to iOS 15', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)', '12 MP, f/1.8, 26mm (wide), 1/2.55', '7 MP, f/2.2, 32mm (standard) SL 3D, (depth/biometrics sensor)', 'iPhone XS Max, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphonexsmaxproject-5d3c2c71c2f37a03badb18df29af7449/'),
(6, 'iPhone 11', '999', 'ip11_Green.png', '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 13, upgradable to iOS 16.3', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)', '12 MP, f/1.8, 26mm (wide), 1/2.55', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 11, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone11project-53088f5e79c66a18263cb68880d5cd47/'),
(7, 'iPhone 11 Pro', '1299', 'ip11Pro_Gold.png', '144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)', '188 g (6.63 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Single SIM (Nano-SIM and/or eSIM)', 'iOS 13, upgradable to iOS 15', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)', '12 MP, f/1.8, 26mm (wide), 1/2.55', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 11 Pro, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone11pro-5c726bc89b4a77e2c90f3aa5874b4e15/'),
(8, 'iPhone 11 Pro Max', '1699', 'ip11Pro_Green.png', '158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)', '226 g (7.97 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Single SIM (Nano-SIM and/or eSIM)', 'iOS 13, upgradable to iOS 15', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)', '12 MP, f/1.8, 26mm (wide), 1/2.55', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 11 Pro Max, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone11promaxproject-7dbdb0e8283d8294810a9e2626e62ab8/'),
(9, 'iPhone 12', '1399', 'ip12_Blue.png', '146.7 x 71.5 x 7.4 mm (5.78 x 2.81 x 0.29 in)', '164 g (5.78 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame', 'Dual SIM (1 Nano SIM & 1 eSIM)', 'iOS 14.1, upgradable to iOS 15', 'Apple A14 Bionic (5 nm)', 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.4Âµm, dual pixel PDAF, OIS 12 MP, f/2.4, 13mm, 120Ëš (ultrawide), 1/3.6', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 12, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone12project-94021f6c76998122ff6d9a3ac2fdea04/'),
(10, 'iPhone 12 Mini', '1199', 'ip12_Green.png', '131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)', '135 g (4.76 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 14.1, upgradable to iOS 15', 'Apple A14 Bionic (5 nm)', 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.4Âµm, dual pixel PDAF, OIS 12 MP, f/2.4, 13mm, 120Ëš (ultrawide), 1/3.6', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 12 Mini, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone12projectmini-8df1add60c68183dc4e42687d5972933/'),
(11, 'iPhone 12 Pro', '1899', 'ip12Pro_Gold.png', '146.7 x 71.5 x 7.4 mm (5.78 x 2.81 x 0.29 in)', '189 g (6.67 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Dual SIM (1 Nano SIM & 1 eSIM)', 'iOS 14.1, upgradable to iOS 15', 'Apple A14 Bionic (5 nm)', 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.4Âµm, dual pixel PDAF, OIS 12 MP, f/2.0, 52mm (telephoto), 1/3.4', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 12 Pro, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone12proproject-17b65a73abc90f57e67b84dc2dc9466f/'),
(13, 'iPhone 12 Pro Max', '2299', 'ip12Pro_Blue.png', '160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29 in)', '228 g (8.04 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Dual SIM (1 Nano SIM & 1 eSIM)', 'iOS 14.1, upgradable to iOS 15', 'Apple A14 Bionic (5 nm)', 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.2, 65mm (telephoto), 1/3.4', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 12 Pro Max, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone12promaxproject-6533510d4a1d2fbe62cd7083197e3165/'),
(14, 'iPhone 13', '2299', 'ip13_Blue.png', '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)', '174 g (6.14 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 15, upgradable to iOS 15.2', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.4, 120Ëš, 13mm (ultrawide)', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 13, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone13copy-aa78bad39fb114472f7d7d11bf0af7e2/'),
(15, 'iPhone 13 Mini', '1899', 'ip13_Midnight.png', '131.5 x 64.2 x 7.7 mm (5.18 x 2.53 x 0.30 in)', '141 g (4.97 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)', 'iOS 15, upgradable to iOS 15.3', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Apple GPU (4-core graphics)', '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.4, 120Ëš, 13mm (ultrawide)', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 13 Mini, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone13miniproject-86d23bfe22aba35a28b07319c2f718ba/'),
(16, 'iPhone 13 Pro', '2699', 'ip13Pro_Green.png', '160.8 x 78.1 x 7.7 mm (6.33 x 3.07 x 0.30 in)', '240 g (8.47 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM/eSIM, dual stand-by)', 'iOS 15, upgradable to iOS 15.2', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Apple GPU (5-core graphics)', 'Quad, 12 MP, f/1.5, 26mm (wide), 1.9Âµm, dual pixel PDAF, sensor-shift OIS,12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom, 12 MP, f/1.8,13mm, 120Ëš (ultrawide), PDAF, TOF 3D LiDAR scanner (depth)', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 13 Pro, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone13proproject-683facb7a2bef52e5d41a47804d220eb/'),
(17, 'iPhone 13 Pro Max', '2999', 'ip13Pro_Silver.png', '160.8 x 78.1 x 7.7 mm (6.33 x 3.07 x 0.30 in)', '240 g (8.47 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame', 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM/eSIM, dual stand-by)', 'iOS 15, upgradable to iOS 15.2', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)', 'Apple GPU (5-core graphics)  Camera', 'Quad, 12 MP, f/1.5, 26mm (wide), 1.9Âµm, dual pixel PDAF, sensor-shift OIS,12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom, 12 MP, f/1.8,13mm, 120Ëš (ultrawide), PDAF, TOF 3D LiDAR scanner (depth)', '12 MP, f/2.2, 23mm (wide), 1/3.6', 'iPhone 13 Pro Max, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone13promaxproject-c3e6dc01ef797a909429bf4fe8948b7b/'),
(18, 'iPhone 14', '2699', 'iphone-14-Midnight.png', '146.7 x 71.5 x 7.8 mm (5.78 x 2.81 x 0.31 in)', '172 g (6.07 oz)', 'Glass front (Corning-made glass), glass back (Corning-made glass), aluminum frame', 'Nano-SIM and eSIM', 'iOS 16, upgradable to iOS 16.0.3', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)', 'Apple GPU (5-core graphics)', '12 MP, f/1.5, 26mm (wide), 1/1.7', '12 MP, f/1.9, 23mm (wide), 1/3.6', 'iPhone 14, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone14project-0845779a6a2b09c05af8df6e405cef34/'),
(19, 'iPhone 14 Plus', '3099', 'iphone-14-Red.png', '160.8 x 78.1 x 7.8 mm (6.33 x 3.07 x 0.31 in)', '203 g (7.16 oz)', 'Glass front (Corning-made glass), glass back (Corning-made glass), aluminum frame', 'Nano-SIM and eSIM', 'iOS 16, upgradable to iOS 16.0.3', 'Apple A15 Bionic (5 nm)', 'Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard)', 'Apple GPU (5-core graphics)', '12 MP, f/1.5, 26mm (wide), 1/1.7', '12 MP, f/1.9, 23mm (wide), 1/3.6', 'iPhone 14 Plus, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone14project-0845779a6a2b09c05af8df6e405cef34/'),
(20, 'iPhone 14 Pro', '3699', 'iphone-14-pro-Gold.png', '160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)', '240 g (8.47 oz)', 'Glass front (Corning-made glass), glass back (Corning-made glass), stainless steel frame', 'Nano-SIM and eSIM', 'iOS 16, upgradable to iOS 16.0.3', 'Apple A16 Bionic (4 nm)', 'Hexa-core (2x3.46 GHz Everest + 4x2.02 GHz Sawtooth)', 'Apple GPU (5-core graphics)', '48 MP, f/1.8, 24mm (wide), 1/1.28', '12 MP, f/1.9, 23mm (wide), 1/3.6', 'iPhone 14 Pro, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone14project-0845779a6a2b09c05af8df6e405cef34/'),
(21, 'iPhone 14 Pro Max', '3899', 'iphone-14-pro-Deep-Purple.png', '160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)', '240 g (8.47 oz)', 'Glass front (Corning-made glass), glass back (Corning-made glass), stainless steel frame', 'Nano-SIM and eSIM', 'iOS 16, upgradable to iOS 16.0.3', 'Apple A16 Bionic (4 nm)', 'Hexa-core (2x3.46 GHz Everest + 4x2.02 GHz Sawtooth)', 'Apple GPU (5-core graphics)', '48 MP, f/1.8, 24mm (wide), 1/1.28', '12 MP, f/1.9, 23mm (wide), 1/3.6', 'iPhone 14 Pro Max, USB-C to Lightning Cable, Manual, VTech Gurantee Sticker', 'https://my.spline.design/iphone14project-0845779a6a2b09c05af8df6e405cef34/');

-- --------------------------------------------------------

--
-- Table structure for table `deviceattributes`
--

CREATE TABLE `deviceattributes` (
  `DeviceID` int(11) NOT NULL,
  `AttributesID` int(255) NOT NULL,
  `DeviceColorText` varchar(255) DEFAULT NULL,
  `DeviceColor` varchar(255) DEFAULT NULL,
  `DeviceCapacity` varchar(255) DEFAULT NULL,
  `ImageColor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deviceattributes`
--

INSERT INTO `deviceattributes` (`DeviceID`, `AttributesID`, `DeviceColorText`, `DeviceColor`, `DeviceCapacity`, `ImageColor`) VALUES
(1, 1, 'Space Gray', 'gray', '64GB', 'image/X/X/iphonex.png'),
(1, 2, 'Silver', 'silver', '128GB', 'image/X/X/iphonex2.png'),
(2, 1, 'Blue', 'lightskyblue', '64GB', 'image/X/XR/ipXR_Blue.png'),
(2, 2, 'Coral', 'coral', '128GB', 'image/X/XR/ipXR_Coral.png'),
(2, 3, 'Red', 'red', '256GB', 'image/X/XR/ipXR_Red.png'),
(2, 4, 'White', 'white', '', 'image\\X\\XR\\ipXR_White.png'),
(4, 1, 'Silver Gray', 'gray', '64GB', 'image/X/XS/ipXS_Black.png'),
(4, 2, 'Gold', 'blanchedalmond', '128GB', 'image/X/XS/ipXS_Gold.png'),
(4, 3, 'White', 'white', '256GB', 'image/X/XS/ipXS_White.png'),
(5, 1, 'Space Gray', 'gray', '64GB', 'image/X/XS/ipXS_Black.png'),
(5, 2, 'Gold', 'blanchedalmond', '128GB', 'image/X/XS/ipXS_Gold.png'),
(5, 3, 'White', 'white', '256GB', 'image/X/XS/ipXS_White.png'),
(6, 1, 'Black', 'dimgray', '64GB', 'image/XI/11/ip11_Black.png'),
(6, 2, 'Green', 'palegreen', '128GB', 'image/XI/11/ip11_Green.png'),
(6, 3, 'Red', 'red', '256GB', 'image/XI/11/ip11_Red.png'),
(6, 4, 'White', 'white', '', 'image/XI/11/ip11_White.png'),
(7, 1, 'Gold', 'peachpuff', '64GB', 'image/XI/11%20Pro/ip11Pro_Gold.png'),
(7, 2, 'Midnight Green', 'seagreen', '128GB', 'image/XI/11%20Pro/ip11Pro_Green.png'),
(7, 3, 'White', 'white', '256GB', 'image/XI/11%20Pro/ip11Pro_White-removebg-preview.png'),
(8, 1, 'Gold', 'peachpuff', '64GB', 'image/XI/11%20Pro/ip11Pro_Gold.png'),
(8, 2, 'Midnight Green', 'palegreen', '128GB', 'image/XI/11%20Pro/ip11Pro_Green.png'),
(8, 3, 'White', 'white', '256GB', 'image/XI/11%20Pro/ip11Pro_White-removebg-preview.png'),
(9, 1, 'Black', 'dimgray', '64GB', 'image/XII/12/ip12_Black.png'),
(9, 2, 'Blue', 'dodgerblue', '128GB', 'image/XII/12/ip12_Blue.png'),
(9, 3, 'Green', 'lightcyan', '256GB', 'image/XII/12/ip12_Green.png'),
(9, 4, 'Red', 'tomato', '', 'image/XII/12/ip12_Red.png'),
(10, 1, 'Black', 'dimgray', '64GB', 'image/XII/12/ip12_Black.png'),
(10, 2, 'Blue', 'dodgerblue', '128GB', 'image/XII/12/ip12_Blue.png'),
(10, 3, 'Green', 'lightcyan', '256GB', 'image/XII/12/ip12_Green.png'),
(10, 4, 'Red', 'tomato', '', 'image/XII/12/ip12_Red.png'),
(11, 1, 'Pacific Blue', 'steelblue', '64GB', 'image/XII/12%20Pro/ip12Pro_Blue.png'),
(11, 2, 'Gold', 'peachpuff', '128GB', 'image/XII/12%20Pro/ip12Pro_Gold.png'),
(11, 3, 'Graphite', 'gray', '256GB', 'image/XII/12%20Pro/ip12Pro_Graphite.png'),
(11, 4, 'White', 'white', '', 'image/XII/12%20Pro/ip12Pro_White.png'),
(13, 1, 'Pacific Blue', 'steelblue', '64GB', 'image/XII/12%20Pro/ip12Pro_Blue.png'),
(13, 2, 'Gold', 'peachpuff', '128GB', 'image/XII/12%20Pro/ip12Pro_Gold.png'),
(13, 3, 'Graphite', 'gray', '256GB', 'image/XII/12%20Pro/ip12Pro_Graphite.png'),
(13, 4, 'White', 'white', '', 'image/XII/12%20Pro/ip12Pro_White.png'),
(14, 1, 'Blue', 'dodgerblue', '64GB', 'image/XIII/13/ip13_Blue.png'),
(14, 2, 'Midnight', 'midnightblue', '128GB', 'image/XIII/13/ip13_Midnight.png'),
(14, 3, 'Pink', 'lightpink', '256GB', 'image/XIII/13/ip13_Pink.png'),
(14, 4, 'Starlight', 'snow', '', 'image/XIII/13/ip13_Starlight.png'),
(15, 1, 'Blue', 'dodgerblue', '64GB', 'image/XIII/13/ip13_Blue.png'),
(15, 2, 'Midnight', 'midnightblue', '128GB', 'image/XIII/13/ip13_Midnight.png'),
(15, 3, 'Pink', 'lightpink', '256GB', 'image/XIII/13/ip13_Pink.png'),
(15, 4, 'Starlight', 'white', '', 'image/XIII/13/ip13_Starlight.png'),
(16, 1, 'Gold', 'peachpuff', '64GB', 'image/XIII/13%20Pro/ip13Pro_Gold.png'),
(16, 2, 'Graphite', 'gray', '128GB', 'image/XIII/13%20Pro/ip13Pro_Graphite.png'),
(16, 3, 'Green', 'seagreen', '256GB', 'image/XIII/13%20Pro/ip13Pro_Green.png'),
(16, 4, 'Silver', 'white', '', 'image/XIII/13%20Pro/ip13Pro_Silver.png'),
(17, 1, 'Gold', 'peachpuff', '64GB', 'image/XIII/13%20Pro/ip13Pro_Gold.png'),
(17, 2, 'Graphite', 'gray', '128GB', 'image/XIII/13%20Pro/ip13Pro_Graphite.png'),
(17, 3, 'Green', 'seagreen', '256GB', 'image/XIII/13%20Pro/ip13Pro_Green.png'),
(17, 4, 'Silver', 'white', '', 'image/XIII/13%20Pro/ip13Pro_Silver.png'),
(18, 1, 'Midnight', 'midnightblue', '64GB', 'image/XIV/14/iphone-14-Midnight.png'),
(18, 2, 'Starlight', 'white', '128GB', 'image/XIV/14/iphone-14-Starlight.png'),
(18, 3, 'Red', 'red', '256GB', 'image/XIV/14/iphone-14-Red.png'),
(18, 4, 'Yellow', 'khaki', '', 'image/XIV/14/iphone-14-Yellow.png'),
(19, 1, 'Midnight', 'midnightblue', '64GB', 'image/XIV/14/iphone-14-Midnight.png'),
(19, 2, 'Starlight', 'white', '128GB', 'image/XIV/14/iphone-14-Starlight.png'),
(19, 3, 'Red', 'red', '256GB', 'image/XIV/14/iphone-14-Red.png'),
(19, 4, 'Yellow', 'khaki', '', 'image/XIV/14/iphone-14-Yellow.png'),
(20, 1, 'Deep Purple', 'darkslateblue', '64GB', 'image/XIV/14%20Pro/iphone-14-pro-Deep-Purple.png'),
(20, 2, 'Gold', 'peachpuff', '128GB', 'image/XIV/14%20Pro/iphone-14-pro-Gold.png'),
(20, 3, 'Silver', 'white', '256GB', 'image/XIV/14%20Pro/iphone-14-pro-Silver.png'),
(20, 4, 'Space Black', 'dimgray', '', 'image/XIV/14%20Pro/iphone-14-pro-Space-Black.png'),
(21, 1, 'Deep Purple', 'darkslateblue', '64GB', 'image/XIV/14%20Pro/iphone-14-pro-Deep-Purple.png'),
(21, 2, 'Gold', 'peachpuff', '128GB', 'image/XIV/14%20Pro/iphone-14-pro-Gold.png'),
(21, 3, 'Silver', 'white', '256GB', 'image/XIV/14%20Pro/iphone-14-pro-Silver.png'),
(21, 4, 'Space Black', 'dimgray', '', 'image/XIV/14%20Pro/iphone-14-pro-Space-Black.png'),
(22, 1, 'Space Gray', 'gray', '64GB', 'image/X/X/iphonex.png'),
(22, 2, 'Silver', 'silver', '128GB', 'image/X/X/iphonex2.png');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `user_id` int(10) NOT NULL,
  `emp_name` varchar(225) NOT NULL,
  `emp_image` varchar(225) NOT NULL,
  `hiredate` varchar(225) NOT NULL,
  `job` varchar(225) NOT NULL,
  `matric_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`user_id`, `emp_name`, `emp_image`, `hiredate`, `job`, `matric_id`) VALUES
(3, 'Muhammad Imran bin Roszaide', 'admin/photo_2021-10-13_06-56-45.jpg', '1/11/23', 'CEO', '2021832472'),
(5, 'Muhammad Arash bin Rustam Affandi', 'admin\\Arash Berkolar.jpg', '1/11/2023', 'COO', '2022966395'),
(6, 'Muhammad Nurhilman Bin Mohd Rozalee', 'admin\\WhatsApp Image 2023-10-25 at 14.06.10.jpeg', '1/11/23', 'Operation Manager', '2022301789'),
(7, 'Nik Mohamad Aniq Irfan Bin Nik Mahadi', 'admin\\NIK MOHAMAD ANIQ IRFAN BIN NIK MAHADI.PNG', '1/11/23', 'CFO', '2022761945'),
(8, 'Nik Mohammad Syahir Bin Mohd Kamal', 'admin\\msg702224498-13873.jpg', '1/11/23', 'Accountant', '2022971391'),
(9, 'Muhammad Azib bin Azar', 'admin\\msg889035959-13869.jpg', '1/11/23', 'Marketing Manager', '2022935207');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `waranty` varchar(255) DEFAULT NULL,
  `device_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `price`, `quantity`, `image`, `color`, `capacity`, `waranty`, `device_id`) VALUES
(71, 4, 'iPhone 14', 2699, 1, 'image/XIV/14/iphone-14-Midnight.png', 'Midnight', '64GB', '6', 18),
(72, 4, 'iPhone 14 Pro Max', 3899, 1, 'image/XIV/14%20Pro/iphone-14-pro-Deep-Purple.png', 'Deep Purple', '64GB', '6', 21),
(77, 4, 'iPhone 12 Pro', 1899, 1, 'image/XII/12%20Pro/ip12Pro_Blue.png', 'Pacific Blue', '64GB', '6', 11),
(79, 13, 'iPhone 14', 2769, 1, 'image/XIV/14/iphone-14-Midnight.png', 'Midnight', '256GB', '12', 18),
(90, 4, 'iPhone 14 Pro Max', 3929, 2, 'image/XIV/14%20Pro/iphone-14-pro-Deep-Purple.png', 'Deep Purple', '128GB', '6', 21);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `device_id` int(225) NOT NULL,
  `ip_name` varchar(225) NOT NULL,
  `stock` int(225) NOT NULL,
  `price_set` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`device_id`, `ip_name`, `stock`, `price_set`) VALUES
(1, 'X', 249, '799'),
(2, 'XR', 250, '899'),
(3, 'XS', 150, '899'),
(4, 'XS Max', 100, '999'),
(5, '11', 250, '1,099'),
(6, '11 Pro', 150, '1,399'),
(7, '11 Pro Max', 100, '1,799'),
(8, '12', 250, '1,499'),
(9, '12 Mini', 300, '1,199'),
(10, '12 Pro', 150, '1,999'),
(11, '12 Pro Max', 99, '2,399'),
(12, '13', 250, '2,299'),
(13, '13 Mini', 300, '1,899'),
(14, '13 Pro', 150, '2,799'),
(15, '13 Pro Max', 99, '2,999'),
(16, '14', 250, '2,799'),
(17, '14 Plus', 200, '3,299'),
(18, '14 Pro', 147, '3,699'),
(19, '14 Pro Max', 99, '3,899');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `order_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `approval` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`order_id`, `user_id`, `price`, `placed_on`, `payment_status`, `approval`) VALUES
(59, 4, 969, '26/12/2023', 'Completed', 'Approve'),
(60, 4, 1049, '26/12/2023', 'Completed', 'Disapprove'),
(63, 4, 899, '28/12/2023', 'Completed', 'Approve'),
(65, 4, 999, '28/12/2023', 'Completed', 'Disapprove'),
(66, 4, 999, '28/12/2023', 'Completed', 'Disapprove'),
(67, 4, 3899, '28/12/2023', 'Completed', 'Approve'),
(69, 4, 3099, '01/01/2024', 'Completed', 'Disapprove'),
(71, 4, 2699, '01/01/2024', 'Completed', 'Approve'),
(72, 4, 3899, '01/01/2024', 'Completed', 'Approve'),
(73, 12, 3969, '01/01/2024', 'Completed', 'Disapprove'),
(74, 4, 2699, '02/01/2024', 'Completed', 'Disapprove'),
(75, 4, 1899, '02/01/2024', 'Completed', 'Disapprove'),
(77, 4, 1899, '02/01/2024', 'Completed', 'Approve'),
(79, 13, 2769, '09/01/2024', 'Completed', 'Approve'),
(82, 14, 3899, '10/01/2024', 'Completed', 'Disapprove'),
(83, 4, 1999, '10/01/2024', 'Completed', 'Approve'),
(84, 4, 3899, '16/01/2024', 'Completed', 'Approve'),
(85, 4, 3929, '17/01/2024', 'Completed', 'Disapprove'),
(86, 4, 3949, '05/03/2024', 'Completed', 'Approve'),
(90, 4, 3929, '06/03/2024', 'Completed', 'Approve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`deviceID`);

--
-- Indexes for table `deviceattributes`
--
ALTER TABLE `deviceattributes`
  ADD PRIMARY KEY (`DeviceID`,`AttributesID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`device_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `deviceID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `device_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
