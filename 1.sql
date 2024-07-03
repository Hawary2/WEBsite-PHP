/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : jobportal
Target Host     : localhost:3306
Target Database : jobportal
Date: 03/07/2024 08:01:44 ã
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'Proteen Das', 'admin@admin.com', 'password');
INSERT INTO `admin` VALUES ('2', '2', '1@1.com', '1');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('9', 'Welcome', 'Hey welcome to cuteblog for PHP , this is a new modern blog build with native PHP', 'https://img.freepik.com/free-vector/developer-activity-concept-illustration_114360-2801.jpg?w=2000', 'A Cuteblog for native php blogger, so if you a php lovers this source code is best solution for build modern blog with fast using php ,simple and fast including auto SEO with using this project. lets get started now using cuteblog PHP');

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for employer
-- ----------------------------
DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employer
-- ----------------------------
INSERT INTO `employer` VALUES ('4', 'Wipro Technologies ', 'admin@wipro.com', 'password');
INSERT INTO `employer` VALUES ('10', 'Mahindra', 'admin@mahindra.com', 'password');
INSERT INTO `employer` VALUES ('11', 'Tata Consultancy Services', 'admin@tcs.com', 'password');
INSERT INTO `employer` VALUES ('14', 'Infosys', 'admin@infosys.com', 'password');
INSERT INTO `employer` VALUES ('15', 'Paladion Networks', 'admin@paladion.com', 'password');
INSERT INTO `employer` VALUES ('16', 'Accenture', 'admin@accenture.com', 'password');
INSERT INTO `employer` VALUES ('26', 'Microsoft', 'admin@microsoft.com', 'password');
INSERT INTO `employer` VALUES ('27', 'Spark Foundation', 'admin@sf.com', 'password');
INSERT INTO `employer` VALUES ('28', 'Facebook', 'admin@facebook.com', 'password');
INSERT INTO `employer` VALUES ('29', 'Intel', 'admin@intel.com', 'password');
INSERT INTO `employer` VALUES ('30', 'LTI Mindtree', 'admin@lti.com', 'password');
INSERT INTO `employer` VALUES ('31', 'root', 'xanoros2@gmail.com', 'Qweasdzxcrr11');

-- ----------------------------
-- Table structure for jobsapplied
-- ----------------------------
DROP TABLE IF EXISTS `jobsapplied`;
CREATE TABLE `jobsapplied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobapplied_seekerFK` (`sid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jobsapplied
-- ----------------------------
INSERT INTO `jobsapplied` VALUES ('36', '2023-04-15', '40', '36', 'Accepted');
INSERT INTO `jobsapplied` VALUES ('38', '2023-04-15', '43', '36', 'Rejected');
INSERT INTO `jobsapplied` VALUES ('39', '2023-04-19', '43', '43', 'Applied');
INSERT INTO `jobsapplied` VALUES ('40', '2023-04-19', '41', '40', 'Applied');
INSERT INTO `jobsapplied` VALUES ('41', '2023-04-19', '8', '36', 'Applied');
INSERT INTO `jobsapplied` VALUES ('42', '2023-04-19', '41', '38', 'Applied');
INSERT INTO `jobsapplied` VALUES ('43', '2023-04-19', '8', '38', 'Applied');
INSERT INTO `jobsapplied` VALUES ('44', '2023-04-19', '44', '38', 'Applied');

-- ----------------------------
-- Table structure for logpost
-- ----------------------------
DROP TABLE IF EXISTS `logpost`;
CREATE TABLE `logpost` (
  `lpid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(100) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `action` varchar(500) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`lpid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of logpost
-- ----------------------------
INSERT INTO `logpost` VALUES ('7', '40', '4', 'Product Manager', 'Business Intelligence Jobs', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open', 'INSERTED', '2023-02-02 10:46:59');
INSERT INTO `logpost` VALUES ('8', '41', '29', 'Graphic Designer', 'Graphic Designer Jobs', 'Animation , Gaming', 'Intern', 'Permanent', 'Open', 'INSERTED', '2023-02-02 10:53:40');
INSERT INTO `logpost` VALUES ('9', '42', '28', 'Python Developer', 'IT Jobs', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open', 'INSERTED', '2023-02-02 11:03:24');
INSERT INTO `logpost` VALUES ('10', '6', '14', 'Team Lead (Technical)', 'IT Jobs', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open', 'UPDATED', '2023-02-02 11:07:48');
INSERT INTO `logpost` VALUES ('11', '8', '16', 'Accounts Manager', 'Accounting Jobs', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open', 'UPDATED', '2023-02-02 11:09:58');
INSERT INTO `logpost` VALUES ('12', '43', '30', 'Software Engineer', 'IT Jobs', 'IT-Software , Software Services', 'Backend Engg.', 'Permanent', 'Open', 'INSERTED', '2023-04-15 03:22:03');
INSERT INTO `logpost` VALUES ('13', '6', '14', 'Team Lead (Technical)', 'IT Jobs', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open', 'UPDATED', '2023-04-19 13:58:53');
INSERT INTO `logpost` VALUES ('14', '8', '16', 'Accounts Manager', 'Accounting Jobs', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open', 'UPDATED', '2023-04-19 13:59:02');
INSERT INTO `logpost` VALUES ('15', '40', '4', 'Product Manager', 'Business Intelligence Jobs', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:06');
INSERT INTO `logpost` VALUES ('16', '41', '29', 'Graphic Designer', 'Graphic Designer Jobs', 'Animation , Gaming', 'Intern', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:11');
INSERT INTO `logpost` VALUES ('17', '42', '28', 'Python Developer', 'IT Jobs', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:17');
INSERT INTO `logpost` VALUES ('18', '44', '11', 'Backend Intern', 'System Programming Jobs', 'IT-Software , Software Services', 'Intern', 'Permanent', 'Open', 'INSERTED', '2023-04-19 15:13:19');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(500) NOT NULL,
  `minexp` varchar(100) NOT NULL,
  `desc` varchar(5000) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `employer_postFK` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('6', '2023-01-04 20:30:00', '14', 'Team Lead (Technical)', 'IT Jobs', '8', 'Aid a group of programmers.', '100000-150000', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open');
INSERT INTO `post` VALUES ('8', '2023-01-04 20:30:00', '16', 'Accounts Manager', 'Accounting Jobs', '6', 'Experience with accounting software. General Math skills.', '70000-80000', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open');
INSERT INTO `post` VALUES ('40', '2023-02-01 20:30:00', '4', 'Product Manager', 'Business Intelligence Jobs', '3', 'Communication Skills, Technical Knowledge', '40000-60000', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open');
INSERT INTO `post` VALUES ('41', '2023-02-01 20:30:00', '29', 'Graphic Designer', 'Graphic Designer Jobs', '3', '3D Animation, Adobe products.', '30000-50000', 'Animation , Gaming', 'Intern', 'Permanent', 'Open');
INSERT INTO `post` VALUES ('42', '2023-02-01 20:30:00', '28', 'Python Developer', 'IT Jobs', '2', 'Proficiency in Python, Test software components', '40000-60000', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open');
INSERT INTO `post` VALUES ('43', '2023-04-14 20:30:00', '30', 'Software Engineer', 'IT Jobs', '3 years', 'B.Tech', '20000', 'IT-Software , Software Services', 'Backend Engg', 'Permanent', 'Open');
INSERT INTO `post` VALUES ('44', '2023-04-18 20:30:00', '11', 'Backend Intern', 'System Programming Jobs', '1-1.5 years', 'MERN', '25000 - 30000', 'IT-Software , Software Services', 'Intern', 'Permanent', 'Open');

-- ----------------------------
-- Table structure for seeker
-- ----------------------------
DROP TABLE IF EXISTS `seeker`;
CREATE TABLE `seeker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `skills` varchar(2000) NOT NULL,
  `resume` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of seeker
-- ----------------------------
INSERT INTO `seeker` VALUES ('36', 'Nishit Killa', 'nishit@gmail.com', 'password', 'BE', '2001-06-21', 'C++, JAVA', '');
INSERT INTO `seeker` VALUES ('37', 'Tushar Jain', 'tushar@gmail.com', 'password', 'BE', '2001-07-04', 'HTML, CSS, JS', '');
INSERT INTO `seeker` VALUES ('38', 'Sreeleena Ganguli', 'sreeleena@gmail.com', 'password', 'MTech', '2001-09-05', 'Backend Engg.', '');
INSERT INTO `seeker` VALUES ('39', 'Riteek Rakesh', 'riteek@gmail.com', 'password', 'BE', '2001-06-02', 'Circuit Design', '');
INSERT INTO `seeker` VALUES ('40', 'Sayantan Podder', 'sayantan@gmail.com', 'password', 'BE', '1995-07-19', 'Machine Learning', '');
INSERT INTO `seeker` VALUES ('41', 'Sampurna Ghosh', 'sampurna@gmail.com', 'password', 'B.Sc.', '1995-11-23', 'Physiotherapy', '');
INSERT INTO `seeker` VALUES ('42', 'Rahul Adhikary', 'rahul@gmail.com', 'password', 'BBA', '1991-08-12', 'International Business', '');
INSERT INTO `seeker` VALUES ('43', 'Mariam Meerza', 'mariam@gmail.com', 'password', 'BE', '1998-03-07', 'Computer Applications', '');
INSERT INTO `seeker` VALUES ('45', 'root2', 'hawaryos99@gmail.com', 'Qweasdzxcrr11', '', '2015-07-24', '21332weqweqe2323q23q', 'Plagiarsm152-35-1174.pdf');

-- ----------------------------
-- Table structure for totalposts
-- ----------------------------
DROP TABLE IF EXISTS `totalposts`;
CREATE TABLE `totalposts` (
  `AllPosts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of totalposts
-- ----------------------------
INSERT INTO `totalposts` VALUES ('7');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `SeekersAndEmployers` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('19');

-- ----------------------------
-- Trigger structure for New Row Inserted
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `New Row Inserted` AFTER INSERT ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'INSERTED', NOW())
;;;
DELIMITER ;

-- ----------------------------
-- Trigger structure for Existing Row Updated
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `Existing Row Updated` AFTER UPDATE ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'UPDATED', NOW())
;;;
DELIMITER ;

-- ----------------------------
-- Trigger structure for Existing Row Deleted
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `Existing Row Deleted` AFTER DELETE ON `post` FOR EACH ROW INSERT INTO logpost VALUES(null, OLD.id, OLD.eid, OLD.name, OLD.category, OLD.industry, OLD.role, OLD.employmentType, OLD.status, 'DELETED', NOW())
;;;
DELIMITER ;
