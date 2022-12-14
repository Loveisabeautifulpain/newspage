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
	(2, 'Gi???i ?????u c?? thu gom iPhone 14 Pro Max m??u T??m khi???n gi?? m??y t??ng m???nh', 'iPhone 14 Pro v?? Pro Max phi??n b???n m??u T??m ch??y h??ng tr??n t???t c??? c??c k??nh ph??n ph???i, gi?? m??y t??ng m???nh khi???n nhi???u ng?????i kh?? mua ???????c.\r\n', 'Ng??y 14/10, c??c h??? th???ng b??n l??? v?? k??nh ph??n ph???i ch??nh th???c c???a Apple m??? b??n b??? b???n s???n ph???m iPhone 14 series, g???m iPhone 14, iPhone 14 Plus, iPhone 14 Pro v?? iPhone 14 Pro Max. N??m nay Apple gi???i thi???u phi??n b???n m??u T??m (Deep Purple) cho 2 phi??n b???n Pro. M???c d?? m??u T??m n??m nay c?? t??ng m??u h??i t???i, tuy nhi??n do l?? tu??? ch???n m??u m???i n??n ?????t ?????u m??? b??n, c??c ?????i l?? ?????u th??ng b??o ch??y h??ng phi??n b???n m??u n??y.\r\n\r\nT???i c??c k??nh ph??n ph???i c???a Apple tr??n c??c s??n th????ng m???i ??i???n t???, tu??? ch???n m??u T??m th???m ch?? c??n c?? gi?? ?????t h??n so v???i c??c tu??? ch???n m??u kh??c t??? 500,000 t???i 1 tri???u ?????ng, nh??ng c??ng phi??n b???n m??u n??y c??ng nhanh ch??ng ch??y h??ng ch??? sau v??i ph??t m??? b??n.\r\n\r\nGi???i ?????u c?? thu gom iPhone 14 Pro Max m??u T??m\r\n\r\nV???i s???c h???p d???n c???a tu??? ch???n m??u T??m, ?????c bi???t l?? c???a phi??n b???n iPhone 14 Pro Max, v???n l?? chi???c iPhone ???????c ng?????i d??ng Vi???t quan t??m nh???t m???i m??a iPhone m??? b??n, ????y l?? s???n ph???m ???????c gi???i ?????u c?? quan t??m b???i gi?? nh???p v??o n???u bi???t c??ch "s??n" th?? s??? r??? h??n th??? tr?????ng nhi???u, trong khi gi?? b??n ?????u ra th?? c?? th??? ch??nh l???ch t??? 3 t???i 4 tri???u ?????ng, th???m ch?? cao h??n c??? gi?? ni??m y???t v?? lu??n c?? ng?????i c???n mua.', 2, 2),
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
