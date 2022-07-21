-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2021 at 06:23 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24
use ecommerce;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `Alias`) VALUES
(1, 'BOTTOM', 'bottom'),
(2, 'TOP', 'top'),
(3, 'SHOES', 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Cart_total` float NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `Uid`, `Address`, `Phone`, `Cart_total`, `Description`, `Created_at`) VALUES
(2, 28, 'a', '0378007721', 44550000, '1', '2021-06-08 18:34:55'),
(3, 27, 'hanoi', '0396652104', 750000, '', '2021-06-08 18:47:15'),
(4, 28, 'hanoi', '0396652104', 1200000, 'abc', '2021-06-08 19:02:19'),
(5, 28, 'hanoi', '0396652104', 450000, '', '2021-06-08 22:04:25'),
(6, 27, 'dai hoc back khoa hanoi', '0396652104', 8296000, 'abc xyc', '2021-06-09 11:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Size` varchar(5) NOT NULL,
  `Color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`Id`, `OrderId`, `ProductId`, `Quantity`, `Price`, `Size`, `Color`) VALUES
(35, 2, 16, 99, 450000, 'L', 'White'),
(36, 3, 2, 1, 550000, 'L', 'White'),
(37, 3, 19, 2, 350000, 'L', 'White'),
(38, 4, 2, 1, 550000, 'L', 'White'),
(39, 4, 19, 2, 350000, 'L', 'White'),
(40, 4, 16, 1, 450000, 'L', 'White'),
(41, 5, 16, 1, 450000, 'M', 'Black'),
(42, 6, 35, 2, 1560000, 'S', 'White'),
(43, 6, 26, 4, 1450000, 'M', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(550) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Color` varchar(250) DEFAULT NULL,
  `Material` varchar(250) DEFAULT NULL,
  `Size` varchar(20) NOT NULL,
  `Createdate` date DEFAULT NULL,
  `EditDate` date DEFAULT NULL,
  `isSaleOff` tinyint(1) DEFAULT NULL,
  `Percent_off` int(11) NOT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(260) NOT NULL,
  `Image4` varchar(260) NOT NULL,
  `Alias` varchar(200) NOT NULL,
  `Quantity` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--


INSERT INTO `product` (`Id`, `Name`, `CategoryId`, `SubCategoryId`, `Description`, `Price`, `Color`, `Material`, `Size`, `Createdate`, `EditDate`, `isSaleOff`, `Percent_off`, `Image1`, `Image2`, `Image3`, `Image4`, `Alias`, `Quantity`) VALUES
(1, 'COAT C1', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 450000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat1.webp', 'coat2.webp', 'coat3.webp', 'coat4.webp', 'warm-coat-t1', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(2, 'COAT C2', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 550000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat2.webp', 'coat6.webp', 'coat7.webp', 'coat8.webp', 'warm-coat-t2', '[{\"color\":\"White\",\"size\":\"L\",\"qty\":\"98\"},{\"color\":\"Black\",\"size\":\"M\",\"qty\":\"100\"},{\"color\":\"Black\",\"size\":\"L\",\"qty\":\"100\"}]'),
(3, 'COAT C3', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 650000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat3.webp', 'coat4.webp', 'coat8.webp', 'coat6.webp', 'warm-coat-t3', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(4, 'COAT C4', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 455000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat4.webp', 'coat1.webp', 'coat2.webp', 'coat6.webp', 'warm-coat-t4', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(5, 'COAT C5', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 654000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat5.webp', 'coat4.webp', 'coat3.webp', 'coat7.webp', 'warm-coat-t5', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(6, 'COAT C6', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 987000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat6.webp', 'coat1.webp', 'coat3.webp', 'coat4.webp', 'warm-coat-t6', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(7, 'COAT C7', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 499000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat7.webp', 'coat8.webp', 'coat6.webp', 'coat4.webp', 'warm-coat-t7', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(8, 'COAT C8', 2, 3, 'This coat is perfect for those who live in a cold environment.</br>The coat is made of Nilon, Cotton fabric and features a zipper closure, hood, and pocket.</br>It is a lightweight and durable coat that will keep you warm and dry.', 434000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'coat8.webp', 'coat2.webp', 'coat4.webp', 'coat3.webp', 'warm-coat-t8', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(9, 'SHIRT S1', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 140000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'shirt1.jpeg', 'shirt2.jpeg', 'shirt3.jpeg', 'shirt4.jpeg', 'cotton-shirt-t9', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(10, 'SHIRT S2', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 650000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'shirt2.jpeg', 'shirt3.jpeg', 'shirt4.jpeg', 'shirt5.jpeg', 'cotton-shirt-t10', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(11, 'SHIRT S3', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 450000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'shirt3.jpeg', 'shirt4.jpeg', 'shirt5.jpeg', 'shirt6.jpeg', 'cotton-shirt-t11', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(12, 'SHIRT S4', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 430000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'shirt4.jpeg', 'shirt5.jpeg', 'shirt6.jpeg', 'shirt7.jpeg', 'cotton-shirt-t12', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(13, 'SHIRT S5', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 210000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 25, 'shirt5.jpeg', 'shirt6.jpeg', 'shirt7.jpeg', 'shirt8.jpeg', 'cotton-shirt-t13', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(14, 'SHIRT S6', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 550000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'shirt6.jpeg', 'shirt7.jpeg', 'shirt8.jpeg', 't-shirt1.webp', 'cotton-shirt-t14', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(15, 'SHIRT S7', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 880000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 30, 'shirt7.jpeg', 'shirt8.jpeg', 't-shirt1.webp', 'shirt2.jpeg', 'cotton-shirt-t15', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(16, 'SHIRT S8', 2, 1, 'Plaid shirts are always a classic, but they never out of style. </br>This cotton plaid shirt will be your go-to wardrobe staple. </br>Wear it over or under any top.</br>Product Features:</br>*100% Cotton</br>*Machine Wash Cold</br>*Imported', 250000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'shirt8.jpeg', 't-shirt1.webp', 'shirt3.jpeg', 'shirt4.jpeg', 'cotton-shirt-t16', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(17, 'UNISEX T-SHIRT T1', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 850000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt1.webp', 't-shirt2.webp', 't-shirt3.webp', 't-shirt4.webp', 't-shirt-t17', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(18, 'UNISEX T-SHIRT T2', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 230000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 't-shirt2.webp', 't-shirt5.webp', 't-shirt7.webp', 't-shirt8.webp', 't-shirt-t18', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(19, 'UNISEX T-SHIRT T3', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 450000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt3.webp', 't-shirt2.webp', 't-shirt7.webp', 't-shirt8.webp', 't-shirt-t19', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(20, 'UNISEX T-SHIRT T4', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 670000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 't-shirt4.webp', 't-shirt5.webp', 't-shirt6.webp', 't-shirt2.webp', 't-shirt-t20', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(21, 'UNISEX T-SHIRT T5', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 860000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt5.webp', 't-shirt6.webp', 't-shirt3.webp', 't-shirt7.webp', 't-shirt-t21', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(22, 'UNISEX T-SHIRT T6', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 140000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt6.webp', 't-shirt8.webp', 't-shirt2.webp', 't-shirt1.webp', 't-shirt-t22', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(23, 'UNISEX T-SHIRT T7', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 390000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt7.webp', 't-shirt4.webp', 't-shirt3.webp', 't-shirt5.webp', 't-shirt-t23', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(24, 'UNISEX T-SHIRT T8', 2, 2, 'UNISEX T-Shirt, Machine Washable, Unisex FitThis t-shirt is made from high quality polyester fabric which feels soft and durable. </br>This product can be worn as casual wear or office wear. </br>You can team it up with jeans to complete your outfit. </br>The product comes in various colors such as black, blue, green, red, orange etc.</br>Product Features: </br>- Soft and comfortable fabric.</br>- Longer length.</br>- Various colors available.</br>- Machine washable.</br>- Team it up with jeans to add more color to your wardrobe.</br>- Available in different sizes.</br>- Custom printing possible.', 490000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 't-shirt8.webp', 't-shirt3.webp', 't-shirt2.webp', 't-shirt6.webp', 't-shirt-t24', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(25, 'JEANS J1', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 450000, 'Black', 'Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'jean1.jpeg', 'jean2.jpeg', 'jean3.jpeg', 'jean4.jpeg', 'jeans-fit-b1', '[{\"color\":\"White\",\"size\":\"L\",\"qty\":\"0\"},{\"color\":\"Black\",\"size\":\"M\",\"qty\":\"149\"},{\"color\":\"Black\",\"size\":\"L\",\"qty\":\"100\"}]'),
(26, 'JEANS J2', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 440000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'jean2.jpeg', 'jean4.jpeg', 'jean3.jpeg', 'jean8.jpeg', 'jeans-fit-b2', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(27, 'JEANS J3', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 420000, 'Black', 'Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'jean3.jpeg', 'jean2.jpeg', 'jean6.jpeg', 'jean7.jpeg', 'jeans-fit-b3', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(28, 'JEANS J4', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 740000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'jean4.jpeg', 'jean5.jpeg', 'jean3.jpeg', 'jean6.jpeg', 'jeans-fit-b4', '[{\"color\":\"White\",\"size\":\"L\",\"qty\":\"96\"},{\"color\":\"Black\",\"size\":\"M\",\"qty\":\"100\"},{\"color\":\"Black\",\"size\":\"L\",\"qty\":\"100\"}]'),
(29, 'JEANS J5', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 490000, 'Black', 'Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'jean5.jpeg', 'jean1.jpeg', 'jean2.jpeg', 'jean7.jpeg', 'jeans-fit-b5', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(30, 'JEANS J6', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 720000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 30, 'jean6.jpeg', 'jean5.jpeg', 'jean3.jpeg', 'jean4.jpeg', 'jeans-fit-b6', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(31, 'JEANS J7', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 1560000, 'Black, White', 'Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 20, 'jean7.jpeg', 'jean2.jpeg', 'jean1.jpeg', 'jean3.jpeg', 'jeans-fit-b7', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(32, 'JEANS J8', 1, 4, 'Jeans are an essential part of any wardrobe, but they can be hard to find in the right size and cut. </br>Our jeans have been specially made to give you the perfect fit, whether you looking for slim or relaxed fits.</br>Product Features: </br>* Slim Fit - ideal for skinny people</br>* Relaxed Fit - wider leg openings than our regular jeans</br>* Machine washable', 1766000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 10, 'jean8.jpeg', 'jean6.jpeg', 'jean7.jpeg', 'jean3.jpeg', 'jeans-fit-b8', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(33, 'SHORT SP1', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 1450000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'short1.webp', 'short2.webp', 'short4.webp', 'short5.webp', 'active-short-b9', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(34, 'SHORT SP2', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 1100000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'short2.webp', 'short3.webp', 'short1.webp', 'short7.webp', 'active-short-b10', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(35, 'SHORT SP3', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 450000, 'Black', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 0, 0, 'short3.webp', 'short5.webp', 'short6.webp', 'short8.webp', 'active-short-b11', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(36, 'SHORT SP4', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 230000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 10, 'short4.webp', 'short3.webp', 'short7.webp', 'short5.webp', 'active-short-b12', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(37, 'SHORT SP5', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 560000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 40, 'short5.webp', 'short1.webp', 'short2.webp', 'short3.webp', 'active-short-b13', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(38, 'SHORT SP6', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 690000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 20, 'short6.webp', 'short5.webp', 'short3.webp', 'short1.webp', 'active-short-b14', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(39, 'SHORT SP7', 1, 5, 'Made of Nilon, Cotton, it has an elastic waistband and side pockets. </br>The fabric is soft and comfortable. </br>You can wear it everywhere.</br>It is suitable for daily use and casual occasions.</br>With its stylish design, it makes your life more enjoyable.</br>Product Features: </br>Elastic waistband and side pocket.</br>Soft and comfortable fabric.</br>Suitable for daily use and casual occasion.</br>With its stylish appearance, it will make your life more enjoyable.', 820000, 'Black, White', 'Nilon, Cotton', 'M, L, XL', '2022-07-01', '2022-07-22', 1, 30, 'short7.webp', 'short5.webp', 'short4.webp', 'short2.webp', 'active-short-b16', '[ { \"color\": \"White\", \"size\": \"L\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"M\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"L\", \"qty\": \"100\" } ]'),
(41, 'SPORT SHOES SH1', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 3346000, 'Black', 'Cacbon, Nilon, Cotton', '39, 40, 44', '2022-07-01', '2022-07-22', 0, 0, 'shoes6.png', 'shoes1.png', 'shoes4.png', 'shoes8.png', 'sport-shoes-s26', '[{\"color\":\"Black\",\"size\":\"39\",\"qty\":\"146\"},{\"color\":\"Black\",\"size\":\"40\",\"qty\":\"100\"},{\"color\":\"Black\",\"size\":\"44\",\"qty\":\"100\"}]'),
(42, 'SPORT SHOES SH2', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 2322000, 'Black, White', 'Cacbon, Nilon, Cotton', '39, 43, 44', '2022-07-01', '2022-07-22', 1, 40, 'shoes1.png', 'shoes2.png', 'shoes3.png', 'shoes4.png', 'sport-shoes-s27', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"43\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"44\", \"qty\": \"100\" } ]'),
(43, 'SPORT SHOES SH3', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 1224000, 'Black, Blue', 'Cacbon, Nilon, Cotton', '39, 42, 44', '2021-06-09', '2021-06-09', 1, 20, 'shoes2.png', 'shoes6.png', 'shoes8.png', 'shoes2.png', 'sport-shoes-s28', '[{\"color\":\"White\",\"size\":\"39\",\"qty\":\"98\"},{\"color\":\"White\",\"size\":\"42\",\"qty\":\"100\"},{\"color\":\"Black\",\"size\":\"44\",\"qty\":\"100\"},{\"color\":\"Blue\",\"size\":\"42\",\"qty\":\"100\"}]'),
(44, 'SPORT SHOES SH4', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 3454000, 'Black, White', 'Cacbon, Nilon, Cotton', '39, 41, 42', '2021-06-09', '2021-06-09', 1, 15, 'shoes3.png', 'shoes2.png', 'shoes4.png', 'shoes5.png', 'sport-shoes-s29', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" },{ \"color\": \"White\", \"size\": \"41\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"42\", \"qty\": \"100\" }, { \"color\": \"White\", \"size\": \"42\", \"qty\": \"100\" } ]'),
(45, 'SPORT SHOES SH5', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 5254000, 'Black, Blue', 'Cacbon, Nilon, Cotton', '39, 40, 43', '2021-06-09', '2021-06-09', 1, 15, 'shoes4.png', 'shoes4.png', 'shoes5.png', 'shoes6.png', 'sport-shoes-s29', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" },{ \"color\": \"Blue\", \"size\": \"40\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"43\", \"qty\": \"100\" }, { \"color\": \"Blue\", \"size\": \"40\", \"qty\": \"100\" } ]'),
(46, 'SPORT SHOES SH6', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 4254000, 'Black, White', 'Cacbon, Nilon, Cotton', '39, 42, 44', '2021-06-09', '2021-06-09', 1, 15, 'shoes5.png', 'shoes2.png', 'shoes1.png', 'shoes7.png', 'sport-shoes-s29', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" },{ \"color\": \"White\", \"size\": \"42\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"44\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"44\", \"qty\": \"100\" } ]'),
(47, 'SPORT SHOES SH7', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 2254000, 'Black, Red, White', 'Cacbon, Nilon, Cotton', '39, 41, 42', '2021-06-09', '2021-06-09', 1, 15, 'shoes7.png', 'shoes5.png', 'shoes4.png', 'shoes1.png', 'sport-shoes-s29', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" },{ \"color\": \"White\", \"size\": \"41\", \"qty\": \"100\" }, { \"color\": \"Red\", \"size\": \"42\", \"qty\": \"100\" }, { \"color\": \"Black\", \"size\": \"42\", \"qty\": \"100\" } ]'),
(48, 'SPORT SHOES SH8', 3, 6, 'SPORT Shoes are made for action sports and casual wear. </br>They feature a durable, flexible sole that provides excellent traction and shock absorption while maintaining its lightweight design. </br>The SPORT shoes come in a variety of colors.</br>Product Features: </br>- Durable, flexible outsole.</br>- Soft, supple leather upper.</br>- Breathable mesh lining.</br>- Lace closure and hook & loop fastener.</br>- Rubberized toe cap.', 1245000, 'Black, Red, Blue', 'Cacbon, Nilon, Cotton', '39, 42, 43', '2021-06-09', '2021-06-09', 1, 15, 'shoes8.png', 'shoes1.png', 'shoes4.png', 'shoes3.png', 'sport-shoes-s29', '[ { \"color\": \"White\", \"size\": \"39\", \"qty\": \"100\" },{ \"color\": \"White\", \"size\": \"42", \"qty\": \"100\" }, { \"color\": \"Red\", \"size\": \"43\", \"qty\": \"100\" }, { \"color\": \"Blue\", \"size\": \"39\", \"qty\": \"100\" } ]');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Id`, `Name`, `CategoryId`, `Alias`) VALUES
(1, 'Shirt', 2, 'shirt'),
(2, 'T-Shirt', 2, 't-shirt'),
(3, 'Coat', 2, 'coat'),
(4, 'Jeans', 1, 'jeans'),
(5, 'Short', 1, 'short'),
(6, 'Shoes', 3, 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `is_admin`) VALUES
(27, 'hangtt', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(28, 'admin101', 'ceea23519f6f86ad67e9f798bf8002cb',1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_orders` (`Uid`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_order_detail_od1` (`OrderId`),
  ADD KEY `FK_order_detail_od2` (`ProductId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Product_Categories` (`CategoryId`),
  ADD KEY `FK_Product_Subcategory` (`SubCategoryId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Id_Category1` (`CategoryId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `user_orders` FOREIGN KEY (`Uid`) REFERENCES `user` (`Id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_order_detail_od1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_order_detail_od2` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Categories` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Product_Subcategory` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategory` (`Id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `FK_Id_Category1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
