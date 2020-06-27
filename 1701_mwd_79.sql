/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - student_ability_info
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_ability_info` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student_ability_info`;

/*Table structure for table `academy_info` */

DROP TABLE IF EXISTS `academy_info`;

CREATE TABLE `academy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `academy_name` varchar(255) DEFAULT NULL COMMENT '学院名称',
  `create_time` datetime DEFAULT NULL,
  `creator` int(255) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(255) DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT '1' COMMENT '1 代表正常，0代表删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `academy_info` */

insert  into `academy_info`(`id`,`academy_name`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (3,'文史学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(4,'新闻与传播学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(6,'马克思主义学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(8,'法学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(9,'外语学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(10,'数学与统计学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(11,'物理与电子工程学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(18,'化学与制药工程学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(20,'生命科学与技术学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(43,'环境科学与旅游学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(44,'计算机与信息技术学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(45,'体育学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(46,'音乐学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(47,'美术与艺术设计学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(48,'经济与管理学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(49,'教育科学学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(50,'土木建筑工程学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(51,'软件学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(52,'国际教育学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(53,'机电工程学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(54,'农业工程学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(55,'珠宝玉雕学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(56,'继续教育学院','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(57,'公共外语教学部','2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1);

/*Table structure for table `admin_info` */

DROP TABLE IF EXISTS `admin_info`;

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_pass` varchar(50) DEFAULT NULL,
  `admin_status` tinyint(4) DEFAULT NULL COMMENT '状态，0表示未登录，1表示已登录',
  `admin_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` int(25) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(25) DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `admin_info` */

insert  into `admin_info`(`id`,`admin_name`,`admin_pass`,`admin_status`,`admin_phone`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (1,'admin1','111',NULL,'111',NULL,NULL,'2020-01-11 00:00:00',NULL,NULL),(2,'admin2','222',NULL,'222',NULL,NULL,'2020-01-11 00:00:00',NULL,NULL),(7,'佑佑学习网','yyxxw',NULL,'333',NULL,NULL,'2020-01-11 00:00:00',NULL,NULL),(8,'佑佑有话说','yyyhs',NULL,'444',NULL,NULL,'2020-01-11 00:00:00',NULL,NULL);

/*Table structure for table `class_info` */

DROP TABLE IF EXISTS `class_info`;

CREATE TABLE `class_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  `max_score` int(11) DEFAULT NULL,
  `min_score` int(11) DEFAULT NULL,
  `class_rule` varchar(300) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `class_info` */

insert  into `class_info`(`id`,`class_name`,`max_score`,`min_score`,`class_rule`,`creator`,`create_time`,`operator`,`operate_time`,`delete_flag`) values (1,'超级班',100,80,NULL,NULL,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL),(2,'进阶班',79,60,NULL,NULL,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL),(3,'普通班',59,0,NULL,NULL,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL);

/*Table structure for table `major_info` */

DROP TABLE IF EXISTS `major_info`;

CREATE TABLE `major_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(255) DEFAULT NULL,
  `academy_info_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` int(255) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(255) DEFAULT NULL,
  `delete_flag` tinyint(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `外键` (`academy_info_id`),
  CONSTRAINT `外键` FOREIGN KEY (`academy_info_id`) REFERENCES `academy_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `major_info` */

insert  into `major_info`(`id`,`major_name`,`academy_info_id`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (12,'物理',6,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(13,'中国史',4,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1),(14,'模拟电子',6,'2020-01-11 00:00:00',NULL,'2020-01-11 00:00:00',NULL,1);

/*Table structure for table `option_info` */

DROP TABLE IF EXISTS `option_info`;

CREATE TABLE `option_info` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `question_num_id` int(11) DEFAULT NULL COMMENT '选项的题号',
  `option_content` varchar(255) DEFAULT NULL COMMENT '选项内容',
  `option_type` varchar(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` int(25) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(25) DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `option_info` */

insert  into `option_info`(`id`,`question_num_id`,`option_content`,`option_type`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (21,1,'佑佑小哥哥','A','2020-01-11 21:10:11',NULL,'2020-05-08 10:29:11',NULL,NULL),(22,1,'222','B','2020-01-11 21:10:18',NULL,'2020-01-11 21:53:47',NULL,NULL),(23,1,'333','C','2020-01-11 21:10:28',NULL,NULL,NULL,NULL),(24,1,'444','D','2020-01-11 21:10:34',NULL,NULL,NULL,NULL),(25,3,'111','A','2020-01-11 21:10:44',NULL,'2020-01-11 21:54:22',NULL,NULL),(26,2,'微信公众号：佑佑有话说','B','2020-01-11 21:10:48',NULL,'2020-05-08 10:30:08',NULL,NULL),(27,2,'333','C','2020-01-11 21:10:54',NULL,'2020-01-11 21:54:11',NULL,NULL),(28,2,'444','D','2020-01-11 21:11:01',NULL,'2020-01-11 21:54:16',NULL,NULL),(29,2,'111','A','2020-01-11 21:11:12',NULL,'2020-01-11 21:53:59',NULL,NULL),(30,3,'222','B','2020-01-11 21:11:20',NULL,'2020-01-11 21:54:27',NULL,NULL),(31,3,'关注微信公众号【佑佑有话说】，后台回复“基于Javaweb的在线答题平台”','C','2020-01-11 21:11:25',NULL,'2020-05-08 10:32:01',NULL,NULL),(32,3,'444','D','2020-01-11 21:11:29',NULL,'2020-01-11 21:54:39',NULL,NULL);

/*Table structure for table `paper_info` */

DROP TABLE IF EXISTS `paper_info`;

CREATE TABLE `paper_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_num` int(11) DEFAULT NULL COMMENT '题号',
  `question_content` varchar(255) DEFAULT NULL COMMENT '问题题目',
  `question_score` int(25) DEFAULT NULL COMMENT '题目得分',
  `question_answer` varchar(25) DEFAULT NULL COMMENT '题目的答案',
  `create_time` datetime DEFAULT NULL,
  `creator` int(25) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(25) DEFAULT NULL,
  `delete_flag` varchar(25) DEFAULT '1' COMMENT '1代表正常，2代表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `paper_info` */

insert  into `paper_info`(`id`,`question_num`,`question_content`,`question_score`,`question_answer`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (11,1,'试题一：谁最帅？',5,'A','2020-01-11 21:09:21',NULL,'2020-05-08 10:33:48',NULL,'1'),(12,2,'试题二：你会选择关注哪个微信公众号？',5,'B','2020-01-11 21:09:36',NULL,'2020-05-08 10:29:49',NULL,'1'),(13,3,'试题三：如何获取本项目的源码？',5,'C','2020-01-11 21:10:03',NULL,'2020-05-08 10:30:58',NULL,'1');

/*Table structure for table `student_answer` */

DROP TABLE IF EXISTS `student_answer`;

CREATE TABLE `student_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_num_id` int(11) DEFAULT NULL COMMENT '考生的学号',
  `question_num_id` int(11) DEFAULT NULL COMMENT '考生的题号',
  `answer_type` varchar(25) DEFAULT NULL COMMENT '考生的答案是什么',
  `student_score` int(11) DEFAULT NULL COMMENT '学生的最终得分',
  `create_time` datetime DEFAULT NULL,
  `creator` int(255) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(255) DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `student_answer` */

insert  into `student_answer`(`id`,`student_num_id`,`question_num_id`,`answer_type`,`student_score`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (38,1901,1,'A',5,'2020-05-08 10:38:14',NULL,NULL,NULL,NULL),(39,1901,3,'C',5,'2020-05-08 10:38:14',NULL,NULL,NULL,NULL);

/*Table structure for table `student_info` */

DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_num` int(50) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_password` varchar(50) DEFAULT NULL,
  `student_gender` int(50) DEFAULT NULL COMMENT '0代表男，1代表女',
  `major_info_id` int(50) NOT NULL COMMENT '学生所属专业',
  `student_phone` varchar(50) DEFAULT NULL,
  `student_province` varchar(50) DEFAULT NULL,
  `class_id` tinyint(4) DEFAULT NULL COMMENT '班级id',
  `recommend_course` varchar(300) DEFAULT NULL COMMENT '推荐课程',
  `total_score` int(11) DEFAULT NULL COMMENT '总分',
  `create_time` datetime DEFAULT NULL,
  `creator` int(25) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  `operator` int(25) DEFAULT NULL,
  `delete_flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `student_info` */

insert  into `student_info`(`id`,`student_num`,`student_name`,`student_password`,`student_gender`,`major_info_id`,`student_phone`,`student_province`,`class_id`,`recommend_course`,`total_score`,`create_time`,`creator`,`operate_time`,`operator`,`delete_flag`) values (1,1901,'张一','1',0,14,'1','四川',3,NULL,10,'2020-01-11 00:00:00',NULL,'2020-05-08 10:38:14',NULL,1),(4,1902,'张二','2',0,12,'2','河北',3,NULL,2,'2020-01-11 00:00:00',NULL,'2020-01-11 19:48:23',NULL,1),(5,1903,'张三','3',0,14,'3','四川',3,NULL,15,'2020-01-11 00:00:00',NULL,'2020-01-11 21:55:44',NULL,1),(6,1904,'张四','4',1,13,'4','江苏',2,NULL,4,'2020-01-11 00:00:00',NULL,NULL,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
