/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - keystrokeexam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`keystrokeexam` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `keystrokeexam`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`features`,`usertype`) values (1,'aleena','[[819,200,2295,1676,2495,1476],[200,156,1124,1080,1280,924],[156,174,966,984,1140,810],[174,1480,574,1880,2054,400],[1480,181,2546,1247,2727,1066],[181,180,413,412,593,232],[180,171,1379,1370,1550,1199],[171,249,1902,1980,2151,1731],[249,118,1178,1047,1296,929],[118,188,2121,2191,2309,2003],[188,138,2159,2109,2297,1971],[138,971,676,1509,1647,538],[971,149,1268,446,1417,297]]','user');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `ocrfile` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`login_id`,`fname`,`lname`,`age`,`email`,`phone`,`ocrfile`) values (1,1,'aleena','K p','24','aleena@gmail.com','9879879889',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
