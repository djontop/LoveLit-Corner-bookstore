-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sdam
CREATE DATABASE IF NOT EXISTS `book_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `book_store`;

-- Dumping structure for table sdam.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.cart: ~6 rows (approximately)
INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
	(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
	(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
	(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
	(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
	(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
	(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- Dumping structure for table sdam.message
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.message: ~1 rows (approximately)
INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
	(14, 17, 'V Balamurali Nambiar', 'harimuralir@gmail.com', '123456788', 'Hey?');

-- Dumping structure for table sdam.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` date NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.orders: ~3 rows (approximately)
INSERT INTO `orders` (`order_id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
	(9, 18, 'V Balamurali Nambiar', '123455432', 'harimuralinambiar@gmail.com', 'cash on delivery', 'flat no. B-307, Radhashyam CHS, Sector 42-A, Plot No- 4, Seawoods, Nerul, Navi Mumbai, India - 400706', 'The Extrovert Living In Solitude  (1) ', 355.00, '2023-10-18', 'pending');

-- Dumping structure for table sdam.ordersss
CREATE TABLE IF NOT EXISTS `ordersss` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.ordersss: ~2 rows (approximately)
INSERT INTO `ordersss` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
	(19, 16, 'V Balamurali Nambiar', '', 'harimuralinambiar@gmail.com', 'cash on delivery', 'flat no. B-307, Radhashyam CHS, Sector 42-A, Plot No- 4, Seawoods, Nerul, Navi Mumbai, India - 400706', ', cottage rose (1) ', 15, '12-Oct-2023', 'completed'),
	(20, 17, 'V Balamurali Nambiar', '', 'harimuralinambiar@gmail.com', 'credit card', 'flat no. B-307, Radhashyam CHS, Sector 42-A, Plot No- 4, Seawoods, Nerul, Navi Mumbai, India - 400706', ', Wonder Boy (1) ', 400, '12-Oct-2023', 'pending'),
	(21, 17, 'V Balamurali Nambiar', '', 'harimuralinambiar@gmail.com', 'cash on delivery', 'flat no. B-307, Radhashyam CHS, Sector 42-A, Plot No- 4, Seawoods, Nerul, Navi Mumbai, India - 400706', ', The Extrovert Living In Solitude  (1) ', 355, '12-Oct-2023', 'pending');

-- Dumping structure for table sdam.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
	(22, 'Wonder Boy', 'A Boy heading towards attraction.', 400, 'plll.jpg'),
	(23, 'The Extrovert Living In Solitude ', 'Girl trying to find solace in life.', 355, 'bcover-9.jpg');

-- Dumping structure for table sdam.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
	(16, 'Balamurali Nambiar', 'harimuralinambiar@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', 'admin'),
	(17, 'Balamurali ', 'balamurali6769@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', 'user'),
	(18, 'manthan vasant', 'manthanvasant@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', 'user');

-- Dumping structure for table sdam.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sdam.wishlist: ~1 rows (approximately)
INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
	(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
