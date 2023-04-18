-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
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


-- Dumping database structure for mitrovski
CREATE DATABASE IF NOT EXISTS `mitrovski` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `mitrovski`;

-- Dumping structure for table mitrovski.marki
CREATE TABLE IF NOT EXISTS `marki` (
  `marki_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `marki_name` varchar(15) NOT NULL,
  `country` varchar(25) NOT NULL,
  `eu` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`marki_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.marki: ~10 rows (approximately)
INSERT INTO `marki` (`marki_id`, `marki_name`, `country`, `eu`) VALUES
	(1, 'AUDI', 'D', 1),
	(2, 'TOYOTA', 'J', 0),
	(3, 'AUDI', 'D', 1),
	(4, 'TOYOTA', 'J', 0),
	(5, 'AUDI', 'D', 1),
	(6, 'SKODA', 'CZ', 1),
	(7, 'AUDI', 'D', 1),
	(8, 'TOYOTA', 'J', 0),
	(9, 'AUDI', 'D', 1),
	(10, 'TOYOTA', 'J', 0);

-- Dumping structure for table mitrovski.modeli
CREATE TABLE IF NOT EXISTS `modeli` (
  `modeli_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `modeli_name` varchar(15) NOT NULL,
  `price` decimal(6,2) unsigned NOT NULL DEFAULT 0.00,
  `color` varchar(15) NOT NULL,
  PRIMARY KEY (`modeli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.modeli: ~4 rows (approximately)
INSERT INTO `modeli` (`modeli_id`, `modeli_name`, `price`, `color`) VALUES
	(1, 'A4', 2400.00, '#FF00FF'),
	(2, 'A4', 2800.00, '#FF00FF'),
	(3, 'A4', 2400.00, '#FF00FF'),
	(4, 'A4', 2800.00, '#FF00FF');

-- Dumping structure for table mitrovski.obuki
CREATE TABLE IF NOT EXISTS `obuki` (
  `Obuki_id` tinyint(2) unsigned NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`Obuki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.obuki: ~3 rows (approximately)
INSERT INTO `obuki` (`Obuki_id`, `Title`, `Description`) VALUES
	(1, 'SEO', 'javen advertajzing'),
	(2, 'SEO', 'javen advertajzing'),
	(3, 'full stack', 'javen advertajzing');

-- Dumping structure for table mitrovski.studenti
CREATE TABLE IF NOT EXISTS `studenti` (
  `studenti_id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `Obuki_id` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`studenti_id`),
  KEY `Obuki_id` (`Obuki_id`),
  CONSTRAINT `Obuki_id` FOREIGN KEY (`Obuki_id`) REFERENCES `obuki` (`Obuki_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.studenti: ~6 rows (approximately)
INSERT INTO `studenti` (`studenti_id`, `first_name`, `last_name`, `Obuki_id`) VALUES
	(1, 'Jasmina', ' Mitrovski', 2),
	(2, ' Ljubisha', 'Popovski', 3),
	(3, ' Marija', 'Stojanovski', 1),
	(5, 'Ljubisha', 'Popovski', 3),
	(6, 'Jasmina', 'Mitrovska', 3),
	(7, 'Jasmina', 'Mitrovski', 3),
	(8, 'Biljana', 'Nikolovska', 2);

-- Dumping structure for table mitrovski.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_of_last_login` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.users: ~6 rows (approximately)
INSERT INTO `users` (`id`, `user_name`, `password`, `date_of_last_login`) VALUES
	(1, 'admin12345@yahoo.com', '0', '2023-02-28'),
	(2, 'admin1234@gmail.com', '0', '2023-02-01'),
	(3, 'admin123@yahoo.com', '5b2d560b3f2640cadc2ff50ca64bdd936f77eb2d', '2023-02-04'),
	(4, 'admin12@gmail.com', '0', '2023-02-05'),
	(12, 'admin12356@yahoo.com', 'admin123', '2023-02-04'),
	(15, 'admin12356@yahoo.com', 'admin123', '2023-02-04');

-- Dumping structure for table mitrovski.vraboteni
CREATE TABLE IF NOT EXISTS `vraboteni` (
  `vr_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(35) NOT NULL,
  `godini` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table mitrovski.vraboteni: ~0 rows (approximately)

-- Dumping structure for procedure mitrovski._studenti_
DELIMITER //
CREATE PROCEDURE `_studenti_`()
BEGIN
SELECT * FROM studenti
INNER JOIN obuki
ON studenti.Obuki_id=obuki.Obuki_id;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
