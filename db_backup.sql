/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 5.7.35-log : Database - employee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `employee`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `mobile_number` char(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`first_name`,`last_name`,`age`,`mobile_number`,`address`) values 
(1,'Prakash','patel',26,'9898989898','abc gully,abc nagar, abc'),
(2,'Darshan','Patel',27,'8787878787','cde moholla,cde naka,cde'),
(3,'vansh','Patel',28,'6767676767','efg chowk,efg market,efg'),
(4,'Nakul','Patel',29,'7676767676','hij road,hig baugh,hij'),
(5,'Haresh','Patel',30,'6969696969','xyz naka,xyz gully,xyz');

/*Table structure for table `employee_hobby` */

DROP TABLE IF EXISTS `employee_hobby`;

CREATE TABLE `employee_hobby` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_id` int(5) NOT NULL,
  `hobby_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `hobby_id` (`hobby_id`),
  CONSTRAINT `employee_hobby_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `employee_hobby_ibfk_2` FOREIGN KEY (`hobby_id`) REFERENCES `hobby` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee_hobby` */

insert  into `employee_hobby`(`id`,`employee_id`,`hobby_id`) values 
(1,1,3),
(2,1,1),
(3,2,6),
(4,2,7);

/*Table structure for table `employee_salary` */

DROP TABLE IF EXISTS `employee_salary`;

CREATE TABLE `employee_salary` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_id` int(5) NOT NULL,
  `salary` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `employee_salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `employee_salary` */

insert  into `employee_salary`(`id`,`employee_id`,`salary`,`date`) values 
(1,1,50000,'2021-09-20'),
(2,2,40000,'2021-09-20'),
(3,3,30000,'2021-09-20'),
(4,4,20000,'2021-09-20'),
(5,5,10000,NULL);

/*Table structure for table `hobby` */

DROP TABLE IF EXISTS `hobby`;

CREATE TABLE `hobby` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `hobby` */

insert  into `hobby`(`id`,`name`) values 
(1,'Cricket'),
(2,'Basketball'),
(3,'Football'),
(4,'Table Tenis'),
(5,'Chess'),
(6,'Drawing'),
(7,'Singing'),
(8,'Dancing');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
