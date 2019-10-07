/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - movie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `movie`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL,
  PRIMARY KEY  (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admin_name`,`username`,`psw`) values ('admin','admin','admin');

/*Table structure for table `book_tickets` */

DROP TABLE IF EXISTS `book_tickets`;

CREATE TABLE `book_tickets` (
  `customer_name` varchar(20) NOT NULL,
  `movie_id` varchar(20) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `show_time` varchar(20) NOT NULL,
  `rate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_tickets` */

insert  into `book_tickets`(`customer_name`,`movie_id`,`movie_name`,`show_time`,`rate`) values ('Prajakta','M1','Kabir Singh ','10:30 Am',350),('Kajal','M3','URI','03:30 Pm',300),('Kajal','M2','Batla House','01:30 Pm',300),('Apurva','M3','URI','03:30 Pm',300),('Yogita','M1','Kabir Singh ','10:30 Am',350),('Prajakta','M6','ChiChore','02:00 Pm',300),('Apurva','M9','Blank','12:30 Pm ',330),('Prajakta','M2','Batla House','01:30 Pm',300),('Prajakta','M1','Kabir Singh ','10:30 Am',350),('Kusum','M8','Section 375','01:30 Pm',400),('Prajakta','M1','Kabir Singh ','10:30 Am',350),('prajakta','M30','Drishyam','10:00 Pm',200),('yogita','M6','ChiChore','02:00 Pm',350),('prajakta','M1','Kabir Singh ','10:30 Am',350),('prajakta','M10','Blank','12:30 Pm',350),('yogita','M3','URI','03:30 Pm',300);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `psw` varchar(10) NOT NULL,
  `acc_balance` int(11) NOT NULL default '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_name`,`email`,`username`,`psw`,`acc_balance`) values ('Prajakta','praju12@gmail.com','prajakta','ppp',150),('Yogita','yogita10@gmail.com','yogita','yyy',200),('Kajal','kajal24@gmail.com','kajal','kkk',500),('Shradha','shradha12@gmail.com','shradha','sss',500),('Apurva','apurva23@gmail.com','apurva','aaa',500),('Kusum','kusum12@gmail.com','kusum','kkk',500),('Pooja','pooja21@gmail.com','pooja','ppp',500),('Pranali','pranali56@gmail.com','pranali','ppp',500);

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `movie_id` varchar(20) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `showtime` varchar(20) NOT NULL default '',
  `rate` varchar(20) NOT NULL,
  PRIMARY KEY  (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `movie` */

insert  into `movie`(`movie_id`,`movie_name`,`showtime`,`rate`) values ('M1','Kabir Singh ','10:30 Am','350'),('M10','Blank','12:30 Pm','350'),('M2','Batla House','01:30 Pm','300 '),('M3','URI','03:30 Pm','300'),('M30','Drishyam','10:00 Pm','200'),('M4','Total Dhamal','06:30 Pm','200'),('M5','Sahoo','02:30 Pm','300'),('M6','ChiChore','02:00 Pm','350 '),('M7','Dream Girl','10: 30 Pm','350'),('M8','Section 375','01:30 Pm','400'),('M9','Blank','12:30 Pm ','330');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
