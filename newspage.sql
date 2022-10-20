-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for newspage
CREATE DATABASE IF NOT EXISTS `newspage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `newspage`;

-- Dumping structure for table newspage.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table newspage.categories: ~3 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `url`) VALUES
	(1, 'Mobile', 'mobile'),
	(2, 'Tin ICT', 'tin-ict'),
	(3, 'Internet', 'internet');

-- Dumping structure for table newspage.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `cate_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_posts_users` (`author_id`),
  KEY `FK_posts_categories` (`cate_id`),
  CONSTRAINT `FK_posts_categories` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_posts_users` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table newspage.posts: ~3 rows (approximately)
INSERT INTO `posts` (`id`, `title`, `description`, `body`, `cate_id`, `author_id`) VALUES
	(1, 'test', 'test', 'test', 1, 1),
	(2, 'Giới đầu cơ thu gom iPhone 14 Pro Max màu Tím khiến giá máy tăng mạnh', 'iPhone 14 Pro và Pro Max phiên bản màu Tím cháy hàng trên tất cả các kênh phân phối, giá máy tăng mạnh khiến nhiều người khó mua được.\r\n', 'Ngày 14/10, các hệ thống bán lẻ và kênh phân phối chính thức của Apple mở bán bộ bốn sản phẩm iPhone 14 series, gồm iPhone 14, iPhone 14 Plus, iPhone 14 Pro và iPhone 14 Pro Max. Năm nay Apple giới thiệu phiên bản màu Tím (Deep Purple) cho 2 phiên bản Pro. Mặc dù màu Tím năm nay có tông màu hơi tối, tuy nhiên do là tuỳ chọn màu mới nên đợt đầu mở bán, các đại lý đều thông báo cháy hàng phiên bản màu này.\r\n\r\nTại các kênh phân phối của Apple trên các sàn thương mại điện tử, tuỳ chọn màu Tím thậm chí còn có giá đắt hơn so với các tuỳ chọn màu khác từ 500,000 tới 1 triệu đồng, nhưng cũng phiên bản màu này cũng nhanh chóng cháy hàng chỉ sau vài phút mở bán.\r\n\r\nGiới đầu cơ thu gom iPhone 14 Pro Max màu Tím\r\n\r\nVới sức hấp dẫn của tuỳ chọn màu Tím, đặc biệt là của phiên bản iPhone 14 Pro Max, vốn là chiếc iPhone được người dùng Việt quan tâm nhất mỗi mùa iPhone mở bán, đây là sản phẩm được giới đầu cơ quan tâm bởi giá nhập vào nếu biết cách "săn" thì sẽ rẻ hơn thị trường nhiều, trong khi giá bán đầu ra thì có thể chênh lệch từ 3 tới 4 triệu đồng, thậm chí cao hơn cả giá niêm yết và luôn có người cần mua.', 2, 2),
	(3, 'Bai viet moi', 'des bai viet moi', 'than bai viet moi', 3, 3);

-- Dumping structure for table newspage.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table newspage.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `name`) VALUES
	(1, 'admin'),
	(2, 'author');

-- Dumping structure for table newspage.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `url_avatar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table newspage.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `email`, `display_name`, `url_avatar`) VALUES
	(1, 'manhhung', 'manhhung', 'manhhung@gmail.com', 'Manh Hung', NULL),
	(2, 'author', 'author', 'author@gmail.com', 'Author', NULL),
	(3, 'admin', 'admin', 'admin@gmail.com', 'Admin', NULL),
	(4, 'tacgia', 'tacgia', 'taciga@gmail.com', 'Tac Gia', NULL);

-- Dumping structure for table newspage.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_user_role_roles` (`role_id`),
  CONSTRAINT `FK_user_role_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK_user_role_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table newspage.user_role: ~4 rows (approximately)
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(3, 1),
	(2, 2),
	(4, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
