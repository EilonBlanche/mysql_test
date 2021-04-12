-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6212
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for test1
CREATE DATABASE IF NOT EXISTS `test1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test1`;

-- Dumping structure for table test1.trn_evaluation
CREATE TABLE IF NOT EXISTS `trn_evaluation` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `lesson_datetime` datetime NOT NULL,
  `result` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table test1.trn_evaluation: 0 rows
/*!40000 ALTER TABLE `trn_evaluation` DISABLE KEYS */;
INSERT INTO `trn_evaluation` (`id`, `teacher_id`, `lesson_datetime`, `result`) VALUES
	(1, 110250, '2021-04-12 08:09:14', 1),
	(2, 110250, '2021-04-12 08:09:14', 1),
	(3, 110250, '2021-04-12 08:09:14', 1),
	(4, 110011, '2021-04-12 08:09:14', 1),
	(5, 110011, '2021-04-12 08:09:14', 2),
	(6, 110011, '2021-04-12 08:09:14', 1),
	(7, 110030, '2021-04-12 08:09:14', 1),
	(8, 110030, '2021-04-12 08:09:14', 1),
	(9, 110030, '2021-04-12 08:09:14', 1),
	(10, 110023, '2021-04-12 08:09:14', 1),
	(11, 110023, '2021-04-12 08:09:14', 1),
	(12, 110033, '2021-04-12 08:09:14', 2),
	(13, 110033, '2021-04-12 08:09:14', 1),
	(14, 110033, '2021-04-12 08:09:14', 2),
	(15, 110033, '2021-04-12 08:09:14', 1);
/*!40000 ALTER TABLE `trn_evaluation` ENABLE KEYS */;

-- Dumping structure for table test1.trn_teacher
CREATE TABLE IF NOT EXISTS `trn_teacher` (
  `id` int(11) NOT NULL,
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table test1.trn_teacher: 5 rows
/*!40000 ALTER TABLE `trn_teacher` DISABLE KEYS */;
INSERT INTO `trn_teacher` (`id`, `nickname`, `status`, `created_at`) VALUES
	(110250, 'John D', 1, '2021-04-12 07:59:13'),
	(110023, 'Mike', 0, '2021-04-12 07:59:49'),
	(110011, 'Luca', 1, '2020-04-12 08:00:10'),
	(110033, 'Scottie', 2, '2021-04-12 08:00:45'),
	(110030, 'Steph C', 1, '2021-04-12 08:01:17');
/*!40000 ALTER TABLE `trn_teacher` ENABLE KEYS */;

-- Dumping structure for table test1.trn_teacher_role
CREATE TABLE IF NOT EXISTS `trn_teacher_role` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table test1.trn_teacher_role: 8 rows
/*!40000 ALTER TABLE `trn_teacher_role` DISABLE KEYS */;
INSERT INTO `trn_teacher_role` (`id`, `teacher_id`, `role`, `created_at`) VALUES
	(1, 110250, 1, '2021-04-12 08:03:34'),
	(2, 110250, 2, '2021-04-12 08:03:34'),
	(3, 110250, 3, '2021-04-12 08:03:34'),
	(4, 110011, 1, '2021-04-12 08:03:34'),
	(5, 110030, 1, '2021-04-12 08:03:34'),
	(6, 110030, 2, '2021-04-12 08:03:34'),
	(7, 110023, 1, '2021-04-12 08:03:34'),
	(8, 110033, 3, '2021-04-12 08:06:51');
/*!40000 ALTER TABLE `trn_teacher_role` ENABLE KEYS */;

-- Dumping structure for table test1.trn_time_table
CREATE TABLE IF NOT EXISTS `trn_time_table` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `lesson_datetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table test1.trn_time_table: 15 rows
/*!40000 ALTER TABLE `trn_time_table` DISABLE KEYS */;
INSERT INTO `trn_time_table` (`id`, `teacher_id`, `lesson_datetime`, `status`) VALUES
	(1, 110250, '2021-04-12 08:09:14', 1),
	(2, 110250, '2021-04-12 08:09:14', 1),
	(3, 110250, '2021-04-12 08:09:14', 1),
	(4, 110011, '2021-04-12 08:09:14', 1),
	(5, 110011, '2021-04-12 08:09:14', 2),
	(6, 110011, '2021-04-12 08:09:14', 3),
	(7, 110030, '2021-04-12 08:09:14', 1),
	(8, 110030, '2021-04-12 08:09:14', 1),
	(9, 110030, '2021-04-12 08:09:14', 1),
	(10, 110023, '2021-04-12 08:09:14', 1),
	(11, 110023, '2021-04-12 08:09:14', 1),
	(12, 110033, '2021-04-12 08:09:14', 2),
	(13, 110033, '2021-04-12 08:09:14', 1),
	(14, 110033, '2021-04-12 08:09:14', 2),
	(15, 110033, '2021-04-12 08:09:14', 1);
/*!40000 ALTER TABLE `trn_time_table` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
