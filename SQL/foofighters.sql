-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2021 at 11:05 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foofighters`
--
CREATE DATABASE IF NOT EXISTS `foofighters` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `foofighters`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) COLLATE utf8_bin NOT NULL,
  `msg` text COLLATE utf8_bin NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user`, `msg`, `date`) VALUES
(4, 'Aymane', 'hry', '2021-06-16 06:03:47'),
(5, 'Aymane', 'hru?', '2021-06-16 06:03:52'),
(6, 'Aymane', 'hru?', '2021-06-16 06:05:19'),
(7, 'Aymane', 'hru?', '2021-06-16 06:05:23'),
(8, 'Adham', 'I love foo fighters!!', '2021-06-16 10:11:12'),
(9, 'Asmae', 'i adore them!', '2021-06-16 12:57:05'),
(10, 'Yasser', 'love foofighters', '2021-06-16 16:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `article` text COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `author`, `title`, `article`, `created_at`) VALUES
(34, 3, 'Article number 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et ultricies magna. Maecenas eleifend venenatis urna, sit amet aliquet felis imperdiet id. Maecenas lectus orci, semper in vehicula sed, eleifend vitae justo. Sed a blandit magna. Duis ultrices ultrices justo, gravida aliquet felis faucibus eget. Ut et ullamcorper quam. Aenean eleifend mi nunc, vitae feugiat ex sodales sit amet. Phasellus sodales dictum risus vel pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent sed pharetra lorem. In mollis iaculis rhoncus. In tincidunt purus sed lobortis consectetur. Etiam consectetur leo eget erat molestie facilisis. Donec ac tellus ut tortor rutrum pretium sit amet vel lacus. Vestibulum efficitur purus massa, et convallis eros feugiat et. Praesent tempor est vel tortor tristique ultrices.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus a dapibus lacus, vel faucibus metus. Maecenas sit amet tortor ornare purus faucibus gravida. Morbi gravida augue diam, vitae elementum odio fringilla at. Cras sit amet ex facilisis, condimentum elit ut, malesuada urna. Donec a eleifend ligula. In imperdiet malesuada tortor, a tempor mauris.\r\n\r\nNulla lobortis, ex id sagittis vulputate, quam dui mattis sem, a feugiat lorem nulla ac enim. Sed dapibus lorem velit, eget fringilla odio tincidunt eu. Proin eu dui dolor. Aliquam volutpat, odio non lobortis pretium, massa dolor placerat magna, eget tempus risus ex in nisi. Ut nibh eros, aliquam quis fermentum in, ornare non quam. Integer ut neque at justo lobortis venenatis in ut enim. Quisque posuere nibh luctus dui vehicula, eget consequat elit imperdiet. Fusce vel magna risus. Quisque pulvinar accumsan augue. Nam libero odio, pellentesque sit amet ullamcorper ut, tempor non elit. In imperdiet hendrerit tortor in convallis.\r\n\r\nVestibulum a consectetur massa. Donec sed quam vel turpis blandit blandit. Nullam lacinia erat vel commodo malesuada. Morbi id tempus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eu ex congue, vehicula odio sed, convallis orci. Vestibulum pharetra faucibus volutpat. Sed sodales vestibulum sem vitae pulvinar. Vivamus suscipit lobortis tellus quis bibendum. Maecenas tempus elit vel erat porttitor, in pharetra eros dignissim. Praesent rutrum sapien leo, pretium imperdiet neque rhoncus id.\r\n\r\nPraesent et luctus erat, eget auctor nisi. Donec maximus elit dui, ut cursus tellus molestie vulputate. Morbi pharetra volutpat imperdiet. Proin mattis lorem ac arcu viverra laoreet. Praesent gravida tellus non aliquet fringilla. Proin nulla dolor, porttitor eu lectus ac, sagittis tempor neque. Ut ullamcorper ac purus at tincidunt. Suspendisse viverra sodales rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae nulla egestas, imperdiet mauris a, hendrerit sapien. Etiam et metus a mauris consectetur ultrices. Mauris aliquam nisi vitae auctor vestibulum. Etiam vel purus rhoncus diam gravida congue id vel sem. Nullam lacinia pretium sapien, in scelerisque lorem placerat id.', '2021-06-15 15:26:18'),
(35, 3, 'Article Number 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et ultricies magna. Maecenas eleifend venenatis urna, sit amet aliquet felis imperdiet id. Maecenas lectus orci, semper in vehicula sed, eleifend vitae justo. Sed a blandit magna. Duis ultrices ultrices justo, gravida aliquet felis faucibus eget. Ut et ullamcorper quam. Aenean eleifend mi nunc, vitae feugiat ex sodales sit amet. Phasellus sodales dictum risus vel pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent sed pharetra lorem. In mollis iaculis rhoncus. In tincidunt purus sed lobortis consectetur. Etiam consectetur leo eget erat molestie facilisis. Donec ac tellus ut tortor rutrum pretium sit amet vel lacus. Vestibulum efficitur purus massa, et convallis eros feugiat et. Praesent tempor est vel tortor tristique ultrices.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus a dapibus lacus, vel faucibus metus. Maecenas sit amet tortor ornare purus faucibus gravida. Morbi gravida augue diam, vitae elementum odio fringilla at. Cras sit amet ex facilisis, condimentum elit ut, malesuada urna. Donec a eleifend ligula. In imperdiet malesuada tortor, a tempor mauris.\r\n\r\nNulla lobortis, ex id sagittis vulputate, quam dui mattis sem, a feugiat lorem nulla ac enim. Sed dapibus lorem velit, eget fringilla odio tincidunt eu. Proin eu dui dolor. Aliquam volutpat, odio non lobortis pretium, massa dolor placerat magna, eget tempus risus ex in nisi. Ut nibh eros, aliquam quis fermentum in, ornare non quam. Integer ut neque at justo lobortis venenatis in ut enim. Quisque posuere nibh luctus dui vehicula, eget consequat elit imperdiet. Fusce vel magna risus. Quisque pulvinar accumsan augue. Nam libero odio, pellentesque sit amet ullamcorper ut, tempor non elit. In imperdiet hendrerit tortor in convallis.\r\n\r\nVestibulum a consectetur massa. Donec sed quam vel turpis blandit blandit. Nullam lacinia erat vel commodo malesuada. Morbi id tempus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eu ex congue, vehicula odio sed, convallis orci. Vestibulum pharetra faucibus volutpat. Sed sodales vestibulum sem vitae pulvinar. Vivamus suscipit lobortis tellus quis bibendum. Maecenas tempus elit vel erat porttitor, in pharetra eros dignissim. Praesent rutrum sapien leo, pretium imperdiet neque rhoncus id.\r\n\r\nPraesent et luctus erat, eget auctor nisi. Donec maximus elit dui, ut cursus tellus molestie vulputate. Morbi pharetra volutpat imperdiet. Proin mattis lorem ac arcu viverra laoreet. Praesent gravida tellus non aliquet fringilla. Proin nulla dolor, porttitor eu lectus ac, sagittis tempor neque. Ut ullamcorper ac purus at tincidunt. Suspendisse viverra sodales rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae nulla egestas, imperdiet mauris a, hendrerit sapien. Etiam et metus a mauris consectetur ultrices. Mauris aliquam nisi vitae auctor vestibulum. Etiam vel purus rhoncus diam gravida congue id vel sem. Nullam lacinia pretium sapien, in scelerisque lorem placerat id.', '2021-06-15 15:26:26'),
(36, 3, 'Article number three!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et ultricies magna. Maecenas eleifend venenatis urna, sit amet aliquet felis imperdiet id. Maecenas lectus orci, semper in vehicula sed, eleifend vitae justo. Sed a blandit magna. Duis ultrices ultrices justo, gravida aliquet felis faucibus eget. Ut et ullamcorper quam. Aenean eleifend mi nunc, vitae feugiat ex sodales sit amet. Phasellus sodales dictum risus vel pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent sed pharetra lorem. In mollis iaculis rhoncus. In tincidunt purus sed lobortis consectetur. Etiam consectetur leo eget erat molestie facilisis. Donec ac tellus ut tortor rutrum pretium sit amet vel lacus. Vestibulum efficitur purus massa, et convallis eros feugiat et. Praesent tempor est vel tortor tristique ultrices.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus a dapibus lacus, vel faucibus metus. Maecenas sit amet tortor ornare purus faucibus gravida. Morbi gravida augue diam, vitae elementum odio fringilla at. Cras sit amet ex facilisis, condimentum elit ut, malesuada urna. Donec a eleifend ligula. In imperdiet malesuada tortor, a tempor mauris.\r\n\r\nNulla lobortis, ex id sagittis vulputate, quam dui mattis sem, a feugiat lorem nulla ac enim. Sed dapibus lorem velit, eget fringilla odio tincidunt eu. Proin eu dui dolor. Aliquam volutpat, odio non lobortis pretium, massa dolor placerat magna, eget tempus risus ex in nisi. Ut nibh eros, aliquam quis fermentum in, ornare non quam. Integer ut neque at justo lobortis venenatis in ut enim. Quisque posuere nibh luctus dui vehicula, eget consequat elit imperdiet. Fusce vel magna risus. Quisque pulvinar accumsan augue. Nam libero odio, pellentesque sit amet ullamcorper ut, tempor non elit. In imperdiet hendrerit tortor in convallis.\r\n\r\nVestibulum a consectetur massa. Donec sed quam vel turpis blandit blandit. Nullam lacinia erat vel commodo malesuada. Morbi id tempus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eu ex congue, vehicula odio sed, convallis orci. Vestibulum pharetra faucibus volutpat. Sed sodales vestibulum sem vitae pulvinar. Vivamus suscipit lobortis tellus quis bibendum. Maecenas tempus elit vel erat porttitor, in pharetra eros dignissim. Praesent rutrum sapien leo, pretium imperdiet neque rhoncus id.\r\n\r\nPraesent et luctus erat, eget auctor nisi. Donec maximus elit dui, ut cursus tellus molestie vulputate. Morbi pharetra volutpat imperdiet. Proin mattis lorem ac arcu viverra laoreet. Praesent gravida tellus non aliquet fringilla. Proin nulla dolor, porttitor eu lectus ac, sagittis tempor neque. Ut ullamcorper ac purus at tincidunt. Suspendisse viverra sodales rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae nulla egestas, imperdiet mauris a, hendrerit sapien. Etiam et metus a mauris consectetur ultrices. Mauris aliquam nisi vitae auctor vestibulum. Etiam vel purus rhoncus diam gravida congue id vel sem. Nullam lacinia pretium sapien, in scelerisque lorem placerat id.', '2021-06-15 15:26:37'),
(37, 3, 'number four?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et ultricies magna. Maecenas eleifend venenatis urna, sit amet aliquet felis imperdiet id. Maecenas lectus orci, semper in vehicula sed, eleifend vitae justo. Sed a blandit magna. Duis ultrices ultrices justo, gravida aliquet felis faucibus eget. Ut et ullamcorper quam. Aenean eleifend mi nunc, vitae feugiat ex sodales sit amet. Phasellus sodales dictum risus vel pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent sed pharetra lorem. In mollis iaculis rhoncus. In tincidunt purus sed lobortis consectetur. Etiam consectetur leo eget erat molestie facilisis. Donec ac tellus ut tortor rutrum pretium sit amet vel lacus. Vestibulum efficitur purus massa, et convallis eros feugiat et. Praesent tempor est vel tortor tristique ultrices.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus a dapibus lacus, vel faucibus metus. Maecenas sit amet tortor ornare purus faucibus gravida. Morbi gravida augue diam, vitae elementum odio fringilla at. Cras sit amet ex facilisis, condimentum elit ut, malesuada urna. Donec a eleifend ligula. In imperdiet malesuada tortor, a tempor mauris.\r\n\r\nNulla lobortis, ex id sagittis vulputate, quam dui mattis sem, a feugiat lorem nulla ac enim. Sed dapibus lorem velit, eget fringilla odio tincidunt eu. Proin eu dui dolor. Aliquam volutpat, odio non lobortis pretium, massa dolor placerat magna, eget tempus risus ex in nisi. Ut nibh eros, aliquam quis fermentum in, ornare non quam. Integer ut neque at justo lobortis venenatis in ut enim. Quisque posuere nibh luctus dui vehicula, eget consequat elit imperdiet. Fusce vel magna risus. Quisque pulvinar accumsan augue. Nam libero odio, pellentesque sit amet ullamcorper ut, tempor non elit. In imperdiet hendrerit tortor in convallis.\r\n\r\nVestibulum a consectetur massa. Donec sed quam vel turpis blandit blandit. Nullam lacinia erat vel commodo malesuada. Morbi id tempus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eu ex congue, vehicula odio sed, convallis orci. Vestibulum pharetra faucibus volutpat. Sed sodales vestibulum sem vitae pulvinar. Vivamus suscipit lobortis tellus quis bibendum. Maecenas tempus elit vel erat porttitor, in pharetra eros dignissim. Praesent rutrum sapien leo, pretium imperdiet neque rhoncus id.\r\n\r\nPraesent et luctus erat, eget auctor nisi. Donec maximus elit dui, ut cursus tellus molestie vulputate. Morbi pharetra volutpat imperdiet. Proin mattis lorem ac arcu viverra laoreet. Praesent gravida tellus non aliquet fringilla. Proin nulla dolor, porttitor eu lectus ac, sagittis tempor neque. Ut ullamcorper ac purus at tincidunt. Suspendisse viverra sodales rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae nulla egestas, imperdiet mauris a, hendrerit sapien. Etiam et metus a mauris consectetur ultrices. Mauris aliquam nisi vitae auctor vestibulum. Etiam vel purus rhoncus diam gravida congue id vel sem. Nullam lacinia pretium sapien, in scelerisque lorem placerat id.', '2021-06-15 15:26:53'),
(38, 4, 'five by Youssef!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et ultricies magna. Maecenas eleifend venenatis urna, sit amet aliquet felis imperdiet id. Maecenas lectus orci, semper in vehicula sed, eleifend vitae justo. Sed a blandit magna. Duis ultrices ultrices justo, gravida aliquet felis faucibus eget. Ut et ullamcorper quam. Aenean eleifend mi nunc, vitae feugiat ex sodales sit amet. Phasellus sodales dictum risus vel pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent sed pharetra lorem. In mollis iaculis rhoncus. In tincidunt purus sed lobortis consectetur. Etiam consectetur leo eget erat molestie facilisis. Donec ac tellus ut tortor rutrum pretium sit amet vel lacus. Vestibulum efficitur purus massa, et convallis eros feugiat et. Praesent tempor est vel tortor tristique ultrices.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus a dapibus lacus, vel faucibus metus. Maecenas sit amet tortor ornare purus faucibus gravida. Morbi gravida augue diam, vitae elementum odio fringilla at. Cras sit amet ex facilisis, condimentum elit ut, malesuada urna. Donec a eleifend ligula. In imperdiet malesuada tortor, a tempor mauris.\r\n\r\nNulla lobortis, ex id sagittis vulputate, quam dui mattis sem, a feugiat lorem nulla ac enim. Sed dapibus lorem velit, eget fringilla odio tincidunt eu. Proin eu dui dolor. Aliquam volutpat, odio non lobortis pretium, massa dolor placerat magna, eget tempus risus ex in nisi. Ut nibh eros, aliquam quis fermentum in, ornare non quam. Integer ut neque at justo lobortis venenatis in ut enim. Quisque posuere nibh luctus dui vehicula, eget consequat elit imperdiet. Fusce vel magna risus. Quisque pulvinar accumsan augue. Nam libero odio, pellentesque sit amet ullamcorper ut, tempor non elit. In imperdiet hendrerit tortor in convallis.\r\n\r\nVestibulum a consectetur massa. Donec sed quam vel turpis blandit blandit. Nullam lacinia erat vel commodo malesuada. Morbi id tempus tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eu ex congue, vehicula odio sed, convallis orci. Vestibulum pharetra faucibus volutpat. Sed sodales vestibulum sem vitae pulvinar. Vivamus suscipit lobortis tellus quis bibendum. Maecenas tempus elit vel erat porttitor, in pharetra eros dignissim. Praesent rutrum sapien leo, pretium imperdiet neque rhoncus id.\r\n\r\nPraesent et luctus erat, eget auctor nisi. Donec maximus elit dui, ut cursus tellus molestie vulputate. Morbi pharetra volutpat imperdiet. Proin mattis lorem ac arcu viverra laoreet. Praesent gravida tellus non aliquet fringilla. Proin nulla dolor, porttitor eu lectus ac, sagittis tempor neque. Ut ullamcorper ac purus at tincidunt. Suspendisse viverra sodales rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae nulla egestas, imperdiet mauris a, hendrerit sapien. Etiam et metus a mauris consectetur ultrices. Mauris aliquam nisi vitae auctor vestibulum. Etiam vel purus rhoncus diam gravida congue id vel sem. Nullam lacinia pretium sapien, in scelerisque lorem placerat id.', '2021-06-15 15:27:19'),
(39, 5, 'New Article By Mostafa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam at velit nec tempor. Nulla condimentum laoreet volutpat. Donec non sapien non nisl iaculis fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque vitae est commodo, varius purus et, pharetra massa. Vestibulum tincidunt, lectus eget aliquet scelerisque, massa est condimentum diam, at cursus ante turpis in enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rutrum turpis at neque sagittis, non convallis leo scelerisque. Sed quis auctor mi, at sodales ante.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam maximus elementum malesuada. Aliquam erat volutpat. Nulla blandit felis nec quam commodo pretium. Integer suscipit nibh at metus fringilla volutpat. Duis in nisi fermentum, hendrerit nibh ac, consequat libero. Sed ac aliquam nulla, eget fringilla magna. Phasellus sapien eros, dignissim eu dictum et, varius condimentum ligula.\r\n\r\nPraesent id eros non erat consectetur pharetra a et ipsum. Duis tincidunt mattis arcu eget dignissim. Pellentesque commodo ex a odio rutrum, ut tincidunt mi sodales. Cras lobortis ut metus ut gravida. Ut faucibus rutrum erat, sed eleifend mi ullamcorper ut. Suspendisse vulputate, mi nec porttitor iaculis, dolor libero commodo diam, eu dapibus mi purus nec arcu. Maecenas velit quam, interdum eget vestibulum quis, dignissim sed nisl. Nulla bibendum scelerisque urna, ac lacinia orci bibendum eget. Morbi imperdiet ornare enim vitae semper. Fusce in aliquam sem.\r\n\r\nIn sed libero eu odio rutrum dignissim eget ut lorem. Nam at magna semper, facilisis purus non, sagittis urna. Integer ac ligula risus. Phasellus quis mauris venenatis, sagittis odio in, sollicitudin ipsum. Aliquam porttitor ultricies eros, id malesuada nisi faucibus nec. Aenean volutpat nulla a odio ultrices, vitae vulputate mi egestas. Ut commodo urna sed urna pretium, sit amet porta sem lacinia. Cras molestie nulla sit amet maximus sagittis. Aenean sed dolor eu odio aliquam scelerisque sit amet eu eros. Suspendisse molestie sodales orci, et bibendum leo blandit ac. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla justo felis, placerat placerat dolor et, bibendum auctor turpis. Phasellus semper rutrum ligula, at pellentesque urna interdum in. Phasellus euismod auctor dapibus.', '2021-06-15 16:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`) VALUES
(3, 'Aymane Hrouch', 'aymane', '$2y$10$osSmSezXk9VRaC.dfxq6OuVp3qfyj91f1/hB6knu4qVVb4K4MjToi', '2021-06-15 15:22:06'),
(4, 'Youssef Ghoundal', 'youssef', '$2y$10$knPzolXup1fZlEzS4ntxFuiPcqs1ZqPOnbra5YWRs753DmLJXhvRS', '2021-06-15 15:22:27'),
(5, 'Mostafa Saadi', 'mostafa', '$2y$10$u0Yw8rPMoElWRPQuyBukKeTd/F3pdiZNSUtw8Ucs5LBG7WNY.5JfO', '2021-06-15 16:51:33'),
(6, 'Adham Aroubite', 'adham', '$2y$10$0.eG4nCL5eY5xjK6bjNrrOYxbIQ3XaSflqhyf2xM3ao8sH4HYdioi', '2021-06-16 10:15:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
