/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : erp_db

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-07-24 20:40:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apt`
-- ----------------------------
DROP TABLE IF EXISTS `apt`;
CREATE TABLE `apt` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `UnderID` int(11) DEFAULT NULL,
  `AttendanceType` int(11) NOT NULL,
  `UnitID` int(11) DEFAULT NULL,
  `PeriodType` int(11) DEFAULT NULL,
  `CompanyID` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apt
-- ----------------------------
INSERT INTO `apt` VALUES ('1', 'Primary', '0', '0', null, null, '1', '1', '2010-11-28 14:47:52', null, null);
INSERT INTO `apt` VALUES ('2', 'Primary', '0', '0', null, null, '2', '1', '2010-12-22 13:11:37', null, null);
INSERT INTO `apt` VALUES ('3', 'Primary', '0', '0', null, null, '3', '1', '2011-02-12 15:30:48', null, null);
INSERT INTO `apt` VALUES ('4', 'Primary', '0', '0', null, null, '4', '1', '2011-02-12 16:02:06', null, null);
INSERT INTO `apt` VALUES ('5', 'Primary', '0', '0', null, null, '5', '1', '2011-02-17 08:51:58', null, null);

-- ----------------------------
-- Table structure for `attendancevoucher`
-- ----------------------------
DROP TABLE IF EXISTS `attendancevoucher`;
CREATE TABLE `attendancevoucher` (
  `ID` int(11) NOT NULL,
  `VoucherNo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VoucherDate` datetime NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of attendancevoucher
-- ----------------------------

-- ----------------------------
-- Table structure for `attendancevoucheritem`
-- ----------------------------
DROP TABLE IF EXISTS `attendancevoucheritem`;
CREATE TABLE `attendancevoucheritem` (
  `ID` int(11) NOT NULL,
  `AttendanceVoucherID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `APTID` int(11) NOT NULL,
  `Value` decimal(20,2) NOT NULL,
  `Guid` text CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of attendancevoucheritem
-- ----------------------------

-- ----------------------------
-- Table structure for `calendar`
-- ----------------------------
DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `calendardate` date DEFAULT NULL,
  `day_type` int(1) NOT NULL DEFAULT '0',
  `h_government` varchar(10) DEFAULT NULL,
  `h_festival` varchar(10) DEFAULT NULL,
  `h_custom` varchar(10) DEFAULT NULL,
  `weekend` int(1) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `_show` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of calendar
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('3', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®');
INSERT INTO `category` VALUES ('2', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾');
INSERT INTO `category` VALUES ('4', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â');
INSERT INTO `category` VALUES ('6', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿');
INSERT INTO `category` VALUES ('7', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿');
INSERT INTO `category` VALUES ('8', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸');
INSERT INTO `category` VALUES ('9', 'Ã Â¦Å¡Ã Â¦Â¾');
INSERT INTO `category` VALUES ('10', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨');
INSERT INTO `category` VALUES ('11', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿');
INSERT INTO `category` VALUES ('12', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾');
INSERT INTO `category` VALUES ('13', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â');
INSERT INTO `category` VALUES ('14', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬');
INSERT INTO `category` VALUES ('15', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¿Ã Â¦Â¤');
INSERT INTO `category` VALUES ('16', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º');

-- ----------------------------
-- Table structure for `category_name`
-- ----------------------------
DROP TABLE IF EXISTS `category_name`;
CREATE TABLE `category_name` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `colorcode` varchar(100) DEFAULT NULL,
  `typeid` int(11) NOT NULL,
  `_sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category_name
-- ----------------------------
INSERT INTO `category_name` VALUES ('17', 'SSC', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('18', 'HSC', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('19', 'Hons', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('20', 'Dhaka', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('21', 'Chittagong', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('22', 'Rajshahi', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('222', 'Ntl Bangla', null, '22', null, '1');
INSERT INTO `category_name` VALUES ('221', 'Ntl English', null, '22', null, '1');
INSERT INTO `category_name` VALUES ('220', 'English', null, '22', null, '1');
INSERT INTO `category_name` VALUES ('26', 'GPA 5 & Above', null, '4', null, '1');
INSERT INTO `category_name` VALUES ('27', 'GPA 4 to 4.99', null, '4', null, '1');
INSERT INTO `category_name` VALUES ('28', 'GPA 3 to 3.99', null, '4', null, '1');
INSERT INTO `category_name` VALUES ('29', '1st Cl', null, '4', null, '1');
INSERT INTO `category_name` VALUES ('30', 'Def Svc - Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('31', 'Def Svc - Sldr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('32', 'Govt Svc - Above DS', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('33', 'Govt Svc - Cl 1 upto DS', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('34', 'Govt Svc - Others', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('35', 'Police - Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('36', 'Father Dead', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('37', 'Mother Dead', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('38', 'Both Dead', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('44', ' Male', null, '9', null, '1');
INSERT INTO `category_name` VALUES ('45', 'Jahangir', '#0B610B', '10', null, '1');
INSERT INTO `category_name` VALUES ('46', 'BD Army', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('47', 'Cdt College', null, '12', null, '1');
INSERT INTO `category_name` VALUES ('48', 'Renowned College', null, '12', null, '1');
INSERT INTO `category_name` VALUES ('49', 'Fair', null, '14', null, '1');
INSERT INTO `category_name` VALUES ('234', 'Moderately Fair', null, '14', null, '1');
INSERT INTO `category_name` VALUES ('51', 'Masters', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('52', 'MBBS', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('53', 'BDS', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('116', 'Gen College', null, '12', null, '1');
INSERT INTO `category_name` VALUES ('114', 'BSc Engg', null, '1', null, '1');
INSERT INTO `category_name` VALUES ('115', 'Good College', null, '12', null, '1');
INSERT INTO `category_name` VALUES ('61', 'Serving', null, '13', null, '1');
INSERT INTO `category_name` VALUES ('62', 'Below 10,000/-', null, '15', null, '1');
INSERT INTO `category_name` VALUES ('63', '10,000/- to 20,000/-', null, '15', null, '1');
INSERT INTO `category_name` VALUES ('64', 'Bangladesh', null, '16', null, '1');
INSERT INTO `category_name` VALUES ('65', 'Palestine', null, '16', null, '1');
INSERT INTO `category_name` VALUES ('66', 'Bagerhat', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('214', 'BA (A)', null, '18', null, '1');
INSERT INTO `category_name` VALUES ('68', 'Islam', null, '19', null, '1');
INSERT INTO `category_name` VALUES ('69', 'Sunni', null, '20', null, '1');
INSERT INTO `category_name` VALUES ('70', 'A+', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('71', 'A-', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('73', 'Rouf', '#FE9A2E', '10', null, '1');
INSERT INTO `category_name` VALUES ('74', 'Hamid', '#610B0B', '10', null, '1');
INSERT INTO `category_name` VALUES ('76', 'BN', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('77', 'GC-rank', null, '0', null, '2');
INSERT INTO `category_name` VALUES ('93', 'Mostafa', '#08088A', '10', null, '1');
INSERT INTO `category_name` VALUES ('80', 'GWC', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('81', 'GC', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('82', 'BSUO', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('83', 'BJUO', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('84', 'BSM', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('85', 'BQMS', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('86', 'CSUO', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('87', 'CJUO', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('88', 'CSM', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('89', 'CQMS', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('90', 'Sgt', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('91', 'Cpl', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('92', 'L Cpl', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('95', 'BAF', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('96', 'B+', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('97', 'B-', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('98', 'AB+', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('99', 'AB-', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('100', 'O+', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('101', 'O-', null, '21', null, '1');
INSERT INTO `category_name` VALUES ('102', 'Hinduism', null, '19', null, '1');
INSERT INTO `category_name` VALUES ('103', 'Bhuddism', null, '19', null, '1');
INSERT INTO `category_name` VALUES ('104', 'Christianity', null, '19', null, '1');
INSERT INTO `category_name` VALUES ('105', 'Shiaite', null, '20', null, '1');
INSERT INTO `category_name` VALUES ('248', '65 BMA LC', null, '7', '1', '1');
INSERT INTO `category_name` VALUES ('249', '66 BMA LC', null, '7', '2', '1');
INSERT INTO `category_name` VALUES ('250', '67 BMA LC', null, '7', '3', '1');
INSERT INTO `category_name` VALUES ('251', '68 BMA LC', null, '7', '4', '1');
INSERT INTO `category_name` VALUES ('252', '36 BMA Spl', null, '7', '5', '1');
INSERT INTO `category_name` VALUES ('111', 'Palestinian Army', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('112', 'Sri Lankan Army', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('113', 'Nepalese Army', null, '11', null, '1');
INSERT INTO `category_name` VALUES ('117', 'Madrasha', null, '12', null, '1');
INSERT INTO `category_name` VALUES ('118', 'Jessore', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('119', 'Comilla', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('120', 'Barishal', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('121', 'Sylhet', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('122', 'Madrasha', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('124', 'Police - Below Cl 1', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('125', 'Para Mil - Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('126', 'Para Mil - Below Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('127', 'Doctor', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('128', 'Engr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('129', 'Judge', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('130', 'Pte Sec - Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('131', 'Pte Sec - Others', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('132', 'Banker - Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('133', 'Banker - Below Offr', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('134', 'Farmer', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('135', 'Business - Big', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('136', 'Business - Medium', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('137', 'Business - Small', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('138', 'Teacher - University', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('139', 'Teacher - College', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('140', 'Teacher - School', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('141', 'Teacher - Madrasha', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('142', 'Overseas Emp', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('143', 'Misc', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('144', 'Retd', null, '13', null, '1');
INSERT INTO `category_name` VALUES ('145', '20,000/- to 40,000/-', null, '15', null, '1');
INSERT INTO `category_name` VALUES ('146', '40,000/- to 60,000/-', null, '15', null, '1');
INSERT INTO `category_name` VALUES ('147', 'Above 60,000/', null, '15', null, '1');
INSERT INTO `category_name` VALUES ('148', 'Sri Lanka', null, '16', null, '1');
INSERT INTO `category_name` VALUES ('149', 'Nepal', null, '16', null, '1');
INSERT INTO `category_name` VALUES ('150', 'Bandarban', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('151', 'Barguna', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('152', 'Barishal', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('153', 'Bhola', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('154', 'Bogra', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('155', 'Brahmanbaria', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('156', 'Chadpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('157', 'Chittagong', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('158', 'Chuadanga', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('159', 'Comilla', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('160', 'Cox\'s Bazar', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('161', 'Dhaka', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('162', 'Dinajpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('163', 'Faridpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('164', 'Feni', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('165', 'Gaibandha', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('166', 'Gazipur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('167', 'Gopalganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('168', 'Habiganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('169', 'Jaipurhat', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('170', 'Jamalpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('171', 'Jessore', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('172', 'Jhalokathi', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('173', 'Jhenaidah', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('174', 'Khagrachari', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('175', 'Khulna', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('176', 'Kishorganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('177', 'Kurigram', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('178', 'Kustia', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('179', 'Lakshmipur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('180', 'Lalmonirhat', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('181', 'Madaripur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('182', 'Magura', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('183', 'Manikganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('184', 'Meehrpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('185', 'Moulovibazar', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('186', 'Munshiganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('187', 'Mymensingh', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('188', 'Naogaon', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('189', 'Narail', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('190', 'Narayanganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('191', 'Narsingdi', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('192', 'Natore', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('193', 'Nawabganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('194', 'Netrokona', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('195', 'Nilphamari', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('196', 'Noakhali', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('197', 'Pabna', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('198', 'Panchagarh', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('199', 'Patuakhali', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('200', 'Pirojpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('201', 'Rajbari', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('202', 'Rajshahi', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('203', 'Rangamati', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('204', 'Rangpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('205', 'Satkhira', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('206', 'Shariatpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('207', 'Sherpur', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('208', 'Sirajganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('209', 'Sunamganj', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('210', 'Sylhet', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('211', 'Tangail', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('212', 'Thakurgaon', null, '17', null, '1');
INSERT INTO `category_name` VALUES ('213', 'BA (B)', null, '18', null, '1');
INSERT INTO `category_name` VALUES ('215', 'BSc (A)', null, '18', null, '1');
INSERT INTO `category_name` VALUES ('216', 'BSc (B)', null, '18', null, '1');
INSERT INTO `category_name` VALUES ('217', 'Separated (Stays with Father)', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('218', 'Separated (Stays with Mother)', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('219', 'Separated (Stays with None)', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('224', 'Science', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('225', 'Arts', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('227', 'Elec', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('226', 'B/S', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('228', 'Mech', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('229', 'Bangla', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('230', 'English', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('231', 'IR', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('232', 'Arabic', null, '3', null, '1');
INSERT INTO `category_name` VALUES ('233', 'Madrasha', null, '22', null, '1');
INSERT INTO `category_name` VALUES ('235', 'Lt Dark', null, '14', null, '1');
INSERT INTO `category_name` VALUES ('236', 'Dark', null, '14', null, '1');
INSERT INTO `category_name` VALUES ('239', 'TO', null, '8', null, '1');
INSERT INTO `category_name` VALUES ('240', 'Eng Medium', null, '2', null, '1');
INSERT INTO `category_name` VALUES ('241', 'Deceased', null, '13', null, '1');
INSERT INTO `category_name` VALUES ('242', 'BSc (Mil Studies)', null, '18', null, '1');
INSERT INTO `category_name` VALUES ('257', 'Home Maker', null, '5', null, '1');
INSERT INTO `category_name` VALUES ('259', 'Both Alive', null, '6', null, '1');
INSERT INTO `category_name` VALUES ('260', 'India', null, '16', null, '1');
INSERT INTO `category_name` VALUES ('261', '', null, '0', null, '2');
INSERT INTO `category_name` VALUES ('268', 'Nur Mohammad', null, '10', null, '1');
INSERT INTO `category_name` VALUES ('263', 'platoon', null, '0', null, '1');
INSERT INTO `category_name` VALUES ('265', 'Female', null, '9', null, '1');
INSERT INTO `category_name` VALUES ('270', 'DSSC (AMC/ADC)', null, '7', '7', '1');
INSERT INTO `category_name` VALUES ('269', 'DSSC (JAG/GL/RVFC)', null, '7', '6', '1');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `CompanyID` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Address1` text CHARACTER SET utf8 NOT NULL,
  `Address2` text CHARACTER SET utf8,
  `CountryID` int(3) NOT NULL,
  `ZipCode` int(11) NOT NULL,
  `Phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Fax` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CurrencySymbol` varchar(5) CHARACTER SET utf8 NOT NULL,
  `FinancialYearFrom` datetime NOT NULL,
  `BooksBeginingFrom` datetime NOT NULL,
  `IsActive` int(1) NOT NULL,
  `CreatedBy` int(3) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(3) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('79', 'Khan Multimedia', 'Ghatail', 'Tangail', '0', '1215', '01558301558', '', 'eaktadiur@gmail.com', 'tk', '2012-03-30 00:00:00', '2012-03-30 00:00:00', '1', '0', '2012-03-30 00:00:00', null, null);
INSERT INTO `company` VALUES ('80', 'Operajita', 'Ghatal', 'Tangail', '0', '1215', '01558301558', '', 'rajib@gmail.com', 'tk', '2012-03-30 00:00:00', '2012-03-30 00:00:00', '1', '0', '2012-03-30 00:00:00', null, null);
INSERT INTO `company` VALUES ('81', 'w', 'w', 'w', '1', '0', 'w', '', 'eaktadiur@gmail.com', 'w', '2012-05-01 00:00:00', '0000-00-00 00:00:00', '1', '0', '2012-05-27 00:00:00', null, null);

-- ----------------------------
-- Table structure for `companyinfo`
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo`;
CREATE TABLE `companyinfo` (
  `companyname` varchar(80) DEFAULT NULL,
  `vatnumber` varchar(32) DEFAULT NULL,
  `streetaddress` varchar(128) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `registrationno` varchar(20) DEFAULT NULL,
  `telephoneno` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyinfo
-- ----------------------------
INSERT INTO `companyinfo` VALUES ('ICS System Solutions', '123456', 'Uttara', 'Dhaka', '12345', 'info@icsss.co.uk', null, null);

-- ----------------------------
-- Table structure for `compoundunit`
-- ----------------------------
DROP TABLE IF EXISTS `compoundunit`;
CREATE TABLE `compoundunit` (
  `ID` int(11) NOT NULL,
  `UnitNo` text CHARACTER SET utf8 NOT NULL,
  `FirstSimpleUnitID` int(11) NOT NULL,
  `SecondSimpleUnitID` int(11) NOT NULL,
  `Convertion` decimal(20,4) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `UnitType` int(11) NOT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of compoundunit
-- ----------------------------

-- ----------------------------
-- Table structure for `computation`
-- ----------------------------
DROP TABLE IF EXISTS `computation`;
CREATE TABLE `computation` (
  `ID` int(11) NOT NULL,
  `ComputeOn` int(11) NOT NULL,
  `FormulaID` int(11) DEFAULT NULL,
  `IsActive` int(11) NOT NULL,
  `CompanyID` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of computation
-- ----------------------------

-- ----------------------------
-- Table structure for `computationitem`
-- ----------------------------
DROP TABLE IF EXISTS `computationitem`;
CREATE TABLE `computationitem` (
  `ID` int(11) NOT NULL,
  `ComputationID` int(11) NOT NULL,
  `EffectDate` datetime NOT NULL,
  `AmountFrom` decimal(20,4) NOT NULL,
  `AmountUpto` decimal(20,4) NOT NULL,
  `SlabType` int(11) NOT NULL,
  `Value` decimal(20,4) NOT NULL,
  `Guid` text CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of computationitem
-- ----------------------------

-- ----------------------------
-- Table structure for `costcategory`
-- ----------------------------
DROP TABLE IF EXISTS `costcategory`;
CREATE TABLE `costcategory` (
  `CostCategoryID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `UnderID` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `EntityType` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CostCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of costcategory
-- ----------------------------
INSERT INTO `costcategory` VALUES ('1', 'Salary Account', '1', '0', '1', '2', '1', '2010-10-03 16:17:15', null, null);
INSERT INTO `costcategory` VALUES ('2', 'Tips', '1', '1', '1', '1', '3', '2010-10-15 10:04:28', null, null);

-- ----------------------------
-- Table structure for `costcentre`
-- ----------------------------
DROP TABLE IF EXISTS `costcentre`;
CREATE TABLE `costcentre` (
  `CostCentreID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CostCategoryID` int(11) NOT NULL,
  `CompanyID` int(11) DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`CostCentreID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of costcentre
-- ----------------------------
INSERT INTO `costcentre` VALUES ('1', 'Primary', '0', '1', '1', '1', '1900-01-01', '1', null);
INSERT INTO `costcentre` VALUES ('2', 'Rajib', '2', '1', '1', '1', '2010-01-01', '1', '2010-01-01');
INSERT INTO `costcentre` VALUES ('3', 'ffffffffffff', '1', '1', '1', '0', '2010-11-24', null, null);
INSERT INTO `costcentre` VALUES ('4', 'djdjhfkjdshfjsdh', '1', '1', '1', '0', '2010-11-24', null, null);
INSERT INTO `costcentre` VALUES ('5', 'hsdgfdhsgf', '1', '1', '1', '0', '2010-11-24', null, null);

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Bangladesh');
INSERT INTO `country` VALUES ('2', 'India');
INSERT INTO `country` VALUES ('3', 'United State of America');

-- ----------------------------
-- Table structure for `data`
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('26', 'ddd');
INSERT INTO `data` VALUES ('22', 'test2');
INSERT INTO `data` VALUES ('23', 'test3');
INSERT INTO `data` VALUES ('24', 'test4');
INSERT INTO `data` VALUES ('25', 'test5');
INSERT INTO `data` VALUES ('27', 'fffffffffff');
INSERT INTO `data` VALUES ('28', 'ssssss');
INSERT INTO `data` VALUES ('29', '');
INSERT INTO `data` VALUES ('30', 'zasas');
INSERT INTO `data` VALUES ('31', '1');
INSERT INTO `data` VALUES ('32', '1');
INSERT INTO `data` VALUES ('33', '1');
INSERT INTO `data` VALUES ('34', '1');
INSERT INTO `data` VALUES ('35', '1');
INSERT INTO `data` VALUES ('36', '1');
INSERT INTO `data` VALUES ('37', '1');
INSERT INTO `data` VALUES ('38', '');

-- ----------------------------
-- Table structure for `degrees`
-- ----------------------------
DROP TABLE IF EXISTS `degrees`;
CREATE TABLE `degrees` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of degrees
-- ----------------------------
INSERT INTO `degrees` VALUES ('3', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®');
INSERT INTO `degrees` VALUES ('2', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾');
INSERT INTO `degrees` VALUES ('4', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â');
INSERT INTO `degrees` VALUES ('6', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿');
INSERT INTO `degrees` VALUES ('7', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿');
INSERT INTO `degrees` VALUES ('8', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸');
INSERT INTO `degrees` VALUES ('9', 'Ã Â¦Å¡Ã Â¦Â¾');
INSERT INTO `degrees` VALUES ('10', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨');
INSERT INTO `degrees` VALUES ('11', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿');
INSERT INTO `degrees` VALUES ('12', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾');
INSERT INTO `degrees` VALUES ('13', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â');
INSERT INTO `degrees` VALUES ('14', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬');
INSERT INTO `degrees` VALUES ('15', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¿Ã Â¦Â¤');
INSERT INTO `degrees` VALUES ('16', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `EmployeeGroupID` int(11) NOT NULL,
  `DateOfJoining` datetime DEFAULT NULL,
  `DateOfLeaving` datetime DEFAULT NULL,
  `ContractStartDate` datetime DEFAULT NULL,
  `ContractExpireDate` datetime DEFAULT NULL,
  `EmployeeNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Designation` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `EmployeeFunction` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Location` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `BloodGroup` int(11) DEFAULT NULL,
  `FatherName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MotherName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NationalID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SpouseName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BankName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Branch` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BankAccountNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MailingAddress` text CHARACTER SET utf8,
  `ParmanentAddress` text CHARACTER SET utf8,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Children` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PassportNumber` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CountryOfIssue` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PassportExpireDate` datetime DEFAULT NULL,
  `VisaNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VisaExpireDate` datetime DEFAULT NULL,
  `Picture` text CHARACTER SET utf8,
  `Remarks` text CHARACTER SET utf8,
  `CompanyID` int(11) DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'Eaktadiur Rajib', '2', null, null, null, null, '710000641', 'Assistant IT', 'Programming', 'Admin Building', '1', '1980-01-01', '1', 'S.M. Shahid', 'Murtaza Parvin', null, 'Tanjina khandhaker', '011 9119 7924', 'telecell.bd@gmail.com', 'DBBL', 'Shantinagar', '108.110.10387', null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '2010-01-01', null, null);

-- ----------------------------
-- Table structure for `employeegroup`
-- ----------------------------
DROP TABLE IF EXISTS `employeegroup`;
CREATE TABLE `employeegroup` (
  `EmployeeGroupID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `UnderID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `EntityType` int(11) DEFAULT NULL,
  `CostCategoryID` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`EmployeeGroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employeegroup
-- ----------------------------
INSERT INTO `employeegroup` VALUES ('1', 'Primary', '0', '1', '1', '0', '0', '1', '2010-01-01 00:00:00', null, null);
INSERT INTO `employeegroup` VALUES ('2', 'Accounts', '1', '1', '1', '0', '0', '1', '2010-01-01 00:00:00', null, null);
INSERT INTO `employeegroup` VALUES ('3', 'Sales', '1', '1', '1', '0', '0', '1', '2010-01-01 00:00:00', null, null);
INSERT INTO `employeegroup` VALUES ('4', 'Purchase', '1', '1', '1', '1', '1', '1', '2010-11-27 22:41:02', null, null);
INSERT INTO `employeegroup` VALUES ('5', 'Sales', '1', '1', '1', '1', '1', '1', '2010-11-27 22:44:56', null, null);

-- ----------------------------
-- Table structure for `execution_type`
-- ----------------------------
DROP TABLE IF EXISTS `execution_type`;
CREATE TABLE `execution_type` (
  `execution_id` int(11) NOT NULL AUTO_INCREMENT,
  `execution` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`execution_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of execution_type
-- ----------------------------
INSERT INTO `execution_type` VALUES ('1', 'u/s 12(3) of AR Adalat Act');
INSERT INTO `execution_type` VALUES ('2', 'N.I Act');
INSERT INTO `execution_type` VALUES ('4', 'Artha Rin');
INSERT INTO `execution_type` VALUES ('5', 'u/s 12(7) of AR Adalat Act');
INSERT INTO `execution_type` VALUES ('6', 'Daily Ittefaque');
INSERT INTO `execution_type` VALUES ('20', 'Dainik Bhorer Kagoj');
INSERT INTO `execution_type` VALUES ('39', 'Daily Star');
INSERT INTO `execution_type` VALUES ('38', 'Dainik Bahgladesh Times');
INSERT INTO `execution_type` VALUES ('37', 'Dainik Bangladesh Observer');
INSERT INTO `execution_type` VALUES ('36', 'Under Artha Rin Ain');
INSERT INTO `execution_type` VALUES ('35', 'Under N.I Act');
INSERT INTO `execution_type` VALUES ('34', 'Jai Jai Din');
INSERT INTO `execution_type` VALUES ('21', 'Dainik Inqilab');
INSERT INTO `execution_type` VALUES ('22', 'Dainik Ittefaq');
INSERT INTO `execution_type` VALUES ('23', 'Dainik Prime');
INSERT INTO `execution_type` VALUES ('24', 'Dainik Manabzamin');
INSERT INTO `execution_type` VALUES ('25', 'Dainik Muktokantho');
INSERT INTO `execution_type` VALUES ('26', 'Dainik Din Kal');
INSERT INTO `execution_type` VALUES ('27', 'Dainik Janakantha');
INSERT INTO `execution_type` VALUES ('28', 'Dainik Janata');
INSERT INTO `execution_type` VALUES ('29', 'Dainik Prothom Alo');
INSERT INTO `execution_type` VALUES ('30', 'Dainik Khabar');
INSERT INTO `execution_type` VALUES ('31', 'Dainik Sangbad');
INSERT INTO `execution_type` VALUES ('32', 'Dainik Sangram');
INSERT INTO `execution_type` VALUES ('33', 'Dainik Rupali');

-- ----------------------------
-- Table structure for `fiscaleyear`
-- ----------------------------
DROP TABLE IF EXISTS `fiscaleyear`;
CREATE TABLE `fiscaleyear` (
  `FiscaleYearId` int(11) NOT NULL,
  `FiscaleYearName` text CHARACTER SET utf8,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`FiscaleYearId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fiscaleyear
-- ----------------------------
INSERT INTO `fiscaleyear` VALUES ('1', null, '2011-06-22 00:00:00', '2012-06-21 00:00:00', '1', '1', '2011-01-01 00:00:00', null, null);
INSERT INTO `fiscaleyear` VALUES ('2', null, '2011-06-22 09:43:27', '2011-06-22 09:43:27', '2', '0', '2011-06-22 09:48:52', '0', '2011-06-22 03:39:41');
INSERT INTO `fiscaleyear` VALUES ('3', '23 Jun 2011 - 23 Jun 2011', '2011-06-23 13:48:01', '2011-06-23 13:48:01', '3', '0', '2011-06-23 13:48:23', null, null);
INSERT INTO `fiscaleyear` VALUES ('4', '26 Jun 2011 - 26 Jun 2011', '2011-06-26 11:43:15', '2011-06-26 11:43:15', '4', '0', '2011-06-26 11:48:44', null, null);
INSERT INTO `fiscaleyear` VALUES ('5', '26 Jun 2011 - 26 Jun 2011', '2011-06-26 11:49:18', '2011-06-26 11:49:18', '5', '0', '2011-06-26 11:49:29', null, null);

-- ----------------------------
-- Table structure for `foods`
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `foods_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` int(1) NOT NULL,
  `foods_name` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `unit_type` int(2) NOT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  `cost` decimal(10,4) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
  `food_type` int(2) NOT NULL,
  `day_time` int(2) NOT NULL,
  `active` int(1) NOT NULL,
  `weekly` int(3) DEFAULT NULL,
  PRIMARY KEY (`foods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES ('1', '14', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('2', '14', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('3', '14', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('4', '14', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('5', '14', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('6', '14', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('7', '14', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('8', '14', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('9', '14', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('10', '14', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('11', '14', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('12', '14', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('13', '14', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('14', '14', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('15', '14', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('16', '14', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('17', '14', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('18', '14', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('19', '14', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('20', '14', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('21', '14', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('22', '14', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('23', '14', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('24', '14', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('25', '14', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('26', '14', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('27', '14', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('28', '14', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('29', '14', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('30', '14', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('31', '14', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('32', '14', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('33', '12', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('34', '12', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('35', '12', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('36', '12', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('37', '12', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('38', '12', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('39', '12', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('40', '12', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('41', '12', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('42', '12', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('43', '12', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('44', '12', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('45', '12', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('46', '12', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('47', '12', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('48', '12', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('49', '12', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('50', '12', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('51', '12', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('52', '12', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('53', '12', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('54', '12', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('55', '12', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('56', '12', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('57', '12', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('58', '12', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('59', '12', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('60', '12', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('61', '12', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('62', '12', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('63', '12', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('64', '12', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('65', '11', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('66', '11', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('67', '11', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('68', '11', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('69', '11', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('70', '11', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('71', '11', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('72', '11', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('73', '11', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('74', '11', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('75', '11', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('76', '11', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('77', '11', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('78', '11', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('79', '11', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('80', '11', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('81', '11', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('82', '11', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('83', '11', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('84', '11', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('85', '11', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('86', '11', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('87', '11', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('88', '11', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('89', '11', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('90', '11', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('91', '11', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('92', '11', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('93', '11', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('94', '11', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('95', '11', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('96', '11', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('97', '10', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('98', '10', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('99', '10', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('100', '10', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('101', '10', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('102', '10', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('103', '10', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('104', '10', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('105', '10', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('106', '10', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('107', '10', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('108', '10', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('109', '10', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('110', '10', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('111', '10', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('112', '10', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('113', '10', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('114', '10', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('115', '10', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('116', '10', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('117', '10', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('118', '10', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('119', '10', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('120', '10', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('121', '10', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('122', '10', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('123', '10', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('124', '10', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('125', '10', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('126', '10', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('127', '10', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('128', '10', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('129', '9', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('130', '9', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('131', '9', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('132', '9', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('133', '9', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('134', '9', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('135', '9', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('136', '9', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('137', '9', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('138', '9', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('139', '9', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('140', '9', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('141', '9', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('142', '9', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('143', '9', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('144', '9', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('145', '9', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('146', '9', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('147', '9', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('148', '9', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('149', '9', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('150', '9', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('151', '9', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('152', '9', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('153', '9', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('154', '9', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('155', '9', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('156', '9', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('157', '9', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('158', '9', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('159', '9', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('160', '9', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('161', '8', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('162', '8', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3550', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('163', '8', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('164', '8', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('165', '8', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('166', '8', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('167', '8', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦â€¢Ã Â§â€¡Ã Â¦â€¢ (Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡)  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬', '0', '13', '1/10', '7.7000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('168', '8', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('169', '8', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '7.9900', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('170', '8', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€”Ã Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¾', '0', '14', '1', '6.6700', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('226', '8', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â° (Ã Â¦ÂªÃ Â¦Â¾Ã Â§Å¸Ã Â¦Â¾)', '0', '11', '50', '0.0400', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('172', '8', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('173', '8', 'Ã Â¦Â®Ã Â¦Â²Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º', '16', '11', '90', '0.2900', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('175', '8', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('176', '8', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('177', '8', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('178', '8', 'Ã Â¦â€ Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â² (Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â²)/ Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â² Ã Â¦Â«Ã Â¦Â²', '0', '14', '1', '20.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('179', '8', 'Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€”Ã Â§ÂÃ Â¦Â¨', '0', '11', '20', '0.0600', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('180', '8', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦ÂªÃ Â§ÂÃ Â§Å“Ã Â¦Â¿)', '0', '11', '50', '0.0460', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('181', '8', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('182', '8', 'Ã Â¦Â¹Ã Â¦Â°Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¸', '0', '11', '04', '0.6300', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('183', '8', 'Ã Â¦Å¸Ã Â¦Â®Ã Â§â€¡Ã Â¦Å¸Ã Â§â€¹', '0', '11', '20', '0.0600', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('184', '8', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '0', '11', '50', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('185', '8', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('186', '8', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('187', '8', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('188', '8', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('189', '8', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('191', '8', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('192', '8', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('193', '7', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '9', '11', '100', '0.0000', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('194', '7', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '8', '14', '2', '1.3500', null, '1', '1', '1', null);
INSERT INTO `foods` VALUES ('195', '7', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '7', '14', '1', '0.9750', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('196', '7', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11', '10', '0.0220', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('197', '7', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '11', '11', '25', '0.0550', null, '3', '1', '1', null);
INSERT INTO `foods` VALUES ('198', '7', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '2', '11', '120', '0.0460', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('199', '7', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '2', '10', '50', '0.0460', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('200', '7', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '300', '0.3000', null, '0', '0', '0', null);
INSERT INTO `foods` VALUES ('201', '7', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '3', '14', '2', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('202', '7', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '15', '11', '30', '0.3000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('203', '7', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '20', '0.0250', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('204', '7', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '0', '0', '0.0000', null, '5', '1', '1', null);
INSERT INTO `foods` VALUES ('205', '7', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '14', '11', '160', '0.1530', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('206', '7', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '6', '11', '100', '0.0280', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('207', '7', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '13', '11', '40', '0.0250', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('208', '7', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '45', '0.0270', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('209', '7', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '7', '11', '1', '0.9750', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('210', '7', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '10', '11', '03', '0.1650', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('211', '7', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '15', '0', '0', '0.0000', null, '6', '1', '1', null);
INSERT INTO `foods` VALUES ('212', '7', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '15', '13', '1', '6.0000', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('213', '7', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '0', '12', '150', '0.0565', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('214', '7', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '15', '11', '04', '0.7800', null, '7', '1', '1', null);
INSERT INTO `foods` VALUES ('215', '7', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '0', '14', '1', '10.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('216', '7', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '15', '0', '0', '0.0000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('217', '7', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11', '0', '0.0000', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('218', '7', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '0', '11', '40', '0.0400', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('219', '7', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '0', '11', '08', '0.1200', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('220', '7', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '0', '11', '04', '0.1300', null, '9', '1', '1', null);
INSERT INTO `foods` VALUES ('221', '7', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '6', '11', '85', '0.0270', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('222', '7', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '12', '11', '40', '0.0700', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('223', '7', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('224', '7', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '9', '11', '50', '0.0000', null, '4', '1', '1', null);
INSERT INTO `foods` VALUES ('227', '8', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦â€°Ã Â¦Â² Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿Ã Â¦â€”Ã Â§ÂÃ Â§Å“Ã Â¦Â¾', '0', '11', '20', '0.0905', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('228', '8', 'Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¿Ã Â¦â€¢Ã Â§â€¡Ã Â¦Â² ', '0', '14', '1', '0.6000', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('229', '8', 'Ã Â¦â€¢Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Â®Ã Â¦Â¿Ã Â¦Â¸', '0', '11', '02', '0.2900', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('230', '8', 'Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â£Ã Â¦Â«Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦â€œÃ Â§Å¸Ã Â¦Â¾Ã Â¦Â° ', '0', '11', '07', '0.1750', null, '8', '1', '1', null);
INSERT INTO `foods` VALUES ('231', '8', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '0', '11', '03', '0.1650', null, '8', '1', '1', null);

-- ----------------------------
-- Table structure for `formula`
-- ----------------------------
DROP TABLE IF EXISTS `formula`;
CREATE TABLE `formula` (
  `ID` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8 NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of formula
-- ----------------------------

-- ----------------------------
-- Table structure for `formulaitem`
-- ----------------------------
DROP TABLE IF EXISTS `formulaitem`;
CREATE TABLE `formulaitem` (
  `ID` int(11) NOT NULL,
  `FormulaID` int(11) NOT NULL,
  `PayHeadID` int(11) NOT NULL,
  `OperatorType` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of formulaitem
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `GroupNatureID` int(11) NOT NULL,
  `UnderGroupID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `GroupType` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM AUTO_INCREMENT=10767 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('10648', 'Primary', '5', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10649', 'Capital Account', '2', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10650', 'Loans(Liability)', '2', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10651', 'Current Liabilities', '2', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10652', 'Fixed Assets', '1', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10653', 'Investments', '1', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10654', 'Current Assets', '1', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10655', 'Branch/Divitions', '2', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10656', 'Mis.Expences(Assets)', '1', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10657', 'Suspense A/C', '2', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10658', 'Sales Accounts', '3', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10659', 'Purchase Accounts', '4', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10660', 'Direct Expenses', '4', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10661', 'Indirect Expenses', '4', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10662', 'Direct Income', '3', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10663', 'Indirect Income', '3', '0', '79', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10664', 'Reserves & Supply', '2', '10649', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10665', 'Bank OD A/C', '2', '10650', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10666', 'Secured Loans', '2', '10650', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10667', 'Unsecured Loans', '2', '10650', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10668', 'Duties & Texes', '2', '10651', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10669', 'Provisions', '2', '10651', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10670', 'Sundry Creditors', '2', '10651', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10671', 'Stock in hand', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10672', 'Deposit(Assets)', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10673', 'Loans & Advances (Assets)', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10674', 'Sundry Debtors', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10675', 'Cash in hand', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10676', 'Bank Accounts', '1', '10654', '79', '2', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10677', 'Primary', '5', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10678', 'Capital Account', '2', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10679', 'Loans(Liability)', '2', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10680', 'Current Liabilities', '2', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10681', 'Fixed Assets', '1', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10682', 'Investments', '1', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10683', 'Current Assets', '1', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10684', 'Branch/Divitions', '2', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10685', 'Mis.Expences(Assets)', '1', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10686', 'Suspense A/C', '2', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10687', 'Sales Accounts', '3', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10688', 'Purchase Accounts', '4', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10689', 'Direct Expenses', '4', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10690', 'Indirect Expenses', '4', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10691', 'Direct Income', '3', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10692', 'Indirect Income', '3', '0', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10693', 'Reserves & Supply', '2', '10678', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10694', 'Bank OD A/C', '2', '10679', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10695', 'Secured Loans', '2', '10679', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10696', 'Unsecured Loans', '2', '10679', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10697', 'Duties & Texes', '2', '10680', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10698', 'Provisions', '2', '10680', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10699', 'Sundry Creditors', '2', '10680', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10700', 'Stock in hand', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10701', 'Deposit(Assets)', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10702', 'Loans & Advances (Assets)', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10703', 'Sundry Debtors', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10704', 'Cash in hand', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10705', 'Bank Accounts', '1', '10683', '80', '1', '1', '1', '2012-03-30', null, null);
INSERT INTO `group` VALUES ('10706', 'Purchase', '4', '10659', '79', '2', '1', '1', '0000-00-00', null, null);
INSERT INTO `group` VALUES ('10707', 'Dhaka Bank', '2', '10676', '79', '2', '1', '1', '0000-00-00', null, null);
INSERT INTO `group` VALUES ('10708', 'xxxx', '0', '10655', '79', '0', '0', '1', '0000-00-00', null, null);
INSERT INTO `group` VALUES ('10709', 'Primary', '5', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10710', 'Capital Account', '2', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10711', 'Loans(Liability)', '2', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10712', 'Current Liabilities', '2', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10713', 'Fixed Assets', '1', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10714', 'Investments', '1', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10715', 'Current Assets', '1', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10716', 'Branch/Divitions', '2', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10717', 'Mis.Expences(Assets)', '1', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10718', 'Suspense A/C', '2', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10719', 'Sales Accounts', '3', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10720', 'Purchase Accounts', '4', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10721', 'Direct Expenses', '4', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10722', 'Indirect Expenses', '4', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10723', 'Direct Income', '3', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10724', 'Indirect Income', '3', '0', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10725', 'Reserves & Supply', '2', '10710', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10726', 'Bank OD A/C', '2', '10711', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10727', 'Secured Loans', '2', '10711', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10728', 'Unsecured Loans', '2', '10711', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10729', 'Duties & Texes', '2', '10712', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10730', 'Provisions', '2', '10712', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10731', 'Sundry Creditors', '2', '10712', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10732', 'Stock in hand', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10733', 'Deposit(Assets)', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10734', 'Loans & Advances (Assets)', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10735', 'Sundry Debtors', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10736', 'Cash in hand', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10737', 'Bank Accounts', '1', '10715', '0', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10738', 'Primary', '5', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10739', 'Capital Account', '2', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10740', 'Loans(Liability)', '2', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10741', 'Current Liabilities', '2', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10742', 'Fixed Assets', '1', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10743', 'Investments', '1', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10744', 'Current Assets', '1', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10745', 'Branch/Divitions', '2', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10746', 'Mis.Expences(Assets)', '1', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10747', 'Suspense A/C', '2', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10748', 'Sales Accounts', '3', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10749', 'Purchase Accounts', '4', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10750', 'Direct Expenses', '4', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10751', 'Indirect Expenses', '4', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10752', 'Direct Income', '3', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10753', 'Indirect Income', '3', '0', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10754', 'Reserves & Supply', '2', '10739', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10755', 'Bank OD A/C', '2', '10740', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10756', 'Secured Loans', '2', '10740', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10757', 'Unsecured Loans', '2', '10740', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10758', 'Duties & Texes', '2', '10741', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10759', 'Provisions', '2', '10741', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10760', 'Sundry Creditors', '2', '10741', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10761', 'Stock in hand', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10762', 'Deposit(Assets)', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10763', 'Loans & Advances (Assets)', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10764', 'Sundry Debtors', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10765', 'Cash in hand', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);
INSERT INTO `group` VALUES ('10766', 'Bank Accounts', '1', '10744', '81', '1', '1', '1', '2012-05-27', null, null);

-- ----------------------------
-- Table structure for `groupnature`
-- ----------------------------
DROP TABLE IF EXISTS `groupnature`;
CREATE TABLE `groupnature` (
  `GroupNatureID` int(11) NOT NULL,
  `GroupNatureName` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`GroupNatureID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groupnature
-- ----------------------------
INSERT INTO `groupnature` VALUES ('1', 'Assets');
INSERT INTO `groupnature` VALUES ('2', 'Liabilities');
INSERT INTO `groupnature` VALUES ('3', 'Expenses');
INSERT INTO `groupnature` VALUES ('4', 'Income');
INSERT INTO `groupnature` VALUES ('5', 'None');

-- ----------------------------
-- Table structure for `image_archive`
-- ----------------------------
DROP TABLE IF EXISTS `image_archive`;
CREATE TABLE `image_archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gc_no` varchar(100) NOT NULL,
  `image_category` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image_archive
-- ----------------------------
INSERT INTO `image_archive` VALUES ('40', '1213', '1', '66.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('39', '1213', '1', '65.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('38', '1111', '1', '64.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('36', '1111', '1', '62.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('37', '1111', '1', '63.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('34', '1111', '1', '60.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('35', '1111', '1', '61.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('41', '1111', '1', '67.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('42', '0001', '1', '72.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('43', '0001', '1', '73.gif', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('44', '0001', '1', '74.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('45', '9001', '1', '76.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('46', '8672', '1', '77.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('47', '8672', '1', '79.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('48', '8331', '1', '80.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('49', '8331', '1', '81.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('50', '8331', '1', '82.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('51', '8397', '1', '83.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('52', '8421', '1', '84.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('53', '8495', '1', '85.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('54', '8576', '1', '86.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('55', '8617', '1', '87.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('56', '8627', '1', '88.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('57', '8689', '1', '89.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('58', '8722', '1', '90.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('59', '8760', '1', '91.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('60', '8331', '1', '92.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('61', '8397', '1', '93.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('62', '8421', '1', '94.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('63', '8495', '1', '95.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('64', '8576', '1', '96.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('65', '8617', '1', '97.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('66', '8627', '1', '98.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('67', '8689', '1', '99.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('68', '8722', '1', '100.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('69', '8760', '1', '101.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('70', '8645', '1', '102.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('71', '8615', '1', '103.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('72', '8615', '1', '104.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('73', '8542', '1', '105.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('74', '8653', '1', '106.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('75', '8627', '1', '107.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('76', '8610', '1', '108.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('77', '8559', '1', '109.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('78', '8535', '1', '110.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('79', '8577', '1', '111.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('80', '8587', '1', '112.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('81', '8591', '1', '113.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('82', '8603', '1', '114.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('83', '8612', '1', '115.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('84', '8616', '1', '116.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('85', '8621', '1', '117.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('86', '8622', '1', '118.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('87', '8637', '1', '119.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('88', '8642', '1', '120.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('89', '8544', '1', '121.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('90', '8556', '1', '122.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('91', '8572', '1', '123.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('92', '8643', '1', '124.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('93', '8661', '1', '125.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('94', '8644', '1', '126.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('95', '8771', '1', '160.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('96', '8651', '1', '161.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('97', '8671', '1', '162.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('98', '8675', '1', '163.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('99', '8679', '1', '164.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('100', '8682', '1', '165.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('101', '8693', '1', '166.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('102', '8706', '1', '167.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('103', '8718', '1', '168.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('104', '8722', '1', '169.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('105', '8728', '1', '170.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('106', '8743', '1', '171.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('107', '8752', '1', '172.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('108', '8753', '1', '173.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('109', '8755', '1', '174.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('110', '8584', '1', '175.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('111', '8608', '1', '176.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('112', '8673', '1', '177.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('113', '8680', '1', '178.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('114', '8684', '1', '179.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('115', '8685', '1', '180.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('116', '8690', '1', '181.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('117', '8691', '1', '182.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('118', '8692', '1', '183.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('119', '8709', '1', '184.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('120', '8711', '1', '185.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('121', '8721', '1', '186.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('122', '8724', '1', '187.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('123', '8725', '1', '188.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('124', '8733', '1', '189.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('125', '8734', '1', '190.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('126', '8735', '1', '191.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('127', '8741', '1', '192.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('128', '8745', '1', '193.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('129', '8756', '1', '194.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('130', '8759', '1', '195.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('131', '8760', '1', '196.JPG', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('132', '8210', '1', '205.jpg', 'Profile Picture');
INSERT INTO `image_archive` VALUES ('133', '6210', '1', '206.jpg', 'Profile Picture');

-- ----------------------------
-- Table structure for `image_category`
-- ----------------------------
DROP TABLE IF EXISTS `image_category`;
CREATE TABLE `image_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image_category
-- ----------------------------
INSERT INTO `image_category` VALUES ('1', 'Personal');
INSERT INTO `image_category` VALUES ('2', 'BMA');

-- ----------------------------
-- Table structure for `journalvoucher`
-- ----------------------------
DROP TABLE IF EXISTS `journalvoucher`;
CREATE TABLE `journalvoucher` (
  `JournalID` int(11) NOT NULL,
  `TranNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherDate` date NOT NULL,
  `TransactionTypeId` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `EntryByID` int(11) NOT NULL,
  `EntryDate` date NOT NULL,
  `ModifiedByID` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`JournalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of journalvoucher
-- ----------------------------
INSERT INTO `journalvoucher` VALUES ('1', null, '2011-01-05', '4', '1', '1', '2011-01-01', null, null);
INSERT INTO `journalvoucher` VALUES ('2', null, '2011-05-05', '4', '1', '1', '2011-01-27', null, null);

-- ----------------------------
-- Table structure for `journalvoucheritem`
-- ----------------------------
DROP TABLE IF EXISTS `journalvoucheritem`;
CREATE TABLE `journalvoucheritem` (
  `JournalItemID` int(11) NOT NULL,
  `JournalVoucherID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `LedgerID` int(11) NOT NULL,
  `Dr` decimal(20,2) DEFAULT NULL,
  `Cr` decimal(20,2) DEFAULT NULL,
  `CostCenterID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifyBy` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`JournalItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of journalvoucheritem
-- ----------------------------
INSERT INTO `journalvoucheritem` VALUES ('1', '1', '1', '1', '6500.00', null, null, null, '1', '2011-01-01', null, null);
INSERT INTO `journalvoucheritem` VALUES ('2', '1', '1', '7', null, '500.00', null, null, '1', '2011-01-01', null, null);
INSERT INTO `journalvoucheritem` VALUES ('3', '1', '1', '4', null, '1000.00', null, null, '1', '2011-01-01', null, null);
INSERT INTO `journalvoucheritem` VALUES ('4', '1', '1', '5', null, '3000.00', null, null, '1', '2011-01-01', null, null);
INSERT INTO `journalvoucheritem` VALUES ('5', '1', '1', '6', null, '2000.00', null, null, '1', '2011-01-01', null, null);

-- ----------------------------
-- Table structure for `lawyer_firm`
-- ----------------------------
DROP TABLE IF EXISTS `lawyer_firm`;
CREATE TABLE `lawyer_firm` (
  `lawyer_firmid` int(11) NOT NULL AUTO_INCREMENT,
  `lawyer_firmname` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city_id` int(2) NOT NULL,
  `address` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `mobile` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `web` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`lawyer_firmid`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of lawyer_firm
-- ----------------------------
INSERT INTO `lawyer_firm` VALUES ('18', 'The Lawyers', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('17', 'Haque & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('20', 'Moudud Ahmed & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('22', 'Law Syndicate ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('23', 'Farooq & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('24', 'Fair Law Associates ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('25', 'Ashraf Uddin & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('26', 'Shafique & Associates ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('28', 'Legal Service Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('29', 'Khan & Partners ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('30', 'B. Ahmed & Co. ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('33', 'The Legal Affairs', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('42', 'Nur & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('142', 'Law Matrix', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('34', 'The LawyersÃ¢â‚¬â„¢ Council', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('35', 'Gias Uddin & Co.  ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('36', 'Quader Chambers', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('37', 'Nazim & Co ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('38', 'Chowdhury & Ullah', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('39', 'THE LAW LYCEUM', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('149', 'Headman', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('150', 'Last Touch', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('41', 'Rankin Law Chambers', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('143', 'Law & Remedy', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('44', 'The Law Consultants', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('81', 'RahmanÃ¢â‚¬â„¢s Chamber', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('82', 'Law & Justice ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('73', 'Unique Survey Service Bureau', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('83', 'Hasan & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('151', 'Rokanuddin Mahmud & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('59', 'Mohammad Bakir Uddin Bhuiyan & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('140', 'Lee, Khan & Partners', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('141', 'Khandker Mahbub Hossain & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('63', 'Alam & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('64', 'Maxima. Legal', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('68', 'Dr. Kabir & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('70', 'Sheikh & Chowdhury', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('74', 'Modern Surveyors Ltd', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('75', 'G. K Adjusters Ltd. ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('77', 'WISE Consulting (Pvt) Limited', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('79', 'The Law Chamber', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('84', 'City Law Chamber', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('85', 'Hye & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('86', 'Bhuiyan Islam & Zaidi', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('147', 'Tanjib-Ul Alam & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('148', 'Bakir Uddin Bhuiyan & Associates', '1', '1', '', '01818581728', '01711732810, 01915451526', '', '');
INSERT INTO `lawyer_firm` VALUES ('115', 'A. Hossain & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('116', 'Eastern Law Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('117', 'Law Valley', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('119', 'A. Imam & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('120', 'Zakaria & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('146', 'Afaz Uddin & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('145', 'Nurul Alam & Associates ', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('144', 'Self ', '1', '8', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('139', 'Adil & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('153', 'Huq & Company', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('154', 'Z. S. Solutions', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('155', 'The Legal Home', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('156', 'Advisers Legal Alliance', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('157', 'S. K Survey & Inspection Company', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('158', 'Saybolt Adjusters', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('159', 'Waso Engineering & Consultant (BD) Ltd.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('160', 'IIS Consulting (BD) Ltd.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('161', 'Bhuiyan Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('162', 'Shotabdi Builder\'s & Survey', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('163', 'The Engineers Inspection', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('164', 'F. Islam & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('165', 'Survey for Valuation Ltd.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('166', 'Desh Poridorshon Co.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('167', 'Bhaban Engineering & Architects', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('168', 'Prince Inspection Services (BD) Ltd.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('169', 'S. D. Survey Firm', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('170', 'Ismail Adjusters', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('171', 'Rouf & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('172', 'Dr. Hamid & Associates', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('173', 'The Lawtel', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('174', 'Commodity Inspection Services (BD) Ltd', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('175', 'Engineering & Architectural Consultant Ltd.', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('176', 'Eastland Surveyors', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('177', 'Royal Inspection International Ltd', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('178', 'City Engineering & Architectural Consultants', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('179', 'Geodatic Survey Corporation', '1', '1', '', '', '', '', '');
INSERT INTO `lawyer_firm` VALUES ('183', 'LYRIC', '1', '1', '', '', '', '', '');

-- ----------------------------
-- Table structure for `lawyer_officer`
-- ----------------------------
DROP TABLE IF EXISTS `lawyer_officer`;
CREATE TABLE `lawyer_officer` (
  `lawyer_officerid` int(11) NOT NULL AUTO_INCREMENT,
  `code_no` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `lawyer_officer_fullname` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `lawyer_officer_name` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `vendor_type_id` int(11) NOT NULL,
  `lawyer_firm_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `bank_divisionid` int(3) NOT NULL,
  `cityid` int(3) NOT NULL,
  `district_id` int(3) NOT NULL,
  `cblac_name` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cblac` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `address` varchar(400) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `mobile` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `web` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `panel_lawyer` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `rate` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `engage` int(11) DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`lawyer_officerid`)
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of lawyer_officer
-- ----------------------------
INSERT INTO `lawyer_officer` VALUES ('9', '01', 'Mr. M. A. Lateef Mazumder ', 'M. A. Lateef Mazumder ', '1', '116', '1', '208', '1', '8', null, null, '35, Shahidbagh,  Dhaka-1217', '9333472,  9348526', '01715-103895, 01715-012268, Adv. Mojib-01714352073', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('10', '02', 'Mr. Md. Afaz Uddin', 'Afaz Uddin', '1', '146', '1', '208', '1', '8', null, null, 'Court Chamber: Juffnun Defa Complex, Room No. 2 (Ground floor) 4, Rajar Dewry, Kotwali, Dhaka-1100 (North Side of Rajar Dewry Govt-Primary School)  Res: 155, Senpara Parbata, Mirpur-10, Dhaka-1216', '8616279, 802849(Res) ', '01199-867980, 01713097253, 0172043976, Adv. Masud-01915617939, Osman (Clerk)-01916770542, Fax 88-02', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('11', '03', 'Mohammad Mehedi Hasan Chowdhury', 'Mohammad Mehedi Hasan Chowdhury', '5', '70', '1', '208', '1', '8', '', '', 'Chamber:Banglar Bani Bhaban (2nd floor), 81, Motijheel C/A, Dhaka-1000 ', '9557548, 9561064', '01199833432, Adv. Kaysh-01911523678, Barrister Rabiul Hasan- 01712611097, 01711321291 (Samad), Ataur (Clerk)-01716384178', 'Fax. 880-2-9562885', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('23', '08', 'Ms. Shovana Banu', 'Shovana Banu', '1', '144', '1', '208', '1', '8', '', '', 'Chamber & Residence:14/L, Dilu Road, New Eskaton, Dhaka-1000 ', '9357033', '01711-661789', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('24', '09', 'Mr. A.Q.M Safiullah ', 'A.Q.M Safiullah ', '1', '144', '1', '208', '1', '8', null, null, 'Chambers :  (i)Amin Court (4th Floor), Room No. 407, 62-63 Motijheel C/A, Dhaka-10007,  (ii) Room No. 101, Supreme Court Bar Association Building, Dhaka-1000', '291933,  7291934(Res) (i) 9551562 ', '0191-355236', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('25', '10', 'Mr. Shaheen Ahmed Khan', 'Shaheen Ahmed Khan', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:Room No. 50 (ground floor), 33/9 Johnson Road, Dhaka-1100', '9353897', '0171028632', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('17', '04', 'Mr. Aneek R. Haque ', 'Aneek R. Haque ', '5', '17', '1', '208', '1', '8', null, null, 'Chamber:BRTC Bhaban (6th Floor) 2, RAJUK Avenue, Motijheel C/A, Dhaka', '7171700, 9571948, 8118181 ', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('18', '05', 'Mr. Masud Ahmed Sayeed', 'Masud Ahmed Sayeed', '5', '144', '1', '208', '1', '8', null, null, 'Shamayik, First floor, 34, Rankin Street, Wari, Dhaka-1203. CourtÃ¢â‚¬â„¢s Chamber: Supreme Court Bar Bhaban(New), 2nd floor, Room No. 327, Ramna, Dhaka-1000', '9568217, 7124794', '0191-1359071, 0191-1525739', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('19', '06', 'Mr. Shihab Uddin Mahmood', 'Shihab Uddin Mahmood', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:House No. 21, Road No. 01, Block-K, Baridhara Model Town, Dhaka-1212', '8825555 (Res), 9552628', '0173-008165', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('20', '07', 'Mr. S.M. Atikur Rahman ', 'S.M. Atikur Rahman ', '1', '18', '1', '208', '1', '8', null, null, 'Chamber-1: Suite-D (1st Floor), 105/A, Kakrail Road, Dhaka-1000 ', '9334660, 9350130 ', '', '(i)  lawyerslf @dhaka.net ', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('343', '55(3)', 'Mr. Md. Masud', 'Masud', '16', '144', '1', '208', '1', '0', null, null, 'Bangladesh Bar Council Bhaban, Dhaka-1000. (FatherÃ¢â‚¬â„¢s Name: Late Abdul Halim, MotherÃ¢â‚¬â„¢s Name: Late Anwara Begum).', '', '01819-209589', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('28', '13', 'Mr. A. M Mahbubuddin ', 'A. M Mahbubuddin ', '5', '20', '1', '208', '1', '8', null, null, 'Islam Chamber (9th floor), 125-A Motijheel C/A, Dhaka-1000', '', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('29', '14', 'Mr. Md. Ismail ', 'Ismail ', '1', '144', '1', '208', '1', '8', null, null, '33/1, Sonargaon Road, Paribag, Dhaka-1200', '8622265', '0171-153547', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('30', '15', 'Mr. Muhammad Shafique Ullah', 'Muhammad Shafique Ullah', '1', '26', '1', '208', '1', '8', null, null, 'Chamber: Suite No. 14-K, 14th floor, Meherba Plaza, 33, Topkhana Road  Dhaka-1000', '9561447, 7160752', '0171-5006586, 0152-463164, 019-345185', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('31', '16', 'Mr. Md. Abdun Nur', 'Abdun Nur', '1', '42', '1', '208', '1', '8', '', '', 'Nur & Associates, Meherba Plaza(6th floor), Room #  Ã¢â‚¬ËœCÃ¢â‚¬â„¢, 33, Tapkhana Road, Dhaka', '9562427, 8354006(Res)', '01712289984, Rashid- 01676558142', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('32', '17', 'Dr. AKM Akhtarul Kabir  ', 'Dr. AKM Akhtarul Kabir  ', '1', '68', '1', '208', '1', '8', null, null, 'Chamber: Dr. Kabir & Associates (Law Chamber), Room No. 7/15 (6th floor), Eastern Plaza, Hatirpool, Dhaka-1215 High Court Chamber: Annex Building Hall Room (1st floor), Supreme Court Bar Association B', '9662644 (Res.), 96755250', '01817-041925, 01711-393493', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('33', '18', 'Mr. Peerzada Syed Abdus Salam', 'Peerzada Syed Abdus Salam', '1', '144', '1', '208', '1', '8', '', '', 'Chambers :131, Motijheel C/A, (Ground Floor), Dhaka-100. Residence Cum-Chamber :  (After Magreeb), 2, Jadu Nath Basak Lane, (Rathkhola), Dhaka-1100', '7123761, 7124578', '0119985142, 01715013548', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('34', '19', 'Mr. Abdullah Abu ', 'Abdullah Abu ', '1', '144', '1', '208', '1', '8', null, null, '52, North Road, Dhanmondi R/A,  Dhaka', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('35', '20', 'Mr. Zakir Hossain Majumder', 'Zakir Hossain Majumder', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:24, Kalabagan 1st Lane  (2nd floor),  Dhaka-1205.', '', '01199119427', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('36', '21', '(i) Mr. A. B. M Mostafa Amin (ii) Mr. Md. Saifur Rahman', '(i)A. B. M Mostafa Amin (ii)Md. Saifur Rahman', '1', '28', '1', '208', '1', '8', '', '', 'House No. 1, Road No. 2, Dhanmondi R/A, Dhaka-1205', '8627614, 8625964', '0172089487', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('37', '22', 'Mr. Ferdous Ahmed ', 'Ferdous Ahmed ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: House No. 1, Road No. 10, Sector-3, Uttara Model Town, Dhaka,', '8913776', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('38', '23', 'Mr. Mohammad Bakir Uddin Bhuiyan', 'Mohammad Bakir Uddin Bhuiyan', '1', '148', '1', '208', '1', '8', '', '', '32/1, Circular Road, Flat No. S-3 (2nd floor), Dhanmondi, Dhaka-1205', '', '01711-709194, 01727262324, 0172200830', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('170', '54 (1)', 'Mr. Sadek Chowdhury', 'Sadek Chowdhury', '16', '144', '1', '208', '1', '8', null, null, 'Chamber: Supreme Court Bar Building (4th floor), Shop No. 32, Ramna, Dhaka', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('40', '25', 'Mr. Md. Khalilur Rahman ', 'Khalilur Rahman ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Room No. 20, Dhaka Br Library Bhavan, 3rd floor, 6, Roam No. 20, 6, Court House Street, Dhaka.', '', '01713038527', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('41', '26', 'Mrs Afreen Mohiuddin ', 'Afreen Mohiuddin ', '1', '144', '1', '208', '1', '8', '', '', 'Chamber: The Citadel, Road # 104, House 5G Apartment C-1, Gulshan-2, Dhaka', '8823977, 9554985', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('42', '27', 'Mrs. Selina Haq (Monju)', 'Selina Haq (Monju)', '1', '144', '1', '208', '1', '8', '', '', 'Chamber: House No. 369/A, Elephant Road, Dhanmondi, Dhaka-1205 ', '9668788', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('43', '28', 'Mr. Masudur Rahman ', 'Masudur Rahman ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: House No. 28, Apartment No. C-4, Road No. 6, Dhanmondi R/A, Dhaka', '', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('44', '29', 'Mr. Khalilur Rahman Bhuiyan ', 'Khalilur Rahman Bhuiyan ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:  Al Bashir Plaza, 205/5, Fakirapul (1st floor), Box Culvert Road, Motijheel, Dhaka', 'Chamber- 8362685 (Fakirapul), Judge Court-9340163, High Court Ã¢â‚¬â€œ9666390-1(Ext. 115)', '01715-344141', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('288', '03 (1)', 'Mr. Ahsanul Karim', 'Ahsanul Karim', '1', '117', '1', '208', '1', '0', null, null, 'Saiham Sky View Tower, Suite No. 11A (11th floor), 45, Bijoy Nagor, Dhaka-1000.', 'Tel: 02-7175373', 'Cel: 01911315353, 01552-447354, Alamgir A/c-01199485714, (Jashim-01812010849), Khairul Alam, Bar-01911315353', 'lawvalley@bol-online.com, lawvalley@gmail.com', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('46', '31', 'Mr. Sikder Abdus Salam ', 'Sikder Abdus Salam ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Shah Kamal Hotel, 1st floor, Room No. 45, 53/9 & 53/9A, Johnson Road, Sutrapur, Dhaka  Residence: Ã¢â‚¬Å“Shahi Kunja}, House No. 25, Lane No. 4, Road No. 2, Block-A, Nichintapur (Shahi Moholla) Pagla, Fatullah, Narayangonj-1421', '', '01711534456, 01712245848, 01911444878', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('47', '32', 'Mr. A.T.M Mustafizur Rahman', 'A.T.M Mustafizur Rahman', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:Dhaka Law House, Room No. 23 (2nd floor),  30, Johnson Road, Raysaheb Bazar, Dhaka', '9663921', '0171660321', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('48', '33', 'Mr. Md. Harum-ur-Rashid ', 'Harum-ur-Rashid ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Hotel Shah Kamal, Room No. 26 (1st floor), 53/9 Johnson Road, Dhaka Chamber-2: Road No. 8, House # 31, Block # H, Section # 2, Mirpur, Dhaka. ', '', '01712-500748', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('49', '34', 'Mr. Md. Mafizul Islam  ', 'Mafizul Islam  ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Room No. 215 (1st floor), Supreme Court Bar Association Building, Ramna, Dhaka (Junior of Barrister Shamim Khaled Ahmed)', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('50', '35', 'Mr. Md. Ashraful Kamal ', 'Ashraful Kamal ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Room No. 217 (Annex Building), Supreme Court Bar Association, Ramna, Dhaka', '', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('51', '36', 'Mr. Ansaruddin Ahmed', 'Ansaruddin Ahmed', '1', '30', '1', '208', '1', '8', null, null, 'Chamber:Dilkusha Center (9th floor), 28, Dilkusha C/A, Dhaka-1000 ', '880(0) 2-9550977', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('52', '37', 'Mr. Md. Mahbubul Basid', 'Mahbubul Basid', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:24, East Nayatola, Maghbazar, Ramna, Dhaka-1217', '9341159', '0171-961386', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('53', '38', 'Mr. Mohammed Kamal Hossain ', 'Mohammed Kamal Hossain ', '1', '22', '1', '208', '1', '8', null, null, 'Law Syndicate, Chamber:Rahman Mansion,3rd floor, Room No. 15, 21, Court House Street, Dhaka-1100', '0171-395513', '', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('54', '39', 'Mr. Md. Shahidur Rahman Khan', 'Shahidur Rahman Khan', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:117, North Jatrabari, (3rd Floor) Dhaka-1204', '7510306', '0191-348564', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('55', '40', 'Mr. A. K. M Shahidul Huq ', 'A. K. M Shahidul Huq ', '3', '144', '1', '208', '1', '8', null, null, 'Chamber: Flat # 1 (B), 23, Segun Bagicha, Dhaka-1000  Residence: 35/1, Siddeswari Circular Road, Dhaka-1217', '9359937', '01715527864 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('56', '41', 'Mr. M. Imtiaz Farooq (Late Ozair Farooq)', 'M. Imtiaz Farooq (Late Ozair Farooq)', '5', '23', '1', '208', '1', '8', null, null, 'Chamber: 14, Purana Paltan (3rd floor), Darus Salam Arcade, Dhaka-1000. Court: Room No. 340, S.C Bar Building Dhaka-1000', '9117738, 9566100, 7168900', '01711-531300, 01552-311184, Sajid-01670047959, Nurealam -01715940307, Adv. Anis-01712150818.', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('57', '42', 'Mrs. Nasima Akter Chowdhury (Mukta) ', 'Nasima Akter Chowdhury (Mukta) ', '1', '144', '1', '208', '1', '8', '', '', 'Fair Law Associates, Chamber: L. Mollick Complex, Room # 12, (3rd floor), 12, Purana Paltan, Dhaka-1000', '', '0171462074, 0175009132', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('58', '43', 'Mr. Sayeed Mizanur Rahman', 'Sayeed Mizanur Rahman', '5', '144', '1', '208', '1', '8', '', '', 'Chamber: Priya Prangon, Flat No. 2/A(2nd floor), 3/1, Sagun Bagicha, Dhaka', '880-2-8360524', '01819262388, 01552357971', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('59', '44', 'Mr. Mohammad Shawkattullah Choudhury ', 'Mohammad Shawkattullah Choudhury ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: 95, Naya Paltan, P.S: Paltan, Dhaka-1000 ', '', '01711059155', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('60', '45', 'Mr. Mohammad Ashraf Uddin Bhuiyan', 'Mohammad Ashraf Uddin Bhuiyan', '1', '25', '1', '208', '1', '8', null, null, 'Chamber : Modern Mansion (5th Floor),  53, Motijheel C/A, Dhaka', '9559248', 'Mojammel-01917199023, e-mail: auassociates@dhaka.net', 'auassociates@dhaka.net', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('61', '46', 'Mr. A. Al-Masud Begh', 'A. Al-Masud Begh', '5', '33', '1', '208', '1', '8', null, null, 'Chamber :Hotel Ornate (5th Floor), 30, Bijoynagar, Dhaka-1000', '9361177', '01819-269521', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('191', '01', 'Mr. Shamim Khaled Ahmed', 'Shamim Khaled Ahmed', '5', '144', '1', '208', '1', '8', null, null, 'Chamber: Room No. 215, Supreme Court Bar Association Building (1st floor), Ramna, Dhaka.  Chamber & Residence: 2/8, Sir Syed Road (First floor), Block-A, Mohammadpur, Dhaka-1207', '7160437, 9118922, 9136501', '01819-220525', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('63', '48', 'Ms. Mubina Asaf ', 'Mubina Asaf ', '1', '64', '1', '208', '1', '8', '', '', 'Chamber :Apt. No. N-9, Park Plaza(9th Floor), House-31, Road-17, Block-D, Banani C/A, Dhaka-1213', '8821895', '01730035092', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('64', '49', 'Mr. Mohammed Gias Uddin', 'Mohammed Gias Uddin', '1', '35', '1', '208', '1', '8', null, null, 'Office: 33, Kakrial VIT Road, Azmeri Mansion (3rd floor),Dhaka-1000,  Chamber: Ba-93, South Badda, Gulshan, Dhaka-1212 ', '8821737', '01711-819913, 01819-468327', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('65', '50', 'Mr. Syed Jawad Quader', 'Syed Jawad Quader', '5', '36', '1', '208', '1', '8', null, null, 'Chamber: Hasan Holdings(10th floor), 52/1, New Eskaton Road, Dhaka -1000', '88-06662633029 ', '01915194438, 01814663446', '', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('66', '51', 'Mrs. Shathika Hossain', 'Shathika Hossain', '1', '144', '1', '208', '1', '8', '', '', 'Residence: House # KA-32/4/B-2, Road # Shahazadpur, Gulshan, Dhaka-1212', '8858448 (R) ', '017-2595112', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('67', '52', 'Mr. Md. Nafees Nazim', 'Nafees Nazim', '1', '37', '1', '208', '1', '8', null, null, 'Address: Meher Tower (6th floor), Room: 606, 164, Sonargaon Road, Hatirpur, Dhaka-1205', '', '0173-0050043', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('68', '53 ', '(i)Mr. Asif Bin Anwar (ii) Barrister-Khaled Hamid Chowdhury,(iii)  Barrister-Shafayat Ullah', '(i)Asif Bin Anwar (ii) Barrister-Khaled Hamid Chowdhury,(iii)  Barrister-Shafayat Ullah', '5', '38', '1', '208', '1', '8', '', '', 'House No. 15 (3rd Floor), Flat-G, Road-08 Dhanmondi, Dhaka-1205', '88-02-9676474, 9676355', '01711-525542, 01720-213292', 'E-mail: info@chowdhuryandullah.com; Fax : (88) -02-96766355', 'www.chowdhuryandullah.com', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('162', '55', 'Mr. Md. Zakaria Haider', 'Zakaria Haider', '1', '120', '1', '208', '1', '8', null, null, 'Chamber: 79, Kakrail Road (1st floor), Mayakanan, Dhaka-1000 ', '', 'Ph: 01711618919, Bapp-01712655784, Al-Amin Manager-01742205581', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('71', '56', 'Mr. Md. Nurul Alam ', 'Nurul Alam ', '1', '63', '1', '208', '1', '8', 'Md. Nurul Alam', '', 'Chamber: Jawaher Complex, Room No. 214-215, 14/4, Court House Street, Katwali, Dhaka-1100. ', '', 'Ph: 01711151540, Mamun: 01822523597', 'advnurul@yahoo.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('161', '57', 'Mohammed Arif-ul-Hoque Bhuiyan', 'Mohammed Arif-ul-Hoque Bhuiyan', '5', '41', '1', '208', '1', '8', null, null, '(i) Chamber: Fortune Tower (1st Floor), Flat No. 2/C, 8-Rankin Street, Wari, Dhaka-1203 (ii) Court Chamber: Room No. 318, Supreme Court Bar, Association Building, Ramna, Dhaka-1000.', '', 'Ph: 01713018868, Sohrab-01817614788', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('73', '58', 'Mr. Dewan Md. Nurul Alam', 'Dewan Md. Nurul Alam', '1', '145', '1', '208', '1', '8', null, null, 'Chamber: 13/17, Green Land Plaza, 3rd floor, Shantinagar Bazar Road, Shantinagar, Dhaka', '', '01712116585, Shahid-01822500339', 'e-mail : alamlawassociates@gmail.com', '', '1', '', '1', null, '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('74', '01', 'Mr. Humayun Kabir ', 'Humayun Kabir ', '1', '144', '1', '208', '2', '10', null, null, 'Chamber: Shopping Centre (1st floor), 85, A. C Dhar Road, Narayangonj, Residence & Chamber: 24/12, H. K Benerji Road, Narayangonj Housing Society, Amlapara, Narayangonj', '7610991', '0181-9221610', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('75', '02', 'Mr. Ahmed Ali Mia ', 'Ahmed Ali Mia ', '1', '144', '1', '208', '2', '10', null, null, '28, K. C Nag Road, Amlapara, Narayangonj ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('76', '03', 'Mr. Zahirul Huq ', 'Zahirul Huq ', '1', '144', '1', '208', '2', '10', null, null, '28, K. C Nag Road, Amlapara, Narayangonj ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('77', '04', 'Mr. Nurul Islam Khan  ', 'Nurul Islam Khan  ', '1', '144', '1', '208', '2', '10', null, null, '7/1, Sayestha Khan Road, Narayangonj ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('78', '05', 'Mr. Md. Nurul Islam  ', 'Nurul Islam  ', '1', '144', '1', '208', '2', '10', null, null, '65, Uttar Chashara, Narayangonj ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('79', '06', 'Mr. Abdus Samad ', 'Abdus Samad ', '1', '144', '1', '208', '2', '10', null, null, 'C/o Sirajuddin Ahmed,133 (old) Dewvoge Pakka Road Narayangonj', '9715660', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('80', '07', 'Mr. Md. Mozammel Huq', 'Mozammel Huq', '1', '144', '1', '208', '2', '10', null, null, '45, K. B Shaha Road, Amlapara, Narayangonj ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('81', '01', 'Mr. Nihar Ranjan Sarker Dey ', 'Nihar Ranjan Sarker Dey ', '1', '144', '1', '208', '3', '13', null, null, 'Chamber : Judge Court, Tangail.  Village Address: Garail, P.o-Kaizuri, Tangail ', '0921-627679 (Res.)', '01716045075', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('82', '01', 'Mr. Kajal Kanti Paul ', 'Kajal Kanti Paul ', '1', '144', '1', '208', '4', '17', null, null, 'Chamber: Bottala Road, Bhairab Bazar, District Ainjibi Bhaban, Kishoreganj', '', '01711-943107', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('83', '01', 'Mr. Md. Abdul Jalil', 'Abdul Jalil', '1', '144', '1', '208', '5', '16', null, null, '6/A Ganga Das Guha Road, Mymensingh ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('260', '02', 'Mr. Md. Abdul Aziz', 'Abdul Aziz', '1', '144', '1', '208', '5', '16', null, null, 'Mymensingh Bar Association, Mymensingh Court ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('85', '01', 'Mr. Sheikh Fazlur Rahman ', 'Sheikh Fazlur Rahman ', '1', '144', '1', '208', '6', '8', null, null, 'Akhi Nir, Tawadi, Narsingdi ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('86', '02', 'Mr. Hamidul Bari Chowdhury ', 'Hamidul Bari Chowdhury ', '1', '144', '1', '208', '6', '11', null, null, 'Chamber : 83, West Brammondi Narsingdi, Chamber: K/Ob-Rothi Computer Systems, Upazilla Circle(More), Narsingdi', '51393', '01711-640369 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('87', '03', 'Mr. Mansurul Islam Bhuiyan ', 'Mansurul Islam Bhuiyan ', '1', '144', '1', '208', '6', '11', null, null, '72/2, Bhelanagor (East) (North side of District Judge of Govt. Residence) Ward No. 1, Norsingdi Powrashava, Sadar,  Norsingdi  ', '0628-62832', '0171-896022', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('88', '01', 'Mr. Subol Chandra Shaha ', 'Subol Chandra Shaha ', '1', '144', '1', '208', '7', '5', null, null, 'Res. & Chamber: Jamuna Bhaban, 27/5, Mollah Bari Road, Goalchamat, Faridpur ', '63075', '01712-122873 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('163', '47', 'Mr. H.M Shaifur Rahma (ii) Mr. Helal, Barister-at-Law', 'H.M Shaifur Rahma (ii) Mr. Helal, Barister-at-Law', '5', '34', '1', '208', '1', '8', null, null, '(i) Chamber : BGIC Tower, 5th Floor, 34, Topkhana Road, Dhaka, (ii) Chamber Chittagong : Room No. 406 (3rd floor), Bar Association Building, Court Hill, Chittagong', '88 01916575921', 'Ph: 88-02-7176484, 06662615562 (Dhaka Phone), 01711383541 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('91', '01', 'Mesbabul Hafez', 'Mesbabul Hafez', '1', '44', '7', '208', '72', '29', null, null, 'The Law Consultants, Chamber : Room No. 55 (First Floor), New Bar Library Bhaban, Court Hill, Chittagong', '611698,  612835  (Res)', '01710-800804', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('262', '07', 'Mr. Mohi Uddin Shamim', 'Mohi Uddin Shamim', '1', '18', '1', '208', '1', '8', null, null, 'Chamber-2: Apartment No. D 101, Silicon Plaza, 8 Siddheswari Lane, Shantinagar, Dhaka-1217  ', '8363182', '', 'landJ@agnionline.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('263', '07', 'Mr. Mohammad Elias Bhuiyan', 'Mohammad Elias Bhuiyan', '1', '18', '1', '208', '1', '8', null, null, 'Room 117 (Ground Floor), Supreme Court Bar Association Building', '9552628', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('285', '24', 'Mr. Syed Mamun Mahbub', 'Syed Mamun Mahbub', '1', '144', '1', '208', '1', '0', null, null, 'Eastern Cottage, Flat No. 104, 10, Paribagh, Dhaka', '8615656, 017528386', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('97', '02', 'Mr. Jashimuddin Sikder ', 'Jashimuddin Sikder ', '1', '144', '7', '208', '72', '29', null, null, 'Chamber- : Room No. 548, Annex Bar Building, Court Hill, Chittagong, Residence: 1416/A, Bhuiya Bari, Haji Nur Ahmed Road, Alfalah Lane, Housing Area, East Nasirabad, Chittagong', '031-612449,  653161 (Res)', '01819-634548   ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('98', '03', 'Mr. Mokbul Kader Chowdhury ', 'Mokbul Kader Chowdhury ', '1', '144', '2', '208', '72', '29', null, null, 'Chamber : 49, Bagmoniram Road (Betary Galli), Dampara, Chittagong  Court Chamber: Court Hill Mosque Market, Room No. 16, Court Building, Chittagong', '635873', '0171882289', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('166', '56 (5)', 'Engr. Md. Ibrahim Khalil', 'Engr. Md. Ibrahim Khalil', '8', '77', '1', '208', '1', '8', null, null, 'Al-Bashir Plaza, 205/5, Box Culvert Road, Motijheel C/A, Dhaka-1000', '', 'Ph: 9336637, 01711269162, 01674640698', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('164', '05', 'Mr. Sumit Syam', 'Sumit Syam', '1', '144', '12', '208', '141', '20', null, null, 'Chamber : 41-Kastoghar, P.O & P.S: Sylhet Kotwali, Sylhet-3100', '', 'Ph: 88-0821-711339, 01711-19 14 11', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('165', '55 (2)', 'Mr. Md. Sirajul Islam', 'Sirajul Islam', '8', '73', '1', '208', '1', '8', null, null, 'Chamber: 161, Rahman Mansion (1st floor), Motijheel C/A, Dhaka-1000', '', 'Ph: 9551546, 9511597-8, 01912220095', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('101', '04', 'Mr. Abul Kashem Chowdhury ury ', 'Abul Kashem Chowdhury ury ', '1', '144', '2', '208', '72', '29', null, null, 'Chamber: 29, Ainjibi Bhaban, Court Hill, Kotwali, Chittagong-4000', '031-614388, 625148', '01711-480734', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('282', '09', 'Mr. Shaheen Aftabur Reza Chowdhury ', 'Shaheen Aftabur Reza Chowdhury ', '1', '144', '2', '208', '72', '0', null, null, '1457, Zakir Hossain Road, Nasirabad, Chittagong', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('283', '11', 'Mr. Mohammad Arsadur Rouf ', 'Mohammad Arsadur Rouf ', '5', '171', '1', '208', '1', '0', '', '', '(i)Chamber: Room No. 310, DCCI Building, (2nd floor), 65-66 Motijheel C/A, Dhaka-1000 (ii) Residence : House #9, Road #16, Gulshan-1, Dhaka. ', '01819240228, 88-02-7171662', '', 'roufmar@intechworld.net', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('103', '06', 'Mr. Zafar Ahmed Mostafa ', 'Zafar Ahmed Mostafa ', '1', '144', '2', '208', '72', '29', null, null, 'Chamber: Room No. 51 (1st floor), New Bar Association Building, Court Hill Road, Chittagong ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('104', '07', 'Mr. Syed Salauddin Ahmed ', 'Syed Salauddin Ahmed ', '1', '144', '2', '208', '72', '29', null, null, 'Chamber: 9, Rahmatganj, (Behind J. M Sen Hall), Chittagong', '619072 (Cham: & Res:)', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('105', '08', 'Mr. Mohammed Mezbah Uddin', 'Mohammed Mezbah Uddin', '1', '144', '2', '208', '72', '29', null, null, 'Chamber:Room No. 406 (3rd floor), Bar Association Building Court Hill, Chittatong', '', '01819-383153', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('106', '01', 'Mr. Bahar Uddin', 'Bahar Uddin', '1', '144', '7', '208', '9', '30', '', '', 'Chamber: Judge Court, CoxÃ¢â‚¬â„¢s Bazar and Vice Principal, CoxÃ¢â‚¬â„¢s Bazar Law College, Cox', '0341-64357', '01819-362714', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('107', '01', 'Mr. Rosmat Ali', 'Rosmat Ali', '1', '144', '7', '208', '10', '24', null, null, 'Kaptan Bazar,  Comilla', '081-68669 ', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('109', '02', 'Mr. Md. Safiullah ', 'Safiullah ', '1', '144', '7', '208', '10', '24', null, null, 'Chawtala, Comilla ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('110', '03', 'Mr. Atiqur Rahman ', 'Atiqur Rahman ', '1', '144', '7', '208', '10', '24', null, null, 'Dharma Sagar Par, Comilla', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('111', '04', 'Mr. Md. Ashfiqur Rahman', 'Ashfiqur Rahman', '1', '144', '7', '208', '10', '24', null, null, 'Chamber & Res: Dharmasagar West, Comilla', '081-76811', '01711-182738', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('112', '01', 'Mr. Shahadat Hossain', 'Shahadat Hossain', '1', '144', '7', '208', '118', '23', null, null, 'Bar Council, Brahmanbaria ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('113', '01', 'Mr. M. R Haider ', 'M. R Haider ', '1', '144', '7', '208', '11', '25', null, null, 'Bakultala  Road, Haziganj Bazar, Chandpur', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('267', '71', 'Mr. Mohammad Shafiqur Raman', 'Mohammad Shafiqur Raman', '10', '150', '1', '208', '3', '8', 'Last Touch', '1401320008001', 'Chamber : Kazi Nazrul Islam Road, East Archipur (Bhuiyan Bari), Tangil, Gazipur', '', '01711441329, 01824929439', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('171', '54 (ii)', 'Mr. Khurshed Uddin Ahmed', 'Khurshed Uddin Ahmed', '16', '144', '1', '208', '1', '8', null, null, 'Chamber:House No. 51(A), Road No. 6A, Dhanmondi R/A, Dhaka-1209', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('118', '01', 'Mr. A. K. M Masud ', 'A. K. M Masud ', '1', '144', '7', '208', '12', '26', null, null, 'Chamber & Residence: Ramgati Road (In the South side of Dakhin Temuhanee), Thana-Sadar, Post & Dist-Laxmipur ', '55713,  038155713, 0381-55592 (Res)', '01711-789747', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('119', '02', 'Mr. A. K. M. Humayun Kabir ', 'A. K. M. Humayun Kabir ', '1', '144', '7', '208', '12', '26', null, null, 'Sanghati Road, Laxmipur ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('120', '01', 'Mr. Chitta Ranjan Ray Chowdhury ', 'Chitta Ranjan Ray Chowdhury ', '1', '144', '7', '208', '66', '27', null, null, 'Chowmohoni College Road, Chowmohoni, Noakhali ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('121', '02', 'Mr. Md. Mostafizur Rahman ', 'Mostafizur Rahman ', '1', '144', '7', '208', '66', '27', null, null, 'Maizdi,  Noakhali ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('122', '03', 'Mr. Md. Shafiullah ', 'Shafiullah ', '1', '144', '7', '208', '66', '27', null, null, 'Ukil Bari (Bhuiyan Bari), Vill-Latifpur Post-Zaminder Hut, Thana-Begumganj, Noakhali ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('123', '01', 'Mr. Md. Motasum Billah', 'Motasum Billah', '1', '144', '2', '208', '14', '28', null, null, 'Chamber: Ain Bhaban, 358, Nazir Road, P.S & Dist: Feni', '0331-74485', '01711371587, 0154632840', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('124', '01', 'Mr. Mr. Moazzam Hussain Chowdhury', 'Moazzam Hussain Chowdhury', '1', '144', '12', '208', '141', '20', '', '', 'Chamber: 1st floor , Bar No. 2, Sylhet JudgesÃ¢â‚¬â„¢ Court, Sylhet, Res: Provash Kuthir, Shahi Eidgah, Sylhet', '711567, 719828 (Res), 06074340184', '01711331476', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('125', '02', 'Mr. P. K Roy', 'P. K Roy', '1', '144', '12', '208', '141', '20', null, null, 'Tati Para,  Sylhet Sadar, Sylhet ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('126', '03', 'Mr. A. B M Baharul Islam ', 'A. B M Baharul Islam ', '1', '144', '12', '208', '141', '20', '', '', 'Chhaya Nir, Sopani Ghat, Sylhet', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('127', '04', 'Mr. Abu Hasam Abdullah', 'Abu Hasam Abdullah', '1', '144', '12', '208', '141', '20', null, null, 'Dariapara,  Sylhet ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('128', '01', 'Mr. Muraduzzaman Chowdhury ', 'Muraduzzaman Chowdhury ', '1', '144', '1', '208', '16', '20', null, null, 'Chamber : 67, Shuvescha Housing Estate Road, Amborkhana, Sylhet', '716666', '01711197016', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('129', '02', 'Mr. Abu Salman Chowdhury ', 'Abu Salman Chowdhury ', '1', '144', '12', '208', '16', '20', null, null, '118, Housing Estate, Ambarkhana, Sylhet ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('130', '01', 'Mr. Md. Azizur Rahman ', 'Azizur Rahman ', '1', '144', '12', '208', '137', '21', null, null, 'Chamber: Advocate, JudgeÃ¢â‚¬â„¢s Court, Moulvibazar Chamber-2: C/o, Late Aftab Uddin, Hobiganj Road, Shrimangal Town, P.O Shrimangal, District-Moulibazar', '08626-71415', '01711-181550', '', '', '1', '', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('131', '02', 'Mr. Tajammul Hussain', 'Tajammul Hussain', '1', '144', '12', '208', '137', '21', '', '', 'Chamber-1: 616, Kazir Goan Road, P.O & Dist: Moulvibazar.  Chamber-2: Bar No. 1, Judge Court, Moulvibazar-3200', '0861-52217, 0861-52782(Res)', '01715-206443', '', '', '1', '', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('167', '55 (3)', 'Modern Surveyors Ltd', 'Modern Surveyors Ltd', '8', '74', '1', '208', '1', '8', null, null, 'Chamber: Chand Mansion (5th floor), 66, Dilkusha C/A, GPO Box No. 313, Dhaka-1000', 'Tel : 9551588, 9564483', '01711529413, 01713332404', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('157', '100', 'Mr. Abul Kalam Azad', 'Abul Kalam Azad', '1', '144', '1', '208', '1', '8', '', '', 'Gha-25/1, Middle Badda, Gulshan, Dhaka.', '406328', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('172', '54', 'G. K Adjusters Ltd', 'G. K Adjusters Ltd', '8', '75', '1', '208', '1', '8', null, null, 'Chamber: Chand Mansion (5th floor), 66, Dilkusha C/A, Dhaka-1000', '9551811, 554389,9554332', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('173', '53 (1)', 'Mr. Amir Hossain Chowdhury Raihan', 'Amir Hossain Chowdhury Raihan', '3', '144', '1', '208', '1', '8', null, null, 'Chamber: Room No. 320, Supreme Court Bar Association Building, Dhaka', '', '01718518333, 01716196533 (Res)', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('174', '53 (2)', 'Mr. Md. Zahirul Islam', 'Zahirul Islam', '3', '144', '1', '208', '1', '8', null, null, 'Chamber : Room No. 318, Supreme Court Bar Building, Ramna, Dhaka ', '', '01819293487', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('175', '49', 'Mr. Mahmudul Islam', 'Mahmudul Islam', '18', '144', '1', '208', '1', '8', null, null, '(i) Chamber: 348/C Malibah Chowdhury Para, Road No. 11, Dhaka-1219 (ii) CourtÃ¢â‚¬â„¢s Chamber: Supreme Court  Bar Association Building, Dhaka ', '7220055, 7213322 (Res), 9571449', '', 'mislam@citechco.net', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('176', '47', 'Md. Ashraful Alam', 'Md. Ashraful Alam', '1', '79', '1', '208', '1', '8', null, null, 'Chamber: 1227/A, Khilgaon, Hajipara,Khilgaon, Dhaka-1219 ', '', '01716621752, 88-02-8391535', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('177', '67', 'Mr. Forrukh Rahman, Bar-at-Law', 'Forrukh Rahman, Bar-at-Law', '5', '81', '1', '208', '1', '8', null, null, 'Chamber: Alam Tower, 4th floor, 12, DIT Avenue (East), Motijheel C/A, Dhaka-1000 ', '(+ 8802) 7171251', '06662611757', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('178', '59', 'Mr. Anowar Ullah', 'Anowar Ullah', '1', '84', '1', '208', '1', '8', null, null, 'Chamber : Room No. 05, (1st floor), 30/02 Johnson Road, Ray Sheheb Bazar, Dhaka1100', '', '01711-232951', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('179', '60', 'Mr. Shirajul Islam Khan ', 'Shirajul Islam Khan ', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: 8/1, Court House Street, Dhaka-1100', '', '01715-298412', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('180', '61', 'Mr. Habibul Islam Bhuiyan', 'Habibul Islam Bhuiyan', '1', '86', '1', '208', '1', '8', null, null, 'House No. 29, Road-9/A, Dhanmomdi, Dhaka-1209', '8117012, 9119420', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('181', '62', 'Mr. M. Imranul Hye Sajib', 'M. Imranul Hye Sajib', '1', '85', '1', '208', '1', '8', null, null, 'Suit No. 802, Akram Tower, 15/5, Bijoynagar, Dhaka-1000', '', '01714- 210  501 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('182', '63', 'Mr. Md. Hamidur Rahman', 'Hamidur Rahman', '1', '82', '1', '195', '1', '8', null, null, 'Chamber: 81/E, Old Battery Goli (Ground Floor), Kakrail, Dhaka-1000', '', '01716750919', 'hamid.law.justice.@gmail.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('183', '64', 'Mr. A. K. M Shah Newaz', 'A. K. M Shah Newaz', '1', '144', '1', '195', '1', '8', 'A. K. M. Shah Newaz', '2101071061001', 'Court Chamber: 3, Court House Street, Ahmed Court (4th floor), Room No. 02, Dhaka\r\nChamber: Nurjahan Sharif Plaza (3rd floor), 34, Purana Paltan (3rd Floor), Dhaka-1000', 'Ph: 9558455 (Off), 7194758 (Res)', '01716795448', 'ad_shahnewaz@yahoo.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('184', '65', 'Mr. M. Oliar Rahman', 'M. Oliar Rahman', '1', '144', '1', '195', '1', '8', null, null, 'Chamber: Dhaka Ã¢â‚¬ËœLawÃ¢â‚¬â„¢ House, Room No. 16 (2nd floor), 30, Johnson Road, Ray Shaheb Bazar, Dhaka-1100.  Residence : 156/2, East Kazi Para, Mirpur, Dhaka-1216', '', '01911385306', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('187', '69', 'Tanjib-Ul Alam & Associates', 'Tanjib-Ul Alam & Associates', '1', '144', '1', '210', '1', '8', null, null, 'Dhaka', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('188', '68', 'M. Ziaul Hasan', 'M. Ziaul Hasan', '5', '83', '1', '0', '1', '8', '', '', 'Dhaka Chamber of Commerce Building (6th floor), 65-66, Motijheel C/A, Dhaka-1000. ', '880-2-9572069, 7160905, 9566381, 9562380', '0171-7735336', 'Fax: 880-2-7169818', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('192', '02', 'Mr. Rokanuddin Mahmud', 'Rokanuddin Mahmud', '5', '151', '1', '208', '1', '8', null, null, 'Chamber: Walso Tower (1st floor), 21-23, Kazi Nazrul Islam Avenue, Dhaka-1000', '8620078, 8625350 ', '', 'Fax : (880-2) 9669122', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('193', '04', 'Mr. Akhter Imam', 'Akhter Imam', '20', '119', '1', '208', '1', '8', null, null, 'Chamber : House No. 51A, Road No. 6A, Dhanmondi R/A, Dhaka-1209', '8115777, 8110982', '0171-526454', '', 'Fax : 880-2- 8110982', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('194', '05', 'Mr. Ajmalul Hossain QC', 'Ajmalul Hossain QC', '20', '115', '1', '208', '1', '8', null, null, 'Chamber: 3B Outer Circular Road, Maghbazar, Dhaka-1217', '8311492, 8322935', 'Adv. Saiful-01731346777, Adv. Zahir-01553433121, 01712078827, (Safique, Sumon-01733504526, Pervez-01', 'Fax: 9344356', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('346', '', 'Mr. Nur Hossaain Chowdhury (Juel)', 'Nur Hossaain Chowdhury (Juel)', '7', '144', '1', '208', '1', '0', 'Nur Hossain Chowdhury', '261124462500', 'S. R Office, Govt. Licence No. 17/06, Dhaka,  ', '', '01522-351523, 01817-0615637', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('196', '01', 'Mr. A. B M Moshiuzzaman ', 'A. B M Moshiuzzaman ', '1', '144', '11', '208', '18', '49', null, null, '252, Seroil Master Para, P.O: Ghoramara, Rajshahi', '773466, 01712-567001 ', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('197', '02', 'Mr. Md. Nazmus Saadat', 'Nazmus Saadat', '1', '144', '11', '208', '18', '49', null, null, 'Chamber & Residence: Ã¢â‚¬Å“Zebun MahalÃ¢â‚¬Â, Sector-2, House No-58, Housing Estate, Uposhahar, Rajshahi-6202', '773146 (Bar Assn), 773146', '01711-578555,  0721-760119', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('198', '01', 'Mr. Alhaj Md. Shahjahan Biswas', 'Alhaj Md. Shahjahan Biswas', '1', '144', '11', '208', '19', '49', null, null, 'Biswas Bhabon, Bank Road, Nawabganj Sadar, P.O : Dist: Chapai Nawabganj', '', '0781-55245, 01715292217', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('266', '72', 'Mr. Md. Mostafizur Rhaman', 'Mostafizur Rhaman', '10', '149', '1', '208', '1', '8', null, null, 'Chamber : 85, Nayapaltan (1st floor), Room No. 01, Dhaka-1000', '', 'Ph: 01916-922994, 017132-435110, ', 'lasttouch@yahoo.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('200', '02', 'Mr. Md. Sohrab Ali (One)', 'Sohrab Ali (One)', '1', '144', '11', '208', '19', '48', null, null, 'Judge Court, Ch. N. Ganj, Kousali Bhaban, Arambagh, P.O, P.S & Dist Chapai Nawabganj, ', '0781-55193(Res), 06447800090', '01712557450, 0191945556', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('201', '01', 'Mr. Md. Abdur Rahman', 'Abdur Rahman', '1', '144', '11', '208', '243', '43', null, null, 'Rahe Mushafir Manjil, Idris Khan Lane, Badurtala, Bogra', '', '051-61432, 01712956746,', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('265', '06', 'Mr. A. F. M Mesbahuddin', 'A. F. M Mesbahuddin', '18', '144', '1', '208', '1', '8', null, null, 'Chamber : Room No. 103, Supreme Court Bar Association Building, Ramna, Dhaka-1000  Residence: Flat # 1-B, House # 42, Road # 3-A, Dhanmondi R/A, Dhaka ', 'Ph: 7170677, 9674001 (Res) ', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('203', '02', 'Mr. A. K. M Mahbubur Rahman ', 'A. K. M Mahbubur Rahman ', '1', '144', '11', '208', '243', '69', null, null, 'Shapla Bhaban, Jalishwari Tala, Bogra', '5594', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('204', '03', 'Mr. Mozibur Rahman ', 'Mozibur Rahman ', '1', '144', '11', '208', '243', '43', null, null, 'Jelishawari Tala, Bogra', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('206', '04', 'Mr. Lutfe Galib Al-Zhahid', 'Lutfe Galib Al-Zhahid', '1', '144', '11', '208', '243', '43', null, null, 'Bogra', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('207', '01', 'Mr. S. M Abul Kalam Azad ', 'S. M Abul Kalam Azad ', '1', '144', '11', '208', '229', '43', null, null, 'Sarker Bhaban, Khejur Tala, Sherpur, Bogra', '', '01711803495', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('208', '01', 'Mr. Md. Abdus Sobhan ', 'Abdus Sobhan ', '1', '144', '11', '208', '208', '40', null, null, 'Bahiganj, Rangpur', '60809, 60897', '01712575070', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('270', '02', 'Mr. Md. Abdur Rashid Chowdhury ', 'Abdur Rashid Chowdhury ', '1', '144', '11', '208', '208', '0', null, null, 'Gupta Para, Rangpur', '63693, 60358 ', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('210', '03', 'Mr. A. H. M Mozammel Hossain ', 'A. H. M Mozammel Hossain ', '1', '144', '11', '208', '208', '40', null, null, 'J.N.C Road,  Rangpur ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('211', '04', 'Mr. Abdul Khalek ', 'Abdul Khalek ', '1', '144', '11', '208', '208', '40', null, null, 'Thikadar Para, Alamnagar, Rangpur ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('212', '05', 'Mr. Abdur Rahman', 'Abdur Rahman', '1', '144', '11', '208', '208', '40', null, null, 'District : Rangpur', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('213', '06', 'Mr. Md. Shawkat Ali Kamal ', 'Shawkat Ali Kamal ', '1', '144', '11', '208', '208', '40', null, null, 'East Kamal Kachua, P.O-Rangpur, Thana-Kotwali  Dist-Rangpur', '61626', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('214', '01', 'Mr. A. K M Siddiqul Islam Pradhan', 'A. K M Siddiqul Islam Pradhan', '1', '144', '11', '208', '216', '41', null, null, 'Vill-Buzrukh, Boalia (Mastar Para) P.O & Upazilla- Gobindaganj, District-Gaibandha ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('215', '', 'Mr. Saleh Ahmed Siddiqui', 'Saleh Ahmed Siddiqui', '1', '144', '2', '208', '72', '29', null, null, 'GRC Church Road, Feringhee Bazar, Chittagong', '', '', '', '', '0', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('216', '01', 'Mr. Md. Quamrul Haque', 'Quamrul Haque', '1', '144', '11', '208', '190', '37', null, null, 'Nayatola, P.O: Saidpur, Nilphamari ', '0552688102', '01712-015659', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('217', '02', 'Mr. Md. Samiul Islam', 'Samiul Islam', '1', '144', '11', '208', '190', '41', null, null, 'Village : Kandal, P.O + P.O: Saidpur, Dist : Nilphamari', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('218', '01', 'Mr. Amjad Hossain ', 'Amjad Hossain ', '1', '144', '11', '208', '24', '45', null, null, 'Gopalpur, Pabna', '5031', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('219', '02', 'Mr. Iqbal Hossain ', 'Iqbal Hossain ', '1', '144', '11', '208', '24', '45', null, null, 'Kafiluddin Para (East of old four Storied Building)  Pabna', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('220', '01', 'Mr. Md. Rafiqul Aziz', 'Rafiqul Aziz', '1', '144', '11', '208', '25', '44', null, null, 'Moktar Para, Sirajganj', '72750', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('221', '01', 'Mr. Keramat Ali', 'Keramat Ali', '1', '144', '11', '208', '175', '36', null, null, 'Ramnagar, Dinajpur ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('222', '02', 'Mr. Sheikh Ahmed Hafiz', 'Sheikh Ahmed Hafiz', '1', '144', '11', '208', '175', '36', null, null, 'Eidgah Bosti, Dinajpur ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('223', '01', 'Mr. A. M Ahmed Ullah', 'A. M Ahmed Ullah', '1', '144', '3', '208', '27', '50', null, null, 'Hazibag Masjid Lane, Tutpara, Khulna Town, Khulna ', '041-724867,', '01711964619', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('224', '02', 'Mr. Shaikh Abdul Karim ', 'Shaikh Abdul Karim ', '1', '144', '3', '208', '27', '50', null, null, 'Chamber & Residence : 6, Yusuf Row (Side of Onirban Paper Office), Mirzapur, Khulna ', '723895 (Bar)', '01715-269517 ', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('225', '01', 'Mr. Sheikh Momin Uddin Ahmed ', 'Sheikh Momin Uddin Ahmed ', '1', '144', '3', '208', '27', '50', null, null, 'Lower Jessore Road, Khulna  (Died) ', '', '', '', '', '1', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('226', '03', 'Mrs. Shirin Sultana ', 'Shirin Sultana ', '1', '144', '3', '208', '27', '50', null, null, '19, Mia Para, Khulna ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('227', '04', 'Mr. Abdul Keyem', 'Abdul Keyem', '1', '144', '3', '208', '27', '50', null, null, '151, Sonadanga R/A, Road No. 10, Khulna ', '722351', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('228', '05', 'Mr. Moinuddin ', 'Moinuddin ', '1', '144', '3', '208', '27', '50', null, null, 'Gagan Babu Road, Khulna ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('229', '06', 'Mr. Muhammad Masum', 'Muhammad Masum', '1', '144', '3', '208', '27', '50', null, null, '51, Haji Mohsin Road, Khulna', '041-723732', '01712-07 62 11', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('230', '01', 'Mr. Nasim Ahmed Babu', 'Nasim Ahmed Babu', '1', '144', '3', '208', '28', '50', null, null, 'Chamber : 11, Loan Office Para Road, Jessore Town(The east side of Fish Market) Jessore', '65350, 0421-65350', '0171-1117987', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('231', '02', 'Mr. Md. Abul Hai Molla ', 'Abul Hai Molla ', '1', '144', '3', '208', '28', '50', null, null, 'Law Chamber: Muzib Sarak (East side of Eidgah Moidan, Jessore, Residence: Ekramul Haque Road, Khorki, P.S: Kotwali, Dist: Jessore ', '0421-66786 ', '01712068607', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('232', '03', 'Mr. Syed Mokarram Hossain ', 'Syed Mokarram Hossain ', '1', '144', '3', '208', '28', '56', null, null, 'Mr. Syed Mokarram Hossain ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('233', '04', 'Mr. Md. Abul Hossain ', 'Abul Hossain ', '1', '144', '3', '208', '28', '56', null, null, 'Old Kashbe, Niribili Area, Jessore', '66143', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('234', '05', 'Mr. Azizur Rahman Khan ', 'Azizur Rahman Khan ', '1', '144', '3', '208', '28', '56', null, null, 'Chamber : Aftab Manjil, West Baranda Road, Baranda Para, Jessore', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('235', '01', 'Mr. Sheikh Azizur Rahman ', 'Sheikh Azizur Rahman ', '1', '144', '3', '208', '29', '57', null, null, 'Munjitpur T&T Road, Shatkhira', '0471-64446', '01191553864', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('236', '02', 'Mr. A. S. M Abdur Rashid ', 'A. S. M Abdur Rashid ', '1', '144', '3', '208', '29', '57', null, null, 'Shatkhira', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('237', '01', 'Mr. Mainuddin Biswas ', 'Mainuddin Biswas ', '1', '144', '3', '208', '30', '51', null, null, 'Chamber: East Mojampur, Dr. Nasir Lane, Kushtia Res: Ostad Bhai Shorak, East Mojompur, Kushtia  ', '', '01714-476944, 01553222859, 01912091859', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('238', '02', 'Mr. Khandekar Mahbubur Rahman ', 'Khandekar Mahbubur Rahman ', '1', '144', '3', '208', '30', '51', null, null, 'Sneha Dhara Shahid Avik Lane, Court Para,  Kushtia ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('239', '03', 'Mr. Md. Niamot Ullah ', 'Niamot Ullah ', '1', '144', '3', '208', '30', '51', null, null, 'Chamber-1 : House No. 1, Kushtia Jhinaidaha Road, Upazilla Mor, Chourhas, Kushtia.  Chamber-2 : 165, Mangal Baria Bazar (Badher Gali), P.O, Thana & Dist-Kushtia-7000', '71376(R),  62271(0)', '017160304018', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('240', '04', 'Mr. Md. Harej Uddin ', 'Harej Uddin ', '1', '144', '3', '208', '30', '51', null, null, '48, Justice Morshed Road,Gorostan Para, Dist-Kushtia ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('241', '01', 'Mr. A. N. M Mahiul Islam(Taher) ', 'A. N. M Mahiul Islam(Taher) ', '1', '144', '3', '208', '31', '65', null, null, 'Fakirbari Road, PO & P.S: Kotwali, Dist: Barishal', '53764, 0431-2173671', '01711-230430', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('242', '02', 'Mr. Bupul Chandra Roy ', 'Bupul Chandra Roy ', '1', '144', '3', '208', '31', '65', null, null, 'Chamber: Fakirbari Road, West side of Pokur of Rakhal Babu, PO & P.S: Kotwali, Dist: Barishal, Residence : Shorani Bash, Kalibari Road, Barishal-8200', '', '01711-024392.', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('243', '03', 'Mr. Md. Feroz Howlader ', 'Feroz Howlader ', '1', '144', '3', '208', '31', '65', null, null, 'Fardaria Tala, Bukhai Nagar, Barishal ', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('244', '05', 'Mr. Mohammmsd Nurul Amin', 'Mohammmsd Nurul Amin', '1', '144', '2', '208', '72', '29', '', '', '(i) Chamber & Res: Ehom Nibash,21/A. KB Abdus Sattar Road, Rahamatgonj, Chittagong. (i)Court Chamber: Ainjibi Bhaban, Room No. 339, Chittagong', '031-626996, 031-634573', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('261', '01', 'Mr. Akhtarul Islam', 'Akhtarul Islam', '1', '44', '7', '208', '72', '29', null, null, 'Room No. 55 (First Floor), New Bar Library Bhaban, Court Hill, Chittagong', '611698,  612835  (Res)', '01710-800804', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('248', '09', 'Mr. Khan Saifur Rahmah', 'Khan Saifur Rahmah', '18', '144', '1', '208', '1', '8', '', '', 'Chamber-1: Room No. 112, Supreme Court Bar Association Building, Dhaka-1000 Chamber-2: Aziz Co-Operative Building, Flat No. B-4 (2nd floor), 89 (New-12B), Bijoy Nagar, Dhaka-1000', '8321962, 9557154', '0171-542943', 'khansaif@itkbd.net', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('249', '10', 'Mr. Omar Sadat', 'Omar Sadat', '5', '144', '1', '208', '1', '8', null, null, 'Chamber: House # 28 (Ground Floor),Road # 23, Gulshan-1, Dhaka-1212', '8824852, 88-02-8850355', 'Hasanat-01715387760', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('250', '11', 'Mr. Ehsanul Haque Shomaji', 'Ehsanul Haque Shomaji', '1', '144', '1', '208', '1', '8', null, null, 'Chamber:   30, Court House Street, Dhaka-1100 Residence :   Fahim-Ayesha Green, Apt. #  6-A,  62, Siddeshwari Road, Dhaka-1217', '7116407 (Chamber), 9334567(Res)', '0171-320321, 0171-530539', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('251', '12', 'Mr. Khandker Mahbub Hossain ', 'Khandker Mahbub Hossain ', '18', '141', '1', '208', '1', '8', null, null, 'Chamber:   Road No. 5, House No. B-167 Khilgaon R/A, Chowdhurypara, Dhaka-1219. Court Chamber: Room No. 342, Supreme Court Bar Association, Dhaka', '7216773, 7218808', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('252', '26', 'Mr. Md. Mahbubur Rahman ', 'Mahbubur Rahman ', '18', '144', '1', '208', '1', '8', null, null, 'Chamber : 9-K, United Nations Road, Baridhara, Dhaka-1212', '9888801, 8812566', '', 'domine@bdcom.com', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('253', '15', 'Mr. Mizan Sayeed', 'Mizan Sayeed', '5', '142', '1', '208', '1', '8', null, null, 'Chamber: Eastern Mansion, Suite Nos. 6 & 7(6th floor), 67/9, Poineer Road, Kakrail, Dhaka-1000', '9334700, 9334113', '01819-262388, 01552-357971', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('254', '15', 'Mr. Md. Abdul Quddus', 'Abdul Quddus', '1', '143', '1', '208', '1', '8', null, null, 'Chamber: City Heart, Suit No. 5/7, 67, Naya Paltan (4th floor), VIP Road, Dhaka-1000', '9352078', '01914-725512', '', '', '0', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('255', '16', 'Mr. Kazi Md. Shafique', 'Kazi Md. Shafique', '1', '144', '1', '208', '1', '8', '', '', 'Chamber-1: 129, North Basabo, Dhaka-1214 Chamber-2: R.S Bhaban, 120-A, Motijheel C/A, Room No. 305 (2nd floor), Dhaka', '7215340, 9565164, 9565164', '01711-177077, 0151-390566,', '', '', '1', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('256', '17', 'Mr. Abu Sayeed Md. Akram', 'Abu Sayeed Md. Akram', '1', '144', '1', '208', '1', '8', null, null, 'Firdous Mahal, Cha-34, Mohokhali School Road, Gulshan, Dhaka', '9898552, 600843', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('257', '19', 'Mr. Saifuddin Ahmed Chowdhury', 'Saifuddin Ahmed Chowdhury', '1', '144', '1', '208', '1', '8', null, null, 'Chamber: Razia Manjil (Ground floor), 88, Arambagh (Near Arambagh Club), Motijheel Dhaka-1000. Chamber : Room No. 213, Supreme Court Bar Association Annex Building, Dhaka-1000', '7100394 (Res), 011-804927 ', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('259', '21', 'Mr. Shahabuddin Ahmed', 'Shahabuddin Ahmed', '1', '144', '1', '208', '1', '8', null, null, 'Chamber-1: 3/1303 Eastern Tower, Eskaton, Dhaka-1217 Chamber-2: Room No. 1, Supreme Court Bar Association Building, Dhaka', '412544, 231562', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('268', '30', 'Shafiqul Kabir Khan (Tapash)', 'Shafiqul Kabir Khan (Tapash)', '1', '29', '1', '208', '1', '8', null, null, '3, New Baily Road, Dhaka', '9330647', 'Adv. Bodhon-01712758346, Tipu (Clerk)-01712863880, Habul (Messenger)-01672556702', 'kpartners@dhaka.net, Fax: 88-02-8313439', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('271', '02', 'Mr. Mahbubur Rahman Chow', 'Mahbubur Rahman Chow', '1', '144', '3', '208', '7', '0', null, null, 'Chamber: Municipality Complex (1st Floor), Laldighir Paar, Court Compound, Faridpur', '01558-520179', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('272', '01', 'Mr. Abdus Sattar  ', 'Abdus Sattar  ', '1', '144', '7', '208', '10', '0', null, null, 'Chawtala, Comilla, (Died: 19.02.10)', '081-68415', '', '', '', '1', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('273', '70', 'Mr. Mohammad Kamal Uddin', 'Mohammad Kamal Uddin', '5', '144', '1', '208', '1', '0', null, null, 'Chamber : Room No. 2012 (Annex), Supreme Court Bar Association Building Ramna, Dhaka. ', '', '01748-591097', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('274', '71', 'Mr. Md. Khalad Hossain Sarker (Rumi)', 'Khalad Hossain Sarker (Rumi)', '1', '144', '1', '208', '1', '0', null, null, 'Paarjowar Center, Room No. -33, 22, Court House Street, Kotwali, Dhaka. ', '', '01712-986831', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('275', '01', 'Mr. Muhammad Abdul Bari', 'Muhammad Abdul Bari', '1', '144', '1', '208', '218', '0', null, null, 'New College Road, Bank Colony (Station Bazar Area), P.O. + P.S. + District: Jamalpur', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('276', '05', 'Mr. Maqbul Ahmed Bhuiyan', 'Maqbul Ahmed Bhuiyan', '1', '144', '7', '208', '10', '0', null, null, 'Village- Aganagar, P.O.- Baro Haripur, P.S.- Barura, District: Comilla', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('277', '06', 'Mr. Md. Khorshed Alam', 'Khorshed Alam', '1', '144', '7', '208', '10', '0', null, null, 'Kaliajury (Dargha South), P.O: Comilla P.S:  Kotwali, District: Comilla. ', '', '01554-632461', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('278', '02', 'Mr. Binoy Bhushan Majumder', 'Binoy Bhushan Majumder', '1', '144', '7', '208', '11', '0', null, null, 'Sadhona Plaza, Shahid Muktijoddha Sarak, Chandpur - 3600', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('279', '01', 'Mr. Muhammad Anwarul Islam', 'Muhammad Anwarul Islam', '1', '144', '12', '208', '138', '0', null, null, 'Bar Hall No. 02, Moulovibazar Dist, Advocate Bar Association Court Area, Moulovibazar-3200. ', '', '01711-042233 ', 'rhiti2003@yahoo.com', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('280', '07', 'Mr. Abdul Malek', 'Abdul Malek', '1', '144', '3', '208', '27', '0', null, null, '17, Tootpara Central Road, Khulna. ', '', '01711-950486, 041-723648', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('281', '', 'Self', 'Self', '1', '144', '0', '0', '0', '0', null, null, '', '', '', '', '', '1', '', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('284', '12', 'Mr. A. Q. M Walizzaman ', 'A. Q. M Walizzaman ', '1', '144', '1', '208', '1', '0', null, null, '3, Court House Street, Room # 5(1st floor), Dhaka', '7211898 (103), 7217271 (103), 01715-130656', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('286', '54', 'Mr. Abul Kalam Azad', 'Abul Kalam Azad', '1', '39', '1', '208', '1', '0', null, null, 'Eastern View (9th Floor), Room No.9/11, 50, D.I.T.Ex. Road, Naya Paltan, (Near Fakirapul More) Dhaka-1000. ', '', '01712-739468, 01676-079644', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('287', '66', 'A. Rahman & Associates', 'A. Rahman & Associates', '1', '144', '1', '208', '1', '0', null, null, '', '', '', '', '', '1', '', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('289', '03 (2)', 'Mr. Rafique-ul Huq (Mr. Khairyul Alam Choudhury)', 'Rafique-ul Huq (Khairyul Alam Choudhury)', '20', '153', '1', '208', '1', '0', '', '', '47/1, Purana Paltan, Dhaka-1000.', '955219955953', '0191-315353', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('290', '07 (2)', 'Mr. M. Moniruzzaman Khan', 'M. Moniruzzaman Khan', '5', '140', '1', '208', '1', '0', null, null, 'Suit# 5/8, City Heart (4th Floor), 67, Naya Paltan, Dhaka-1000. ', '8313508, 8318787 ', '', '', 'Fax: 880-2-8319279', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('291', '07 (1)', '(i)Lee Mei Yoke (Marium Khan)  (ii)Mr. Md. Mydul Haque Khan', '(i)Lee Mei Yoke (Marium Khan)  (ii)Mr. Md. Mydul Haque Khan', '1', '140', '1', '208', '1', '0', null, null, 'Suite # 5/8, City Heart (4th floor), 67, Naya Paltan, VIP Road, Dhaka-1000.', '', 'Tel: 8313508, 8318787, 01819-227022, , 01912-888553', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('292', '20', 'Mr. M. A Jabbar', 'M. A Jabbar', '1', '144', '1', '208', '1', '0', '', '', '6, Old Post Office Street (2nd floor), Room # 30 (3rd floor), Room # 79/9, Kolkata-700 001. ', '', '', '', 'Fax No. 033-243-0787', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('293', '22', 'Md. Dedar-e-Elahi', ' Dedar-e-Elahi', '5', '154', '1', '208', '1', '0', null, null, 'ABC House (4th floor), 8, Kamal Ataturk Anenue, Banani, Dhaka-1213', 'Ph: 8817050', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('294', '22', 'Md. Dedar-e-Elahi', 'Dedar-e-Elahi', '5', '154', '1', '208', '1', '0', null, null, 'ABC House (4th floor), 8, Kamal Ataturk Anenue, Banani, Dhaka-1213', 'Ph: 8817050', '01713040109', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('295', '23', 'Mr. M. Moniruzzaman Asad', 'M. Moniruzzaman Asad', '5', '155', '1', '208', '1', '0', null, null, 'Chamber: Suite No. 10/1, 73, Kakrail, Dhaka-1000, CourtÃ¢â‚¬â„¢s Chamber: Room No. 418, Annex Building Supreme Court Bar Association, Bangladesh Supreme Court, Dhaka ', '8317208, 9335564', '01715-800189', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('296', '27', 'Mr. Syed Shamsul Falak', 'Syed Shamsul Falak', '1', '144', '1', '208', '1', '0', null, null, '6, Nobo Roy Lane (3rd floor), Tatibazar, Dhaka-1100', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('297', '28', 'Mr. Abdul Halim', 'Abdul Halim', '1', '144', '1', '208', '1', '0', null, null, '33/1, Mirpur Road, Dhanmondi, Dhaka-1205. ', '868532(Res)', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('298', '01', 'Mr. Biplob Saha', 'Biplob Saha', '1', '22', '1', '208', '1', '0', null, null, 'Chamber-1: Room No.8/37-C (7th floor), Eastern Plaza  Sonargoan Road, Dhaka-1205. Chamber-2: Room No. 78, Supreme Court Bar Association Building (2nd floor), Ramna, Dhaka', '', '', '', '', '1', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('299', '30', 'Mr. Abul Hasnat', 'Abul Hasnat', '5', '144', '1', '208', '1', '0', null, null, 'Juridicum, Zia Bhaban (1st floor) 59, Dilkusha C/A, Dhaka-1000', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('300', '31', 'Dr. Kazi Akter Hamid ', 'Dr. Kazi Akter Hamid ', '1', '172', '1', '208', '1', '0', null, null, 'Room No. 37, Supreme Court Bar Association Building, Ramana, Dhaka', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('301', '32', 'Mr. Syed Abdur Rahim', 'Syed Abdur Rahim', '1', '144', '1', '208', '1', '0', null, null, '62/1 Purana Palton, Dhaka', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('302', '33', 'Mr. Syed A.B. Mahmudul Haq', 'Syed A.B. Mahmudul Haq', '1', '144', '1', '208', '1', '0', '', '', 'Room No. 228, Supreme Court Bar Association Building Ramna, Dhaka', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('303', '35', 'Mr. Md. Ali Asghar Khondoker', 'Ali Asghar Khondoker', '1', '144', '1', '208', '1', '0', null, null, 'Chamber: 6-7, Court House Street, Dhaka Res: 146,Korimullarbag, Bat Talar Bazar, Postogola, P.S: Shampur, Dhaka-1204', '', '01710366476, 01920391892', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('304', '36', 'Mr. S. M. Saleh Ahmed Siddique', 'S. M. Saleh Ahmed Siddique', '1', '144', '2', '208', '72', '0', null, null, '6, R. C Charge Road, Dewan Bazar, Chittagong ', '633637', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('306', '38', 'Mr. Hironmoy Halder', 'Hironmoy Halder', '1', '144', '1', '208', '1', '0', null, null, 'Dhaka ', '9561478', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('307', '', 'Mr. Md. Shahjahan Howlader', 'Shahjahan Howlader', '1', '144', '3', '208', '31', '0', '', '', 'Barisal ', '', '01712-518332', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('308', '40', 'Mr. Shambhu Nath Datta', 'Shambhu Nath Datta', '1', '144', '2', '208', '72', '0', null, null, 'Chamber: 249, Teri Bazar, Hazi Dudu Mia, Building (1st floor), Chittagong', '617419', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('309', '40', 'Mr. Mohibul Hakim Polash', 'Mohibul Hakim Polash', '1', '144', '1', '208', '1', '0', null, null, 'Parjowar Centre, 22, Court House Street (Under Ground) Room No. A-22, Kotwali, Dhaka-1100.  ', '9343572', '01712713471', '', '', '0', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('310', '34', 'Mr. Abdul Wadud', 'Abdul Wadud', '1', '144', '1', '208', '1', '0', null, null, '48, Dilkusha C/A (2nd flor), Dhaka.  ', '9558382, 8911205', '018-240562', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('311', '42', 'Mr. Md. Mahbub Islam Mazumder', 'Mahbub Islam Mazumder', '1', '144', '1', '208', '1', '0', null, null, 'Chamber: Mahmood Jabbar Khan, Law Firm, Summit Centre (6th floor), 18, Kawran Bazar, Dhaka-1215 Chamber & Residence: 9, Rankin Street, Wari, Dhaka-1203. ', 'Ph: 8152486-87, 7112282, 7172305, ', '01911-40765, 01711-372753', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('312', '43', 'Mr. A. K. M Zahirul Hoque', 'A. K. M Zahirul Hoque', '1', '144', '1', '208', '1', '0', null, null, 'Additional Attorney General, Bangladesh, Attorney GeneralÃ¢â‚¬â„¢s Office, Supreme Court Premises, Dhaka. ', '0088-02-7168909 (Off)', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('313', '44', 'Mr. Zakir Hossain Ripon ', 'Zakir Hossain Ripon ', '1', '144', '1', '208', '1', '0', null, null, 'Room No. 222 (1st floor), Annex No. 216 (1st floor), Supreme Court Bar Building, Dhaka-1000, Office: Room No. 307 (2nd floor), Attorney General Office, Supreme Court Premises, Dhaka-1000. ', '01711-908533', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('314', '45', 'Mr. Md. Rafiqul Islam', 'Rafiqul Islam', '18', '144', '1', '208', '1', '0', '', '', 'Room No. 108 (New) 2/7 (Old), Supreme Court Bar Association Building, Dhaka.  Residence : 20/1, New Eskaton (Gausnagar), Dhaka-1217. ', 'Ph: 9559626, 9563752-53 Ext-147,  9358207 (Res)', '01711-684705', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('315', '46', 'Mehadi Hasan', 'Mehadi Hasan', '1', '156', '1', '208', '1', '0', '', '', '35/A Purana Paltan Line, VIP Road, Dhaka-1000.', '9337695, 9338805', '01923-292325', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('316', '48', 'Mr. Md. Khwaja Moueenuddin', 'Khwaja Moueenuddin', '1', '144', '1', '208', '14', '0', null, null, 'Chamber: Rahmania House, S.S.K Road (Pachgachhia Raod) Feni. ', '74735', '01711146846', '', '', '1', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('317', '50', 'Mr. Abdul Maleque', 'Abdul Maleque', '1', '144', '3', '208', '1', '0', null, null, 'Res: & Chamber : 17, Tootpara Central Road, Khulna.', '723648, 723895', '01711-950486', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('318', '51', 'Mr. Shajahan Howlader', 'Shajahan Howlader', '1', '144', '3', '208', '31', '0', null, null, 'A. R. S Toweer, Kalibari, Barishal.', '2173159', '01712518332', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('319', '55(5)', 'Commodity Inspection Services (BD) Ltd', 'Commodity Inspection Services (BD) Ltd', '8', '174', '1', '208', '1', '0', null, null, 'Suit:Ashrafi Villa, Apt. 3B (2nd floor), 586, East Kazipara, Kafrul, Mirpur, Dhaka-1216. ', '8053305', '0174167300, 01712723640, 01715025923', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('320', '06', 'Engineering & Architectural Consultant Ltd. ', 'Engineering & Architectural Consultant Ltd. ', '8', '175', '1', '208', '1', '0', null, null, '10, Dilkusha C/A, Jiban Bima Tower (8th floor), Dhaka-1000', 'Ph: 9561606 (0)', '', 'info@cisbdltd.com', 'Fax-88-02-9561606', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('321', '55(7)', 'Eastland Surveyors ', 'Eastland Surveyors ', '8', '176', '1', '208', '1', '0', null, null, 'Room No. 7, Elevator Level-7, Rahmania International Complex, 28/1/C Toyenbee Circular Road, Motijheel C/A, Dhaka-1000. ', '9559503, 7161196,', '01819118795, 01816184325-6, ', 'Fax : 9559503', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('322', '55(8)', 'Royal Inspection International Ltd', 'Royal Inspection International Ltd', '8', '177', '1', '208', '1', '0', null, null, 'Baitul Khair (3rd floor), 48/A-B, Purana Paltan, Dhaka-1000. ', '7176862, 9553476 ', '', 'royalone@bdcom.net', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('323', '55(9)', 'City Engineering & Architectural Consultants', 'City Engineering & Architectural Consultants', '8', '178', '1', '208', '1', '0', null, null, '27, Dilkusha C/A, Baitul Hossen Building (5th floor) Suit No. 602, Dhaka-1000.', '9571148', '', 'Fax : 9571148', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('324', '55(10)', 'Geodatic Survey Corporation', 'Geodatic Survey Corporation', '8', '179', '1', '208', '1', '0', null, null, 'Suit: C-3, Nagar Chayaneer, 6/6, Segunbagicha, Dhaka-1000.', '', '01711580880', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('325', '56(1)', 'S. K Survey & Inspection Company ', 'S. K Survey & Inspection Company ', '8', '157', '1', '208', '1', '0', null, null, 'Chand Mansion (6th floor), 66, Dilkusha C/A, GPO Box No. 313, Dhaka-1000. ', '9572019, 7123978', '', 'sksic.bd@gmail.com', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('326', '56(2)', 'Saybolt Adjusters', 'Saybolt Adjusters', '8', '158', '1', '208', '1', '0', '', '', '33, Topkhana Road, Meherba Plaza (9th floor), Dhaka-1000.', '9550654, 9559233', '', 'saybolt@sayboltgroup.com', 'Fax: 0559749, 9570927', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('327', '56(3)', 'Waso Engineering & Consultant (BD) Ltd', 'Waso Engineering & Consultant (BD) Ltd', '8', '159', '1', '208', '1', '0', null, null, 'Haque Chamber, Level-5, 89/2, West Panthapath, Dhaka-1205', '9111330, 8116459', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('328', '56(4)', 'IIS Consulting (BD) Ltd', 'IIS Consulting (BD) Ltd', '8', '160', '1', '208', '1', '0', null, null, 'Shahnawaz Bhanan (5th floor), 9/C, Motijheel C/A, Suit No. 603, Dhaka. ', '9556399, 717657', '01911022992', 'wriis@yahoo.com', '', '', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('329', '56 (6)', 'Bhuiyan Associates ', 'Bhuiyan Associates ', '8', '144', '1', '208', '1', '0', null, null, '233/1 North Kazipara, Mirpur, Dhaka.', '9123591', '0191-359972, 0174-008506', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('330', '57(1)', 'Shotabdi BuilderÃ¢â‚¬â„¢s & Survey', 'Shotabdi BuilderÃ¢â‚¬â„¢s & Survey', '8', '162', '1', '208', '1', '0', null, null, 'Dar-Us-Salam Arcade (7th floor), Suit #8, 14, Purana Paltan, Dhaka-1000. ', '', '01552487472, 01819-144841', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('331', '57(2)', 'The Engineers Inspection ', 'The Engineers Inspection ', '8', '163', '1', '208', '1', '0', null, null, 'Alam Tower, 4th floor, Suit : 504-6, 12, DIT North Extension Avenue, Dhaka-1000. ', '', '01720530231', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('332', '57(3)', 'F. Islam & Associates', 'F. Islam & Associates', '8', '164', '1', '208', '1', '0', null, null, '185/Ka, East Rampura (1st floor), Dhaka-1219.', '', '01911489662, 01710991198', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('333', '57(4)', 'Survey for Valuation Ltd', 'Survey for Valuation Ltd', '8', '165', '1', '208', '1', '0', null, null, '218/11, West Kafrul (3rd floor) Begum Rokeya Sarani, Dhaka-1207.', '', '01750052052', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('334', '57(5)', 'Desh Poridorshon Co. ', 'Desh Poridorshon Co. ', '8', '166', '1', '208', '1', '0', null, null, 'Bakaul Mansion, 42/Kha (5th floor) Shegunbagicha, Dhaka-1000.', '028391467', '01712816541', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('335', '57(6)', 'Bhaban Engineering & Architects ', 'Bhaban Engineering & Architects ', '8', '167', '1', '208', '1', '0', null, null, '27, Dilkusha C/A, Baitul Hossain, Building (5th floor), Suit : 605, Dhaka-1000.', '', '01711242695', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('336', '57(7)', 'Prince Inspection Services (BD) Ltd ', 'Prince Inspection Services (BD) Ltd ', '8', '168', '1', '208', '1', '0', null, null, 'Nahar Mansion, Building-2 (3rd floor) 150, Motijheel, C/A, Dhaka-1000. ', '', '01716302927', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('337', '57(8)', 'S. D Survey Firm ', 'S. D Survey Firm ', '8', '169', '1', '208', '1', '0', null, null, 'Motaleb Mansion, Room No. 610, R. K. Mission Road, Dhaka-1203', '', '7111920', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('338', '57(9)', 'Ismail Adjusters ', 'Ismail Adjusters ', '8', '170', '1', '208', '1', '0', null, null, '402, Alambagh, New Jurain, Dhaka-1204', '', '01554331860', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('339', '', 'Mr. Sikder Mahmudur Razi', 'Sikder Mahmudur Razi', '1', '144', '1', '208', '1', '0', '', '', 'Chamber Room No. 216 (Annex Hall Room, South-East Corner) Supreme Court Bar Association, Dhaka Chamber: 32/1, Circular Road, Dhanmondi (Near Vhoter Golli Mosque) Dhaka-1205, Residence Flot No. D-1, House No. 79, Central Road, Dhanmondi, Dhaka', '', '01818-581728', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('348', '', null, 'Ittefaque', '9', '144', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('347', '', 'LYRIC', 'LYRIC', '9', '183', '1', '222', '1', '0', 'Lyric', '', '121, Motkjheel C/A (5th floor), Dhaka-1000', '9570987', '01819249454', 'Fax : 02-9570987', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('349', '', null, 'Bhorer Kagaj', '9', '144', '0', '0', '0', '0', '', '', '', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('350', '', null, 'Manabzamin', '9', '144', '0', '0', '0', '0', '', '', '', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('351', '', null, 'Muktokantho', '9', '144', '0', '0', '0', '0', '', '', '', '', '', '', '', '0', '', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `lawyer_officer` VALUES ('352', '', null, 'Md. Bakir Uddin  Bhuiyan', '1', '148', '1', '208', '1', '0', '', '', '', '01818581728', '01711732810, 01915451526', '', '', '1', '', '0', '0', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `lawyer_type`
-- ----------------------------
DROP TABLE IF EXISTS `lawyer_type`;
CREATE TABLE `lawyer_type` (
  `lawyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `lawyer_name` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`lawyer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of lawyer_type
-- ----------------------------
INSERT INTO `lawyer_type` VALUES ('1', 'Panel lawyer');
INSERT INTO `lawyer_type` VALUES ('2', 'Firm lawyer');
INSERT INTO `lawyer_type` VALUES ('3', 'Self');
INSERT INTO `lawyer_type` VALUES ('4', 'Legal Division');

-- ----------------------------
-- Table structure for `ledger`
-- ----------------------------
DROP TABLE IF EXISTS `ledger`;
CREATE TABLE `ledger` (
  `LedgerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Address` text CHARACTER SET utf8,
  `IsInventoryAffected` int(11) DEFAULT NULL,
  `SalesTaxNumber` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GroupID` int(11) NOT NULL,
  `OpenningDr` decimal(20,2) DEFAULT NULL,
  `OpenningCr` decimal(20,2) DEFAULT NULL,
  `LedgerNo` text CHARACTER SET utf8 NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `LedgerType` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`LedgerID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ledger
-- ----------------------------
INSERT INTO `ledger` VALUES ('6', 'Khan Multimedia', 'Ghatail', null, null, '10675', '1000.00', null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('7', 'Suman Enterprize', 'Tangail', null, null, '10676', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('8', 'Cash', null, null, null, '0', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('10', 'DBBL 19810', 'Madhabdi', null, null, '10676', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('9', 'Hasan Optics', 'Dhaka', null, null, '10674', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('11', 'DBBL 192.168.10.90', null, null, null, '10676', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `ledger` VALUES ('12', 'DB 104.110.607', 'dh', null, null, '10707', null, null, '', '79', '1', null, '0', '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for `ledgerob`
-- ----------------------------
DROP TABLE IF EXISTS `ledgerob`;
CREATE TABLE `ledgerob` (
  `LedgerOBID` int(11) NOT NULL AUTO_INCREMENT,
  `LedgerID` int(11) NOT NULL,
  `FiscaleYearId` int(11) DEFAULT NULL,
  `OBDr` decimal(20,2) DEFAULT NULL,
  `OBCr` decimal(20,2) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`LedgerOBID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ledgerob
-- ----------------------------
INSERT INTO `ledgerob` VALUES ('1', '50', '0', '2000.00', '0.00', '0', '2011-06-22 09:29:08', '0', '1900-01-01');
INSERT INTO `ledgerob` VALUES ('4', '56', '0', '0.00', '300.00', '0', '2011-06-23 15:36:22', null, null);
INSERT INTO `ledgerob` VALUES ('5', '57', null, '0.00', '300.00', '0', '2011-06-23 15:37:46', null, null);
INSERT INTO `ledgerob` VALUES ('6', '58', '0', '0.00', '20.00', '0', '2011-06-23 16:01:31', null, null);
INSERT INTO `ledgerob` VALUES ('7', '59', '0', '0.00', '203.00', '0', '2011-06-23 16:02:06', null, null);

-- ----------------------------
-- Table structure for `logger`
-- ----------------------------
DROP TABLE IF EXISTS `logger`;
CREATE TABLE `logger` (
  `loggid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loggtext` varchar(2000) DEFAULT NULL,
  `loggtime` datetime DEFAULT NULL,
  `username` varchar(16) DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`loggid`)
) ENGINE=MyISAM AUTO_INCREMENT=53559 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logger
-- ----------------------------

-- ----------------------------
-- Table structure for `meal_for`
-- ----------------------------
DROP TABLE IF EXISTS `meal_for`;
CREATE TABLE `meal_for` (
  `meal_id` int(11) NOT NULL AUTO_INCREMENT,
  `for_name` varchar(255) NOT NULL,
  PRIMARY KEY (`meal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meal_for
-- ----------------------------
INSERT INTO `meal_for` VALUES ('1', 'Ã Â¦Å“Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¿ Ã Â¦â€¦Ã Â¦Â«Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¸');
INSERT INTO `meal_for` VALUES ('2', 'Ã Â¦Å“Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¿ Ã Â¦â€¢Ã Â§â€¡Ã Â¦Â¡Ã Â§â€¡Ã Â¦Å¸');
INSERT INTO `meal_for` VALUES ('3', 'Ã Â¦â€¦Ã Â¦Â¤Ã Â¦Â¿Ã Â¦Â¥Ã Â¦Â¿');
INSERT INTO `meal_for` VALUES ('5', 'Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯');

-- ----------------------------
-- Table structure for `meal_time`
-- ----------------------------
DROP TABLE IF EXISTS `meal_time`;
CREATE TABLE `meal_time` (
  `meal_time_id` int(11) NOT NULL AUTO_INCREMENT,
  `meal_type` varchar(255) NOT NULL,
  PRIMARY KEY (`meal_time_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meal_time
-- ----------------------------
INSERT INTO `meal_time` VALUES ('1', 'Ã Â¦Â¬Ã Â§â€¡Ã Â¦Â¡ Ã Â¦Å¸Ã Â¦Â¿ ');
INSERT INTO `meal_time` VALUES ('3', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§ÂÃ Â¦Â° Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â¤ (Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ Ã Â¦â€œ Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿)');
INSERT INTO `meal_time` VALUES ('4', 'Ã Â¦Â¸Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â²Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾');
INSERT INTO `meal_time` VALUES ('5', 'Ã Â¦Å¸Ã Â¦Â¿ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦â€¢');
INSERT INTO `meal_time` VALUES ('6', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â° Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¬Ã Â¦Â¾Ã Â¦Â°');
INSERT INTO `meal_time` VALUES ('7', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â²Ã Â§â€¡Ã Â¦Â° Ã Â¦Å¡Ã Â¦Â¾');
INSERT INTO `meal_time` VALUES ('8', 'Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¤Ã Â§â€¡Ã Â¦Â° Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¬Ã Â¦Â¾Ã Â¦Â°');
INSERT INTO `meal_time` VALUES ('9', 'Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Å“Ã Â¦Â¾ Ã Â¦Â°Ã Â¦Â¶Ã Â¦Â¦ Ã Â¦â€œ Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾');

-- ----------------------------
-- Table structure for `order_details`
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_type` int(3) DEFAULT NULL,
  `order_id` int(3) DEFAULT NULL,
  `foods_name` varchar(255) NOT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `unit_type` int(3) DEFAULT NULL,
  `category` int(3) DEFAULT NULL,
  `unite_prize` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES ('1', '1', '1', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '2', '100.0000', '14', '8', '0.5000');
INSERT INTO `order_details` VALUES ('2', '1', '1', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯(Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '100', '100.0000', '11', '9', '0.0100');
INSERT INTO `order_details` VALUES ('3', '3', '1', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '1', '100.0000', '14', '4', '0.9000');
INSERT INTO `order_details` VALUES ('4', '3', '1', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '100.0000', '11', '10', '0.0100');
INSERT INTO `order_details` VALUES ('5', '3', '1', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '25', '100.0000', '11', '11', '0.0500');
INSERT INTO `order_details` VALUES ('6', '4', '1', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾(Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '120', '100.0000', '11', '2', '0.0100');
INSERT INTO `order_details` VALUES ('7', '4', '1', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '85', '100.0000', '11', '6', '0.0300');
INSERT INTO `order_details` VALUES ('8', '4', '1', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '02', '100.0000', '14', '3', '4.0000');
INSERT INTO `order_details` VALUES ('9', '5', '1', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '50', '100.0000', '11', '2', '0.0500');
INSERT INTO `order_details` VALUES ('10', '5', '1', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯(Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '100', '100.0000', '11', '9', '0.0500');
INSERT INTO `order_details` VALUES ('11', '5', '1', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '50', '100.0000', '11', '13', '0.0500');
INSERT INTO `order_details` VALUES ('12', '6', '1', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '100', '100.0000', '11', '13', '0.0500');
INSERT INTO `order_details` VALUES ('13', '6', '1', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬', '160', '100.0000', '11', '14', '0.1300');
INSERT INTO `order_details` VALUES ('14', '6', '1', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿(Ã Â¦Â¦Ã Â§ÂÃ Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â° Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¬Ã Â¦Â¾Ã Â¦Â°)', '100', '100.0000', '11', '6', '0.0500');
INSERT INTO `order_details` VALUES ('15', '6', '1', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º', '200', '100.0000', '11', '16', '0.1000');
INSERT INTO `order_details` VALUES ('16', '6', '1', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬', '160', '-30.0000', '11', '14', '0.1300');
INSERT INTO `order_details` VALUES ('17', '6', '1', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º', '200', '30.0000', '11', '16', '0.1300');
INSERT INTO `order_details` VALUES ('18', '6', '1', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '30', '-3.0000', '11', '15', '0.3000');
INSERT INTO `order_details` VALUES ('19', '6', '1', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '160', '3.0000', '11', '14', '0.3000');
INSERT INTO `order_details` VALUES ('20', '1', '4', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '100', '11.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('21', '1', '4', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '2', '11.0000', '14', '8', '1.3550');
INSERT INTO `order_details` VALUES ('22', '3', '4', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '1', '11.0000', '14', '7', '0.9750');
INSERT INTO `order_details` VALUES ('23', '3', '4', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11.0000', '11', '10', '0.0220');
INSERT INTO `order_details` VALUES ('24', '3', '4', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '25', '11.0000', '11', '11', '0.0550');
INSERT INTO `order_details` VALUES ('25', '4', '4', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '120', '11.0000', '11', '2', '0.0460');
INSERT INTO `order_details` VALUES ('26', '5', '4', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦â€¢Ã Â§â€¡Ã Â¦â€¢ (Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡)  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬', '1/10', '11.0000', '13', '0', '7.7000');
INSERT INTO `order_details` VALUES ('27', '4', '4', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '2', '11.0000', '14', '3', '7.9900');
INSERT INTO `order_details` VALUES ('28', '5', '4', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€”Ã Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¾', '1', '11.0000', '14', '0', '6.6700');
INSERT INTO `order_details` VALUES ('29', '8', '4', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â° (Ã Â¦ÂªÃ Â¦Â¾Ã Â§Å¸Ã Â¦Â¾)', '50', '11.0000', '11', '0', '0.0400');
INSERT INTO `order_details` VALUES ('30', '5', '4', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '0', '11.0000', '0', '9', '0.0000');
INSERT INTO `order_details` VALUES ('31', '6', '4', 'Ã Â¦Â®Ã Â¦Â²Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º', '90', '11.0000', '11', '16', '0.2900');
INSERT INTO `order_details` VALUES ('32', '6', '4', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '20', '11.0000', '11', '13', '0.0250');
INSERT INTO `order_details` VALUES ('33', '6', '4', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '45', '11.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('34', '6', '4', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '1', '11.0000', '11', '7', '0.9750');
INSERT INTO `order_details` VALUES ('35', '6', '4', 'Ã Â¦â€ Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â² (Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â²)/ Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â² Ã Â¦Â«Ã Â¦Â²', '1', '11.0000', '14', '0', '20.0000');
INSERT INTO `order_details` VALUES ('36', '6', '4', 'Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€”Ã Â§ÂÃ Â¦Â¨', '20', '11.0000', '11', '0', '0.0600');
INSERT INTO `order_details` VALUES ('37', '7', '4', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦ÂªÃ Â§ÂÃ Â§Å“Ã Â¦Â¿)', '50', '11.0000', '11', '0', '0.0460');
INSERT INTO `order_details` VALUES ('38', '7', '4', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '150', '11.0000', '12', '0', '0.0565');
INSERT INTO `order_details` VALUES ('39', '7', '4', 'Ã Â¦Â¹Ã Â¦Â°Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¸', '04', '11.0000', '11', '0', '0.6300');
INSERT INTO `order_details` VALUES ('40', '6', '4', 'Ã Â¦Å¸Ã Â¦Â®Ã Â§â€¡Ã Â¦Å¸Ã Â§â€¹', '20', '11.0000', '11', '0', '0.0600');
INSERT INTO `order_details` VALUES ('41', '8', '4', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '50', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('42', '9', '4', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('43', '9', '4', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '40', '11.0000', '11', '0', '0.0400');
INSERT INTO `order_details` VALUES ('44', '9', '4', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '08', '11.0000', '11', '0', '0.1200');
INSERT INTO `order_details` VALUES ('45', '9', '4', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '04', '11.0000', '11', '0', '0.1300');
INSERT INTO `order_details` VALUES ('46', '4', '4', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '85', '11.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('47', '4', '4', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '50', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('48', '4', '4', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '50', '11.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('49', '8', '4', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦â€°Ã Â¦Â² Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿Ã Â¦â€”Ã Â§ÂÃ Â§Å“Ã Â¦Â¾', '20', '11.0000', '11', '0', '0.0905');
INSERT INTO `order_details` VALUES ('50', '8', '4', 'Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¿Ã Â¦â€¢Ã Â§â€¡Ã Â¦Â² ', '1', '11.0000', '14', '0', '0.6000');
INSERT INTO `order_details` VALUES ('51', '8', '4', 'Ã Â¦â€¢Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Â®Ã Â¦Â¿Ã Â¦Â¸', '02', '11.0000', '11', '0', '0.2900');
INSERT INTO `order_details` VALUES ('52', '8', '4', 'Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â£Ã Â¦Â«Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦â€œÃ Â§Å¸Ã Â¦Â¾Ã Â¦Â° ', '07', '11.0000', '11', '0', '0.1750');
INSERT INTO `order_details` VALUES ('53', '8', '4', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '03', '11.0000', '11', '0', '0.1650');
INSERT INTO `order_details` VALUES ('54', '1', '5', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '100', '22.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('55', '1', '5', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '2', '22.0000', '14', '8', '1.3500');
INSERT INTO `order_details` VALUES ('56', '3', '5', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '1', '22.0000', '14', '7', '0.9750');
INSERT INTO `order_details` VALUES ('57', '3', '5', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '22.0000', '11', '10', '0.0220');
INSERT INTO `order_details` VALUES ('58', '3', '5', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '25', '22.0000', '11', '11', '0.0550');
INSERT INTO `order_details` VALUES ('59', '4', '5', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '120', '22.0000', '11', '2', '0.0460');
INSERT INTO `order_details` VALUES ('60', '5', '5', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦â€”Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¾)', '50', '22.0000', '10', '2', '0.0460');
INSERT INTO `order_details` VALUES ('61', '4', '5', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '2', '22.0000', '14', '3', '0.0000');
INSERT INTO `order_details` VALUES ('62', '5', '5', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¾', '30', '22.0000', '11', '15', '0.3000');
INSERT INTO `order_details` VALUES ('63', '5', '5', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '20', '22.0000', '11', '13', '0.0250');
INSERT INTO `order_details` VALUES ('64', '5', '5', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '0', '22.0000', '0', '9', '0.0000');
INSERT INTO `order_details` VALUES ('65', '6', '5', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬ ', '160', '22.0000', '11', '14', '0.1530');
INSERT INTO `order_details` VALUES ('66', '6', '5', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦â€¡Ã Â¦Â¶Ã Â¦Â¾Ã Â¦â€¢', '100', '22.0000', '11', '6', '0.0280');
INSERT INTO `order_details` VALUES ('67', '6', '5', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '40', '22.0000', '11', '13', '0.0250');
INSERT INTO `order_details` VALUES ('68', '6', '5', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '45', '22.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('69', '6', '5', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '1', '22.0000', '11', '7', '0.9750');
INSERT INTO `order_details` VALUES ('70', '6', '5', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '03', '22.0000', '11', '10', '0.1650');
INSERT INTO `order_details` VALUES ('71', '6', '5', 'Ã Â¦Â«Ã Â¦Â² (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '0', '22.0000', '0', '15', '0.0000');
INSERT INTO `order_details` VALUES ('72', '7', '5', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '1', '22.0000', '13', '15', '6.0000');
INSERT INTO `order_details` VALUES ('73', '7', '5', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '150', '22.0000', '12', '0', '0.0565');
INSERT INTO `order_details` VALUES ('74', '7', '5', 'Ã Â¦â€œÃ Â¦Â­Ã Â¦Â¾Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', '04', '22.0000', '11', '15', '0.7800');
INSERT INTO `order_details` VALUES ('75', '8', '5', 'Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿ Ã Â¦Å¡Ã Â¦Â®Ã Â¦Å¡Ã Â¦Â® (Ã Â¦Â¬Ã Â§Å“)', '1', '22.0000', '14', '0', '10.0000');
INSERT INTO `order_details` VALUES ('76', '8', '5', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '0', '22.0000', '0', '15', '0.0000');
INSERT INTO `order_details` VALUES ('77', '9', '5', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '22.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('78', '9', '5', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '40', '22.0000', '11', '0', '0.0400');
INSERT INTO `order_details` VALUES ('79', '9', '5', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '08', '22.0000', '11', '0', '0.1200');
INSERT INTO `order_details` VALUES ('80', '9', '5', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '04', '22.0000', '11', '0', '0.1300');
INSERT INTO `order_details` VALUES ('81', '4', '5', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '85', '22.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('82', '4', '5', 'Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â² Ã Â¦â€ºÃ Â§â€¹Ã Â¦Â²Ã Â¦Â¾', '40', '22.0000', '11', '12', '0.0700');
INSERT INTO `order_details` VALUES ('83', '4', '5', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '50', '22.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('84', '4', '5', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '50', '22.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('85', '1', '6', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '100', '11.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('86', '1', '6', 'Ã Â¦â€¢Ã Â§â€¹Ã Â¦â€¢Ã Â§â€¹ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Å¸ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬)', '2', '11.0000', '14', '8', '1.3550');
INSERT INTO `order_details` VALUES ('87', '3', '6', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿ ', '1', '11.0000', '14', '7', '0.9750');
INSERT INTO `order_details` VALUES ('88', '3', '6', 'Ã Â¦Â²Ã Â¦Â¬Ã Â¦Â¨ (Ã Â¦â€ Ã Â§Å¸Ã Â§â€¹Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤)', '10', '11.0000', '11', '10', '0.0220');
INSERT INTO `order_details` VALUES ('89', '3', '6', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿', '25', '11.0000', '11', '11', '0.0550');
INSERT INTO `order_details` VALUES ('90', '4', '6', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¾Ã Â¦Å¸Ã Â¦Â¾)', '120', '11.0000', '11', '2', '0.0460');
INSERT INTO `order_details` VALUES ('91', '5', '6', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦â€¢Ã Â§â€¡Ã Â¦â€¢ (Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â·Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡)  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â®Ã Â¦Â Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§â‚¬', '1/10', '11.0000', '13', '0', '7.7000');
INSERT INTO `order_details` VALUES ('92', '4', '6', 'Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â® (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¹)', '2', '11.0000', '14', '3', '7.9900');
INSERT INTO `order_details` VALUES ('93', '5', '6', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€”Ã Â¦Â° Ã Â¦â€¢Ã Â¦Â²Ã Â¦Â¾', '1', '11.0000', '14', '0', '6.6700');
INSERT INTO `order_details` VALUES ('94', '8', '6', 'Ã Â¦â€”Ã Â¦Â°Ã Â§ÂÃ Â¦Â° Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â° (Ã Â¦ÂªÃ Â¦Â¾Ã Â§Å¸Ã Â¦Â¾)', '50', '11.0000', '11', '0', '0.0400');
INSERT INTO `order_details` VALUES ('95', '5', '6', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '0', '11.0000', '0', '9', '0.0000');
INSERT INTO `order_details` VALUES ('96', '6', '6', 'Ã Â¦Â®Ã Â¦Â²Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º', '90', '11.0000', '11', '16', '0.2900');
INSERT INTO `order_details` VALUES ('97', '6', '6', 'Ã Â¦â€ Ã Â¦Â²Ã Â§Â', '20', '11.0000', '11', '13', '0.0250');
INSERT INTO `order_details` VALUES ('98', '6', '6', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '45', '11.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('99', '6', '6', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¬Ã Â§Â Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¿', '1', '11.0000', '11', '7', '0.9750');
INSERT INTO `order_details` VALUES ('100', '6', '6', 'Ã Â¦â€ Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â² (Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â²)/ Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Å“Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â² Ã Â¦Â«Ã Â¦Â²', '1', '11.0000', '14', '0', '20.0000');
INSERT INTO `order_details` VALUES ('101', '6', '6', 'Ã Â¦Â¬Ã Â§â€¡Ã Â¦â€”Ã Â§ÂÃ Â¦Â¨', '20', '11.0000', '11', '0', '0.0600');
INSERT INTO `order_details` VALUES ('102', '7', '6', 'Ã Â¦Â®Ã Â§Å¸Ã Â¦Â¦Ã Â¦Â¾ (Ã Â¦Â¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦ÂªÃ Â§ÂÃ Â§Å“Ã Â¦Â¿)', '50', '11.0000', '11', '0', '0.0460');
INSERT INTO `order_details` VALUES ('103', '7', '6', 'Ã Â¦Â¦Ã Â§ÂÃ Â¦Â§ Ã Â¦â€ Ã Â§Å“Ã Â¦â€š/Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â²Ã Â§ÂÃ Â¦â€¢ Ã Â¦Â­Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾', '150', '11.0000', '12', '0', '0.0565');
INSERT INTO `order_details` VALUES ('104', '7', '6', 'Ã Â¦Â¹Ã Â¦Â°Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¸', '04', '11.0000', '11', '0', '0.6300');
INSERT INTO `order_details` VALUES ('105', '6', '6', 'Ã Â¦Å¸Ã Â¦Â®Ã Â§â€¡Ã Â¦Å¸Ã Â§â€¹', '20', '11.0000', '11', '0', '0.0600');
INSERT INTO `order_details` VALUES ('106', '8', '6', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€º/Ã Â¦Â¡Ã Â¦Â¿Ã Â¦Â®/Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿  Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦Â¹Ã Â¦Â¤Ã Â§â€¡', '50', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('107', '9', '6', 'Ã Â¦Â®Ã Â¦Â¸Ã Â¦Â²Ã Â¦Â¾ Ã Â¦ÂÃ Â¦Â¬Ã Â¦â€š Ã Â¦Â®Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¸ Ã Â¦Â¡Ã Â§â€¡ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦ÂÃ Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿', '0', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('108', '9', '6', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â§Å¸Ã Â¦Â¾Ã Â¦Å“', '40', '11.0000', '11', '0', '0.0400');
INSERT INTO `order_details` VALUES ('109', '9', '6', 'Ã Â¦â€¢Ã Â¦Â¾Ã Â¦ÂÃ Â¦Å¡Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â°Ã Â¦Â¿Ã Â¦Å¡', '08', '11.0000', '11', '0', '0.1200');
INSERT INTO `order_details` VALUES ('110', '9', '6', 'Ã Â¦Â§Ã Â¦Â¨Ã Â¦Â¿Ã Â§Å¸Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', '04', '11.0000', '11', '0', '0.1300');
INSERT INTO `order_details` VALUES ('111', '4', '6', 'Ã Â¦Â¸Ã Â¦Â¬Ã Â§ÂÃ Â¦Å“Ã Â¦Â¿', '85', '11.0000', '11', '6', '0.0270');
INSERT INTO `order_details` VALUES ('112', '4', '6', 'Ã Â¦â€”Ã Â§â€¹Ã Â¦Â®Ã Â¦Â¾Ã Â¦â€šÃ Â¦Â¸/Ã Â¦Â®Ã Â§ÂÃ Â¦Â°Ã Â¦â€”Ã Â§â‚¬/Ã Â¦â€“Ã Â¦Â¾Ã Â¦Â¸Ã Â§â‚¬ (Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¡Ã Â¦Â¿)', '50', '11.0000', '11', '0', '0.0000');
INSERT INTO `order_details` VALUES ('113', '4', '6', 'Ã Â¦Å¡Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦â€¦Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¯', '50', '11.0000', '11', '9', '0.0000');
INSERT INTO `order_details` VALUES ('114', '8', '6', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦â€°Ã Â¦Â² Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¨Ã Â¦Â¿Ã Â¦â€”Ã Â§ÂÃ Â§Å“Ã Â¦Â¾', '20', '11.0000', '11', '0', '0.0905');
INSERT INTO `order_details` VALUES ('115', '8', '6', 'Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¿Ã Â¦â€¢Ã Â§â€¡Ã Â¦Â² ', '1', '11.0000', '14', '0', '0.6000');
INSERT INTO `order_details` VALUES ('116', '8', '6', 'Ã Â¦â€¢Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Â®Ã Â¦Â¿Ã Â¦Â¸', '02', '11.0000', '11', '0', '0.2900');
INSERT INTO `order_details` VALUES ('117', '8', '6', 'Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â£Ã Â¦Â«Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦â€œÃ Â§Å¸Ã Â¦Â¾Ã Â¦Â° ', '07', '11.0000', '11', '0', '0.1750');
INSERT INTO `order_details` VALUES ('118', '8', '6', 'Ã Â¦Å¸Ã Â§â€¡Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦â€š Ã Â¦Â¸Ã Â¦Â²Ã Â§ÂÃ Â¦Å¸', '03', '11.0000', '11', '0', '0.1650');

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(3) DEFAULT NULL,
  `reco_date` date DEFAULT NULL,
  `deli_date` date DEFAULT NULL,
  `expen_date` date DEFAULT NULL,
  `meal_for` int(3) DEFAULT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1', '1', '2011-03-01', '2011-03-02', '2011-03-22', '1', '100');
INSERT INTO `order_info` VALUES ('2', '2', '2011-03-05', '2011-03-06', '2011-03-07', '2', '518');
INSERT INTO `order_info` VALUES ('3', '3', '2011-03-05', '2011-03-06', '2011-03-07', '0', '518');
INSERT INTO `order_info` VALUES ('4', '4', '2011-03-06', '2011-03-08', '2011-03-09', '0', '11');
INSERT INTO `order_info` VALUES ('5', '5', '2011-03-21', '2011-03-08', '2011-03-08', '0', '22');
INSERT INTO `order_info` VALUES ('6', '6', '2011-03-07', '2011-03-09', '2011-03-16', '1', '11');

-- ----------------------------
-- Table structure for `payhead`
-- ----------------------------
DROP TABLE IF EXISTS `payhead`;
CREATE TABLE `payhead` (
  `PayHeadID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `LedgerNo` varchar(200) CHARACTER SET utf8 NOT NULL,
  `PayHeadType` int(11) NOT NULL,
  `AffectedNetSalary` int(11) DEFAULT NULL,
  `UseForGratuity` int(11) DEFAULT NULL,
  `PaySlipName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CalculationType` int(11) NOT NULL,
  `CalculationPeriod` int(11) NOT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `APTID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `ComputationID` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PayHeadID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payhead
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_main`
-- ----------------------------
DROP TABLE IF EXISTS `payment_main`;
CREATE TABLE `payment_main` (
  `PaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `TranNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PaymentReference` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherDate` date NOT NULL,
  `TransactionTypeId` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `Naration` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `EntryByID` int(11) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `ModifiedByID` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_main
-- ----------------------------
INSERT INTO `payment_main` VALUES ('5', null, null, '2012-04-03', '2', '79', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_main` VALUES ('6', null, null, '2012-04-10', '3', '79', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_main` VALUES ('7', null, null, '2012-04-04', '1', '79', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_main` VALUES ('8', null, null, '2012-04-04', '5', '79', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_main` VALUES ('9', null, null, '0000-00-00', '6', '79', null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_main` VALUES ('10', null, null, '0000-00-00', '2', '79', null, '0', '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for `payment_method`
-- ----------------------------
DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of payment_method
-- ----------------------------
INSERT INTO `payment_method` VALUES ('1', 'Payorder');
INSERT INTO `payment_method` VALUES ('2', 'Cheque');
INSERT INTO `payment_method` VALUES ('3', 'Account Transfer');

-- ----------------------------
-- Table structure for `payment_sub`
-- ----------------------------
DROP TABLE IF EXISTS `payment_sub`;
CREATE TABLE `payment_sub` (
  `Payment_subID` int(4) NOT NULL AUTO_INCREMENT,
  `PaymentID` int(4) NOT NULL,
  `LedgerID` int(4) NOT NULL,
  `Dr` decimal(20,2) DEFAULT NULL,
  `Cr` decimal(20,2) DEFAULT NULL,
  `CostCenterID` longblob,
  `EmployeeID` longblob,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifyBy` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Payment_subID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_sub
-- ----------------------------
INSERT INTO `payment_sub` VALUES ('17', '5', '6', '2000.00', null, null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('18', '5', '8', null, '2000.00', null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('19', '6', '8', '3000.00', null, null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('20', '6', '6', null, '3000.00', null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('21', '7', '6', '5000.00', null, null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('22', '7', '8', null, '3000.00', null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('23', '7', '10', null, '2000.00', null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('24', '8', '8', '3000.00', null, null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('25', '9', '11', null, '2000.00', null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('28', '10', '12', '5000.00', null, null, null, '0', '0000-00-00 00:00:00', null, null);
INSERT INTO `payment_sub` VALUES ('29', '10', '8', null, '5000.00', null, null, '0', '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for `payment_sub_item`
-- ----------------------------
DROP TABLE IF EXISTS `payment_sub_item`;
CREATE TABLE `payment_sub_item` (
  `voucher_subID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentID` int(4) NOT NULL,
  `ItemId` int(4) DEFAULT NULL,
  `ItemQty` double(10,0) DEFAULT NULL,
  `ItemRate` decimal(20,2) DEFAULT NULL,
  `EntryById` int(3) NOT NULL,
  `EntryDate` date NOT NULL,
  `ModifiedById` int(3) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`voucher_subID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_sub_item
-- ----------------------------
INSERT INTO `payment_sub_item` VALUES ('9', '8', '1', '1', '1000.00', '0', '0000-00-00', null, null);
INSERT INTO `payment_sub_item` VALUES ('10', '8', '2', '1', '1000.00', '0', '0000-00-00', null, null);
INSERT INTO `payment_sub_item` VALUES ('11', '8', '3', '1', '1000.00', '0', '0000-00-00', null, null);
INSERT INTO `payment_sub_item` VALUES ('12', '9', '2', '10', '50.00', '0', '0000-00-00', null, null);
INSERT INTO `payment_sub_item` VALUES ('13', '9', '3', '5', '50.00', '0', '0000-00-00', null, null);
INSERT INTO `payment_sub_item` VALUES ('14', '9', '4', '5', '50.00', '0', '0000-00-00', null, null);

-- ----------------------------
-- Table structure for `payrollvoucher`
-- ----------------------------
DROP TABLE IF EXISTS `payrollvoucher`;
CREATE TABLE `payrollvoucher` (
  `PayrollID` int(11) NOT NULL,
  `TranNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherDate` datetime NOT NULL,
  `TransactionType` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `EntryByID` int(11) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `ModifiedByID` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payrollvoucher
-- ----------------------------

-- ----------------------------
-- Table structure for `payrollvoucheritem`
-- ----------------------------
DROP TABLE IF EXISTS `payrollvoucheritem`;
CREATE TABLE `payrollvoucheritem` (
  `PAyrollItemID` int(11) NOT NULL,
  `PayrollVoucherID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `TotalAmount` decimal(20,4) NOT NULL,
  `DrCrType` int(11) NOT NULL,
  PRIMARY KEY (`PAyrollItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payrollvoucheritem
-- ----------------------------

-- ----------------------------
-- Table structure for `payrollvoucheritemdetail`
-- ----------------------------
DROP TABLE IF EXISTS `payrollvoucheritemdetail`;
CREATE TABLE `payrollvoucheritemdetail` (
  `ID` int(11) NOT NULL,
  `PayrollVoucherItemID` int(11) NOT NULL,
  `PayHeadID` int(11) NOT NULL,
  `Amount` decimal(20,4) NOT NULL,
  `DrCrType` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payrollvoucheritemdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Key` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '1', '1');
INSERT INTO `permission` VALUES ('2', '1', '1.1.1');
INSERT INTO `permission` VALUES ('3', '1', '1.1.2');
INSERT INTO `permission` VALUES ('4', '1', '1.1.3');
INSERT INTO `permission` VALUES ('5', '1', '1.1.4');

-- ----------------------------
-- Table structure for `platoon`
-- ----------------------------
DROP TABLE IF EXISTS `platoon`;
CREATE TABLE `platoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platoon` varchar(200) NOT NULL,
  `platoon_commander` varchar(200) NOT NULL,
  `location` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of platoon
-- ----------------------------
INSERT INTO `platoon` VALUES ('8', 'M-4', 'Maj Imtiaz Mahmud,EB', '93', '43 L/C', '5');
INSERT INTO `platoon` VALUES ('7', 'R-4', 'Maj A K M Habubul Haq,EB', '73', '44 L/C', '3');
INSERT INTO `platoon` VALUES ('10', 'H-4', 'Maj Jahanoor Kabir Sakib,BIR', '74', '44 L/C', '4');
INSERT INTO `platoon` VALUES ('11', 'J-4A', 'Maj Habib', '45', '45 L/C', '2');
INSERT INTO `platoon` VALUES ('12', 'M-4A', 'Capt Md Mubashir Hasan Khan,Arty', '93', '49 L/C', '6');
INSERT INTO `platoon` VALUES ('13', 'J-3', 'Maj Mohammad Kamrul Hasan, EB', '45', '43 L/C', '7');
INSERT INTO `platoon` VALUES ('14', 'M-3', 'Maj Asib Bin Jalil,EB', '93', '43 L/C', '10');
INSERT INTO `platoon` VALUES ('15', 'H-3', 'Maj Abu Tareq Mohammad Rashed,BIR', '74', '44 L/C', '9');
INSERT INTO `platoon` VALUES ('16', 'R-3', 'Maj Md Tanbir Alam, AC', '73', '45 L/C', '8');
INSERT INTO `platoon` VALUES ('17', 'H-2', 'Maj Mohammad Nazrul Islam, Sigs', '74', '44 L/C', '13');
INSERT INTO `platoon` VALUES ('18', 'J-2', 'Maj ANM Foysal,BIR', '45', '44 L/C', '11');
INSERT INTO `platoon` VALUES ('19', 'M-2', 'Maj Mohammad Asiful Haque,BIR', '93', '47 L/C', '14');
INSERT INTO `platoon` VALUES ('20', 'R-2', 'Maj Md Nazmus Sadat,EB', '73', '48 L/C', '12');
INSERT INTO `platoon` VALUES ('21', 'R-1', 'Maj M A Yousuf,BIR', '73', '46 L/C', '16');
INSERT INTO `platoon` VALUES ('22', 'M-1', 'Maj Syed Farhan Ebne Hafiz,G+,Arty', '93', '44 L/C', '18');
INSERT INTO `platoon` VALUES ('23', 'J-1', 'Maj Md Solaiman,EB', '45', '45 L/C', '15');
INSERT INTO `platoon` VALUES ('24', 'H-1', 'Maj Mansur Ahmed,ASC', '74', '47 L/C', '17');
INSERT INTO `platoon` VALUES ('31', 'DSSC (AMC)', '', '262', '', '20');
INSERT INTO `platoon` VALUES ('26', 'DSSC (ADC)', '', '262', '', '21');
INSERT INTO `platoon` VALUES ('28', 'DSSC (RVFC)', '', '262', '', '22');
INSERT INTO `platoon` VALUES ('30', 'Spl Pl', '', '262', '', '19');
INSERT INTO `platoon` VALUES ('36', 'J-4', '', '45', '', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `EntityType` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `salarydetail`
-- ----------------------------
DROP TABLE IF EXISTS `salarydetail`;
CREATE TABLE `salarydetail` (
  `SalaryDetailsID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `EffectDate` datetime NOT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SalaryDetailsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salarydetail
-- ----------------------------

-- ----------------------------
-- Table structure for `salarydetailitem`
-- ----------------------------
DROP TABLE IF EXISTS `salarydetailitem`;
CREATE TABLE `salarydetailitem` (
  `SalaryDetailsItemID` int(11) NOT NULL,
  `SalaryDetailID` int(11) NOT NULL,
  `PayHeadID` int(11) NOT NULL,
  `Rate` decimal(20,4) NOT NULL,
  `Guid` text CHARACTER SET utf8,
  PRIMARY KEY (`SalaryDetailsItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salarydetailitem
-- ----------------------------

-- ----------------------------
-- Table structure for `sales_main`
-- ----------------------------
DROP TABLE IF EXISTS `sales_main`;
CREATE TABLE `sales_main` (
  `SalesID` int(11) NOT NULL,
  `TranNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SalesReferance` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherDate` datetime NOT NULL,
  `TransactionType` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `Naration` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `EntryById` int(11) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `ModifiedById` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SalesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales_main
-- ----------------------------
INSERT INTO `sales_main` VALUES ('1', '', '', '2011-06-26 12:52:22', '5', '1', '', '0', '2011-06-26 12:52:39', null, null);
INSERT INTO `sales_main` VALUES ('2', '', '', '2011-06-26 13:09:35', '5', '1', '', '0', '2011-06-26 13:09:48', null, null);
INSERT INTO `sales_main` VALUES ('3', '', '', '2011-06-26 13:09:35', '5', '1', '', '0', '2011-06-26 13:12:30', null, null);
INSERT INTO `sales_main` VALUES ('4', '', '', '2011-06-26 16:17:33', '5', '1', '', '0', '2011-06-26 16:18:02', null, null);
INSERT INTO `sales_main` VALUES ('5', '', '', '2011-06-26 16:19:14', '5', '1', '', '0', '2011-06-26 16:20:38', null, null);

-- ----------------------------
-- Table structure for `sales_sub`
-- ----------------------------
DROP TABLE IF EXISTS `sales_sub`;
CREATE TABLE `sales_sub` (
  `SalesItemId` int(11) NOT NULL,
  `SalesVoucherId` int(11) NOT NULL,
  `LedgerId` int(11) DEFAULT NULL,
  `Dr` decimal(20,2) DEFAULT NULL,
  `Cr` decimal(20,2) DEFAULT NULL,
  `ItemId` int(11) DEFAULT NULL,
  `ItemQty` double DEFAULT NULL,
  `ItemRate` decimal(20,2) DEFAULT NULL,
  `ItemTotal` decimal(20,2) DEFAULT NULL,
  `EntryById` int(11) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `ModifiedById` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SalesItemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales_sub
-- ----------------------------
INSERT INTO `sales_sub` VALUES ('1', '1', '1', null, '70.00', '8', '1', '50.00', '50.00', '0', '2011-06-26 12:52:39', null, null);
INSERT INTO `sales_sub` VALUES ('2', '1', '1', null, null, '1', '1', '20.00', '20.00', '0', '2011-06-26 12:52:39', null, null);
INSERT INTO `sales_sub` VALUES ('3', '2', '9', '150.00', null, '0', '0', null, null, '0', '2011-06-26 13:09:48', null, null);
INSERT INTO `sales_sub` VALUES ('4', '2', '1', null, '150.00', '4', '1', '50.00', '50.00', '0', '2011-06-26 13:09:48', null, null);
INSERT INTO `sales_sub` VALUES ('5', '2', '1', null, null, '6', '1', '100.00', '100.00', '0', '2011-06-26 13:09:48', null, null);

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `sessionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `remote_host` varchar(80) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `fk_session_user` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=732 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('222', 'admin', '127.0.0.1', '2011-03-09 14:11:20');
INSERT INTO `session` VALUES ('223', 'admin', '127.0.0.1', '2011-03-09 14:18:10');
INSERT INTO `session` VALUES ('224', 'admin', '127.0.0.1', '2011-03-09 15:05:02');
INSERT INTO `session` VALUES ('225', 'admin', '127.0.0.1', '2011-03-10 10:56:14');
INSERT INTO `session` VALUES ('226', 'admin', '127.0.0.1', '2011-03-10 13:37:09');
INSERT INTO `session` VALUES ('227', 'admin', '127.0.0.1', '2011-03-10 16:07:06');
INSERT INTO `session` VALUES ('228', 'admin', '127.0.0.1', '2011-03-10 17:45:16');
INSERT INTO `session` VALUES ('229', 'admin', '127.0.0.1', '2011-03-12 10:30:13');
INSERT INTO `session` VALUES ('230', 'admin', '127.0.0.1', '2011-03-12 13:36:14');
INSERT INTO `session` VALUES ('231', 'admin', '127.0.0.1', '2011-03-13 11:39:56');
INSERT INTO `session` VALUES ('232', 'admin', '127.0.0.1', '2011-03-13 07:45:43');
INSERT INTO `session` VALUES ('233', 'admin', '127.0.0.1', '2011-03-13 07:49:18');
INSERT INTO `session` VALUES ('234', 'admin', '127.0.0.1', '2011-03-13 11:46:11');
INSERT INTO `session` VALUES ('235', 'admin', '127.0.0.1', '2011-03-15 04:57:41');
INSERT INTO `session` VALUES ('236', 'admin', '127.0.0.1', '2011-03-16 10:41:50');
INSERT INTO `session` VALUES ('237', 'admin', '127.0.0.1', '2011-03-16 10:45:59');
INSERT INTO `session` VALUES ('238', 'admin', '127.0.0.1', '2011-03-16 10:49:27');
INSERT INTO `session` VALUES ('239', 'admin', '127.0.0.1', '2011-03-20 08:13:19');
INSERT INTO `session` VALUES ('240', 'admin', '127.0.0.1', '2011-04-04 12:49:05');
INSERT INTO `session` VALUES ('241', 'admin', '127.0.0.1', '2011-04-04 12:52:08');
INSERT INTO `session` VALUES ('242', 'admin', '127.0.0.1', '2011-04-04 12:56:15');
INSERT INTO `session` VALUES ('243', 'admin', '127.0.0.1', '2011-04-04 12:56:48');
INSERT INTO `session` VALUES ('244', 'admin', '127.0.0.1', '2011-04-04 12:57:21');
INSERT INTO `session` VALUES ('245', 'admin', '119.30.38.56', '2011-04-04 14:56:44');
INSERT INTO `session` VALUES ('246', 'admin', '202.4.119.114', '2011-04-05 02:09:35');
INSERT INTO `session` VALUES ('247', 'admin', '180.234.45.21', '2011-04-07 00:56:24');
INSERT INTO `session` VALUES ('248', 'admin', '180.149.8.125', '2011-04-08 15:39:55');
INSERT INTO `session` VALUES ('249', 'admin', '180.234.77.251', '2011-04-09 09:18:04');
INSERT INTO `session` VALUES ('250', 'admin', '202.65.173.234', '2011-04-09 09:18:50');
INSERT INTO `session` VALUES ('251', 'admin', '202.65.173.234', '2011-04-09 12:57:02');
INSERT INTO `session` VALUES ('252', 'admin', '202.65.173.234', '2011-04-10 13:39:21');
INSERT INTO `session` VALUES ('253', 'admin', '202.65.173.234', '2011-04-12 01:49:27');
INSERT INTO `session` VALUES ('254', 'admin', '202.4.119.114', '2011-04-12 04:50:11');
INSERT INTO `session` VALUES ('255', 'admin', '180.234.71.167', '2011-04-12 04:51:34');
INSERT INTO `session` VALUES ('256', 'admin', '202.4.119.114', '2011-04-12 04:58:43');
INSERT INTO `session` VALUES ('257', 'admin', '180.234.34.228', '2011-04-16 01:45:29');
INSERT INTO `session` VALUES ('258', 'admin', '202.65.173.234', '2011-04-16 02:34:35');
INSERT INTO `session` VALUES ('259', 'admin', '119.30.38.50', '2011-04-16 03:10:16');
INSERT INTO `session` VALUES ('260', 'admin', '180.149.8.184', '2011-04-16 03:59:29');
INSERT INTO `session` VALUES ('261', 'admin', '119.30.39.54', '2011-04-16 04:14:56');
INSERT INTO `session` VALUES ('262', 'admin', '180.234.51.181', '2011-04-16 07:59:15');
INSERT INTO `session` VALUES ('263', 'admin', '180.234.51.181', '2011-04-16 08:05:04');
INSERT INTO `session` VALUES ('264', 'admin', '180.234.91.194', '2011-04-17 03:45:04');
INSERT INTO `session` VALUES ('265', 'admin', '180.234.72.192', '2011-04-17 04:58:11');
INSERT INTO `session` VALUES ('266', 'admin', '180.234.73.122', '2011-04-17 07:06:57');
INSERT INTO `session` VALUES ('267', 'admin', '180.234.51.217', '2011-04-17 07:22:15');
INSERT INTO `session` VALUES ('268', 'admin', '180.234.51.217', '2011-04-17 07:26:27');
INSERT INTO `session` VALUES ('269', 'admin', '180.234.51.217', '2011-04-17 07:48:12');
INSERT INTO `session` VALUES ('270', 'admin', '180.234.51.217', '2011-04-17 07:49:01');
INSERT INTO `session` VALUES ('271', 'admin', '180.234.51.217', '2011-04-17 07:57:12');
INSERT INTO `session` VALUES ('272', 'admin', '180.234.51.217', '2011-04-17 08:01:57');
INSERT INTO `session` VALUES ('273', 'admin', '180.234.45.38', '2011-04-17 23:44:39');
INSERT INTO `session` VALUES ('274', 'admin', '180.234.51.97', '2011-04-18 02:38:39');
INSERT INTO `session` VALUES ('275', 'admin', '180.234.91.72', '2011-04-18 04:39:57');
INSERT INTO `session` VALUES ('276', 'admin', '180.234.86.120', '2011-04-18 05:36:55');
INSERT INTO `session` VALUES ('277', 'admin', '127.0.0.1', '2011-04-18 22:58:48');
INSERT INTO `session` VALUES ('278', 'admin', '127.0.0.1', '2011-04-19 00:53:40');
INSERT INTO `session` VALUES ('279', 'admin', '127.0.0.1', '2011-04-19 01:02:22');
INSERT INTO `session` VALUES ('280', 'admin', '127.0.0.1', '2011-04-19 22:42:00');
INSERT INTO `session` VALUES ('281', 'admin', '127.0.0.1', '2011-04-20 01:16:59');
INSERT INTO `session` VALUES ('282', 'admin', '127.0.0.1', '2011-04-20 01:40:27');
INSERT INTO `session` VALUES ('283', 'admin', '127.0.0.1', '2011-04-20 02:11:47');
INSERT INTO `session` VALUES ('284', 'admin', '127.0.0.1', '2011-04-23 22:48:51');
INSERT INTO `session` VALUES ('285', 'admin', '127.0.0.1', '2011-04-25 11:49:58');
INSERT INTO `session` VALUES ('286', 'admin', '127.0.0.1', '2011-04-26 15:31:45');
INSERT INTO `session` VALUES ('287', 'admin', '127.0.0.1', '2011-04-26 20:13:39');
INSERT INTO `session` VALUES ('288', 'admin', '127.0.0.1', '2011-04-26 20:30:44');
INSERT INTO `session` VALUES ('289', 'admin', '127.0.0.1', '2011-04-27 11:03:22');
INSERT INTO `session` VALUES ('290', 'admin', '127.0.0.1', '2011-04-27 12:22:28');
INSERT INTO `session` VALUES ('291', 'admin', '127.0.0.1', '2011-04-27 12:43:19');
INSERT INTO `session` VALUES ('292', 'admin', '127.0.0.1', '2011-04-28 10:59:02');
INSERT INTO `session` VALUES ('293', 'admin', '127.0.0.1', '2011-04-28 15:18:40');
INSERT INTO `session` VALUES ('294', 'admin', '127.0.0.1', '2011-05-02 18:06:43');
INSERT INTO `session` VALUES ('295', 'admin', '127.0.0.1', '2011-05-03 12:33:19');
INSERT INTO `session` VALUES ('296', 'admin', '127.0.0.1', '2011-05-03 15:28:55');
INSERT INTO `session` VALUES ('297', 'admin', '127.0.0.1', '2011-05-03 15:33:11');
INSERT INTO `session` VALUES ('298', 'admin', '127.0.0.1', '2011-05-03 19:01:00');
INSERT INTO `session` VALUES ('299', 'admin', '127.0.0.1', '2011-05-04 11:01:00');
INSERT INTO `session` VALUES ('300', 'admin', '127.0.0.1', '2011-05-04 13:41:54');
INSERT INTO `session` VALUES ('301', 'admin', '127.0.0.1', '2011-05-04 16:12:16');
INSERT INTO `session` VALUES ('302', 'admin', '127.0.0.1', '2011-05-05 13:00:22');
INSERT INTO `session` VALUES ('303', 'admin', '127.0.0.1', '2011-05-07 14:54:05');
INSERT INTO `session` VALUES ('304', 'admin', '127.0.0.1', '2011-05-07 15:03:30');
INSERT INTO `session` VALUES ('305', 'admin', '127.0.0.1', '2011-05-11 12:01:37');
INSERT INTO `session` VALUES ('306', 'admin', '127.0.0.1', '2011-05-18 20:53:19');
INSERT INTO `session` VALUES ('307', 'admin', '127.0.0.1', '2011-06-18 22:06:09');
INSERT INTO `session` VALUES ('308', 'admin', '127.0.0.1', '2011-06-18 22:55:22');
INSERT INTO `session` VALUES ('309', 'admin', '127.0.0.1', '2011-07-13 12:18:10');
INSERT INTO `session` VALUES ('310', 'admin', '127.0.0.1', '2011-07-13 16:21:23');
INSERT INTO `session` VALUES ('311', 'admin', '127.0.0.1', '2011-07-13 17:43:29');
INSERT INTO `session` VALUES ('312', 'admin', '127.0.0.1', '2011-07-14 10:24:46');
INSERT INTO `session` VALUES ('313', 'admin', '127.0.0.1', '2011-07-14 12:40:58');
INSERT INTO `session` VALUES ('314', 'admin', '127.0.0.1', '2011-07-14 15:11:17');
INSERT INTO `session` VALUES ('315', 'admin', '127.0.0.1', '2011-07-16 10:46:09');
INSERT INTO `session` VALUES ('316', 'admin', '127.0.0.1', '2011-07-16 14:26:55');
INSERT INTO `session` VALUES ('317', 'admin', '127.0.0.1', '2011-07-21 16:49:49');
INSERT INTO `session` VALUES ('318', 'admin', '127.0.0.1', '2011-07-21 17:42:32');
INSERT INTO `session` VALUES ('319', 'admin', '127.0.0.1', '2011-07-22 10:24:58');
INSERT INTO `session` VALUES ('320', 'admin', '127.0.0.1', '2011-07-22 17:43:13');
INSERT INTO `session` VALUES ('321', 'admin', '127.0.0.1', '2011-07-23 11:23:09');
INSERT INTO `session` VALUES ('322', 'admin', '127.0.0.1', '2011-07-23 13:04:05');
INSERT INTO `session` VALUES ('323', 'admin', '127.0.0.1', '2011-07-23 20:29:10');
INSERT INTO `session` VALUES ('324', 'admin', '127.0.0.1', '2011-07-23 21:47:28');
INSERT INTO `session` VALUES ('325', 'admin', '127.0.0.1', '2011-07-23 22:02:05');
INSERT INTO `session` VALUES ('326', 'admin', '127.0.0.1', '2011-08-08 11:29:49');
INSERT INTO `session` VALUES ('327', 'admin', '127.0.0.1', '2011-08-08 15:05:43');
INSERT INTO `session` VALUES ('328', 'admin', '127.0.0.1', '2011-08-08 17:21:39');
INSERT INTO `session` VALUES ('329', 'admin', '127.0.0.1', '2011-08-09 11:06:54');
INSERT INTO `session` VALUES ('330', 'admin', '127.0.0.1', '2011-08-09 11:35:40');
INSERT INTO `session` VALUES ('331', '123', '127.0.0.1', '2011-08-09 14:04:04');
INSERT INTO `session` VALUES ('332', 'admin', '127.0.0.1', '2011-08-09 14:07:57');
INSERT INTO `session` VALUES ('333', '1234', '127.0.0.1', '2011-08-09 14:08:49');
INSERT INTO `session` VALUES ('334', '123', '127.0.0.1', '2011-08-09 14:09:59');
INSERT INTO `session` VALUES ('335', 'admin', '127.0.0.1', '2011-08-09 14:10:23');
INSERT INTO `session` VALUES ('336', 'admin', '127.0.0.1', '2011-08-09 17:09:54');
INSERT INTO `session` VALUES ('337', 'admin', '172.16.28.68', '2011-08-10 09:40:39');
INSERT INTO `session` VALUES ('338', 'admin', '172.16.28.68', '2011-08-10 09:48:48');
INSERT INTO `session` VALUES ('339', 'admin', '172.16.28.68', '2011-08-10 15:06:39');
INSERT INTO `session` VALUES ('340', 'Gen User', '172.16.28.68', '2011-08-10 15:30:22');
INSERT INTO `session` VALUES ('341', 'admin', '172.16.28.68', '2011-08-10 15:44:17');
INSERT INTO `session` VALUES ('342', 'admin', '172.16.28.68', '2011-08-10 19:36:46');
INSERT INTO `session` VALUES ('343', 'Gen User', '172.16.28.68', '2011-08-10 22:39:40');
INSERT INTO `session` VALUES ('344', 'admin', '172.16.28.68', '2011-08-10 22:40:41');
INSERT INTO `session` VALUES ('345', 'admin', '172.16.28.68', '2011-08-10 23:24:28');
INSERT INTO `session` VALUES ('346', 'admin', '172.16.28.68', '2011-08-11 15:42:37');
INSERT INTO `session` VALUES ('347', 'admin', '172.16.28.68', '2011-08-11 23:07:23');
INSERT INTO `session` VALUES ('348', 'admin', '127.0.0.1', '2011-08-13 16:19:22');
INSERT INTO `session` VALUES ('349', 'admin', '172.16.28.68', '2011-08-13 22:43:07');
INSERT INTO `session` VALUES ('350', 'admin', '172.16.28.68', '2011-08-13 22:54:10');
INSERT INTO `session` VALUES ('351', 'admin', '172.16.28.68', '2011-08-14 12:36:19');
INSERT INTO `session` VALUES ('352', 'admin', '172.16.28.68', '2011-08-14 15:05:28');
INSERT INTO `session` VALUES ('353', 'admin', '172.16.28.68', '2011-08-16 10:24:49');
INSERT INTO `session` VALUES ('354', 'admin', '172.16.28.68', '2011-08-16 15:10:44');
INSERT INTO `session` VALUES ('355', 'admin', '172.16.28.68', '2011-08-17 01:00:27');
INSERT INTO `session` VALUES ('356', 'admin', '172.16.28.68', '2011-08-17 22:18:13');
INSERT INTO `session` VALUES ('357', 'admin', '172.16.28.68', '2011-08-19 19:55:49');
INSERT INTO `session` VALUES ('358', 'admin', '172.16.28.68', '2011-09-11 22:08:37');
INSERT INTO `session` VALUES ('359', 'gso1', '172.16.28.68', '2011-09-11 22:34:00');
INSERT INTO `session` VALUES ('360', 'admin', '172.16.28.68', '2011-09-11 22:35:25');
INSERT INTO `session` VALUES ('361', 'admin', '172.16.28.205', '2011-09-19 13:12:39');
INSERT INTO `session` VALUES ('362', 'admin', '172.16.28.238', '2011-09-23 10:01:27');
INSERT INTO `session` VALUES ('363', 'admin', '172.16.28.68', '2011-09-23 11:03:36');
INSERT INTO `session` VALUES ('364', 'Term/Pl Comd', '172.16.28.68', '2011-09-23 12:42:08');
INSERT INTO `session` VALUES ('365', 'admin', '172.16.28.199', '2011-09-23 16:28:48');
INSERT INTO `session` VALUES ('366', 'admin', '172.16.28.68', '2011-09-23 16:36:51');
INSERT INTO `session` VALUES ('367', 'admin', '172.16.28.68', '2011-09-23 16:39:25');
INSERT INTO `session` VALUES ('368', 'admin', '172.16.28.68', '2011-09-23 16:40:15');
INSERT INTO `session` VALUES ('369', 'admin', '172.16.28.68', '2011-09-23 16:42:11');
INSERT INTO `session` VALUES ('370', 'admin', '172.16.28.68', '2011-09-23 16:44:41');
INSERT INTO `session` VALUES ('371', 'admin', '172.16.28.199', '2011-09-23 16:47:36');
INSERT INTO `session` VALUES ('372', 'admin', '172.16.28.199', '2011-09-23 16:48:14');
INSERT INTO `session` VALUES ('373', 'admin', '172.16.28.68', '2011-09-23 16:49:38');
INSERT INTO `session` VALUES ('374', 'admin', '172.16.28.199', '2011-09-23 16:53:28');
INSERT INTO `session` VALUES ('375', 'admin', '172.16.28.68', '2011-09-23 16:54:20');
INSERT INTO `session` VALUES ('376', 'admin', '172.16.28.68', '2011-09-23 17:22:49');
INSERT INTO `session` VALUES ('377', 'admin', '127.0.0.1', '2011-09-23 20:31:06');
INSERT INTO `session` VALUES ('378', 'admin', '127.0.0.1', '2011-09-23 20:42:38');
INSERT INTO `session` VALUES ('379', 'admin', '172.16.28.199', '2011-09-24 11:36:26');
INSERT INTO `session` VALUES ('380', 'admin', '172.16.28.68', '2011-09-24 13:48:33');
INSERT INTO `session` VALUES ('381', 'admin', '127.0.0.1', '2011-09-24 14:21:47');
INSERT INTO `session` VALUES ('382', 'admin', '172.16.28.68', '2011-09-24 14:25:21');
INSERT INTO `session` VALUES ('383', 'admin', '172.16.28.68', '2011-09-24 14:36:11');
INSERT INTO `session` VALUES ('384', 'samad', '172.16.28.68', '2011-09-24 14:38:48');
INSERT INTO `session` VALUES ('385', 'admin', '172.16.28.68', '2011-09-24 14:47:08');
INSERT INTO `session` VALUES ('386', 'samad1', '172.16.28.68', '2011-09-24 14:47:57');
INSERT INTO `session` VALUES ('387', 'admin', '172.16.28.68', '2011-09-24 14:48:42');
INSERT INTO `session` VALUES ('388', 'samad1', '172.16.28.68', '2011-09-24 15:17:00');
INSERT INTO `session` VALUES ('389', 'admin', '172.16.28.68', '2011-09-24 15:42:54');
INSERT INTO `session` VALUES ('390', 'admin', '172.16.28.68', '2011-09-24 15:43:51');
INSERT INTO `session` VALUES ('391', 'samad', '172.16.28.68', '2011-09-24 15:44:07');
INSERT INTO `session` VALUES ('392', 'samad', '172.16.28.68', '2011-09-24 15:47:48');
INSERT INTO `session` VALUES ('393', 'samad', '172.16.28.68', '2011-09-24 15:53:56');
INSERT INTO `session` VALUES ('394', 'admin', '172.16.28.68', '2011-09-24 16:04:12');
INSERT INTO `session` VALUES ('395', 'admin', '172.16.28.68', '2011-09-24 17:58:46');
INSERT INTO `session` VALUES ('396', 'admin', '127.0.0.1', '2011-09-24 19:26:15');
INSERT INTO `session` VALUES ('397', 'admin', '127.0.0.1', '2011-09-24 19:56:27');
INSERT INTO `session` VALUES ('398', 'admin', '172.16.28.68', '2011-09-24 19:59:32');
INSERT INTO `session` VALUES ('399', 'admin', '172.16.28.68', '2011-09-24 20:03:57');
INSERT INTO `session` VALUES ('400', 'admin', '172.16.28.68', '2011-09-24 20:35:19');
INSERT INTO `session` VALUES ('401', 'samad1', '172.16.28.68', '2011-09-24 20:38:26');
INSERT INTO `session` VALUES ('402', 'samad', '172.16.28.68', '2011-09-24 20:39:04');
INSERT INTO `session` VALUES ('403', 'admin', '172.16.28.68', '2011-09-24 20:40:53');
INSERT INTO `session` VALUES ('404', 'admin', '172.16.28.235', '2011-09-24 21:17:44');
INSERT INTO `session` VALUES ('405', 'samad1', '172.16.28.68', '2011-09-24 21:39:14');
INSERT INTO `session` VALUES ('406', 'admin', '127.0.0.1', '2011-09-24 22:03:46');
INSERT INTO `session` VALUES ('407', 'admin', '172.16.28.68', '2011-09-24 22:07:08');
INSERT INTO `session` VALUES ('408', 'admin', '172.16.28.68', '2011-09-25 08:05:50');
INSERT INTO `session` VALUES ('409', 'admin', '172.16.28.68', '2011-09-26 00:56:11');
INSERT INTO `session` VALUES ('410', 'samad', '172.16.28.68', '2011-09-26 02:32:58');
INSERT INTO `session` VALUES ('411', 'admin', '172.16.28.68', '2011-09-26 02:48:14');
INSERT INTO `session` VALUES ('412', 'admin', '172.16.28.55', '2011-09-26 13:31:29');
INSERT INTO `session` VALUES ('413', 'admin', '172.16.28.55', '2011-09-26 13:37:16');
INSERT INTO `session` VALUES ('414', 'admin', '172.16.28.68', '2011-09-26 20:00:58');
INSERT INTO `session` VALUES ('415', 'admin', '172.16.28.68', '2011-09-26 23:37:58');
INSERT INTO `session` VALUES ('416', 'samad', '172.16.28.68', '2011-09-27 00:11:26');
INSERT INTO `session` VALUES ('417', 'samad1', '172.16.28.68', '2011-09-27 00:11:51');
INSERT INTO `session` VALUES ('418', 'admin', '172.16.28.68', '2011-09-27 00:12:25');
INSERT INTO `session` VALUES ('419', 'admin', '172.16.28.68', '2011-09-27 00:21:30');
INSERT INTO `session` VALUES ('420', 'admin', '172.16.28.199', '2011-09-27 12:01:57');
INSERT INTO `session` VALUES ('421', 'admin', '172.16.28.199', '2011-09-27 12:03:12');
INSERT INTO `session` VALUES ('422', 'gen_user_1', '172.16.28.199', '2011-09-27 12:07:45');
INSERT INTO `session` VALUES ('423', 'adv_user_1', '172.16.28.199', '2011-09-27 12:09:49');
INSERT INTO `session` VALUES ('424', 'gen_user_1', '172.16.28.199', '2011-09-27 12:32:48');
INSERT INTO `session` VALUES ('425', 'adv_user_1', '172.16.28.199', '2011-09-27 12:33:18');
INSERT INTO `session` VALUES ('426', 'gen_user_1', '172.16.28.199', '2011-09-27 13:25:40');
INSERT INTO `session` VALUES ('427', 'admin', '172.16.28.68', '2011-09-27 13:26:16');
INSERT INTO `session` VALUES ('428', 'gen_user_1', '172.16.28.199', '2011-09-27 13:58:33');
INSERT INTO `session` VALUES ('429', 'admin', '172.16.28.199', '2011-09-27 14:02:41');
INSERT INTO `session` VALUES ('430', 'gen_user_1', '172.16.28.199', '2011-09-27 14:06:53');
INSERT INTO `session` VALUES ('431', 'admin', '172.16.28.199', '2011-09-27 14:08:34');
INSERT INTO `session` VALUES ('432', 'gen_user_1', '172.16.28.199', '2011-09-28 11:08:54');
INSERT INTO `session` VALUES ('433', 'gen_user_1', '172.16.28.199', '2011-09-28 14:14:41');
INSERT INTO `session` VALUES ('434', 'samad', '172.16.28.68', '2011-09-29 00:11:32');
INSERT INTO `session` VALUES ('435', 'samad1', '172.16.28.68', '2011-09-29 00:11:47');
INSERT INTO `session` VALUES ('436', 'gen_user_1', '172.16.28.235', '2011-09-29 00:23:07');
INSERT INTO `session` VALUES ('437', 'samad1', '172.16.28.68', '2011-09-29 00:24:51');
INSERT INTO `session` VALUES ('438', 'admin', '127.0.0.1', '2011-09-29 00:28:38');
INSERT INTO `session` VALUES ('439', 'admin', '172.16.28.68', '2011-09-29 00:28:45');
INSERT INTO `session` VALUES ('440', 'admin', '172.16.28.68', '2011-09-29 00:32:59');
INSERT INTO `session` VALUES ('441', 'admin', '172.16.28.68', '2011-09-29 00:33:12');
INSERT INTO `session` VALUES ('442', 'admin', '172.16.28.68', '2011-09-29 01:44:40');
INSERT INTO `session` VALUES ('443', 'admin', '172.16.28.199', '2011-09-29 09:20:02');
INSERT INTO `session` VALUES ('444', 'admin', '172.16.28.199', '2011-09-29 10:26:15');
INSERT INTO `session` VALUES ('445', 'admin', '172.16.28.68', '2011-09-29 11:45:43');
INSERT INTO `session` VALUES ('446', 'admin', '172.16.28.68', '2011-09-29 11:51:52');
INSERT INTO `session` VALUES ('447', 'admin', '172.16.28.203', '2011-09-29 12:57:21');
INSERT INTO `session` VALUES ('448', 'admin', '172.16.28.12', '2011-09-29 14:15:57');
INSERT INTO `session` VALUES ('449', 'nazrul', '172.16.28.12', '2011-09-29 14:18:58');
INSERT INTO `session` VALUES ('450', 'admin', '172.16.28.227', '2011-09-29 14:23:20');
INSERT INTO `session` VALUES ('451', 'admin', '172.16.28.227', '2011-09-29 14:24:50');
INSERT INTO `session` VALUES ('452', 'sadat', '172.16.28.120', '2011-09-30 12:52:18');
INSERT INTO `session` VALUES ('453', 'sadat', '172.16.28.120', '2011-09-30 12:59:58');
INSERT INTO `session` VALUES ('454', 'sadat', '172.16.28.120', '2011-09-30 14:35:52');
INSERT INTO `session` VALUES ('455', 'sadat', '172.16.28.120', '2011-09-30 14:37:03');
INSERT INTO `session` VALUES ('456', 'sadat', '172.16.28.120', '2011-09-30 14:37:42');
INSERT INTO `session` VALUES ('457', 'sadat', '172.16.28.120', '2011-09-30 14:38:09');
INSERT INTO `session` VALUES ('458', 'sadat', '172.16.28.120', '2011-09-30 14:49:02');
INSERT INTO `session` VALUES ('459', 'sadat', '172.16.28.120', '2011-09-30 14:49:25');
INSERT INTO `session` VALUES ('460', 'sadat', '172.16.28.120', '2011-09-30 14:59:59');
INSERT INTO `session` VALUES ('461', 'sadat', '172.16.28.120', '2011-10-01 21:00:32');
INSERT INTO `session` VALUES ('462', 'admin', '172.16.28.68', '2011-10-03 12:32:31');
INSERT INTO `session` VALUES ('463', 'sadat', '172.16.28.120', '2011-10-03 13:06:39');
INSERT INTO `session` VALUES ('464', 'sadat', '172.16.28.120', '2011-10-03 17:38:03');
INSERT INTO `session` VALUES ('465', 'sadat', '172.16.28.120', '2011-10-03 18:06:23');
INSERT INTO `session` VALUES ('466', 'sadat', '172.16.28.120', '2011-10-03 18:12:00');
INSERT INTO `session` VALUES ('467', 'sadat', '172.16.28.120', '2011-10-03 21:23:27');
INSERT INTO `session` VALUES ('468', 'sadat', '172.16.28.227', '2011-10-04 22:48:23');
INSERT INTO `session` VALUES ('469', 'sadat', '172.16.28.120', '2011-10-05 22:38:45');
INSERT INTO `session` VALUES ('470', 'nazrul', '172.16.28.12', '2011-10-07 20:45:10');
INSERT INTO `session` VALUES ('471', 'sadat', '172.16.28.120', '2011-10-09 23:42:19');
INSERT INTO `session` VALUES ('472', '6483', '127.0.0.1', '2011-10-10 00:38:46');
INSERT INTO `session` VALUES ('473', '6299', '172.16.28.64', '2011-10-10 10:21:34');
INSERT INTO `session` VALUES ('474', '6098', '172.16.28.155', '2011-10-10 10:21:57');
INSERT INTO `session` VALUES ('475', '6103', '172.16.28.20', '2011-10-10 10:23:05');
INSERT INTO `session` VALUES ('476', '6181', '172.16.28.5', '2011-10-10 10:31:25');
INSERT INTO `session` VALUES ('477', 'sadat', '172.16.28.120', '2011-10-11 21:20:45');
INSERT INTO `session` VALUES ('478', 'nazrul', '172.16.28.12', '2011-10-11 22:10:41');
INSERT INTO `session` VALUES ('479', 'admin', '172.16.28.18', '2011-10-14 14:28:14');
INSERT INTO `session` VALUES ('480', 'admin', '172.16.28.18', '2011-10-14 22:10:28');
INSERT INTO `session` VALUES ('481', 'rakib', '172.16.28.18', '2011-10-14 22:14:04');
INSERT INTO `session` VALUES ('482', 'admin', '172.16.28.18', '2011-10-14 22:15:10');
INSERT INTO `session` VALUES ('483', 'rakib', '172.16.28.18', '2011-10-14 22:18:51');
INSERT INTO `session` VALUES ('484', 'admin', '172.16.28.18', '2011-10-14 22:19:27');
INSERT INTO `session` VALUES ('485', 'rakib', '172.16.28.18', '2011-10-14 22:23:10');
INSERT INTO `session` VALUES ('486', 'admin', '172.16.28.18', '2011-10-14 22:25:59');
INSERT INTO `session` VALUES ('487', 'admin', '172.16.28.18', '2011-10-14 22:26:19');
INSERT INTO `session` VALUES ('488', 'bncomd', '172.16.28.18', '2011-10-14 23:29:43');
INSERT INTO `session` VALUES ('489', 'admin', '172.16.28.18', '2011-10-14 23:29:51');
INSERT INTO `session` VALUES ('490', 'admin', '172.16.28.95', '2011-10-16 13:58:08');
INSERT INTO `session` VALUES ('491', 'omaha', '172.16.28.95', '2011-10-16 13:59:47');
INSERT INTO `session` VALUES ('492', 'admin', '172.16.28.95', '2011-10-16 14:00:01');
INSERT INTO `session` VALUES ('493', 'omaha', '172.16.28.155', '2011-10-16 14:00:52');
INSERT INTO `session` VALUES ('494', 'omaha', '172.16.28.155', '2011-10-17 08:19:53');
INSERT INTO `session` VALUES ('495', 'omaha', '172.16.28.155', '2011-10-17 08:21:38');
INSERT INTO `session` VALUES ('496', 'omaha', '172.16.28.155', '2011-10-17 10:08:32');
INSERT INTO `session` VALUES ('497', 'omaha', '172.16.28.155', '2011-10-17 10:40:13');
INSERT INTO `session` VALUES ('498', 'omaha', '172.16.28.155', '2011-10-17 10:49:08');
INSERT INTO `session` VALUES ('499', 'omaha', '172.16.28.155', '2011-10-17 12:44:41');
INSERT INTO `session` VALUES ('500', 'admin', '172.16.29.195', '2011-10-17 14:00:23');
INSERT INTO `session` VALUES ('501', 'solaiman6292', '172.16.29.195', '2011-10-17 14:02:36');
INSERT INTO `session` VALUES ('502', 'solaiman6292', '172.16.28.3', '2011-10-17 14:06:22');
INSERT INTO `session` VALUES ('503', 'admin', '172.16.29.195', '2011-10-17 14:12:17');
INSERT INTO `session` VALUES ('504', 'plcomdh1', '172.16.29.195', '2011-10-17 14:13:21');
INSERT INTO `session` VALUES ('505', 'solaiman6292', '172.16.28.3', '2011-10-17 19:03:40');
INSERT INTO `session` VALUES ('506', 'plcomdh1', '172.16.28.61', '2011-10-17 19:04:14');
INSERT INTO `session` VALUES ('507', 'omaha', '172.16.28.155', '2011-10-17 19:50:46');
INSERT INTO `session` VALUES ('508', 'omaha', '172.16.28.155', '2011-10-17 19:57:39');
INSERT INTO `session` VALUES ('509', 'omaha', '172.16.28.155', '2011-10-17 20:09:06');
INSERT INTO `session` VALUES ('510', 'omaha', '172.16.28.155', '2011-10-18 08:36:07');
INSERT INTO `session` VALUES ('511', 'omaha', '172.16.28.155', '2011-10-18 19:34:06');
INSERT INTO `session` VALUES ('512', 'admin', '172.16.28.18', '2011-10-18 22:42:32');
INSERT INTO `session` VALUES ('513', 'omaha', '172.16.28.155', '2011-10-19 08:59:11');
INSERT INTO `session` VALUES ('514', 'omaha', '172.16.28.155', '2011-10-19 09:24:53');
INSERT INTO `session` VALUES ('515', 'rakib', '172.16.29.192', '2011-10-19 09:38:26');
INSERT INTO `session` VALUES ('516', 'admin', '172.16.29.192', '2011-10-19 10:01:26');
INSERT INTO `session` VALUES ('517', 'admin', '172.16.29.192', '2011-10-19 13:29:10');
INSERT INTO `session` VALUES ('518', 'admin', '172.16.28.18', '2011-10-19 17:48:41');
INSERT INTO `session` VALUES ('519', '3936', '172.16.28.18', '2011-10-19 17:55:19');
INSERT INTO `session` VALUES ('520', 'admin', '172.16.28.18', '2011-10-19 17:55:33');
INSERT INTO `session` VALUES ('521', '3936', '172.16.28.18', '2011-10-19 17:56:10');
INSERT INTO `session` VALUES ('522', 'admin', '172.16.28.18', '2011-10-19 17:56:35');
INSERT INTO `session` VALUES ('523', 'admin', '172.16.28.18', '2011-10-19 18:41:38');
INSERT INTO `session` VALUES ('524', 'solaiman6292', '172.16.28.3', '2011-10-20 08:58:46');
INSERT INTO `session` VALUES ('525', 'plcomdh1', '172.16.28.61', '2011-10-20 11:31:22');
INSERT INTO `session` VALUES ('526', 'solaiman6292', '172.16.28.3', '2011-10-22 11:41:12');
INSERT INTO `session` VALUES ('527', 'admin', '172.16.28.18', '2011-10-22 22:30:36');
INSERT INTO `session` VALUES ('528', 'solaiman6292', '172.16.28.3', '2011-10-23 07:53:17');
INSERT INTO `session` VALUES ('529', 'solaiman6292', '172.16.28.3', '2011-10-24 08:17:33');
INSERT INTO `session` VALUES ('530', 'plcomdh1', '172.16.28.61', '2011-10-24 09:09:21');
INSERT INTO `session` VALUES ('531', 'plcomdh1', '172.16.28.61', '2011-10-24 12:03:13');
INSERT INTO `session` VALUES ('532', 'plcomdh1', '172.16.28.61', '2011-10-24 12:04:46');
INSERT INTO `session` VALUES ('533', 'plcomdh1', '172.16.28.61', '2011-10-25 08:51:33');
INSERT INTO `session` VALUES ('534', 'admin', '172.16.29.192', '2011-10-25 13:09:52');
INSERT INTO `session` VALUES ('535', 'admin', '172.16.28.18', '2011-10-25 17:09:53');
INSERT INTO `session` VALUES ('536', 'admin', '172.16.28.18', '2011-10-25 20:09:08');
INSERT INTO `session` VALUES ('537', 'nazrul', '172.16.28.12', '2011-10-25 20:58:24');
INSERT INTO `session` VALUES ('538', 'plcomdh1', '172.16.28.61', '2011-10-25 21:24:53');
INSERT INTO `session` VALUES ('539', 'plcomdh1', '172.16.28.61', '2011-10-25 22:01:09');
INSERT INTO `session` VALUES ('540', 'plcomdh1', '172.16.28.61', '2011-10-25 22:05:05');
INSERT INTO `session` VALUES ('541', 'admin', '172.16.29.198', '2011-10-25 22:06:35');
INSERT INTO `session` VALUES ('542', 'pt_admin', '172.16.29.198', '2011-10-25 22:09:22');
INSERT INTO `session` VALUES ('543', 'wt_admin', '172.16.29.198', '2011-10-25 22:09:32');
INSERT INTO `session` VALUES ('544', 'wt_admin', '172.16.28.97', '2011-10-25 22:12:59');
INSERT INTO `session` VALUES ('545', 'plcomdh1', '172.16.28.61', '2011-10-25 22:13:16');
INSERT INTO `session` VALUES ('546', 'wt_admin', '172.16.29.198', '2011-10-25 22:14:17');
INSERT INTO `session` VALUES ('547', 'plcomdh1', '172.16.28.61', '2011-10-25 22:55:14');
INSERT INTO `session` VALUES ('548', 'plcomdh1', '172.16.28.61', '2011-10-25 22:56:00');
INSERT INTO `session` VALUES ('549', 'pt_admin', '172.16.28.68', '2011-10-25 23:16:47');
INSERT INTO `session` VALUES ('550', 'pt_admin', '172.16.28.68', '2011-10-25 23:17:37');
INSERT INTO `session` VALUES ('551', 'wt_admin', '172.16.28.97', '2011-10-26 08:21:25');
INSERT INTO `session` VALUES ('552', 'admin', '172.16.29.192', '2011-10-26 10:52:08');
INSERT INTO `session` VALUES ('553', 'wt_admin', '172.16.28.97', '2011-10-26 21:17:00');
INSERT INTO `session` VALUES ('554', 'admin', '172.16.28.18', '2011-10-26 23:25:18');
INSERT INTO `session` VALUES ('555', 'wt_admin', '172.16.28.97', '2011-10-27 12:33:39');
INSERT INTO `session` VALUES ('556', 'admin', '172.16.29.194', '2011-10-27 14:27:05');
INSERT INTO `session` VALUES ('557', 'admin', '172.16.28.18', '2011-10-29 11:12:31');
INSERT INTO `session` VALUES ('558', 'rakib', '172.16.28.18', '2011-10-29 11:15:53');
INSERT INTO `session` VALUES ('559', 'admin', '172.16.28.18', '2011-10-29 11:17:29');
INSERT INTO `session` VALUES ('560', 'solaiman6292', '172.16.28.3', '2011-10-29 18:43:50');
INSERT INTO `session` VALUES ('561', 'wt_admin', '127.0.0.1', '2011-10-29 19:24:59');
INSERT INTO `session` VALUES ('562', 'wt_admin', '172.16.28.97', '2011-10-29 20:05:20');
INSERT INTO `session` VALUES ('563', 'plcomdh1', '172.16.28.61', '2011-10-30 08:39:04');
INSERT INTO `session` VALUES ('564', 'pt_admin', '127.0.0.1', '2011-10-30 11:28:38');
INSERT INTO `session` VALUES ('565', 'solaiman6292', '172.16.28.3', '2011-10-30 11:53:15');
INSERT INTO `session` VALUES ('566', 'admin', '172.16.29.192', '2011-10-30 13:58:05');
INSERT INTO `session` VALUES ('567', 'rakib', '172.16.29.192', '2011-10-30 13:58:30');
INSERT INTO `session` VALUES ('568', 'admin', '172.16.29.192', '2011-10-30 13:58:48');
INSERT INTO `session` VALUES ('569', 'solaiman6292', '172.16.28.3', '2011-10-30 14:14:53');
INSERT INTO `session` VALUES ('570', 'wt_admin', '172.16.28.97', '2011-10-31 11:55:29');
INSERT INTO `session` VALUES ('571', 'wt_admin', '172.16.28.97', '2011-10-31 21:01:22');
INSERT INTO `session` VALUES ('572', 'pt_admin', '172.16.28.205', '2011-10-31 21:23:54');
INSERT INTO `session` VALUES ('573', 'solaiman6292', '172.16.28.3', '2011-11-01 14:20:37');
INSERT INTO `session` VALUES ('574', 'omaha', '172.16.28.155', '2011-11-03 12:00:17');
INSERT INTO `session` VALUES ('575', 'omaha', '172.16.28.155', '2011-11-03 12:03:05');
INSERT INTO `session` VALUES ('576', 'solaiman6292', '172.16.28.3', '2011-11-05 11:03:10');
INSERT INTO `session` VALUES ('577', 'pt_admin', '172.16.28.209', '2011-11-05 21:50:36');
INSERT INTO `session` VALUES ('578', 'wt_admin', '172.16.28.97', '2011-11-09 20:58:31');
INSERT INTO `session` VALUES ('579', 'solaiman6292', '172.16.28.3', '2011-11-10 11:05:23');
INSERT INTO `session` VALUES ('580', 'solaiman6292', '172.16.28.3', '2011-11-13 12:03:52');
INSERT INTO `session` VALUES ('581', 'admin', '172.16.29.192', '2011-11-13 14:22:19');
INSERT INTO `session` VALUES ('582', 'rakib', '172.16.29.192', '2011-11-13 14:26:18');
INSERT INTO `session` VALUES ('583', 'wt_admin', '127.0.0.1', '2011-11-14 00:08:23');
INSERT INTO `session` VALUES ('584', 'rakib', '172.16.29.192', '2011-11-14 09:33:57');
INSERT INTO `session` VALUES ('585', 'admin', '172.16.29.192', '2011-11-14 09:35:42');
INSERT INTO `session` VALUES ('586', 'pt_admin', '172.16.28.205', '2011-11-14 09:45:34');
INSERT INTO `session` VALUES ('587', 'test_gc_gen', '172.16.29.192', '2011-11-14 09:54:00');
INSERT INTO `session` VALUES ('588', 'test_pt_gen', '172.16.29.192', '2011-11-14 09:55:27');
INSERT INTO `session` VALUES ('589', 'test_pt_adv', '172.16.28.205', '2011-11-14 10:09:23');
INSERT INTO `session` VALUES ('590', 'test_pt_gen', '172.16.28.205', '2011-11-14 10:10:38');
INSERT INTO `session` VALUES ('591', 'admin', '172.16.29.192', '2011-11-14 10:17:12');
INSERT INTO `session` VALUES ('592', 'admin', '172.16.29.192', '2011-11-14 10:20:07');
INSERT INTO `session` VALUES ('593', 'pt_admin', '172.16.28.205', '2011-11-15 13:20:59');
INSERT INTO `session` VALUES ('594', 'wt_admin', '127.0.0.1', '2011-11-18 10:59:19');
INSERT INTO `session` VALUES ('595', 'admin', '172.16.28.242', '2011-11-20 10:15:10');
INSERT INTO `session` VALUES ('596', 'solaiman6292', '172.16.28.3', '2011-11-21 18:56:53');
INSERT INTO `session` VALUES ('597', 'pt_admin', '172.16.28.209', '2011-11-21 23:53:10');
INSERT INTO `session` VALUES ('598', 'plcomdh1', '172.16.28.61', '2011-11-22 10:03:32');
INSERT INTO `session` VALUES ('599', 'admin', '172.16.28.242', '2011-11-23 11:06:45');
INSERT INTO `session` VALUES ('600', 'pt_admin', '172.16.28.205', '2011-11-23 12:52:11');
INSERT INTO `session` VALUES ('601', 'solaiman6292', '172.16.28.3', '2011-11-23 12:53:21');
INSERT INTO `session` VALUES ('602', 'admin', '127.0.0.1', '2011-11-23 13:41:09');
INSERT INTO `session` VALUES ('603', 'admin', '172.16.28.205', '2011-11-23 14:15:48');
INSERT INTO `session` VALUES ('604', 'admin', '127.0.0.1', '2011-11-23 19:16:21');
INSERT INTO `session` VALUES ('605', 'admin', '172.16.29.178', '2011-11-23 19:18:15');
INSERT INTO `session` VALUES ('606', 'test', '172.16.29.178', '2011-11-23 19:25:25');
INSERT INTO `session` VALUES ('607', 'admin', '172.16.29.178', '2011-11-23 19:26:25');
INSERT INTO `session` VALUES ('608', 'testgen', '172.16.29.178', '2011-11-23 19:27:05');
INSERT INTO `session` VALUES ('609', 'test', '172.16.29.178', '2011-11-23 19:28:33');
INSERT INTO `session` VALUES ('610', 'admin', '172.16.29.178', '2011-11-23 19:30:58');
INSERT INTO `session` VALUES ('611', 'admin', '172.16.29.178', '2011-11-23 21:02:11');
INSERT INTO `session` VALUES ('612', 'admin', '172.16.29.192', '2009-01-01 00:19:04');
INSERT INTO `session` VALUES ('613', 'pt_admin', '172.16.28.205', '2009-01-01 01:19:36');
INSERT INTO `session` VALUES ('614', 'admin', '172.16.29.178', '2009-01-01 07:49:46');
INSERT INTO `session` VALUES ('615', 'admin', '172.16.29.178', '2009-01-01 08:28:14');
INSERT INTO `session` VALUES ('616', '6181', '172.16.28.5', '2009-01-01 22:14:01');
INSERT INTO `session` VALUES ('617', 'pt_admin', '172.16.28.205', '2009-01-01 22:40:35');
INSERT INTO `session` VALUES ('618', 'admin', '172.16.29.178', '2009-01-02 08:33:35');
INSERT INTO `session` VALUES ('619', 'admin', '172.16.28.205', '2009-01-02 18:46:44');
INSERT INTO `session` VALUES ('620', 'pt_admin', '172.16.28.205', '2009-01-02 18:47:53');
INSERT INTO `session` VALUES ('621', 'admin', '172.16.28.205', '2009-01-02 18:50:45');
INSERT INTO `session` VALUES ('622', 'admin', '172.16.29.192', '2009-01-02 19:27:16');
INSERT INTO `session` VALUES ('623', 'wt_admin', '172.16.28.97', '2009-01-02 20:28:28');
INSERT INTO `session` VALUES ('624', 'wt_admin', '172.16.28.97', '2009-01-02 23:21:17');
INSERT INTO `session` VALUES ('625', 'admin', '172.16.29.192', '2009-01-03 18:40:38');
INSERT INTO `session` VALUES ('626', 'solaiman6292', '172.16.28.3', '2009-01-03 19:59:39');
INSERT INTO `session` VALUES ('627', 'wt_admin', '172.16.28.97', '2011-05-17 13:00:35');
INSERT INTO `session` VALUES ('628', 'admin', '127.0.0.1', '2011-05-17 13:07:39');
INSERT INTO `session` VALUES ('629', 'admin', '172.16.29.192', '2011-05-17 13:10:56');
INSERT INTO `session` VALUES ('630', 'admin', '172.16.28.97', '2011-05-17 13:12:04');
INSERT INTO `session` VALUES ('631', 'wt_admin', '172.16.28.97', '2011-05-17 13:14:07');
INSERT INTO `session` VALUES ('632', 'admin', '172.16.29.178', '2011-05-17 14:49:31');
INSERT INTO `session` VALUES ('633', 'admin', '127.0.0.1', '2011-05-17 17:16:02');
INSERT INTO `session` VALUES ('634', 'wt_admin', '172.16.29.137', '2011-05-17 17:22:49');
INSERT INTO `session` VALUES ('635', 'wt_admin', '127.0.0.1', '2011-05-17 17:34:53');
INSERT INTO `session` VALUES ('636', 'wt_admin', '172.16.29.137', '2011-05-17 17:40:18');
INSERT INTO `session` VALUES ('637', 'wt_admin', '172.16.29.137', '2011-05-17 18:58:01');
INSERT INTO `session` VALUES ('638', 'wt_admin', '172.16.28.97', '2011-05-17 19:26:30');
INSERT INTO `session` VALUES ('639', 'admin', '172.16.29.178', '2011-05-17 20:27:30');
INSERT INTO `session` VALUES ('640', 'rakib', '172.16.29.178', '2011-05-17 20:35:20');
INSERT INTO `session` VALUES ('641', 'admin', '172.16.29.178', '2011-05-17 20:36:02');
INSERT INTO `session` VALUES ('642', 'rakib', '172.16.29.178', '2011-05-17 20:36:31');
INSERT INTO `session` VALUES ('643', 'admin', '172.16.29.178', '2011-05-17 20:36:41');
INSERT INTO `session` VALUES ('644', 'rakib', '172.16.29.178', '2011-05-17 20:37:41');
INSERT INTO `session` VALUES ('645', 'admin', '172.16.29.178', '2011-05-17 20:37:49');
INSERT INTO `session` VALUES ('646', 'rakib', '172.16.29.178', '2011-05-17 21:03:26');
INSERT INTO `session` VALUES ('647', 'admin', '172.16.29.178', '2011-05-17 21:08:00');
INSERT INTO `session` VALUES ('648', 'hasan', '172.16.29.178', '2011-05-17 21:08:39');
INSERT INTO `session` VALUES ('649', 'admin', '172.16.29.178', '2011-05-17 21:10:31');
INSERT INTO `session` VALUES ('650', 'hasan', '172.16.29.178', '2011-05-17 21:15:32');
INSERT INTO `session` VALUES ('651', 'hasan', '172.16.29.178', '2011-05-17 21:16:09');
INSERT INTO `session` VALUES ('652', 'admin', '172.16.29.178', '2011-05-17 21:16:21');
INSERT INTO `session` VALUES ('653', 'hasan', '172.16.29.178', '2011-05-17 21:16:47');
INSERT INTO `session` VALUES ('654', 'admin', '172.16.29.178', '2011-05-17 21:17:06');
INSERT INTO `session` VALUES ('655', 'hasan', '172.16.29.178', '2011-05-17 21:20:30');
INSERT INTO `session` VALUES ('656', 'rakib', '172.16.29.178', '2011-05-17 21:21:21');
INSERT INTO `session` VALUES ('657', 'admin', '172.16.28.205', '2011-05-17 21:56:49');
INSERT INTO `session` VALUES ('658', 'admin', '172.16.28.97', '2011-05-17 21:58:55');
INSERT INTO `session` VALUES ('659', 'admin', '172.16.28.209', '2011-05-18 11:24:23');
INSERT INTO `session` VALUES ('660', 'admin', '172.16.29.165', '2011-05-18 17:24:08');
INSERT INTO `session` VALUES ('661', 'profileadmin', '172.16.29.165', '2011-05-18 17:25:35');
INSERT INTO `session` VALUES ('662', 'profileadmin', '172.16.29.165', '2011-05-18 18:00:07');
INSERT INTO `session` VALUES ('663', 'profileadmin', '172.16.29.165', '2011-12-09 18:01:51');
INSERT INTO `session` VALUES ('664', 'admin', '172.16.28.4', '2011-12-09 19:01:31');
INSERT INTO `session` VALUES ('665', 'hasan', '172.16.29.165', '2011-12-09 19:32:06');
INSERT INTO `session` VALUES ('666', 'admin', '172.16.29.165', '2011-12-09 19:33:31');
INSERT INTO `session` VALUES ('667', 'hasan', '172.16.29.165', '2011-12-09 19:34:15');
INSERT INTO `session` VALUES ('668', 'admin', '172.16.29.165', '2011-12-09 19:34:45');
INSERT INTO `session` VALUES ('669', 'wt_admin', '172.16.29.165', '2011-12-09 19:35:09');
INSERT INTO `session` VALUES ('670', 'profileadmin', '172.16.29.165', '2011-12-09 19:35:23');
INSERT INTO `session` VALUES ('671', 'admin', '172.16.29.178', '2011-12-09 20:22:39');
INSERT INTO `session` VALUES ('672', 'wt_admin', '172.16.28.97', '2011-12-09 20:52:43');
INSERT INTO `session` VALUES ('673', 'admin', '172.16.29.178', '2011-12-09 20:59:46');
INSERT INTO `session` VALUES ('674', 'padmin', '172.16.29.178', '2011-12-09 21:05:21');
INSERT INTO `session` VALUES ('675', 'advuser', '172.16.29.178', '2011-12-09 21:07:39');
INSERT INTO `session` VALUES ('676', 'admin', '172.16.29.178', '2011-12-09 21:07:57');
INSERT INTO `session` VALUES ('677', 'profileadmin', '172.16.29.165', '2011-12-09 21:08:00');
INSERT INTO `session` VALUES ('678', 'genuser', '172.16.29.178', '2011-12-09 21:17:46');
INSERT INTO `session` VALUES ('679', 'admin', '172.16.29.178', '2011-12-09 21:18:14');
INSERT INTO `session` VALUES ('680', 'wt_admin', '172.16.29.165', '2011-12-09 21:18:21');
INSERT INTO `session` VALUES ('681', 'profileadmin', '172.16.29.165', '2011-12-09 21:20:54');
INSERT INTO `session` VALUES ('682', 'wt_admin', '172.16.29.165', '2011-12-09 21:23:22');
INSERT INTO `session` VALUES ('683', 'profileadmin', '172.16.29.165', '2011-12-09 21:26:46');
INSERT INTO `session` VALUES ('684', 'genuser', '172.16.29.178', '2011-12-09 21:31:09');
INSERT INTO `session` VALUES ('685', 'admin', '172.16.29.178', '2011-12-09 21:37:09');
INSERT INTO `session` VALUES ('686', 'advuser', '172.16.29.178', '2011-12-09 21:58:50');
INSERT INTO `session` VALUES ('687', 'admin', '172.16.29.178', '2011-12-09 22:04:43');
INSERT INTO `session` VALUES ('688', 'wt_admin', '172.16.29.165', '2011-12-09 22:19:14');
INSERT INTO `session` VALUES ('689', 'admin', '172.16.29.165', '2011-12-09 22:19:26');
INSERT INTO `session` VALUES ('690', 'ptadmin', '172.16.29.165', '2011-12-09 22:27:28');
INSERT INTO `session` VALUES ('691', 'wt_admin', '172.16.29.165', '2011-12-09 22:28:24');
INSERT INTO `session` VALUES ('692', 'wt_admin', '127.0.0.1', '2011-09-09 23:26:58');
INSERT INTO `session` VALUES ('693', 'admin', '127.0.0.1', '2011-12-10 08:59:03');
INSERT INTO `session` VALUES ('694', 'wt_admin', '127.0.0.1', '2011-12-10 08:59:30');
INSERT INTO `session` VALUES ('695', 'admin', '127.0.0.1', '2011-12-10 20:07:39');
INSERT INTO `session` VALUES ('696', 'admin', '127.0.0.1', '2011-12-14 14:39:03');
INSERT INTO `session` VALUES ('697', 'admin', '127.0.0.1', '2011-12-15 14:13:00');
INSERT INTO `session` VALUES ('698', 'admin', '::1', '2011-12-18 16:25:00');
INSERT INTO `session` VALUES ('699', 'admin', '::1', '2011-12-18 18:15:38');
INSERT INTO `session` VALUES ('700', 'admin', '::1', '2011-12-18 22:18:36');
INSERT INTO `session` VALUES ('701', 'admin', '::1', '2011-12-18 23:35:58');
INSERT INTO `session` VALUES ('702', 'admin', '::1', '2011-12-19 00:15:27');
INSERT INTO `session` VALUES ('703', 'admin', '::1', '2011-12-19 00:22:31');
INSERT INTO `session` VALUES ('704', 'admin', '::1', '2011-12-19 10:38:18');
INSERT INTO `session` VALUES ('705', 'admin', '::1', '2011-12-19 18:46:31');
INSERT INTO `session` VALUES ('706', 'admin', '::1', '2011-12-19 18:56:42');
INSERT INTO `session` VALUES ('707', 'admin', '::1', '2011-12-19 20:27:58');
INSERT INTO `session` VALUES ('708', 'admin', '::1', '2011-12-20 11:52:33');
INSERT INTO `session` VALUES ('709', 'admin', '::1', '2011-12-20 14:11:21');
INSERT INTO `session` VALUES ('710', 'admin', '::1', '2011-12-20 16:30:35');
INSERT INTO `session` VALUES ('711', 'admin', '::1', '2011-12-21 11:14:53');
INSERT INTO `session` VALUES ('712', 'admin', '::1', '2011-12-21 20:21:28');
INSERT INTO `session` VALUES ('713', 'admin', '::1', '2011-12-21 21:03:57');
INSERT INTO `session` VALUES ('714', 'admin', '::1', '2011-12-21 22:21:34');
INSERT INTO `session` VALUES ('715', 'admin', '::1', '2011-12-22 09:21:25');
INSERT INTO `session` VALUES ('716', 'admin', '::1', '2011-12-22 16:54:41');
INSERT INTO `session` VALUES ('717', 'admin', '::1', '2011-12-24 12:25:05');
INSERT INTO `session` VALUES ('718', 'admin', '::1', '2011-12-28 18:31:19');
INSERT INTO `session` VALUES ('719', 'admin', '::1', '2011-12-31 16:34:08');
INSERT INTO `session` VALUES ('720', 'admin', '::1', '2011-12-31 17:40:01');
INSERT INTO `session` VALUES ('721', 'admin', '::1', '2011-12-31 17:47:13');
INSERT INTO `session` VALUES ('722', 'admin', '::1', '2012-01-01 11:35:11');
INSERT INTO `session` VALUES ('723', 'admin', '::1', '2012-01-01 16:44:27');
INSERT INTO `session` VALUES ('724', 'admin', '::1', '2012-01-02 10:08:49');
INSERT INTO `session` VALUES ('725', 'admin', '::1', '2012-01-02 16:46:16');
INSERT INTO `session` VALUES ('726', 'admin', '::1', '2012-01-03 10:35:47');
INSERT INTO `session` VALUES ('727', 'admin', '::1', '2012-01-03 11:07:03');
INSERT INTO `session` VALUES ('728', 'admin', '::1', '2012-01-03 11:38:24');
INSERT INTO `session` VALUES ('729', 'admin', '::1', '2012-01-04 10:20:02');
INSERT INTO `session` VALUES ('730', 'admin', '::1', '2012-01-04 10:51:34');
INSERT INTO `session` VALUES ('731', 'admin', '::1', '2012-01-04 10:58:51');

-- ----------------------------
-- Table structure for `stockgroup`
-- ----------------------------
DROP TABLE IF EXISTS `stockgroup`;
CREATE TABLE `stockgroup` (
  `StockGroupId` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CompanyID` int(2) NOT NULL,
  `UnderID` int(4) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `EntityType` int(2) DEFAULT NULL,
  `CreatedBy` int(3) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(3) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`StockGroupId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stockgroup
-- ----------------------------
INSERT INTO `stockgroup` VALUES ('1', 'Primary', '79', '0', '1', '1', '1', '2011-03-28', null, null);
INSERT INTO `stockgroup` VALUES ('2', 'Mobile Card', '79', '1', '1', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockgroup` VALUES ('3', 'GP', '79', '2', '1', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockgroup` VALUES ('4', 'Airtel', '79', '2', '1', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockgroup` VALUES ('5', 'Blink', '79', '2', '1', '1', '0', '2011-03-28', null, null);

-- ----------------------------
-- Table structure for `stockitem`
-- ----------------------------
DROP TABLE IF EXISTS `stockitem`;
CREATE TABLE `stockitem` (
  `StockItemId` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `StockGroupID` int(4) DEFAULT NULL,
  `UnderUnitId` int(4) DEFAULT NULL,
  `CompanyID` int(2) NOT NULL,
  `Quentity` decimal(4,0) DEFAULT NULL,
  `Rate` decimal(15,0) DEFAULT NULL,
  `Total` decimal(20,0) DEFAULT NULL,
  `Duty` decimal(20,0) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `CreatedBy` int(3) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` int(3) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`StockItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stockitem
-- ----------------------------
INSERT INTO `stockitem` VALUES ('1', 'GP 20', '3', '1', '79', '0', '0', '0', '0', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockitem` VALUES ('2', 'GP 50', '3', '1', '79', '0', '0', '0', '0', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockitem` VALUES ('3', 'GP 100', '3', '1', '79', '0', '0', '0', '0', '1', '0', '2011-03-28', null, null);
INSERT INTO `stockitem` VALUES ('4', 'Robi 50', '5', '1', '79', '0', '0', '0', '0', '1', '0', '2011-03-28', '0', '2011-03-28 13:45:58');
INSERT INTO `stockitem` VALUES ('5', 'Robi 20', '5', '1', '79', '0', '0', '0', '0', '1', '0', '2011-03-28', '0', '2011-03-28 13:45:45');

-- ----------------------------
-- Table structure for `suit_info`
-- ----------------------------
DROP TABLE IF EXISTS `suit_info`;
CREATE TABLE `suit_info` (
  `suit_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `suit_no` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `suit_type_id` int(11) NOT NULL,
  `case_type` int(1) NOT NULL,
  `court_type_id` int(11) NOT NULL,
  `district_id` int(3) DEFAULT NULL,
  `suit_value` decimal(15,2) NOT NULL,
  `execution_value` decimal(15,0) DEFAULT NULL,
  `date_of_filing` date NOT NULL COMMENT '1 for bank 2 aganist bank',
  `employee_id` int(11) NOT NULL,
  `lawyer_appt_letter` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `suit_status` int(2) NOT NULL DEFAULT '1',
  `suit_status_position` int(11) DEFAULT NULL,
  `arising_out_details` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `plaintiff` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `defendant` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `ulis_id` int(11) DEFAULT NULL,
  `last_activities_id` int(11) DEFAULT NULL,
  `execution_date` date DEFAULT NULL,
  `recovery` decimal(10,0) DEFAULT NULL,
  `actual_recovery` decimal(10,0) DEFAULT NULL,
  `professional_fees` double DEFAULT NULL,
  `govt_cost` double DEFAULT NULL,
  `publication_cost` double DEFAULT NULL,
  `misc_others` double DEFAULT NULL,
  `convayence_entertainment` double DEFAULT NULL,
  `related_case` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`suit_info_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of suit_info
-- ----------------------------
INSERT INTO `suit_info` VALUES ('81', '2141/2005', '16', '1', '29', '8', '17000.00', '333333', '2012-07-25', '18', '', '5', '0', '', 'CBL, B.B.Avenue br.', 'Khondokar Mamunur Rashid, S/O. Late Moslem Uddin, Principle Officer, Vanik Tower ( 4th Floor) , Kamal Atarturk Avenue , Banani, Dhaka\r\n\r\nRes. 119/3, Perer bag, Dhaka-1216', '76', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('41', '220/2011', '1', '1', '1', '8', '8285000.00', '33333', '2011-11-30', '0', '', '1', null, null, 'The City Bank Limited\r\nPrincipal Branch', 'Abul Hasnat Nurul Kabir\r\nProp.  : M/S. Hasnat Enterprise\r\n56, Dilkusha C/A. ( 4th Floor )\r\nDhaka-1000', '40', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('42', 'C.R. 280/08', '5', '1', '4', '8', '2225000.00', null, '2008-01-31', '18', '', '1', null, null, 'CBL', 'Al-Yaseen Corporation \r\nPro of:   Antu Islam ', '41', '32', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('43', ' Artha Rin 244/11  ', '1', '1', '1', null, '2803000.00', '333333', '2011-11-30', '17', '', '1', null, null, 'CBL', 'Al- Yeasin Corporation', '41', '33', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('44', 'C. R. ( NIAct. ) 1094/2011', '5', '1', '15', '8', '481000.00', '333333333', '2003-10-11', '17', '', '1', null, null, 'The City Bank Limited \r\n\r\nMr. Javed Akhtar , Officer , Legal Division', 'Md. Shahidul Islam \r\nS/O. Al- Haj Nazrul Islam\r\nProp. :  M/S. A.K. Trade Link', '42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('85', 'test', '1', '1', '2', null, '20920000.00', '3333333', '2004-04-05', '9', '', '1', null, null, 'CBL', 'Ms Green Traders \r\nPro. Mr. Dulal Kumar Gosh 99/06, Riazuddin Bazar Road, Chittagong.', '61', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('36', '16(3)05', '27', '1', '29', '8', '20531000.00', null, '2005-03-08', '17', '', '1', null, null, 'CBL', 'Fashion Costiums\r\n161/1/A\r\nUllon Road, West Rampura, Dhaka.', '39', '30', null, null, null, '1', '2', null, null, null, null);
INSERT INTO `suit_info` VALUES ('38', 'A. Exe.120/10', '2', '1', '1', null, '634000.00', null, '2010-08-22', '17', '', '1', null, null, '', '', '39', '31', null, null, null, '2', null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('30', '5799/2010', '5', '1', '15', '8', '4523442.00', '3333333', '2010-10-19', '18', '', '1', null, null, 'The City Bank Ltd', 'Mr. Md Sultan Ahmed\r\nPro: of Prime Plastic Industry\r\n12, Horonath Gosh Road\r\nLalbagh, Dhaka', '35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('31', '218/2011', '1', '1', '1', null, '5432000.00', '33333333', '2011-11-30', '18', '', '1', null, null, '', '', '35', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('32', '6080/10', '5', '1', '15', '8', '598000.00', '33333333', '2010-11-08', '18', '', '1', null, null, 'CBL', 'M. A. Halim & Others', '36', '141', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('33', '211/2011', '1', '1', '1', null, '21067000.00', null, '2011-11-29', '18', '', '1', null, null, 'CBL', '\"Bus King Co Ltd.\r\nPro.Mr. M.A Halim \r\nCollege Road, Matuail, Demra, Dhaka-1204\r\n', '36', '139', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('34', 'C.R. 5138/10', '5', '1', '4', '8', '7997000.00', null, '2005-09-20', '18', '', '1', null, null, 'CBL\r\nHead Offioce\r\n136 Gulshan Avenue, Gulshan-2, Dhaka-1212', 'Alif Builders & Co. \r\nMr. Md. Hasib Chowdhury ', '37', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('35', 'A. Rin 219/11', '1', '1', '1', null, '9613000.00', '3333333', '2011-11-30', '18', '', '1', null, null, '', '', '37', '19', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('39', '23/2005-69/2008-69/2008', '1', '1', '1', null, '12356222.00', null, '2011-03-16', '17', '', '5', '5', '', '', '', '39', null, null, null, null, null, '3', null, null, null, null);
INSERT INTO `suit_info` VALUES ('46', 'Artha Rin 237/2011-Artho Rin Exe no 11', '1', '1', '1', null, '518000.00', null, '2011-12-01', '17', '', '1', null, null, null, null, '42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('50', '1292/11', '16', '1', '15', '8', '833000.00', null, '2011-11-02', '17', '', '1', null, null, 'CBL', 'Zaman Construction\r\nPro  : Badruzzaman Ezaz', '47', '143', null, null, null, null, '25125', '222', '500', '33', null);
INSERT INTO `suit_info` VALUES ('51', 'A. Rin No. 170/2005', '1', '1', '1', '8', '4367675.51', null, '2005-06-23', '11', '', '5', '5', '', 'CBL', 'Pinki traders \r\nPro : Abul Hossain\r\n85, Kazi Alauddin Road, Kotwali, Dhaka ', '49', '4', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('52', 'A. Rin Exe. No.101/2006', '2', '1', '1', null, '6944366.51', null, '2006-04-23', '11', '', '1', null, null, '', '', '49', '35', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('53', 'W.P. No. 5738/2007', '30', '1', '31', null, '0.00', null, '0000-00-00', '13', '', '1', null, null, 'Pinki trader,\r\nAbul Hossain\r\n85, Kazi Alauddin Road, Kotwali, Dhaka ', 'CBL', '49', '16', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('54', '06/2002', '1', '1', '1', '8', '53023138.70', null, '2002-02-06', '17', '', '6', '5', '', 'CBL', 'Hasan Enterprise\r\nPro : Kamal Hasan\r\n 224, East Rampura, Dhaka', '53', '4', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('55', '.A. Exe. no. 196/04', '2', '1', '1', null, '72961591.70', null, '2004-05-31', '17', '', '1', null, null, '', '', '53', '32', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('56', 'A. Rin no. 12/90', '37', '1', '2', '29', '2742608.39', null, '1990-06-13', '9', '', '5', '5', '', 'CBl Agrabad Branch, Chittagong', 'Oversees Layners Agency  \r\nPro- Mr. Kazi Shahabuddin\r\n241, Teri Bazar,\r\nP.S- Kotwali, Dist- Chittagong', '54', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('57', '07/1993-08/1994-08/1994-06/2001-174/04', '38', '1', '23', null, '2742608.39', null, '2001-09-06', '9', '', '5', '11', '', '', '', '54', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('58', '102/2008', '40', '1', '1', null, '12598335.09', null, '2008-10-22', '9', '', '1', null, null, null, null, '54', '17', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('59', 'Artha Suit No.50/2002-rajib', '1', '1', '1', '8', '2345158.00', null, '2002-06-30', '17', '', '5', '5', '', 'CBL\r\nUrdu road Branch, P.S Lalbagh, Dhaka.', 'Balaka Industries \r\nPro- Alhaj Md. Humayun Kabir\r\n64, Raj Narayan Dar Lane, Lalbagh, Dhaka', '55', '4', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('60', 'Execution Case No. 11/04', '2', '1', '1', null, '2345158.00', null, '2004-01-13', '17', '', '1', null, null, 'CBL\r\nUrdu Road', 'Balaka Industries Pro- Alhaj Md. Humayun Kabir 64, Raj Narayan Dar Lane, Lalbagh, Dhaka', '55', '137', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('61', 'Writ Petition No. 5014/05', '30', '1', '31', null, '0.00', null, '2006-02-15', '17', '', '5', '5', ' Execution Case No. 11/04', 'Al-haj Homoyun Kabir \r\nA/c Balaka Industries ', 'CBL', '55', '135', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('62', '  247/ 2011', '1', '1', '1', '8', '231641333.65', null, '2011-12-01', '13', '', '1', null, null, 'CBL\r\n136, Gulshan Avenue, Gulshan-2, Dhaka-1212.', '\"Vintage Garments Ltd.\r\nHouse No. 365/1. Road No. 6,DOHS Baridhara, Dhaka\"\r\n', '56', '108', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('63', 'C.R.Case No, 5140/10', '16', '1', '15', null, '1500.00', null, '2010-09-05', '18', '', '1', null, null, null, null, '56', '37', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('65', 'Money Suit No-93/1991', '1', '1', '1', '8', '179000.00', null, '1991-03-17', '17', '', '5', '5', '', 'CBL', 'G.T Corporation \r\nMd. Mokhlasur Rahman\r\n10/14, Madrasha Road\r\nBlock- F, JT qUARTER, \r\nMohammadpur, Dhaka.', '58', '116', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('66', 'Money Exe no- 62/02', '2', '1', '1', null, '497695.03', null, '2002-04-23', '17', '', '1', null, null, null, null, '58', '119', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('67', 'Writ Petition no-1340/2004 ', '30', '1', '31', null, '0.00', null, '0000-00-00', '17', '', '5', '0', '', '', '', '58', '38', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('71', '06/2012', '16', '1', '29', '8', '97611.00', null, '2012-02-27', '17', '', '1', null, null, 'CBL', 'Mr. Md. Ali Sakh\r\nPro Of A.One Shoes\r\nHouse No.06, Lane No.11\r\nRoad No. 10, Block-C\r\nMirpur -11, Dhaka-1216', '68', '147', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('78', '29/1997', '1', '1', '1', null, '2941000.00', null, '1997-07-30', '9', '', '5', '5', '', 'CBL', 'Parmita Dewan \r\nAdd. Choto Harina Bazar\r\nBarkal, Chittagong Hill Tracts, Bangladesh', '64', '131', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('79', '38/2002-85/03-85/03', '2', '1', '1', null, '5574000.00', null, '2002-09-07', '9', '', '1', null, null, 'CBL', 'Parmita Dewan Add. Choto Harina Bazar Barkal, Chittagong Hill Tracts, Bangladesh', '64', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('74', 'Misc. Case no. 5/12', '19', '2', '2', '29', '0.00', null, '2012-01-18', '9', '', '1', null, null, 'Nooer Akthar Chowdhury  W/O. Musa Khan', 'The City Bank Ltd. & Others', '70', null, null, null, null, null, '3', null, null, null, null);
INSERT INTO `suit_info` VALUES ('75', 'Misc Case No. 6/12', '19', '2', '2', '29', '0.00', null, '2012-01-18', '0', '', '1', null, null, 'Aleya  Akthar , W/O. Mujibur rahman  Masud & Others', 'The City Bank Ltd. & Others', '71', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('76', 'Session Case no. 1409/11           /11', '4', '1', '5', '50', '3211000.00', null, '2011-03-28', '14', '', '1', null, null, 'The City Bank Ltd. Khulna br.', 'Md. Mohsin  ( Prop. of Foysal Filling Station)', '73', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('77', '445/08 ', '16', '1', '1', '65', '1970000.00', null, '2008-05-26', '14', '', '1', null, null, 'CBL', 'K.R. Traders Pro. Md. Kabirul Islam Bagh Asra, Sharsha, Jessore. \r\n', '74', '127', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('82', '4/94', '1', '1', '1', '29', '0.00', null, '0000-00-00', '9', '', '5', '5', '', 'CBL, Jubilee Road br.Ctg.', 'M/s. Paharika Trading ', '77', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('83', '46/95', '1', '1', '1', '29', '7711000.00', null, '1995-11-22', '9', '', '1', null, null, 'CBL, Cox\'s bazar branch', 'Md. Moslem', '78', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('84', '01/2011', '1', '1', '1', null, '4295010.00', null, '2012-02-20', '14', '', '1', null, null, null, null, '72', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('86', '95/93', '1', '1', '1', null, '1577353.72', null, '2012-03-04', '17', '', '5', '5', 'Artha Rin Suit No. 95/1993', 'CBL', 'Agrani Traders \r\nAdd. 75 Khatungonj, Chittagong.', '60', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('87', 'test', '27', '1', '27', null, '0.00', null, '2012-03-04', '16', '', '1', null, null, null, null, '63', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('88', 'test', '27', '1', '18', null, '0.00', null, '2012-03-04', '13', '', '1', null, null, null, null, '69', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('105', '25/2012', '1', '1', '1', null, '964036.00', null, '2012-03-01', '17', '', '1', null, null, 'CBL', '1.Badruzzaman Ezaz\r\nPro. Zaman Contruction\r\n2.Mrs. Mukta Sultana 28/1, Dipu Road, New Eskaton , Dhaka.\r\n3. Mr. Md. Shadat Hossain 27, East Nayatola, Moghbazar, Dhaka.', '47', '145', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('89', 'A. Rin  91/93', '1', '1', '1', '66', '1186000.00', null, '1993-07-10', '9', '', '1', null, null, 'The City Bank Ltd. , Khatungonj branch., Chittagong', ' (1)  Sunil Kanti Dev.  (2)  Nishad Rafique', '81', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('90', 'A. Rin  680/03', '2', '1', '1', null, '1186000.00', null, '1994-11-28', '9', '', '1', null, null, null, null, '81', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('91', 'A. Rin  797/03', '1', '1', '1', '29', '1997000.00', null, '1991-06-20', '9', '', '5', '5', 'Exe.Case no. 27/91', 'The City Bank Ltd., Khatungonj Branch, Chittagong', 'S.N Acharjaya, ( Director, (2)  Mrs. Mowshumi Acharjaya ( Director) ,', '82', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('92', ' 797/03', '2', '1', '1', null, '477000.00', null, '1991-06-20', '9', '', '1', null, null, null, null, '82', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('93', '7421/03', '30', '2', '31', '8', '0.00', null, '0000-00-00', '0', '', '5', '0', '', '', '', '83', null, null, null, null, '30017', null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('94', '153/04', '1', '1', '1', null, '133533000.00', null, '2004-09-29', '9', '', '1', null, null, null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('95', '1280/04', '32', '1', '11', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', '', '', '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('96', '699/05', '30', '1', '31', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('97', '5154/05', '30', '1', '31', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', null, null, '83', null, null, null, null, '2', null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('98', '2695/07', '30', '1', '30', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('99', '486/08', '61', '1', '30', null, '0.00', null, '0000-00-00', '0', '', '1', null, null, '', '', '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('100', '1771/08', '32', '1', '30', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('101', '10143/08', '30', '1', '30', null, '0.00', null, '0000-00-00', '0', '', '5', '0', '', '', '', '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('102', '579/09', '29', '1', '30', null, '0.00', null, '0000-00-00', '0', '', '1', null, null, null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('103', '48/96-504/03-504/03', '40', '1', '1', null, '2245616.72', null, '1996-07-06', '9', '', '1', null, null, 'CBL', 'Agrani Traders Mr. M.Y Harun Latu Market, (1st floor) 75, Khatungonj, Chittagong', '60', '133', null, null, null, null, null, null, null, null, null);
INSERT INTO `suit_info` VALUES ('106', 'sss', '2', '1', '1', '12', '0.00', '2655499999', '0000-00-00', '16', '', '1', null, null, 'ss', 'sss', '85', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sysdiagrams`
-- ----------------------------
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
INSERT INTO `sysdiagrams` VALUES ('Diagram_0', '1', '1', '1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000020000000100000000000000001000006900000001000000FEFFFFFF00000000000000006C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF6B000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B000000FEFFFFFF1D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F000000500000005100000052000000530000005400000055000000560000005700000058000000590000005A0000005B0000005C0000005D0000005E0000005F000000600000006100000062000000630000006400000065000000660000006700000068000000FEFFFFFFFEFFFFFFAA000000FEFFFFFFFDFFFFFF6E0000006F000000700000007100000072000000730000007400000075000000760000007700000078000000790000007A0000007B0000007C0000007D0000007E0000007F0000008000000052006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000C0EFB20247BDCB016A000000400A0000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000002000000F6330000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001C0000000199000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000005F00000000000000000434000A1E500C05000080A90000000F00FFFF14000000A9000000007D0000D6660000643D000030F502003CF902008864FFFF76930000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9CA50000000033000000FF0100A601000000002C00A509000007000080010000009802000000800000030000805363684772696400DA610000AC7E02004150544700003C00A50900000700008002000000B402000000800000110000805363684772696400CC420000CA600200417474656E64616E6365566F756368657200000000004000A50900000700008003000000BC020000008000001500008053636847726964004461000022630200417474656E64616E6365566F75636865724974656D06000000009C00A50900000700008004000000520000000180000071000080436F6E74726F6C00B5560000EB6A020052656C6174696F6E736869702027464B5F417474656E64616E6365566F75636865724974656D5F417474656E64616E6365566F756368657227206265747765656E2027417474656E64616E6365566F75636865722720616E642027417474656E64616E6365566F75636865724974656D2700000000002800B50100000700008005000000310000008700000002800000436F6E74726F6C00484F0000316D020000009400A50900000700008006000000520000000180000069000080436F6E74726F6C00CF6A0000CD72020052656C6174696F6E736869702027464B5F417474656E64616E6365566F75636865724974656D5F417474656E74696F6E50726F64756374696F6E5479706527206265747765656E20274150542720616E642027417474656E64616E6365566F75636865724974656D2700000000002800B50100000700008007000000310000009300000002800000436F6E74726F6C00156D00009679020000008000A50900000700008009000000620000000180000055000080436F6E74726F6C0030BDFFFFEF48020052656C6174696F6E736869702027464B5F417474656E64616E6365566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E642027417474656E64616E6365566F75636865722700000000002800B5010000070000800A000000310000006B00000002800000436F6E74726F6C00B71100007F48020000003400A5090000070000800B000000AA020000008000000C0000805363684772696400FA9CFFFFF4BD0200436F6D706F756E64556E697400003400A5090000070000800C000000A8020000008000000B000080536368477269640002D0000042600300436F6D7075746174696F6E7400003800A5090000070000800D000000B0020000008000000F00008053636847726964008AB100006E610300436F6D7075746174696F6E4974656D0000008400A5090000070000800E000000520000000180000059000080436F6E74726F6C0073C50000F96A030052656C6174696F6E736869702027464B5F436F6D7075746174696F6E4974656D5F436F6D7075746174696F6E27206265747765656E2027436F6D7075746174696F6E2720616E642027436F6D7075746174696F6E4974656D2700000000002800B5010000070000800F000000310000006F00000002800000436F6E74726F6C00D9C10000896A030000003400A50900000700008010000000AA020000008000000C00008053636847726964003C79FFFFA42C0200436F737443617465676F727900003400A50900000700008011000000A6020000008000000A0000805363684772696400546F0000D0E20100436F737443656E747265727900007400A5090000070000801200000062000000018000004C000080436F6E74726F6C0030BDFFFFD7F5010052656C6174696F6E736869702027464B5F436F737443656E7472655F436F737443617465676F727927206265747765656E2027436F6D70616E792720616E642027436F737443656E7472652700002800B50100000700008013000000310000006700000002800000436F6E74726F6C007EE9FFFF9743020000003000A50900000700008014000000A20200000080000008000080536368477269640050DC000088390200456D706C6F79656500008800A5090000070000801500000062000000018000005F000080436F6E74726F6C65367600002D47020052656C6174696F6E736869702027464B5F417474656E64616E6365566F75636865724974656D5F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E642027417474656E64616E6365566F75636865724974656D270000002800B50100000700008016000000310000007500000002800000436F6E74726F6C6554A000007B6A020000006C00A50900000700008017000000520000000180000043000080436F6E74726F6C6530BDFFFF614F020052656C6174696F6E736869702027464B5F456D706C6F7965655F436F6D70616E7927206265747765656E2027436F6D70616E792720616E642027456D706C6F796565270000002800B50100000700008018000000310000005900000002800000436F6E74726F6C65DC460000A751020000003800A50900000700008019000000AC020000008000000D0000805363684772696465C8FA000088390200456D706C6F79656547726F7570656D0000007800A5090000070000801A00000052000000018000004F000080436F6E74726F6C6539F000002D47020052656C6174696F6E736869702027464B5F456D706C6F7965655F456D706C6F79656547726F757027206265747765656E2027456D706C6F79656547726F75702720616E642027456D706C6F796565270000002800B5010000070000801B000000310000006500000002800000436F6E74726F6C65EBED0000BD46020000003000A5090000070000801C000000A002000000800000070000805363684772696465E8800000C8BC0200466F726D756C616500003400A5090000070000801D000000A8020000008000000B0000805363684772696465609F000058A50200466F726D756C614974656D7500007400A5090000070000801E000000620000000180000049000080436F6E74726F6C65DD890000ABB0020052656C6174696F6E736869702027464B5F466F726D756C614974656D5F466F726D756C6127206265747765656E2027466F726D756C612720616E642027466F726D756C614974656D276C6F7900002800B5010000070000801F000000310000005F00000002800000436F6E74726F6C65339D000030BB020000003000A509000007000080200000009C02000000800000050000805363684772696465F6090000E086020047726F757069646500003800A50900000700008021000000AE020000008000000E0000805363684772696465C2970000043602004A6F75726E616C566F75636865726D0000007800A5090000070000802200000052000000018000004F000080436F6E74726F6C6530BDFFFFCD3D020052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420274A6F75726E616C566F7563686572270000002800B50100000700008023000000310000006500000002800000436F6E74726F6C65012300001340020000003C00A50900000700008024000000B6020000008000001200008053636847726964653AB60000000D02004A6F75726E616C566F75636865724974656D746500008000A50900000700008025000000620000000180000057000080436F6E74726F6C6530BDFFFF2B1A020052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865724974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420274A6F75726E616C566F75636865724974656D270000002800B50100000700008026000000310000006D00000002800000436F6E74726F6C65E85000004748020000009000A50900000700008027000000620000000180000065000080436F6E74726F6C65ABAB0000ED1B020052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865724974656D5F4A6F75726E616C566F756368657227206265747765656E20274A6F75726E616C566F75636865722720616E6420274A6F75726E616C566F75636865724974656D2700000000002800B50100000700008028000000310000007B00000002800000436F6E74726F6C6519AF0000D82C020000008800A5090000070000802900000062000000018000005D000080436F6E74726F6C654978000001F9010052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865724974656D5F436F737443656E74726527206265747765656E2027436F737443656E7472652720616E6420274A6F75726E616C566F75636865724974656D276D270000002800B5010000070000802A000000310000007300000002800000436F6E74726F6C65EE9600006909020000008400A5090000070000802D000000620000000180000059000080436F6E74726F6C654BBF0000B029020052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865724974656D5F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E6420274A6F75726E616C566F75636865724974656D2774656D00002800B5010000070000802E000000310000006F00000002800000436F6E74726F6C652CD400006630020000003000A5090000070000802F0000009E0200000080000006000080536368477269646550DC00006CCF00004C6564676572646500006800A5090000070000803000000062000000018000003F000080436F6E74726F6C6530BDFFFFDDE1000052656C6174696F6E736869702027464B5F4C65646765725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420274C6564676572270000002800B50100000700008031000000310000005500000002800000436F6E74726F6C65D8FEFFFF2030010000003000A50900000700008032000000A002000000800000070000805363684772696465D8BD000002DD0200506179486561646500007400A50900000700008033000000620000000180000049000080436F6E74726F6C6507A90000ABB0020052656C6174696F6E736869702027464B5F466F726D756C614974656D5F5061794865616427206265747765656E2027506179486561642720616E642027466F726D756C614974656D2775636800002800B50100000700008034000000310000005F00000002800000436F6E74726F6C6566C100007AB8020000003800A50900000700008035000000AE020000008000000E00008053636847726964656602010072C801005061796D656E74566F75636865726D0000007800A5090000070000803600000062000000018000004F000080436F6E74726F6C6530BDFFFF45D3010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420275061796D656E74566F7563686572270000002800B50100000700008037000000310000006500000002800000436F6E74726F6C65C74B000020F3010000003C00A50900000700008038000000B602000000800000120000805363684772696465DE20010004A001005061796D656E74566F75636865724974656D746500008000A50900000700008039000000720000000180000057000080436F6E74726F6C6530BDFFFF1F9F010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865724974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420275061796D656E74566F75636865724974656D270000002800B5010000070000803A000000310000006D00000002800000436F6E74726F6C65E236000049B2010000009400A5090000070000803B000000620000000180000069000080436F6E74726F6C654F16010087AF010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865724974656D5F5061796D656E74566F75636865724974656D27206265747765656E20275061796D656E74566F75636865722720616E6420275061796D656E74566F75636865724974656D2700000000002800B5010000070000803C000000310000008300000002800000436F6E74726F6C65BD190100DCBF010000008000A5090000070000803D000000620000000180000055000080436F6E74726F6C65DBE50000CFF4000052656C6174696F6E736869702027464B5F5061796D656E74566F75636865724974656D5F4C656467657227206265747765656E20274C65646765722720616E6420275061796D656E74566F75636865724974656D276D270000002800B5010000070000803E000000310000006B00000002800000436F6E74726F6C65F4160100EE2A010000008800A5090000070000803F00000062000000018000005D000080436F6E74726F6C653D83000037B4010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865724974656D5F436F737443656E74726527206265747765656E2027436F737443656E7472652720616E6420275061796D656E74566F75636865724974656D276D270000002800B50100000700008040000000310000007300000002800000436F6E74726F6C65DEC30000EEC3010000008400A50900000700008041000000620000000180000059000080436F6E74726F6C6507E70000B4BC010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865724974656D5F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E6420275061796D656E74566F75636865724974656D2774656D00002800B50100000700008042000000310000006F00000002800000436F6E74726F6C65192C0100701E020000003800A50900000700008043000000AE020000008000000E0000805363684772696465685B0000FEA60000506179726F6C6C566F75636865726D0000003C00A50900000700008044000000B602000000800000120000805363684772696465983A0000FEA60000506179726F6C6C566F75636865724974656D746500004000A50900000700008045000000C20200000080000018000080536368477269646570170000FEA60000506179726F6C6C566F75636865724974656D44657461696C00003400A50900000700008046000000A6020000008000000A0000805363684772696465A0F6FFFFFEA600005065726D697373696F6E636800003800A50900000700008047000000B0020000008000000F0000805363684772696465563F010030A101005075726368617365566F75636865720000007C00A50900000700008048000000620000000180000051000080436F6E74726F6C6530BDFFFFE9A7010052656C6174696F6E736869702027464B5F5075726368617365566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420275075726368617365566F75636865722774656D00002800B50100000700008049000000310000006700000002800000436F6E74726F6C654942000050B4010000003C00A5090000070000804A000000B802000000800000130000805363684772696465563F0100127401005075726368617365566F75636865724974656D6500008400A5090000070000804B000000620000000180000059000080436F6E74726F6C6530BDFFFF2D73010052656C6174696F6E736869702027464B5F5075726368617365566F75636865724974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E6420275075726368617365566F75636865724974656D2774656D00002800B5010000070000804C000000310000006F00000002800000436F6E74726F6C655B260000EA79010000009400A5090000070000804D000000520000000180000069000080436F6E74726F6C654B4801001A95010052656C6174696F6E736869702027464B5F5075726368617365566F75636865724974656D5F5075726368617365566F756368657227206265747765656E20275075726368617365566F75636865722720616E6420275075726368617365566F75636865724974656D2700000000002800B5010000070000804E000000310000007F00000002800000436F6E74726F6C65914A0100D69B010000008000A5090000070000804F000000620000000180000057000080436F6E74726F6C659DE70000CFF4000052656C6174696F6E736869702027464B5F5075726368617365566F75636865724974656D5F4C656467657227206265747765656E20274C65646765722720616E6420275075726368617365566F75636865724974656D270000002800B50100000700008050000000310000006D00000002800000436F6E74726F6C65914A01007D03010000003800A50900000700008051000000AE020000008000000E000080536368477269646576C50000727D010052656365697074566F7563686572720000007800A5090000070000805200000062000000018000004F000080436F6E74726F6C6530BDFFFF4588010052656C6174696F6E736869702027464B5F52656365697074566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202752656365697074566F7563686572270000002800B50100000700008053000000310000006500000002800000436F6E74726F6C65C72D000049CA010000003C00A50900000700008054000000B602000000800000120000805363684772696465EEE300000455010052656365697074566F75636865724974656D6D6500008000A50900000700008055000000620000000180000057000080436F6E74726F6C6530BDFFFF915A010052656C6174696F6E736869702027464B5F52656365697074566F75636865724974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202752656365697074566F75636865724974656D270000002800B50100000700008056000000310000006D00000002800000436F6E74726F6C657A200000DE8F010000009000A50900000700008057000000620000000180000065000080436F6E74726F6C655FD900008764010052656C6174696F6E736869702027464B5F52656365697074566F75636865724974656D5F52656365697074566F756368657227206265747765656E202752656365697074566F75636865722720616E64202752656365697074566F75636865724974656D2700000000002800B50100000700008058000000310000007B00000002800000436F6E74726F6C65CDDC0000DC74010000008000A50900000700008059000000720000000180000055000080436F6E74726F6C65D4CD000055F3000052656C6174696F6E736869702027464B5F52656365697074566F75636865724974656D5F4C656467657227206265747765656E20274C65646765722720616E64202752656365697074566F75636865724974656D276D270000002800B5010000070000805A000000310000006B00000002800000436F6E74726F6C65F8BC00007F28010000008800A5090000070000805B00000062000000018000005D000080436F6E74726F6C653D8300006D60010052656C6174696F6E736869702027464B5F52656365697074566F75636865724974656D5F436F737443656E74726527206265747765656E2027436F737443656E7472652720616E64202752656365697074566F75636865724974656D276D270000002800B5010000070000805C000000310000007300000002800000436F6E74726F6C659BA200005D96010000008400A5090000070000805D000000620000000180000059000080436F6E74726F6C6545E50000B471010052656C6174696F6E736869702027464B5F52656365697074566F75636865724974656D5F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E64202752656365697074566F75636865724974656D2774656D00002800B5010000070000805E000000310000006F00000002800000436F6E74726F6C6529EF000029DB010000002C00A5090000070000805F0000009A0200000080000004000080536368477269646570170000B05C0200526F6C6500006800A50900000700008062000000520000000180000040000080436F6E74726F6C6530BDFFFFAF5B020052656C6174696F6E736869702027464B5F5573657247726F75705F436F6D70616E7927206265747765656E2027436F6D70616E792720616E642027526F6C652700002800B50100000700008063000000310000005B00000002800000436F6E74726F6C6524E4FFFFF55D020000003400A50900000700008064000000AA020000008000000C0000805363684772696465609F0000DA04030053616C61727944657461696C00007800A5090000070000806500000062000000018000004D000080436F6E74726F6C6549B30000EF48020052656C6174696F6E736869702027464B5F53616C61727944657461696C5F456D706C6F79656527206265747765656E2027456D706C6F7965652720616E64202753616C61727944657461696C2772270000002800B50100000700008066000000310000006300000002800000436F6E74726F6C65EBC6000055B9020000007400A5090000070000806700000062000000018000004B000080436F6E74726F6C6530BDFFFF474B020052656C6174696F6E736869702027464B5F53616C61727944657461696C5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202753616C61727944657461696C276C00002800B50100000700008068000000310000006100000002800000436F6E74726F6C65D5250000DAA9020000003800A50900000700008069000000B202000000800000100000805363684772696465609F000012EB020053616C61727944657461696C4974656D00007C00A5090000070000806A000000520000000180000053000080436F6E74726F6C6549B30000AFF1020052656C6174696F6E736869702027464B5F53616C61727944657461696C4974656D5F5061794865616427206265747765656E2027506179486561642720616E64202753616C61727944657461696C4974656D276D00002800B5010000070000806B000000310000006900000002800000436F6E74726F6C65EDB000003FF1020000008800A5090000070000806C00000052000000018000005D000080436F6E74726F6C6555A8000091F8020052656C6174696F6E736869702027464B5F53616C61727944657461696C4974656D5F53616C61727944657461696C27206265747765656E202753616C61727944657461696C2720616E64202753616C61727944657461696C4974656D276D270000002800B5010000070000806D000000310000007300000002800000436F6E74726F6C659BAA000067FF020000003400A5090000070000806E000000AA020000008000000C00008053636847726964654A790000582E010053616C6573566F756368657200007400A5090000070000806F00000072000000018000004B000080436F6E74726F6C6530BDFFFF833B010052656C6174696F6E736869702027464B5F53616C6573566F75636865725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202753616C6573566F7563686572276C00002800B50100000700008070000000310000006100000002800000436F6E74726F6C6514EBFFFF297D010000003800A50900000700008071000000B2020000008000001000008053636847726964654A7900003A01010053616C6573566F75636865724974656D00008C00A50900000700008072000000520000000180000061000080436F6E74726F6C653F8200004222010052656C6174696F6E736869702027464B5F53616C6573566F75636865724974656D5F53616C6573566F75636865724974656D27206265747765656E202753616C6573566F75636865722720616E64202753616C6573566F75636865724974656D2774656D00002800B50100000700008073000000310000007B00000002800000436F6E74726F6C6585840000FE28010000007C00A50900000700008074000000620000000180000053000080436F6E74726F6C6530BDFFFFE911010052656C6174696F6E736869702027464B5F53616C6573566F75636865724974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202753616C6573566F75636865724974656D276D00002800B50100000700008075000000310000006900000002800000436F6E74726F6C65291200007995010000003400A50900000700008076000000A6020000008000000A0000805363684772696465909DFFFFCC9A020053746F636B47726F7570657200003400A50900000700008077000000A402000000800000090000805363684772696465A4D4FFFF1E85020053746F636B4974656D70657200003800A50900000700008078000000B0020000008000000F0000805363684772696465F446010032DB01005472616E73616374696F6E547970656D00008800A5090000070000807900000072000000018000005F000080436F6E74726F6C65650E01009FDE010052656C6174696F6E736869702027464B5F5061796D656E74566F75636865725F5472616E73616374696F6E5479706527206265747765656E20275472616E73616374696F6E547970652720616E6420275061796D656E74566F7563686572270000002800B5010000070000807A000000310000007500000002800000436F6E74726F6C6504200100562A020000008C00A5090000070000807B000000520000000180000061000080436F6E74726F6C654B480100B5BB010052656C6174696F6E736869702027464B5F5075726368617365566F75636865725F5472616E73616374696F6E5479706527206265747765656E20275472616E73616374696F6E547970652720616E6420275075726368617365566F75636865722774656D00002800B5010000070000807C000000310000007700000002800000436F6E74726F6C65914A010025CC010000008800A5090000070000807D00000062000000018000005F000080436F6E74726F6C655FD90000E38F010052656C6174696F6E736869702027464B5F52656365697074566F75636865725F5472616E73616374696F6E5479706527206265747765656E20275472616E73616374696F6E547970652720616E64202752656365697074566F7563686572270000002800B5010000070000807E000000310000007500000002800000436F6E74726F6C65723A0100578F010000008800A5090000070000807F00000062000000018000005F000080436F6E74726F6C65ABAB000041E8010052656C6174696F6E736869702027464B5F4A6F75726E616C566F75636865725F5472616E73616374696F6E5479706527206265747765656E20275472616E73616374696F6E547970652720616E6420274A6F75726E616C566F7563686572270000002800B50100000700008080000000310000007500000002800000436F6E74726F6C65C2300100E140020000002C00A509000007000080810000009A0200000080000004000080536368477269646520D1FFFFC8BC0200556E697400007400A5090000070000808200000052000000018000004B000080436F6E74726F6C65E3B0FFFFF9D4020052656C6174696F6E736869702027464B5F436F6D706F756E64556E69745F53696D706C65556E697427206265747765656E2027556E69742720616E642027436F6D706F756E64556E6974276C00002800B50100000700008083000000310000006700000002800000436F6E74726F6C658AB9FFFF89D4020000007400A5090000070000808400000052000000018000004C000080436F6E74726F6C65E3B0FFFFF9D4020052656C6174696F6E736869702027464B5F436F6D706F756E64556E69745F53696D706C65556E69743127206265747765656E2027556E69742720616E642027436F6D706F756E64556E69742700002800B50100000700008085000000310000006900000002800000436F6E74726F6C6534B9FFFF89D4020000002C00A509000007000080860000009A02000000800000040000805363684772696465B4C30000D62603005573657200007000A50900000700008087000000620000000180000047000080436F6E74726F6C65EB6A00003199020052656C6174696F6E736869702027464B5F417474656E74696F6E50726F64756374696F6E547970655F5573657227206265747765656E2027557365722720616E642027415054270000002800B50100000700008088000000310000007100000002800000436F6E74726F6C65156D0000560D030000007800A5090000070000808900000062000000018000004F000080436F6E74726F6C65DD4B0000CC74020052656C6174696F6E736869702027464B5F417474656E64616E6365566F75636865725F5573657227206265747765656E2027557365722720616E642027417474656E64616E6365566F7563686572270000002800B5010000070000808A000000310000006500000002800000436F6E74726F6C65074E0000C709030000006C00A5090000070000808B000000620000000180000043000080436F6E74726F6C6551CA0000DF53030052656C6174696F6E736869702027464B5F436F6D7075746174696F6E5F5573657227206265747765656E2027557365722720616E642027436F6D7075746174696F6E274100002800B5010000070000808C000000310000005900000002800000436F6E74726F6C6586C30000145F030000006800A5090000070000808D00000062000000018000003D000080436F6E74726F6C653FCD00003055020052656C6174696F6E736869702027464B5F456D706C6F7965655F5573657227206265747765656E2027557365722720616E642027456D706C6F796565276C652700002800B5010000070000808E000000310000005300000002800000436F6E74726F6C658BE70000C9CB020000007000A5090000070000808F000000620000000180000047000080436F6E74726F6C6501CF00000D54020052656C6174696F6E736869702027464B5F456D706C6F79656547726F75705F5573657227206265747765656E2027557365722720616E642027456D706C6F79656547726F7570270000002800B50100000700008090000000310000005D00000002800000436F6E74726F6C65030601009ED9020000006400A5090000070000809100000062000000018000003B000080436F6E74726F6C65F9890000CAD0020052656C6174696F6E736869702027464B5F466F726D756C615F5573657227206265747765656E2027557365722720616E642027466F726D756C61276500002800B50100000700008092000000310000005100000002800000436F6E74726F6C65238C0000551A030000006400A5090000070000809300000062000000018000003B000080436F6E74726F6C65E9C60000B806030052656C6174696F6E736869702027464B5F506179486561645F5573657227206265747765656E2027557365722720616E64202750617948656164276500002800B50100000700008094000000310000005100000002800000436F6E74726F6C6513C90000F018030000007000A50900000700008095000000620000000180000045000080436F6E74726F6C6571A80000071B030052656C6174696F6E736869702027464B5F53616C61727944657461696C5F5573657227206265747765656E2027557365722720616E64202753616C61727944657461696C2770270000002800B50100000700008096000000310000005B00000002800000436F6E74726F6C652BBD0000681E030000003400A50900000700008097000000A8020000008000000B00008053636847726964651078FFFFCA600200566F7563686572547970655400007400A50900000700008098000000520000000180000049000080436F6E74726F6C65F98BFFFFC95F020052656C6174696F6E736869702027464B5F566F7563686572547970655F436F6D70616E7927206265747765656E2027436F6D70616E792720616E642027566F7563686572547970652775636800002800B50100000700008099000000310000005F00000002800000436F6E74726F6C65C18CFFFF595F020000007000A5090000070000809A000000620000000180000045000080436F6E74726F6C6533BCFFFFFD6A020052656C6174696F6E736869702027464B5F53746F636B4974656D5F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202753746F636B4974656D2770270000002800B5010000070000809B000000310000005B00000002800000436F6E74726F6C65A3BBFFFF637A020000007000A5090000070000809C000000620000000180000047000080436F6E74726F6C65379AFFFFFD6A020052656C6174696F6E736869702027464B5F53746F636B47726F75705F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202753746F636B47726F7570270000002800B5010000070000809D000000310000005D00000002800000436F6E74726F6C656F91FFFF428C020000006800A5090000070000809E00000062000000018000003D000080436F6E74726F6C6530BDFFFF816B020052656C6174696F6E736869702027464B5F47726F75705F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202747726F7570276C652700002800B5010000070000809F000000310000005300000002800000436F6E74726F6C652CDFFFFF3A74020000007400A509000007000080A000000052000000018000004B000080436F6E74726F6C65258DFFFFA32B020052656C6174696F6E736869702027464B5F436F737443617465676F72795F436F6D70616E7927206265747765656E2027436F6D70616E792720616E642027436F737443617465676F7279276800002800B501000007000080A1000000310000006100000002800000436F6E74726F6C65168DFFFF332B020000006800A509000007000080A200000062000000018000003F000080436F6E74726F6C65BFD3FFFFE8A1020052656C6174696F6E736869702027464B5F53746F636B4974656D5F556E697427206265747765656E2027556E69742720616E64202753746F636B4974656D272700002800B501000007000080A3000000310000005500000002800000436F6E74726F6C65B8D5FFFF2CAE020000007400A509000007000080A400000052000000018000004B000080436F6E74726F6C6579B1FFFFCB99020052656C6174696F6E736869702027464B5F53746F636B4974656D5F53746F636B47726F757027206265747765656E202753746F636B47726F75702720616E64202753746F636B4974656D276800002800B501000007000080A5000000310000006100000002800000436F6E74726F6C657ABCFFFF119C020000007C00A509000007000080A60000005A0000000180000051000080436F6E74726F6C655B8200008BEA000052656C6174696F6E736869702027464B5F53616C6573566F75636865724974656D5F4C656467657227206265747765656E20274C65646765722720616E64202753616C6573566F75636865724974656D276D276D00002800B501000007000080A7000000310000006700000002800000436F6E74726F6C65448700001BEA000000006400A509000007000080A800000062000000018000003B000080436F6E74726F6C6530BDFFFF2351020052656C6174696F6E736869702027464B5F557365725F436F6D70616E7927206265747765656E2027436F6D70616E792720616E64202755736572277400002800B501000007000080A9000000310000005100000002800000436F6E74726F6C65EA24000098FB020000003000A50900000700008008000000A002000000800000070000805363684772696465389BFFFF60160200436F6D70616E796500000000000000000000214334120800000015150000401D00007856341207000000140100004100500054000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000090FD6D7000000000C4806C7000000000D0806C7000000000DC806C7000000000E8806C7000000000F4806C700000000000816C70000000000C816C700000000018816C700000000024816C700000000030816C70000000003C816C700000000048816C700000000054816C700000000060816C70000000006C816C700000000078816C700000000084816C7090816C7090816C709C816C709C816C70A8816C70A8816C70B4816C70B4816C70C0816C70C0816C70CC816C70CC81000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000401D0000000000000B0000000B00000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000040000004100500054000000214334120800000015150000BD16000078563412070000001401000041007400740065006E00640061006E006300650056006F00750063006800650072000000000000000100000000485672100008020C0000001F000000020000000300000005000000F4FFFFFF10000802170000001F000000030000000000000001000000F4FFFFFF100008022B0000005C000000020000000300000005000000F4FFFFFF100008025C0000007D000000020000000300000005000000F4FFFFFF100008020C0000007D000000010000000000000007000000F4FFFFFF100008027D00000086000000020000000300000005000000F4FFFFFF100008022B0000009000000004000000080000000500000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000AA1A0000000000002D0100000A0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000BD16000000000000080000000800000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001200000041007400740065006E00640061006E006300650056006F0075006300680065007200000021433412080000001E1600006612000078563412070000001401000041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D00000000000000A87E7A0814D81200ACF159770000230000000000B07E7A084CD81200C6A1D0710000230000000000E2A1D0718D491F6CDCD812000100000000000000FFFFFFFF7B9DD07188D8120094411D720200000000000000E80000000000230094D812009CA0D0710000230000000000BBA0D07155491F6C24D9120001000000000000009CD8120061C4D07100000300D0D8120044411D72FFFFFFFFBBA0D0711AA1D0710000230000000000E0000000DCD8120096F2D07138CC7708B3F2D0711D49000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000088160000000000002D010000080000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F000000000000000010000001E1600006612000000000000060000000600000002000000020000001C010000150900000000000001000000C7110000320C000000000000040000000400000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000007400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001600000041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D00000002000B00E1570000826C020044610000826C02000000000002000000F0F0F00000000000000000000000000000000000010000000500000000000000484F0000316D0200951A00005801000032000000010000020000951A000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D612A0046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0041007400740065006E00640061006E006300650056006F007500630068006500720002000B00666C0000AC7E0200666C0000887502000000000002000000F0F0F00000000000000000000000000000000000010000000700000000000000156D000096790200671D00005801000030000000010000020000671D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61300046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0041007400740065006E00740069006F006E00500072006F00640075006300740069006F006E00540079007000650004000B005CBEFFFF864A0200383F0000864A0200383F0000EC6B0200CC420000EC6B02000000000002000000F0F0F00000000000000000000000000000000000010000000A00000000000000B71100007F4802007912000058010000320000000100000200007912000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072005F0043006F006D00700061006E007900214334120800000015150000F01C000078563412070000001401000043006F006D0070006F0075006E00640055006E006900740000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000F01C0000000000000C0000000C00000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000043006F006D0070006F0075006E00640055006E00690074000000214334120800000015150000E818000078563412070000001401000043006F006D007000750074006100740069006F006E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C010000340800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C00000043006F006D007000750074006100740069006F006E000000214334120800000015150000BD16000078563412070000001401000043006F006D007000750074006100740069006F006E004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000AA1A0000000000002D0100000A0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000BD16000000000000080000000800000002000000020000001C010000340800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001000000043006F006D007000750074006100740069006F006E004900740065006D00000002000B0002D00000906C03009FC60000906C03000000000002000000F0F0F00000000000000000000000000000000000010000000F00000000000000D9C10000896A0300ED1200005801000032000000010000020000ED12000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F0043006F006D007000750074006100740069006F006E004900740065006D005F0043006F006D007000750074006100740069006F006E00214334120800000015150000141B000078563412070000001401000043006F0073007400430061007400650067006F007200790000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000CD1E0000000000002D0100000C0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000141B0000000000000A0000000A00000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000043006F0073007400430061007400650067006F00720079000000214334120800000015150000E818000078563412070000001401000043006F0073007400430065006E007400720065000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B00000043006F0073007400430065006E00740072006500000004000B005CBEFFFFE842020006530000E84202000653000052F70100546F000052F701000000000002000000F0F0F000000000000000000000000000000000000100000013000000000000007EE9FFFF974302007210000058010000110000000100000200007210000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611A0046004B005F0043006F0073007400430065006E007400720065005F0043006F0073007400430061007400650067006F0072007900214334120800000015150000631E000078563412070000001401000045006D0070006C006F00790065006500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000631E000000000000280000000C00000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000045006D0070006C006F00790065006500000004000B0050DC0000C448020034D50000C448020034D50000826C020062770000826C02000000000002000000F0F0F0000000000000000000000000000000000001000000160000000000000054A000007B6A020011150000580100003D0000000100000200001115000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61210046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0045006D0070006C006F0079006500650002000B005CBEFFFFF850020050DC0000F85002000000000002000000F0F0F00000000000000000000000000000000000010000001800000000000000DC460000A7510200F40C00005801000032000000010000020000F40C000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61130046004B005F0045006D0070006C006F007900650065005F0043006F006D00700061006E007900214334120800000015150000401D000078563412070000001401000045006D0070006C006F00790065006500470072006F00750070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000401D0000000000000B0000000B00000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E00000045006D0070006C006F00790065006500470072006F0075007000000002000B00C8FA0000C448020065F10000C44802000000000002000000F0F0F00000000000000000000000000000000000010000001B00000000000000EBED0000BD4602005510000058010000320000000100000200005510000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F0045006D0070006C006F007900650065005F0045006D0070006C006F00790065006500470072006F0075007000214334120800000015150000BD16000078563412070000001401000046006F0072006D0075006C0061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000AA1A0000000000002D0100000A0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000BD16000000000000080000000800000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000046006F0072006D0075006C00610000002143341208000000151500000E0E000078563412070000001401000046006F0072006D0075006C0061004900740065006D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500000E0E000000000000040000000400000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C00000046006F0072006D0075006C0061004900740065006D00000004000B00748B0000C8BC0200748B000081BA0200C0A8000081BA0200C0A8000066B302000000000002000000F0F0F00000000000000000000000000000000000010000001F00000000000000339D000030BB0200BE0D00005801000032000000010000020000BE0D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61160046004B005F0046006F0072006D0075006C0061004900740065006D005F0046006F0072006D0075006C006100214334120800000015150000401D0000785634120700000014010000470072006F0075007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000401D0000000000000B0000000B00000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000006000000470072006F00750070000000214334120800000015150000E81800007856341207000000140100004A006F00750072006E0061006C0056006F0075006300680065007200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C010000340800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F0000004A006F00750072006E0061006C0056006F0075006300680065007200000002000B005CBEFFFF643F0200C2970000643F02000000000002000000F0F0F0000000000000000000000000000000000001000000230000000000000001230000134002001C10000058010000320000000100000200001C10000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F004A006F00750072006E0061006C0056006F00750063006800650072005F0043006F006D00700061006E0079002143341208000000151500006B1F00007856341207000000140100004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500006B1F0000000000000C0000000C00000002000000020000001C010000340800000000000001000000C7110000430E000000000000050000000500000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000130000004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D00000004000B005CBEFFFF98470200F059000098470200F0590000A61B02003AB60000A61B02000000000002000000F0F0F00000000000000000000000000000000000010000002600000000000000E8500000474802009612000058010000320000000100000200009612000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790004000B00D7AC0000264102006AAE0000264102006AAE0000681D02003AB60000681D02000000000002000000F0F0F0000000000000000000000000000000000001000000280000000000000019AF0000D82C0200DA1500005801000032000000010000020000DA15000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61240046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F004A006F00750072006E0061006C0056006F007500630068006500720004000B00E0790000B8FB0100E0790000700B0200C6C00000700B0200C6C00000000D02000000000002000000F0F0F00000000000000000000000000000000000010000002A00000000000000EE96000069090200B61300005801000032000000010000020000B613000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61200046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650004000B001AE50000883902001AE500006D320200C6C000006D320200C6C000006B2C02000000000002000000F0F0F00000000000000000000000000000000000010000002E000000000000002CD4000066300200B31200005801000032000000010000020000B312000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0045006D0070006C006F007900650065002143341208000000151500001A2800007856341207000000140100004C006500640067006500720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500001A28000000000000100000000C00000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004C0065006400670065007200000004000B005CBEFFFFE419020029FEFFFFE419020029FEFFFF58E3000050DC000058E300000000000002000000F0F0F00000000000000000000000000000000000010000003100000000000000D8FEFFFF203001007D0B000058010000320000000100000200007D0B000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61110046004B005F004C00650064006700650072005F0043006F006D00700061006E007900214334120800000015150000712C000078563412070000001401000050006100790048006500610064000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000712C000000000000120000000C00000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000080000005000610079004800650061006400000004000B0064C8000002DD020064C8000081BA020082AA000081BA020082AA000066B302000000000002000000F0F0F0000000000000000000000000000000000001000000340000000000000066C100007AB802004E0E0000580100003B0000000100000200004E0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61160046004B005F0046006F0072006D0075006C0061004900740065006D005F005000610079004800650061006400214334120800000015150000E81800007856341207000000140100005000610079006D0065006E00740056006F0075006300680065007200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F0000005000610079006D0065006E00740056006F0075006300680065007200000004000B005CBEFFFFB43A0200184B0000B43A0200184B0000C0D4010066020100C0D401000000000002000000F0F0F00000000000000000000000000000000000010000003700000000000000C74B000020F30100E61000005801000032000000010000020000E610000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F005000610079006D0065006E00740056006F00750063006800650072005F0043006F006D00700061006E0079002143341208000000151500006B1F00007856341207000000140100005000610079006D0065006E00740056006F00750063006800650072004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500006B1F0000000000000C0000000C00000002000000020000001C0100007F0800000000000001000000C71100005410000000000000060000000600000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000130000005000610079006D0065006E00740056006F00750063006800650072004900740065006D00000006000B005CBEFFFF6E350200333600006E3502003336000030A1010057AF000030A1010057AF00009AA00100DE2001009AA001000000000002000000F0F0F00000000000000000000000000000000000010000003A00000000000000E236000049B201006013000058010000320000000100000200006013000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790004000B007B17010094D301000E19010094D301000E19010002B10100DE20010002B101000000000002000000F0F0F00000000000000000000000000000000000010000003C00000000000000BD190100DCBF0100E81900005801000032000000010000020000E819000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61280046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D0004000B0072E7000086F7000072E70000660C0100A8290100660C0100A829010004A001000000000002000000F0F0F00000000000000000000000000000000000010000003E00000000000000F4160100EE2A01000512000058010000320000000100000200000512000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F004C006500640067006500720004000B0069840000B4EF01002FC30000B4EF01002FC30000B2B50100DE200100B2B501000000000002000000F0F0F00000000000000000000000000000000000010000004000000000000000DEC30000EEC301008014000058010000320000000100000200008014000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61200046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650004000B009EE80000883902009EE80000213302006A2B0100213302006A2B01006FBF01000000000002000000F0F0F00000000000000000000000000000000000010000004200000000000000192C0100701E02007C13000058010000320000000100000200007C13000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0045006D0070006C006F00790065006500214334120800000015150000E818000078563412070000001401000050006100790072006F006C006C0056006F0075006300680065007200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C0100007F0800000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F00000050006100790072006F006C006C0056006F007500630068006500720000002143341208000000151500003A10000078563412070000001401000050006100790072006F006C006C0056006F00750063006800650072004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500003A10000000000000050000000500000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001300000050006100790072006F006C006C0056006F00750063006800650072004900740065006D0000002143341208000000AB1700003A10000078563412070000001401000050006100790072006F006C006C0056006F00750063006800650072004900740065006D00440065007400610069006C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000AB1700003A10000000000000050000000500000002000000020000001C010000F60900000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000007A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001900000050006100790072006F006C006C0056006F00750063006800650072004900740065006D00440065007400610069006C000000214334120800000015150000E30B00007856341207000000140100005000650072006D0069007300730069006F006E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E30B000000000000030000000300000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B0000005000650072006D0069007300730069006F006E000000214334120800000015150000401D00007856341207000000140100005000750072006300680061007300650056006F007500630068006500720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000401D0000000000000B0000000B00000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000100000005000750072006300680061007300650056006F0075006300680065007200000004000B005CBEFFFF5C3802009A4100005C3802009A41000064A90100563F010064A901000000000002000000F0F0F000000000000000000000000000000000000100000049000000000000004942000050B401001F11000058010000320000000100000200001F11000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611A0046004B005F005000750072006300680061007300650056006F00750063006800650072005F0043006F006D00700061006E007900214334120800000015150000C32300007856341207000000140100005000750072006300680061007300650056006F00750063006800650072004900740065006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000C3230000000000000E0000000C00000002000000020000001C0100007F0800000000000001000000C7110000320C000000000000040000000400000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000007000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000140000005000750072006300680061007300650056006F00750063006800650072004900740065006D00000004000B005CBEFFFF28300200AC25000028300200AC250000A8740100563F0100A87401000000000002000000F0F0F00000000000000000000000000000000000010000004C000000000000005B260000EA7901009A13000058010000320000000100000200009A13000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790002000B00E249010030A10100E2490100D59701000000000002000000F0F0F00000000000000000000000000000000000010000004E00000000000000914A0100D69B0100E11700005801000032000000010000020000E117000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61260046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F005000750072006300680061007300650056006F007500630068006500720004000B0034E9000086F7000034E90000A5FA0000E2490100A5FA0000E2490100127401000000000002000000F0F0F00000000000000000000000000000000000010000005000000000000000914A01007D0301003F12000058010000320000000100000200003F12000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F004C0065006400670065007200214334120800000015150000E8180000785634120700000014010000520065006300650069007000740056006F0075006300680065007200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F000000520065006300650069007000740056006F0075006300680065007200000004000B005CBEFFFF16330200182D000016330200182D0000C089010076C50000C08901000000000002000000F0F0F00000000000000000000000000000000000010000005300000000000000C72D000049CA01003810000058010000320000000100000200003810000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F00520065006300650069007000740056006F00750063006800650072005F0043006F006D00700061006E0079002143341208000000151500006B1F0000785634120700000014010000520065006300650069007000740056006F00750063006800650072004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500006B1F0000000000000C0000000C00000002000000020000001C0100007F0800000000000001000000C71100005410000000000000060000000600000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000013000000520065006300650069007000740056006F00750063006800650072004900740065006D00000004000B005CBEFFFF06250200CB1F000006250200CB1F00000C5C0100EEE300000C5C01000000000002000000F0F0F000000000000000000000000000000000000100000056000000000000007A200000DE8F0100B31200005801000032000000010000020000B312000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790004000B008BDA0000948801001EDC0000948801001EDC000002660100EEE30000026601000000000002000000F0F0F00000000000000000000000000000000000010000005800000000000000CDDC0000DC7401001416000058010000320000000100000200001416000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61240046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F00520065006300650069007000740056006F007500630068006500720006000B0050DC0000ECF400008EDA0000ECF400008EDA000087F5000000CF000087F5000000CF00009A550100EEE300009A5501000000000002000000F0F0F00000000000000000000000000000000000010000005A00000000000000F8BC00007F2801005911000058010000320000000100000200005911000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F004C006500640067006500720004000B0069840000F2ED0100ECA10000F2ED0100ECA10000E8610100EEE30000E86101000000000002000000F0F0F00000000000000000000000000000000000010000005C000000000000009BA200005D960100D41300005801000032000000010000020000D413000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61200046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650004000B00DCE6000088390200DCE600006D3202007AEE00006D3202007AEE00006F7401000000000002000000F0F0F00000000000000000000000000000000000010000005E0000000000000029EF000029DB0100D01200005801000032000000010000020000D012000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0045006D0070006C006F007900650065002143341208000000151500006418000078563412070000001401000052006F006C0065000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500006418000000000000090000000900000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000500000052006F006C006500000002000B005CBEFFFF465D020070170000465D02000000000002000000F0F0F0000000000000000000000000000000000001000000630000000000000024E4FFFFF55D0200840D00005801000032000000010000020000840D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61140046004B005F005500730065007200470072006F00750070005F0043006F006D00700061006E007900214334120800000015150000E8180000785634120700000014010000530061006C00610072007900440065007400610069006C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000BB1C0000000000002D0100000B0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000E818000000000000090000000900000002000000020000001C0100007F0800000000000001000000C7110000320C000000000000040000000400000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D000000530061006C00610072007900440065007400610069006C00000004000B0050DC0000864A0200E8D50000864A0200E8D500002811030075B40000281103000000000002000000F0F0F00000000000000000000000000000000000010000006600000000000000EBC6000055B902004E0E000058010000320000000100000200004E0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F00530061006C00610072007900440065007400610069006C005F0045006D0070006C006F0079006500650004000B005CBEFFFFDE4C0200B6340000DE4C0200B634000028110300609F0000281103000000000002000000F0F0F00000000000000000000000000000000000010000006800000000000000D5250000DAA90200320E00005801000032000000010000020000320E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61170046004B005F00530061006C00610072007900440065007400610069006C005F0043006F006D00700061006E0079002143341208000000151500003A100000785634120700000014010000530061006C00610072007900440065007400610069006C004900740065006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500003A10000000000000050000000500000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000011000000530061006C00610072007900440065007400610069006C004900740065006D00000002000B00D8BD000046F3020075B4000046F302000000000002000000F0F0F00000000000000000000000000000000000010000006B00000000000000EDB000003FF102007210000058010000320000000100000200007210000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611B0046004B005F00530061006C00610072007900440065007400610069006C004900740065006D005F00500061007900480065006100640002000B00ECA90000DA040300ECA900004CFB02000000000002000000F0F0F00000000000000000000000000000000000010000006D000000000000009BAA000067FF02000512000058010000320000000100000200000512000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61200046004B005F00530061006C00610072007900440065007400610069006C004900740065006D005F00530061006C00610072007900440065007400610069006C00214334120800000015150000401D0000785634120700000014010000530061006C006500730056006F007500630068006500720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000401D0000000000000B0000000B00000002000000020000001C0100007F0800000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D000000530061006C006500730056006F0075006300680065007200000006000B005CBEFFFF941E0200E1C5FFFF941E0200E1C5FFFFB31E020065EAFFFFB31E020065EAFFFFFE3C01004A790000FE3C01000000000002000000F0F0F0000000000000000000000000000000000001000000700000000000000014EBFFFF297D0100FB0E00005801000032000000010000020000FB0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61170046004B005F00530061006C006500730056006F00750063006800650072005F0043006F006D00700061006E007900214334120800000015150000C3230000785634120700000014010000530061006C006500730056006F00750063006800650072004900740065006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000015150000C3230000000000000E0000000C00000002000000020000001C0100007F0800000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000011000000530061006C006500730056006F00750063006800650072004900740065006D00000002000B00D6830000582E0100D6830000FD2401000000000002000000F0F0F0000000000000000000000000000000000001000000730000000000000085840000FE2801001416000058010000320000000100000200001416000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61240046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F00530061006C006500730056006F00750063006800650072004900740065006D0004000B005CBEFFFFE22A02007A110000E22A02007A110000641301004A790000641301000000000002000000F0F0F0000000000000000000000000000000000001000000750000000000000029120000799501007611000058010000320000000100000200007611000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611B0046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F0043006F006D00700061006E0079002143341208000000151500003E200000785634120700000014010000530074006F0063006B00470072006F00750070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000CD1E0000000000002D0100000C0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000151500003E200000000000000A0000000A00000002000000020000001C010000340800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B000000530074006F0063006B00470072006F00750070000000214334120800000030150000851F0000785634120700000014010000530074006F0063006B004900740065006D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000030150000851F0000000000000E0000000C00000002000000020000001C0100007F0800000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A000000530074006F0063006B004900740065006D000000214334120800000016150000800F00007856341207000000140100005400720061006E00730061006300740069006F006E00540079007000650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000099180000000000002D010000090000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000016150000800F000000000000070000000700000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000100000005400720061006E00730061006300740069006F006E005400790070006500000006000B0080510100B2EA01008051010009F201008151010009F2010081510100A7290200E00F0100A7290200E00F01005AE101000000000002000000F0F0F00000000000000000000000000000000000010000007A0000000000000004200100562A0200D71400005801000032000000010000020000D714000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61210046004B005F005000610079006D0065006E00740056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650002000B00E249010032DB0100E249010070BE01000000000002000000F0F0F00000000000000000000000000000000000010000007C00000000000000914A010025CC01001115000058010000320000000100000200001115000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61220046004B005F005000750072006300680061007300650056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650004000B00F446010066E30100C539010066E30100C53901005E9101008BDA00005E9101000000000002000000F0F0F00000000000000000000000000000000000010000007E00000000000000723A0100578F01002A14000058010000320000000100000200002A14000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61210046004B005F00520065006300650069007000740056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650004000B000A5C0100D8E90100E36B0100D8E90100E36B0100E8420200D7AC0000E84202000000000002000000F0F0F00000000000000000000000000000000000010000008000000000000000C2300100E14002000D14000058010000320000000100000200000D14000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61210046004B005F004A006F00750072006E0061006C0056006F00750063006800650072005F005400720061006E00730061006300740069006F006E0054007900700065002143341208000000151500009721000078563412070000001401000055006E00690074000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F000000000000000010000001515000097210000000000000D0000000C00000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000500000055006E0069007400000002000B0020D1FFFF90D602000FB2FFFF90D602000000000002000000F0F0F000000000000000000000000000000000000100000083000000000000008AB9FFFF89D402001C10000058010000320000000100000200001C10000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F0043006F006D0070006F0075006E00640055006E00690074005F00530069006D0070006C00650055006E006900740002000B0020D1FFFF90D602000FB2FFFF90D602000000000002000000F0F0F0000000000000000000000000000000000001000000850000000000000034B9FFFF89D40200C81000005801000032000000010000020000C810000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611B0046004B005F0043006F006D0070006F0075006E00640055006E00690074005F00530069006D0070006C00650055006E00690074003100214334120800000020100000C02F000078563412070000001401000055007300650072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F0000000000000000100000020100000C02F0000000000000E0000000C00000002000000020000001C010000910500000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000050000005500730065007200000004000B00CEC70000D6260300CEC70000D7210300666C0000D7210300666C0000EC9B02000000000002000000F0F0F00000000000000000000000000000000000010000008800000000000000156D0000560D0300B31200005801000032000000010000020000B312000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611F0046004B005F0041007400740065006E00740069006F006E00500072006F00640075006300740069006F006E0054007900700065005F00550073006500720004000B000CC60000D62603000CC600008B220300584D00008B220300584D0000877702000000000002000000F0F0F00000000000000000000000000000000000010000008A00000000000000074E0000C7090300E20F00005801000032000000010000020000E20F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61190046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072005F00550073006500720004000B00E8CB000096560300E8CB0000655E03008EDA0000655E03008EDA0000426003000000000002000000F0F0F00000000000000000000000000000000000010000008C0000000000000086C30000145F03000D0C000058010000320000000100000200000D0C000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61130046004B005F0043006F006D007000750074006100740069006F006E005F00550073006500720004000B00D6CE0000D6260300D6CE0000BB1F0300DCE60000BB1F0300DCE60000EB5702000000000002000000F0F0F00000000000000000000000000000000000010000008E000000000000008BE70000C9CB02005D0A000058010000320000000100000200005D0A000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61100046004B005F0045006D0070006C006F007900650065005F00550073006500720004000B0098D00000D626030098D000006F200300540501006F20030054050100C85602000000000002000000F0F0F00000000000000000000000000000000000010000009000000000000000030601009ED90200A10D00005801000032000000010000020000A10D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F0045006D0070006C006F00790065006500470072006F00750070005F00550073006500720004000B0090C90000D626030090C9000023210300748B000023210300748B000085D302000000000002000000F0F0F00000000000000000000000000000000000010000009200000000000000238C0000551A03007709000058010000320000000100000200007709000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D610F0046004B005F0046006F0072006D0075006C0061005F00550073006500720004000B0014CD0000D626030014CD0000BB1F030064C80000BB1F030064C80000730903000000000002000000F0F0F0000000000000000000000000000000000001000000940000000000000013C90000F0180300060A00005801000032000000010000020000060A000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D610F0046004B005F0050006100790048006500610064005F00550073006500720004000B0052CB0000D626030052CB00006F200300ECA900006F200300ECA90000C21D03000000000002000000F0F0F000000000000000000000000000000000000100000096000000000000002BBD0000681E03009A0B000058010000320000000100000200009A0B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F00530061006C00610072007900440065007400610069006C005F0055007300650072002143341208000000151500007320000078563412070000001401000056006F00750063006800650072005400790070006500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000CD1E0000000000002D0100000C0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F000000000000000010000001515000073200000000000000A0000000A00000002000000020000001C0100007F0800000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C00000056006F00750063006800650072005400790070006500000002000B00389BFFFF60610200258DFFFF606102000000000002000000F0F0F00000000000000000000000000000000000010000009900000000000000C18CFFFF595F0200DF0E00005801000033000000010000020000DF0E000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61160046004B005F0056006F007500630068006500720054007900700065005F0043006F006D00700061006E00790004000B00CABDFFFFB46D0200CABDFFFFB47902003AD5FFFFB47902003AD5FFFF1E8502000000000002000000F0F0F00000000000000000000000000000000000010000009B00000000000000A3BBFFFF637A02002E0D000058010000330000000100000200002E0D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F00530074006F0063006B004900740065006D005F0043006F006D00700061006E00790004000B00CE9BFFFFB46D0200CE9BFFFF938B020012B2FFFF938B020012B2FFFFCC9A02000000000002000000F0F0F00000000000000000000000000000000000010000009D000000000000006F91FFFF428C0200F80D00005801000033000000010000020000F80D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F00530074006F0063006B00470072006F00750070005F0043006F006D00700061006E00790004000B005CBEFFFF186D0200E5EAFFFF186D0200E5EAFFFF76870200F6090000768702000000000002000000F0F0F00000000000000000000000000000000000010000009F000000000000002CDFFFFF3A7402000A0B000058010000320000000100000200000A0B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61100046004B005F00470072006F00750070005F0043006F006D00700061006E00790002000B00389BFFFF3A2D0200518EFFFF3A2D02000000000002000000F0F0F0000000000000000000000000000000000001000000A100000000000000168DFFFF332B0200510F00005801000031000000010000020000510F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61170046004B005F0043006F0073007400430061007400650067006F00720079005F0043006F006D00700061006E00790004000B00A2E5FFFFC8BC0200A2E5FFFF7DAD02003AD5FFFF7DAD02003AD5FFFFA3A402000000000002000000F0F0F0000000000000000000000000000000000001000000A300000000000000B8D5FFFF2CAE0200400A00005801000032000000010000020000400A000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61110046004B005F00530074006F0063006B004900740065006D005F0055006E006900740002000B00A5B2FFFF629B0200A4D4FFFF629B02000000000002000000F0F0F0000000000000000000000000000000000001000000A5000000000000007ABCFFFF119C02004E0E000058010000320000000100000200004E0E000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61170046004B005F00530074006F0063006B004900740065006D005F00530074006F0063006B00470072006F007500700003000B0050DC000022EC0000D683000022EC0000D68300003A0101000000000002000000F0F0F0000000000000000000000000000000000001000000A700000000000000448700001BEA00001C100000580100003E0000000100000200001C10000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611A0046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F004C006500640067006500720004000B005CBEFFFFBA520200D92F0000BA520200D92F0000DC3E0300B4C30000DC3E03000000000002000000F0F0F0000000000000000000000000000000000001000000A900000000000000EA24000098FB0200400A00005801000039000000010000020000400A000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D610F0046004B005F0055007300650072005F0043006F006D00700061006E0079002143341208000000242300005457000078563412070000001401000043006F006D00700061006E0079000000640C9F6006000000D0140807FFFFFFFF00000080D01408076CA86E6000106D6047160006FC819E605D0C9F6006000000D0140807FFFFFFFF00000000D014080774A86E6000106D604816000628829E60560C9F6006000000D0140807FFFFFFFF000000007F88634100000080D8020000A0000000D01408077CA86E6000106D604916000662829E604F0C9F6006000000D0140807FFFFFFFF00000000D014080784A86E6000106D604A160006A1829E60240B9F6006000000D0140807FFFFFFFF00000080D01408078CA86E6000106D604B160006E5829E60A90A9F600700000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000641B000061490000000000002D0100000D0000000C000000070000001C010000BC0700005406000096000000B400000078000000380400000E010000A50000000E01000059010000F00000000000000001000000242300005457000000000000100000000C00000002000000020000001C010000681000000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C71100003A07000000000000000000000000000002000000020000001C010000BC07000000000000000000002D2400003525000000000000000000000D00000004000000040000001C010000DC050000720600001A04000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000043006F006D00700061006E007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000FEFFFFFFFEFFFFFF0400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F0000002000000021000000220000002300000024000000250000002600000027000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F57390000020070BBAF0247BDCB01020200001048450000000000000000000000000000000000680100004400610074006100200053006F0075007200630065003D005000430032003B0049006E0069007400690061006C00200043006100740061006C006F0067003D004500520050003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D00730061003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000006D000000737800000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000020000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000003000000320900000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002800000012000000000000008100000082000000830000008400000085000000860000008700000088000000890000008A0000008B0000008C0000008D0000008E0000008F000000900000009100000092000000930000009400000095000000960000009700000098000000990000009A0000009B0000009C0000009D0000009E0000009F000000A0000000A1000000A2000000A3000000A4000000A5000000A6000000A7000000A8000000A9000000FEFFFFFFAB000000AC000000AD000000AE000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C0000008864FFFF769300000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000FFD9FFFFAE7A000069510000E26700006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003300320035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000040000000400000000000000660000000100010001000000640062006F00000046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0041007400740065006E00640061006E006300650056006F007500630068006500720000000000000000000000C40200000000050000000500000004000000080000000100000060527F080000000000000000AD070000000000060000000600000000000000720000000103010001000000640062006F00000046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0041007400740065006E00740069006F006E00500072006F00640075006300740069006F006E00540079007000650000000000000000000000C40200000000070000000700000006000000080000000100000020537F080000000000000000AD070000000000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003200300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003500300030002C00310032002C0031003600350030002C00310031002C00310030003500300000000900000009000000000000004A00000001004D5501000000640062006F00000046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C402000000000A0000000A000000090000000800000001000000A0537F080000000000000000AD0700000000000B0000000B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000C0000000C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000D0000000D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000E0000000E000000000000004E00000001004D5501000000640062006F00000046004B005F0043006F006D007000750074006100740069006F006E004900740065006D005F0043006F006D007000750074006100740069006F006E0000000000000000000000C402000000000F0000000F0000000E0000000800000001000000604B7F080000000000000000AD070000000000100000001000000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000110000001100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000120000001200000000000000460000000101C47601000000640062006F00000046004B005F0043006F0073007400430065006E007400720065005F0043006F0073007400430061007400650067006F007200790000000000000000000000C402000000001300000013000000120000000800000001000000204B7F080000000000000000AD070000000000140000001400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000150000001500000000000000540000000101520001000000640062006F00000046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D005F0045006D0070006C006F0079006500650000000000000000000000C402000000001600000016000000150000000800000001000000E0497F080000000000000000AD070000000000170000001700000000000000380000000100880801000000640062006F00000046004B005F0045006D0070006C006F007900650065005F0043006F006D00700061006E00790000000000000000000000C40200000000180000001800000017000000080000000100000008D290080000000000000000AD070000000000190000001900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001A0000001A00000000000000440000000101C47601000000640062006F00000046004B005F0045006D0070006C006F007900650065005F0045006D0070006C006F00790065006500470072006F007500700000000000000000000000C402000000001B0000001B0000001A000000080000000100000048D290080000000000000000AD0700000000001C0000001C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001D0000001D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001E0000001E000000000000003E0000000101000001000000640062006F00000046004B005F0046006F0072006D0075006C0061004900740065006D005F0046006F0072006D0075006C00610000000000000000000000C402000000001F0000001F0000001E000000080000000100000088D890080000000000000000AD070000000000200000002000000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000210000002100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000220000002200000000000000440000000101C47601000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C40200000000230000002300000022000000080000000100000088D990080000000000000000AD070000000000240000002400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000002500000025000000000000004C00000001004D5501000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790000000000000000000000C402000000002600000026000000250000000800000001000000C8D890080000000000000000AD0700000000002700000027000000000000005A0000000100010001000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F004A006F00750072006E0061006C0056006F007500630068006500720000000000000000000000C40200000000280000002800000027000000080000000100000008D590080000000000000000AD070000000000290000002900000000000000520000000101520001000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650000000000000000000000C402000000002A0000002A000000290000000800000001000000C8D490080000000000000000AD0700000000002D0000002D000000000000004E00000001004D5501000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D005F0045006D0070006C006F0079006500650000000000000000000000C402000000002E0000002E0000002D000000080000000100000048D490080000000000000000AD0700000000002F0000002F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000300000003000000000000000340000000100880801000000640062006F00000046004B005F004C00650064006700650072005F0043006F006D00700061006E00790000000000000000000000C40200000000310000003100000030000000080000000100000008D490080000000000000000AD070000000000320000003200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000003300000033000000000000003E0000000101000001000000640062006F00000046004B005F0046006F0072006D0075006C0061004900740065006D005F00500061007900480065006100640000000000000000000000C402000000003400000034000000330000000800000001000000C8D390080000000000000000AD070000000000350000003500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000360000003600000000000000440000000101C47601000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C40200000000370000003700000036000000080000000100000088D390080000000000000000AD070000000000380000003800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000003900000039000000000000004C00000001004D5501000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790000000000000000000000C402000000003A0000003A00000039000000080000000100000048D390080000000000000000AD0700000000003B0000003B00000000000000620000000100010001000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D0000000000000000000000C402000000003C0000003C0000003B000000080000000100000048D190080000000000000000AD0700000000003D0000003D000000000000004A00000001004D5501000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F004C006500640067006500720000000000000000000000C402000000003E0000003E0000003D000000080000000100000008D190080000000000000000AD0700000000003F0000003F00000000000000520000000101520001000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650000000000000000000000C4020000000040000000400000003F0000000800000001000000C8D090080000000000000000AD0700000000004100000041000000000000004E00000001004D5501000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072004900740065006D005F0045006D0070006C006F0079006500650000000000000000000000C40200000000420000004200000041000000080000000100000088D090080000000000000000AD070000000000430000004300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000440000004400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000450000004500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003500350030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000460000004600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000470000004700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000480000004800000000000000460000000101C47601000000640062006F00000046004B005F005000750072006300680061007300650056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C40200000000490000004900000048000000080000000100000088CE90080000000000000000AD0700000000004A0000004A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000004B0000004B000000000000004E00000001004D5501000000640062006F00000046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790000000000000000000000C402000000004C0000004C0000004B000000080000000100000048CE90080000000000000000AD0700000000004D0000004D000000000000005E0000000100010001000000640062006F00000046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F005000750072006300680061007300650056006F007500630068006500720000000000000000000000C402000000004E0000004E0000004D000000080000000100000088CD90080000000000000000AD0700000000004F0000004F000000000000004C00000001004D5501000000640062006F00000046004B005F005000750072006300680061007300650056006F00750063006800650072004900740065006D005F004C006500640067006500720000000000000000000000C4020000000050000000500000004F0000000800000001000000C8CC90080000000000000000AD070000000000510000005100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000520000005200000000000000440000000101C47601000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C40200000000530000005300000052000000080000000100000088CC90080000000000000000AD070000000000540000005400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000005500000055000000000000004C00000001004D5501000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790000000000000000000000C40200000000560000005600000055000000080000000100000048CD90080000000000000000AD0700000000005700000057000000000000005A0000000100010001000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F00520065006300650069007000740056006F007500630068006500720000000000000000000000C402000000005800000058000000570000000800000001000000C8CE90080000000000000000AD0700000000005900000059000000000000004A00000001004D5501000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F004C006500640067006500720000000000000000000000C402000000005A0000005A00000059000000080000000100000008CE90080000000000000000AD0700000000005B0000005B00000000000000520000000101520001000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0043006F0073007400430065006E0074007200650000000000000000000000C402000000005C0000005C0000005B000000080000000100000048CF90080000000000000000AD0700000000005D0000005D000000000000004E00000001004D5501000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072004900740065006D005F0045006D0070006C006F0079006500650000000000000000000000C402000000005E0000005E0000005D0000000800000001000000C8CF90080000000000000000AD0700000000005F0000005F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000006200000062000000000000003A0000000101000001000000640062006F00000046004B005F005500730065007200470072006F00750070005F0043006F006D00700061006E00790000000000000000000000C40200000000630000006300000062000000080000000100000088D290080000000000000000AD070000000000640000006400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000650000006500000000000000420000000101C47601000000640062006F00000046004B005F00530061006C00610072007900440065007400610069006C005F0045006D0070006C006F0079006500650000000000000000000000C402000000006600000066000000650000000800000001000000C8D190080000000000000000AD070000000000670000006700000000000000400000000101000001000000640062006F00000046004B005F00530061006C00610072007900440065007400610069006C005F0043006F006D00700061006E00790000000000000000000000C40200000000680000006800000067000000080000000100000048D590080000000000000000AD070000000000690000006900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000006A0000006A00000000000000480000000101C47601000000640062006F00000046004B005F00530061006C00610072007900440065007400610069006C004900740065006D005F00500061007900480065006100640000000000000000000000C402000000006B0000006B0000006A000000080000000100000008D390080000000000000000AD0700000000006C0000006C00000000000000520000000101520001000000640062006F00000046004B005F00530061006C00610072007900440065007400610069006C004900740065006D005F00530061006C00610072007900440065007400610069006C0000000000000000000000C402000000006D0000006D0000006C0000000800000001000000C8D590080000000000000000AD0700000000006E0000006E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000006F0000006F00000000000000400000000101000001000000640062006F00000046004B005F00530061006C006500730056006F00750063006800650072005F0043006F006D00700061006E00790000000000000000000000C4020000000070000000700000006F000000080000000100000008D790080000000000000000AD070000000000710000007100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000007200000072000000000000005A0000000100010001000000640062006F00000046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F00530061006C006500730056006F00750063006800650072004900740065006D0000000000000000000000C402000000007300000073000000720000000800000001000000D87188080000000000000000AD070000000000740000007400000000000000480000000101C47601000000640062006F00000046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F0043006F006D00700061006E00790000000000000000000000C402000000007500000075000000740000000800000001000000987188080000000000000000AD070000000000760000007600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000770000007700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000780000007800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000790000007900000000000000540000000101520001000000640062006F00000046004B005F005000610079006D0065006E00740056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650000000000000000000000C402000000007A0000007A000000790000000800000001000000D87088080000000000000000AD0700000000007B0000007B00000000000000560000000101520001000000640062006F00000046004B005F005000750072006300680061007300650056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650000000000000000000000C402000000007C0000007C0000007B0000000800000001000000D86F88080000000000000000AD0700000000007D0000007D00000000000000540000000101520001000000640062006F00000046004B005F00520065006300650069007000740056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650000000000000000000000C402000000007E0000007E0000007D0000000800000001000000986F88080000000000000000AD0700000000007F0000007F00000000000000540000000101520001000000640062006F00000046004B005F004A006F00750072006E0061006C0056006F00750063006800650072005F005400720061006E00730061006300740069006F006E00540079007000650000000000000000000000C4020000000080000000800000007F0000000800000001000000586F88080000000000000000AD070000000000810000008100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000820000008200000000000000460000000101C47601000000640062006F00000046004B005F0043006F006D0070006F0075006E00640055006E00690074005F00530069006D0070006C00650055006E006900740000000000000000000000C402000000008300000083000000820000000800000001000000186F88080000000000000000AD070000000000840000008400000000000000480000000101C47601000000640062006F00000046004B005F0043006F006D0070006F0075006E00640055006E00690074005F00530069006D0070006C00650055006E0069007400310000000000000000000000C402000000008500000085000000840000000800000001000000D86E88080000000000000000AD070000000000860000008600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003400320035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000008700000087000000000000005000000001004D5501000000640062006F00000046004B005F0041007400740065006E00740069006F006E00500072006F00640075006300740069006F006E0054007900700065005F00550073006500720000000000000000000000C402000000008800000088000000870000000800000001000000186E88080000000000000000AD070000000000890000008900000000000000440000000101C47601000000640062006F00000046004B005F0041007400740065006E00640061006E006300650056006F00750063006800650072005F00550073006500720000000000000000000000C402000000008A0000008A000000890000000800000001000000186D88080000000000000000AD0700000000008B0000008B00000000000000380000000100880801000000640062006F00000046004B005F0043006F006D007000750074006100740069006F006E005F00550073006500720000000000000000000000C402000000008C0000008C0000008B0000000800000001000000D86C88080000000000000000AD0700000000008D0000008D00000000000000320000000100880801000000640062006F00000046004B005F0045006D0070006C006F007900650065005F00550073006500720000000000000000000000C402000000008E0000008E0000008D0000000800000001000000986C88080000000000000000AD0700000000008F0000008F000000000000003C0000000101000001000000640062006F00000046004B005F0045006D0070006C006F00790065006500470072006F00750070005F00550073006500720000000000000000000000C4020000000090000000900000008F0000000800000001000000D86B88080000000000000000AD070000000000910000009100000000000000300000000102000001000000640062006F00000046004B005F0046006F0072006D0075006C0061005F00550073006500720000000000000000000000C402000000009200000092000000910000000800000001000000986988080000000000000000AD070000000000930000009300000000000000300000000102000001000000640062006F00000046004B005F0050006100790048006500610064005F00550073006500720000000000000000000000C402000000009400000094000000930000000800000001000000586988080000000000000000AD0700000000009500000095000000000000003A0000000101000001000000640062006F00000046004B005F00530061006C00610072007900440065007400610069006C005F00550073006500720000000000000000000000C402000000009600000096000000950000000800000001000000186988080000000000000000AD070000000000970000009700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000009800000098000000000000003E0000000101000001000000640062006F00000046004B005F0056006F007500630068006500720054007900700065005F0043006F006D00700061006E00790000000000000000000000C4020000000099000000990000009800000008000000010000005045A4080000000000000000AD0F00000100009A0000009A000000000000003A0000000101000001000000640062006F00000046004B005F00530074006F0063006B004900740065006D005F0043006F006D00700061006E00790000000000000000000000C402000000009B0000009B0000009A0000000800000001000000D045A4080000000000000000AD0F00000100009C0000009C000000000000003C0000000101000001000000640062006F00000046004B005F00530074006F0063006B00470072006F00750070005F0043006F006D00700061006E00790000000000000000000000C402000000009D0000009D0000009C0000000800000001000000504AA4080000000000000000AD0F00000100009E0000009E00000000000000320000000100880801000000640062006F00000046004B005F00470072006F00750070005F0043006F006D00700061006E00790000000000000000000000C402000000009F0000009F0000009E0000000800000001000000D049A4080000000000000000AD0F0000010000A0000000A000000000000000400000000101000001000000640062006F00000046004B005F0043006F0073007400430061007400650067006F00720079005F0043006F006D00700061006E00790000000000000000000000C40200000000A1000000A1000000A000000008000000010000005049A4080000000000000000AD0F0000010000A2000000A200000000000000340000000100880801000000640062006F00000046004B005F00530074006F0063006B004900740065006D005F0055006E006900740000000000000000000000C40200000000A3000000A3000000A20000000800000001000000A04B7F080000000000000000AD0F0000010000A4000000A400000000000000400000000101000001000000640062006F00000046004B005F00530074006F0063006B004900740065006D005F00530074006F0063006B00470072006F007500700000000000000000000000C40200000000A5000000A5000000A40000000800000001000000204F7F080000000000000000AD0F0000010000A6000000A600000000000000460000000101C47601000000640062006F00000046004B005F00530061006C006500730056006F00750063006800650072004900740065006D005F004C006500640067006500720000000000000000000000C40200000000A7000000A7000000A60000000800000001000000D86888080000000000000000AD0F0000010000A8000000A800000000000000300000000102000001000000640062006F00000046004B005F0055007300650072005F0043006F006D00700061006E00790000000000000000000000C40200000000A9000000A9000000A8000000080000000100000050F1C30C0000000000000000AD0F00000100003B01000006000000010000000300000022000000250000000400000002000000030000006D00000068000000A800000008000000860000004301000084000000A00000000800000010000000C2000000470000009E00000008000000200000009D010000460000009C000000080000007600000001000000440000009A000000080000007700000075000000000000009800000008000000970000007401000047000000090000000800000002000000270100006A0000001200000008000000110000000D0100008A0000001700000008000000140000003D0100009400000022000000080000002100000001010000640000002500000008000000240000001D0100007600000030000000080000002F0000008100000088000000360000000800000035000000F10000006E000000390000000800000038000000DF00000046000000480000000800000047000000E9000000600000004B000000080000004A000000CD00000046000000520000000800000051000000D70000006E000000550000000800000054000000A70000005C00000062000000080000005F00000067010000460000006700000008000000640000002F0100006E0000006F000000080000006E0000009100000076000000740000000800000071000000BB000000820000000E0000000C0000000D0000006E0000006B00000029000000110000002400000023000000220000003F0000001100000038000000710000008E0000005B00000011000000540000006B0000007000000015000000140000000300000078000000690000002D00000014000000240000001C0000002300000041000000140000003800000028000000230000005D000000140000005400000022000000230000006500000014000000640000007E0000006F0000001A000000190000001400000078000000790000001E0000001C0000001D000000220000001F0000002700000021000000240000006B0000007C000000A60000002F00000071000000A6000000220000003D0000002F00000038000000250000001C0000004F0000002F0000004A0000002B00000022000000590000002F00000054000000C40000004600000033000000320000001D00000022000000250000006A000000320000006900000090000000610000003B00000035000000380000006B0000007E0000004D000000470000004A00000022000000230000005700000051000000540000006B0000007E0000006C00000064000000690000002200000023000000720000006E000000710000002200000023000000A400000076000000770000004700000090000000790000007800000035000000230000002D0000007B000000780000004700000008000000230000007D000000780000005100000060000000890000007F00000078000000210000007700000071000000A20000008100000077000000440000000100000082000000810000000B0000009C0000009900000084000000810000000B0000009C000000990000008700000086000000010000000C0000002300000089000000860000000200000006000000230000008B000000860000000C0000001B000000220000008D000000860000001400000024000000230000008F00000086000000190000002A0000002300000091000000860000001C00000012000000230000009300000086000000320000001E000000230000009500000086000000640000001800000023000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000226001800000056006F00750063006800650072005400790070006500000008000000640062006F000000000226000A0000005500730065007200000008000000640062006F000000000226000A00000055006E0069007400000008000000640062006F00000000022600200000005400720061006E00730061006300740069006F006E005400790070006500000008000000640062006F0000000002260014000000530074006F0063006B004900740065006D00000008000000640062006F0000000002260016000000530074006F0063006B00470072006F0075007000000008000000640062006F0000000002260022000000530061006C006500730056006F00750063006800650072004900740065006D00000008000000640062006F000000000226001A000000530061006C006500730056006F0075006300680065007200000008000000640062006F0000000002260022000000530061006C00610072007900440065007400610069006C004900740065006D00000008000000640062006F000000000226001A000000530061006C00610072007900440065007400610069006C00000008000000640062006F000000000226000A00000052006F006C006500000008000000640062006F0000000002260026000000520065006300650069007000740056006F00750063006800650072004900740065006D00000008000000640062006F000000000226001E000000520065006300650069007000740056006F0075006300680065007200000008000000640062006F00000000022600280000005000750072006300680061007300650056006F00750063006800650072004900740065006D00000008000000640062006F00000000022600200000005000750072006300680061007300650056006F0075006300680065007200000008000000640062006F00000000022600160000005000650072006D0069007300730069006F006E00000008000000640062006F000000000226003200000050006100790072006F006C006C0056006F00750063006800650072004900740065006D00440065007400610069006C00000008000000640062006F000000000226002600000050006100790072006F006C006C0056006F00750063006800650072004900740065006D00000008000000640062006F000000000226001E00000050006100790072006F006C006C0056006F0075006300680065007200000008000000640062006F00000000022600260000005000610079006D0065006E00740056006F00750063006800650072004900740065006D00000008000000640062006F000000000226001E0000005000610079006D0065006E00740056006F0075006300680065007200000008000000640062006F00000000022600100000005000610079004800650061006400000008000000640062006F000000000226000E0000004C0065006400670065007200000008000000640062006F00000000022600260000004A006F00750072006E0061006C0056006F00750063006800650072004900740065006D00000008000000640062006F000000000226001E0000004A006F00750072006E0061006C0056006F0075006300680065007200000008000000640062006F000000000226000C000000470072006F0075007000000008000000640062006F000000000226001800000046006F0072006D0075006C0061004900740065006D00000008000000640062006F000000000226001000000046006F0072006D0075006C006100000008000000640062006F000000000226001C00000045006D0070006C006F00790065006500470072006F0075007000000008000000640062006F000000000226001200000045006D0070006C006F00790065006500000008000000640062006F000000000226001600000043006F0073007400430065006E00740072006500000008000000640062006F000000000226001A00000043006F0073007400430061007400650067006F0072007900000008000000640062006F000000000226002000000043006F006D007000750074006100740069006F006E004900740065006D00000008000000640062006F000000000226001800000043006F006D007000750074006100740069006F006E00000008000000640062006F000000000226001A00000043006F006D0070006F0075006E00640055006E0069007400000008000000640062006F000000000226001000000043006F006D00700061006E007900000008000000640062006F000000000226002C00000041007400740065006E00640061006E006300650056006F00750063006800650072004900740065006D00000008000000640062006F000000000226002400000041007400740065006E00640061006E006300650056006F0075006300680065007200000008000000640062006F0000000002240008000000410050005400000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00390031003500310030003600300038002D0038003800300039002D0034003000320030002D0038003800390037002D004600420041003000350037004500320032004400350034007D0000000000000000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214);

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `name_alias` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `descrip` text COLLATE latin1_general_ci,
  `links` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `target` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `folder_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `modules` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dependency` int(1) NOT NULL,
  `dependency_to` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `access_mode` int(2) NOT NULL,
  `access_type` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `admin_sort` int(3) NOT NULL,
  `_sort` int(3) NOT NULL,
  `_show` int(1) NOT NULL,
  `_group` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `_date_time` datetime NOT NULL,
  `_subid` int(3) NOT NULL,
  `_referto` int(3) NOT NULL,
  `_group_level` int(3) NOT NULL,
  `_mainid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'Admin', '', null, '#', '', '', '', '0', '', '0', '', '1', '1', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('2', 'Accounts', '', null, '#', '', '', '', '0', '', '0', '', '2', '2', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('3', 'Pay Roll', '', null, '#', '', '', '', '0', '', '0', '', '3', '3', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('4', 'Inventory', '', null, '#', '', '', '', '0', '', '0', '', '4', '4', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('5', 'Report', '', null, '#', '', '', '', '0', '', '0', '', '5', '5', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('6', 'Ledgers', '', null, '../Accounts/accounts_ledger.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '2', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('7', 'Groups', '', null, '../Accounts/accounts_group.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '2', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('8', 'Cost Center', '', null, '../CostCenter/cost_center.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '2', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('9', 'Cost Category', '', null, '../CostCategory/cost_category.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '2', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('10', 'Stock Groups', '', null, '../Inventory/stock_groups.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '4', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('11', 'Stock Items', '', null, '../Inventory/stock_items.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '4', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('12', 'Employee Groups', '', null, '../PayRoll/employee_group.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '3', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('13', 'Companys', '', null, '../Company/company.php', '', '', '', '0', '', '0', '', '1', '0', '1', 'sub', '0000-00-00 00:00:00', '1', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('14', 'Balance Sheet', '', null, '../Report/balance_sheet.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '5', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('15', 'Day Book', '', null, '../Report/day_book.php', '', '', '', '0', '', '0', '', '0', '1', '1', 'sub', '0000-00-00 00:00:00', '5', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('16', 'Party Account', '', null, '../Report/party_account.php', '', '', '', '0', '', '0', '', '0', '2', '1', 'sub', '0000-00-00 00:00:00', '5', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('17', 'Stock', '', null, '../Report/stock_item.php', '', '', '', '0', '', '0', '', '0', '3', '1', 'sub', '0000-00-00 00:00:00', '5', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('18', 'Company Create', '', null, '../Company/company_create.php', '', '', '', '0', '', '0', '', '2', '0', '1', 'sub', '0000-00-00 00:00:00', '1', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('19', 'Transaction', '', null, '#', '', '', '', '0', '', '0', '', '6', '6', '1', 'main', '0000-00-00 00:00:00', '0', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('20', 'Dashboard', '', null, '../Admin/user_group.php', '', '', '', '0', '', '0', '', '1', '1', '1', 'sub', '0000-00-00 00:00:00', '1', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('21', 'Receipt', '', null, '../Transaction/receipt_create.php', '', '', '', '0', '', '0', '', '2', '2', '1', 'sub', '0000-00-00 00:00:00', '19', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('22', 'Sales', '', null, '../Transaction/sales_create.php', '', '', '', '0', '', '0', '', '3', '3', '1', 'sub', '0000-00-00 00:00:00', '19', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('23', 'Payment', '', null, '../Payments/payment_create.php', '', '', '', '0', '', '0', '', '1', '1', '1', 'sub', '0000-00-00 00:00:00', '19', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('24', 'User', '', null, '../Admin/user.php', '', '', '', '0', '', '0', '', '1', '1', '1', 'sub', '0000-00-00 00:00:00', '1', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('25', 'User Permission', '', null, '../Admin/user_permission.php', '', '', '', '0', '', '0', '', '2', '1', '1', 'sub', '0000-00-00 00:00:00', '1', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('26', 'Contra', '', null, '../Transaction/contra_create.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '19', '0', '0', '0');
INSERT INTO `sys_menu` VALUES ('27', 'Payment', '', null, '../Transaction/payment_create.php', '', '', '', '0', '', '0', '', '0', '0', '1', 'sub', '0000-00-00 00:00:00', '19', '0', '0', '0');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('10', 'first');
INSERT INTO `test` VALUES ('11', 'second');
INSERT INTO `test` VALUES ('12', 'first');
INSERT INTO `test` VALUES ('13', 'second');
INSERT INTO `test` VALUES ('14', 'first');
INSERT INTO `test` VALUES ('15', 'second');
INSERT INTO `test` VALUES ('16', 'first');
INSERT INTO `test` VALUES ('17', 'second');
INSERT INTO `test` VALUES ('18', 'first');
INSERT INTO `test` VALUES ('19', 'second');
INSERT INTO `test` VALUES ('20', 'first');
INSERT INTO `test` VALUES ('21', 'second');
INSERT INTO `test` VALUES ('22', 'first');
INSERT INTO `test` VALUES ('23', 'second');
INSERT INTO `test` VALUES ('24', 'first');
INSERT INTO `test` VALUES ('25', 'second');
INSERT INTO `test` VALUES ('26', 'first');
INSERT INTO `test` VALUES ('27', 'second');
INSERT INTO `test` VALUES ('28', 'first');
INSERT INTO `test` VALUES ('29', 'second');
INSERT INTO `test` VALUES ('30', 'first');
INSERT INTO `test` VALUES ('31', 'second');
INSERT INTO `test` VALUES ('32', 'first');
INSERT INTO `test` VALUES ('33', 'second');
INSERT INTO `test` VALUES ('34', 'first');
INSERT INTO `test` VALUES ('35', 'second');
INSERT INTO `test` VALUES ('36', 'second');
INSERT INTO `test` VALUES ('37', 'second');
INSERT INTO `test` VALUES ('38', 'second');
INSERT INTO `test` VALUES ('39', 'second');
INSERT INTO `test` VALUES ('40', 'second');
INSERT INTO `test` VALUES ('41', 'second');
INSERT INTO `test` VALUES ('42', 'second');
INSERT INTO `test` VALUES ('43', 'second');
INSERT INTO `test` VALUES ('44', 'second');
INSERT INTO `test` VALUES ('45', 'second');
INSERT INTO `test` VALUES ('46', 'second');
INSERT INTO `test` VALUES ('47', 'second');
INSERT INTO `test` VALUES ('48', 'second');
INSERT INTO `test` VALUES ('49', 'second');
INSERT INTO `test` VALUES ('50', 'second');
INSERT INTO `test` VALUES ('51', 'second');
INSERT INTO `test` VALUES ('52', 'second');
INSERT INTO `test` VALUES ('53', 'second');
INSERT INTO `test` VALUES ('54', 'second');
INSERT INTO `test` VALUES ('55', 'second');
INSERT INTO `test` VALUES ('56', 'second');
INSERT INTO `test` VALUES ('57', 'second');
INSERT INTO `test` VALUES ('58', 'second');
INSERT INTO `test` VALUES ('59', 'second');
INSERT INTO `test` VALUES ('60', 'second');
INSERT INTO `test` VALUES ('61', 'second');
INSERT INTO `test` VALUES ('62', 'second');
INSERT INTO `test` VALUES ('63', 'second');
INSERT INTO `test` VALUES ('64', 'second');
INSERT INTO `test` VALUES ('65', 'second');
INSERT INTO `test` VALUES ('66', 'second');
INSERT INTO `test` VALUES ('67', 'second');
INSERT INTO `test` VALUES ('68', 'second');
INSERT INTO `test` VALUES ('69', 'second');
INSERT INTO `test` VALUES ('70', 'second');

-- ----------------------------
-- Table structure for `transactiontype`
-- ----------------------------
DROP TABLE IF EXISTS `transactiontype`;
CREATE TABLE `transactiontype` (
  `TransactionId` int(4) NOT NULL AUTO_INCREMENT,
  `TransactionType` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CompanyID` int(2) DEFAULT NULL,
  `EntryByID` int(3) DEFAULT NULL,
  `EntryDate` date DEFAULT NULL,
  `ModifiedByID` int(3) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`TransactionId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transactiontype
-- ----------------------------
INSERT INTO `transactiontype` VALUES ('1', 'Contra', '79', '1', '2011-01-01', null, null);
INSERT INTO `transactiontype` VALUES ('2', 'Payment', '79', '1', '2011-01-01', null, null);
INSERT INTO `transactiontype` VALUES ('3', 'Receipt', '79', '1', '2011-01-01', null, null);
INSERT INTO `transactiontype` VALUES ('4', 'Journal', '79', '1', '2011-01-01', null, null);
INSERT INTO `transactiontype` VALUES ('5', 'Sales', '79', '1', '2011-01-01', null, null);
INSERT INTO `transactiontype` VALUES ('6', 'Purchase', '79', '1', null, null, null);

-- ----------------------------
-- Table structure for `type_name`
-- ----------------------------
DROP TABLE IF EXISTS `type_name`;
CREATE TABLE `type_name` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of type_name
-- ----------------------------
INSERT INTO `type_name` VALUES ('1', 'Educational Degree');
INSERT INTO `type_name` VALUES ('2', 'Educational Board');
INSERT INTO `type_name` VALUES ('3', 'Subject/ Group name');
INSERT INTO `type_name` VALUES ('4', 'Educational Result');
INSERT INTO `type_name` VALUES ('5', 'Occupation');
INSERT INTO `type_name` VALUES ('6', 'Parential Status');
INSERT INTO `type_name` VALUES ('7', 'Course Name');
INSERT INTO `type_name` VALUES ('8', 'Rank');
INSERT INTO `type_name` VALUES ('9', 'Gender');
INSERT INTO `type_name` VALUES ('10', 'Company Names');
INSERT INTO `type_name` VALUES ('11', 'Service');
INSERT INTO `type_name` VALUES ('12', 'Institution Type');
INSERT INTO `type_name` VALUES ('13', 'Occupational Status');
INSERT INTO `type_name` VALUES ('14', 'Complexion');
INSERT INTO `type_name` VALUES ('15', 'Income Range');
INSERT INTO `type_name` VALUES ('16', 'Country Name');
INSERT INTO `type_name` VALUES ('17', 'District Name');
INSERT INTO `type_name` VALUES ('18', 'Academic Gp');
INSERT INTO `type_name` VALUES ('19', 'Religion');
INSERT INTO `type_name` VALUES ('20', 'Race');
INSERT INTO `type_name` VALUES ('21', 'Blood Group');
INSERT INTO `type_name` VALUES ('22', 'Educational Medium');

-- ----------------------------
-- Table structure for `tz_who_is_online`
-- ----------------------------
DROP TABLE IF EXISTS `tz_who_is_online`;
CREATE TABLE `tz_who_is_online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) NOT NULL DEFAULT '0',
  `country` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `countrycode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `countrycode` (`countrycode`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tz_who_is_online
-- ----------------------------
INSERT INTO `tz_who_is_online` VALUES ('3', '0', 'UNKNOWN', 'XX', '(Unknown City?)', '2012-06-05 15:53:55');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `IID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(20) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `Published_Date` text NOT NULL,
  `Published_Time` text NOT NULL,
  `UserRank` int(11) NOT NULL,
  `LastActive` bigint(20) NOT NULL,
  `Random` text NOT NULL,
  PRIMARY KEY (`IID`)
) ENGINE=MyISAM AUTO_INCREMENT=1439 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'বুড়ো খোকা', '01718729753', 'burokhoka', 'burokhoka', 'studentzitu@yahoo.com', '', '1', '04/05/2010', '03:43:57 AM', '3', '20110423135546', '20100405034357657492');
INSERT INTO `t_user` VALUES ('2', 'ডা. আব্দুল মতিন', '', 'drmatin', '123456789', '', '', '1', '04/05/2010', '03:56:59 AM', '3', '20110320220841', '20100405035659277841');
INSERT INTO `t_user` VALUES ('101', 'আমি', '01718729753', 'ami', 'ami', 'studentzitu@yahoo.com', '', '1', '04/26/2010', '01:24:54 PM', '3', '20101207224847', '20100426012454352829');
INSERT INTO `t_user` VALUES ('3', 'নাজমুস সাকিব', '', 'sakib', '123456', '', '', '1', '04/05/2010', '04:09:24 AM', '3', '20110226010338', '20100405040924857328');
INSERT INTO `t_user` VALUES ('4', 'সালাহ উদ্দিন আইয়ুবী', '', 'saleh', '123456', '', '', '1', '04/05/2010', '04:13:35 AM', '3', '20110416012220', '20100405041335538104');
INSERT INTO `t_user` VALUES ('5', 'জুনায়েদ', '', 'junaed', 'jj', '', '', '1', '04/05/2010', '07:40:14 AM', '3', '20110131143240', '20100405074014369482');
INSERT INTO `t_user` VALUES ('1394', 'vuluya', '8801741133707', 'vuluya', 'gnaepmt', 'vuluya@yahoo.com', '117.18.231.17', '1', '04/22/2011', '02:55:32 AM', '3', '20110422222107', '20110422025532Mnt5Bz3YaFHPbWQSV48DoN1T6rp2UE');
INSERT INTO `t_user` VALUES ('7', 'সানাউল্লাহ', '', 'sunny', 'jj', '', '', '1', '04/05/2010', '07:54:41 AM', '3', '20110131182734', '20100405075441551497');
INSERT INTO `t_user` VALUES ('8', 'বাঁধ ভাঙ্গা ঢেউ', '', 'shawkat', '123456', '', '', '1', '04/05/2010', '08:00:51 AM', '3', '20110503130626', '20100405080051335371');
INSERT INTO `t_user` VALUES ('9', 'শাহীন', '01721119411', 'shahin', '223344', '', '', '1', '04/05/2010', '09:46:08 AM', '3', '20101115165245', '20100405094608122779');
INSERT INTO `t_user` VALUES ('10', 'পরী', '01721119411', 'PORI', '223344', '', '', '1', '04/05/2010', '10:09:44 AM', '3', '20110110224134', '20100405100944788004');
INSERT INTO `t_user` VALUES ('11', 'ইউসুফ বিন সুলতান', '01721119411', 'ybs', '223344', '', '', '1', '04/05/2010', '11:09:00 AM', '3', '20110417200613', '20100405110900935706');
INSERT INTO `t_user` VALUES ('12', 'Rochito', '01195161801', 'rochito', 'loveparul', 'rochito10200@yahoo.com', '', '1', '04/05/2010', '11:12:54 AM', '3', '20110416175621', '20100405111254770014');
INSERT INTO `t_user` VALUES ('47', 'dr.sahid', '01717859524', 'dr.sahid', '01717859524', 'dr.sahid@gmail.com', '', '1', '04/08/2010', '07:08:37 PM', '3', '0', '20100408070837756799');
INSERT INTO `t_user` VALUES ('48', 'শাহেদ আনাম', '01721119411', 'sa', '223344', 'shahin85bd@gmail.com', '', '1', '04/10/2010', '03:50:12 AM', '3', '20110415151822', '20100410035012226947');
INSERT INTO `t_user` VALUES ('22', 'তারেক হাসান', '', 'tarek', 'abcdx', '', '119.30.39.88', '1', '04/05/2010', '11:22:54 PM', '3', '20110501210942', '20100405112254697349');
INSERT INTO `t_user` VALUES ('23', 'জেজি', '+8801812668588', 'jg', '1111111111', 'saiful.nuversity@gmail.com', '', '1', '04/06/2010', '12:48:07 AM', '3', '20110503222912', '20100406124807931311');
INSERT INTO `t_user` VALUES ('24', 'tasinbest', '01816317229', 'abutasin', '01914332197', 'abutasin@gmail.com', '', '1', '04/06/2010', '09:08:38 AM', '3', '20110501082240', '20100406090838400036');
INSERT INTO `t_user` VALUES ('25', 'Samia', '01921921876552', 'samia', 'samia', 'samiasultana28@gmail.com', '', '1', '04/06/2010', '11:34:35 AM', '3', '0', '20100406113435625580');
INSERT INTO `t_user` VALUES ('26', 'kawser', '3943493', 'kawser', 'loveparul', 'abu867@bba.northsouth.edu', '', '1', '04/06/2010', '12:52:37 PM', '3', '0', '20100406125237731888');
INSERT INTO `t_user` VALUES ('27', 'BEEN SULTAN', '01722235074', 'BEEN SULTAN', '12341234', 'faysal.tc@gmail.com', '', '1', '04/06/2010', '10:28:35 PM', '3', '20110120161236', '20100406102835302088');
INSERT INTO `t_user` VALUES ('28', '&#2472;&#2495;&#2489;&#2494;&#2472;', '', 'fun', '123456', '', '', '1', '04/07/2010', '11:30:13 AM', '3', '20110504161740', '20100407113013901459');
INSERT INTO `t_user` VALUES ('29', '&#2475;&#2494;&#2480;&#2494;&#2489;', '', 'computer', '1111111111', '', '', '1', '04/07/2010', '12:07:21 PM', '3', '20110502154148', '20100407120721762112');
INSERT INTO `t_user` VALUES ('30', 'internet', '', 'internet', '1111111111', '', '', '1', '04/07/2010', '12:11:35 PM', '3', '0', '20100407121135762811');
INSERT INTO `t_user` VALUES ('31', 'কম্পিউটার', '', 'the computer', '1111111111', '', '', '1', '04/07/2010', '12:15:56 PM', '3', '0', '20100407121556978614');
INSERT INTO `t_user` VALUES ('38', 'they', '', 'theon', '123456', '', '', '1', '04/07/2010', '08:37:51 PM', '2', '20110126004955', '20100407083751754815');
INSERT INTO `t_user` VALUES ('39', 'রাসেল', '', 'rasel', '123456', '', '', '1', '04/07/2010', '08:38:30 PM', '3', '20110502175308', '20100407083830HP0yQTsbSM3qEX17aLpwzKtBorFdDf');
INSERT INTO `t_user` VALUES ('40', 'Nehan', '', 'nehan', 'qwer', '', '', '1', '04/07/2010', '10:41:52 PM', '3', '0', '20100407104152270323');
INSERT INTO `t_user` VALUES ('49', 'গিফট_আইটি', '6479957732', 'shihab', 'shihab', 'admin@madein-bangladesh.com', '', '1', '04/10/2010', '03:29:20 PM', '3', '0', '20100410032920400140');
INSERT INTO `t_user` VALUES ('42', 'এম রহমান', '', 'mrahman', 'prof1234', '', '', '1', '04/08/2010', '05:50:38 AM', '3', '20101223155451', '20100408055038155919');
INSERT INTO `t_user` VALUES ('50', 'antivirus', '+88017222235074', 'antivirus', '1111111111', 'faysal.tc@gmail.com', '', '1', '04/10/2010', '11:11:26 PM', '3', '20110428190354', '20100410111126235816');
INSERT INTO `t_user` VALUES ('51', 'বলগ', '+88017222235074', 'blog', '1111111111', 'faysal.tc@gmail.com', '', '1', '04/11/2010', '01:00:47 AM', '3', '20110415215258', '20100411010047886051');
INSERT INTO `t_user` VALUES ('52', 'কবিতা', '+88017222235074', 'kobita', '1111111111', 'faysal.tc@gmail.com', '', '1', '04/12/2010', '05:54:03 AM', '3', '20110504132427', '20100412055403313677');
INSERT INTO `t_user` VALUES ('53', 'Elisabeth Constantine', '7205330499', 'Elisabeth Constantine', '0735enitnatsnoC_dfb', 'bfd_Constantine5370@email-masking.com', '', '1', '04/14/2010', '01:16:40 AM', '3', '0', '20100414011640246626');
INSERT INTO `t_user` VALUES ('54', 'তিথী', '01718729753', 'Tithi', 'tithi', 'ami_heemu@yahoo.com', '', '1', '04/14/2010', '08:40:47 AM', '3', '0', '20100414084047203329');
INSERT INTO `t_user` VALUES ('55', 'OPEST Forum', '01721119411', 'opest', '223344', 'shahin85bd@gmail.com', '', '1', '04/15/2010', '01:53:51 AM', '3', '20110327180009', '20100415015351604953');
INSERT INTO `t_user` VALUES ('56', 'আবদুল কাদের', '01728610728', 'abk', '11223344', 'shahin85bd@gmail.com', '', '1', '04/15/2010', '02:04:18 AM', '3', '20110503201731', '20100415020418601983');
INSERT INTO `t_user` VALUES ('57', 'রাহাত', '&#2534;&#2535;&#2543;&#2536;&#2534;&#2539;&#2539;&#2541;&#2536;&#2543;&#2534;', 'rahat', 'hatia', 'rahat.m@gamil.com', '', '1', '04/15/2010', '11:15:10 PM', '3', '20110504142521', '20100415111510646622');
INSERT INTO `t_user` VALUES ('58', 'blindcolour', '01818197329', 'blindcolour', 'colour55555', 'blindcolour@gmail.com', '', '1', '04/15/2010', '11:32:25 PM', '3', '0', '20100415113225872887');
INSERT INTO `t_user` VALUES ('79', 'ডি-ডব্লিও-ডি-ও', '01719212263', 'dwdo', '123456', 'shawkat.ali.zawhar@gmail.com', '', '1', '04/19/2010', '01:36:40 AM', '3', '0', '20100419013640645223');
INSERT INTO `t_user` VALUES ('181', '‍‌‌‌‌‌‌এ পজেটিভ', '017222235074', 'a+', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '09:46:44 AM', '3', '0', '20100509094644923228');
INSERT INTO `t_user` VALUES ('68', 'Hossain', '01716597806', 'Shah Md. Arafat Hossain', 'mother', 'thehossain@yahoo.com', '', '1', '04/17/2010', '12:26:12 AM', '3', '0', '20100417122612732708');
INSERT INTO `t_user` VALUES ('69', 'belayet', '01722034920', 'belayet', 'bloghatiya', 'belayet.nu@gmail.com', '', '0', '04/17/2010', '01:05:26 AM', '3', '0', '20100417010526929450');
INSERT INTO `t_user` VALUES ('78', 'ইসলামী সমাজ', '&#2534;&#2535;&#2541;&#2535;&#2543;&#2536;&#2535;&#2536;&#2536;&#2540;&#2537;', 'icsc', '123456', 'shawkat.ali.zawhar@gmail.com', '', '1', '04/19/2010', '01:32:32 AM', '3', '0', '20100419013232307611');
INSERT INTO `t_user` VALUES ('84', 'প্রথম আলো', '01722235074', 'alo', '1111111111', 'faysal.tc@gmail.com', '', '1', '04/19/2010', '12:55:22 PM', '3', '20110504161712', '20100419125522101657');
INSERT INTO `t_user` VALUES ('77', 'রাকিবুল হাসান', '01719212263', 'rakib', 'jj', 'shawkat.ali.zawhar@gmail.com', '', '1', '04/19/2010', '01:21:22 AM', '3', '20110302221102', '20100419012122883335');
INSERT INTO `t_user` VALUES ('80', 'সিডাড', '01719212263', 'sedad', '123456', 'shawkat.ali.zawhar@gmai.com', '', '0', '04/19/2010', '01:51:11 AM', '3', '0', '20100419015111426464');
INSERT INTO `t_user` VALUES ('81', 'সেডাড', '01923655725', 'sedad1', '123456', 'shawkat.ali.zawhar@gmail.com', '', '1', '04/19/2010', '02:23:47 AM', '3', '0', '20100419022347827588');
INSERT INTO `t_user` VALUES ('82', 'আর্কাইব', '+8801721119411', 'india', '1111111111', 'faysal.tc@gmail.com', '', '1', '04/19/2010', '10:30:55 AM', '3', '20110417091327', '20100419103055720891');
INSERT INTO `t_user` VALUES ('83', 'নাবিলা হোসেন', '01720490173', 'nabila', 'myinternet', 'nabila.sau19@yahoo.com', '', '1', '04/19/2010', '12:30:46 PM', '3', '20101001155523', '20100419123046flGmv0JxwMDeBUpA5YCkFTZ1jNPon9');
INSERT INTO `t_user` VALUES ('85', 'কাজল শর্মা', '01722235074', 'ntv', 'jj', 'faysal.tc@gmail.com ', '', '1', '04/19/2010', '01:22:14 PM', '3', '20110504095756', '20100419012214519005');
INSERT INTO `t_user` VALUES ('86', 'আওয়ামী লীগ', '01737400710', 'lig', '1111111111', 'saiful.nuversity@yahoo.com', '', '1', '04/20/2010', '03:29:23 AM', '3', '0', '20100420032923731297');
INSERT INTO `t_user` VALUES ('87', 'Ashik Iqbal', '+8801730320272', 'ashikiqbal', 'myDh@ka', 'mail@ashik.info', '', '1', '04/21/2010', '11:58:16 AM', '3', '0', '20100421115816579468');
INSERT INTO `t_user` VALUES ('88', 'ইসরাত শাহীন জেবা', '01721119411', 'isj', '223344', 'shahin85bd@gmail.com', '', '1', '04/21/2010', '02:24:17 PM', '3', '20110104181956', '20100421022417361752');
INSERT INTO `t_user` VALUES ('89', 'ইসলামী সমাজ', '01817525450', 'iss', '123456', 'shawkat.ali.zawhar@gmail.com', '', '1', '04/22/2010', '04:08:23 AM', '3', '20110419121109', '20100422040823299183');
INSERT INTO `t_user` VALUES ('90', 'অনন্ত', '&#2534;&#2535;&#2541;&#2536;&#2535;&#2535;&#2535;&#2543;&#2538;&#2535;&#2535;', 'on', 'jj', 'shahin85bd@gmail.com', '', '1', '04/22/2010', '04:49:29 AM', '3', '20110504090404', '20100422044929131317');
INSERT INTO `t_user` VALUES ('93', 'নঈম মাহমুদ', '01722235074', 'no', 'jj', 'shahingroup2009@gmail.com', '', '1', '04/23/2010', '06:50:12 AM', '1', '20110504130324', '20100423065012671774');
INSERT INTO `t_user` VALUES ('175', 'রাহিমা আলম তুহি', '01737400710', 'tohi', 'jj', 'faysal.tc@gmail.com', '', '1', '05/05/2010', '07:57:57 AM', '3', '20110501094031', '20100505075757465779');
INSERT INTO `t_user` VALUES ('94', 'tafazzol', '008801715148722', 'kmtafazzol', '148835', 'kmtafazzol@gmail.com', '', '1', '04/23/2010', '11:04:48 AM', '3', '0', '20100423110448865730');
INSERT INTO `t_user` VALUES ('95', 'মো ফারুকুল ইসলাম', '01712985360', 'meta', '457791', 'metacreations03@yahoo.com', '', '1', '04/24/2010', '07:30:43 AM', '3', '0', '20100424073043394274');
INSERT INTO `t_user` VALUES ('96', 'belayet', '01722034920', 'belayet hossen', 'hatiya.com', 'belayet.nu@gmail.com', '', '1', '04/24/2010', '11:38:41 PM', '3', '20110430091438', '20100424113841172873');
INSERT INTO `t_user` VALUES ('97', 'অর্ক', '123456789', 'orko', 'orko', 'studentzitu@yahoo.com', '', '1', '04/25/2010', '09:46:34 AM', '3', '20100901130351', '20100425094634463932');
INSERT INTO `t_user` VALUES ('171', 'সামছুদ্দিন জেহাদ', '01722235074', 'zihad', 'jj', 'faysal.tc@gmail.com', '', '1', '05/04/2010', '01:14:57 PM', '3', '20110418123022', '20100504011457533746');
INSERT INTO `t_user` VALUES ('98', 'তাহা', '01672326753', 'taha', '00110011', 'tarek.japan@gmail.com', '', '1', '04/25/2010', '10:34:01 PM', '3', '20110312160504', '20100425103401913814');
INSERT INTO `t_user` VALUES ('99', 'মুশতাক আহমেদ', '0191705781', 'ms', 'jj', 'mushtaque.shah@gmail.com', '', '1', '04/26/2010', '02:18:52 AM', '3', '20110418143252', '20100426021852178410');
INSERT INTO `t_user` VALUES ('100', 'হুমায়ন কবির', '01912205323', 'mhk', 'jj', 'humayun_101@yahoo.com', '', '1', '04/26/2010', '05:23:25 AM', '3', '20110411232541', '20100426052325710409');
INSERT INTO `t_user` VALUES ('108', 'ইংলিশ', '01722235074', 'english', 'jj', 'faysal.tc@gmail.com', '', '1', '04/28/2010', '09:01:18 PM', '3', '20110401215513', '20100428090118852504');
INSERT INTO `t_user` VALUES ('109', 'নাস্তিকের ধর্মকথা', '01722235074', 'robi', 'jj', 'faysal.tc@gmail.com', '', '1', '04/28/2010', '11:52:29 PM', '3', '20110504121153', '20100428115229194516');
INSERT INTO `t_user` VALUES ('110', 'ছবি', '+88017222235074', 'picture', 'jj', 'faysal.tc@gmail.com', '119.30.39.89', '1', '04/29/2010', '02:03:25 AM', '3', '20110503163034', '20100429020325255116');
INSERT INTO `t_user` VALUES ('107', 'বিজয়', '০১৭১৮৭২৯৭৫৩', 'bijoy', 'bijoy', 'studentzitu@yahoo.com', '', '1', '04/27/2010', '02:26:59 PM', '3', '20100909000511', '20100427022659837569');
INSERT INTO `t_user` VALUES ('111', 'পপি', '01722235074', 'abc', 'jj', 'faysal.tc@gmail.com', '', '1', '04/29/2010', '04:56:33 AM', '3', '20110504142853', '20100429045633150403');
INSERT INTO `t_user` VALUES ('112', 'Internet', '01722235074', 'net', 'jj', 'faysal.tc@gmail.com', '', '1', '04/29/2010', '05:06:01 AM', '3', '20110124140745', '20100429050601611438');
INSERT INTO `t_user` VALUES ('113', 'সপ্ন ছায়া', '01912454804', 'muttaki70', '01912454', 'muttaki70@yahoo.com', '', '1', '04/30/2010', '06:16:40 AM', '3', '0', '20100430061640342955');
INSERT INTO `t_user` VALUES ('202', 'zz', 'zz', 'zz', 'zz', 'studentzitu@yahoo.com', '', '1', '05/21/2010', '06:48:33 AM', '3', '0', '20100521064833666377');
INSERT INTO `t_user` VALUES ('115', 'হুজুর', '01722235074', 'hujur', 'jj', 'faysal.tc@gmail.com', '', '1', '05/01/2010', '01:41:37 AM', '3', '20110502185330', '20100501014137133987');
INSERT INTO `t_user` VALUES ('116', 'বালক', '01722235074', 'boy', 'ইউজার প্যানেল ', 'faysal.tc@gmail.com', '', '1', '05/01/2010', '10:25:47 PM', '3', '20110504162107', '20100501102547129661');
INSERT INTO `t_user` VALUES ('117', 'বেলায়েত,রনি', '01722235074', 'rony', 'jj', 'faysal.tc@gmail.com', '', '1', '05/01/2010', '10:38:49 PM', '3', '20110502121947', '20100501103849752350');
INSERT INTO `t_user` VALUES ('118', 'মিজানুর রহমান', '01728610728', 'mizan', 'jj', 'isj09.bd@gmail.com', '', '1', '05/02/2010', '06:14:25 AM', '3', '20110430201110', '20100502061425768275');
INSERT INTO `t_user` VALUES ('119', 'মাজেদ', '01722235074', 'mazed', 'jj', 'faysal.tc@gmail.com', '', '1', '05/02/2010', '06:30:43 AM', '3', '20110430152320', '20100502063043261264');
INSERT INTO `t_user` VALUES ('120', 'মোহাম্মদ আলী', '01737400710', 'ali', 'jj', 'faysal.tc@gmail.com', '', '1', '05/02/2010', '11:07:30 AM', '3', '20110504132533', '20100502110730198984');
INSERT INTO `t_user` VALUES ('121', 'জেসিকা', '01737400710', 'jcka', 'jj', 'faysal.tc@gmail.com', '', '1', '05/02/2010', '12:12:26 PM', '3', '20110503202220', '20100502121226607685');
INSERT INTO `t_user` VALUES ('122', 'দুনিয়া', '০১৭২১২৫০৯০৯', 'duniya', 'duniyabd', 'razirazbd@gmail.com', '', '1', '05/02/2010', '12:44:40 PM', '3', '0', '20100502124440610042');
INSERT INTO `t_user` VALUES ('123', 'আলী প্রাণ', '0', 'alipran', 'jannat', 'alipran@gmail.com', '', '1', '05/02/2010', '12:51:42 PM', '3', '0', '20100502125142175892');
INSERT INTO `t_user` VALUES ('124', 'সাদাকালো', '01711722665', 'skalo', '512013', 'skalo10@yahoo.com', '', '1', '05/02/2010', '12:55:14 PM', '3', '0', '20100502125514556458');
INSERT INTO `t_user` VALUES ('125', 'পারভেজ আলম', '01914319546', 'stparvez', 'theking', 'stparvez@gmail.com', '', '1', '05/02/2010', '12:57:09 PM', '3', '0', '20100502125709624253');
INSERT INTO `t_user` VALUES ('126', 'সাইফ সামির', '+8801712945007', 'writer74', '1010101', 'writer74@inbox.com', '', '1', '05/02/2010', '01:04:21 PM', '3', '0', '20100502010421577227');
INSERT INTO `t_user` VALUES ('127', 'কাপালিক', '+79046398647', 'defaultphp', '111111', 'defaultphp@yahoo.com', '', '1', '05/02/2010', '01:04:34 PM', '3', '0', '20100502010434619000');
INSERT INTO `t_user` VALUES ('128', 'সীমাহীন সমুদ্র', '+8801937249399', 'mmun_rc', '106210106210', 'mamun_ndc49@yahoo.com', '', '0', '05/02/2010', '01:04:44 PM', '3', '0', '20100502010444500081');
INSERT INTO `t_user` VALUES ('129', 'বাবুল হোসেইন', '8801712748599', 'ba8ulbu', 'tahhseen', 'bbl_bu@yahoo.com', '', '1', '05/02/2010', '01:07:39 PM', '3', '20110501213620', '20100502010739353686');
INSERT INTO `t_user` VALUES ('130', 'himubrown', '01190712869', 'himubrown', 'mmdcrasel', 'himubrown@yahoo.com', '', '1', '05/02/2010', '01:10:10 PM', '3', '20101103002345', '20100502011010463306');
INSERT INTO `t_user` VALUES ('131', 'অচেনা পুরুষ', '00000000000', 'ochenapurus', 'Pdusgatsaj64955ergisuitg*%@#HGEf', 'ochenapurus@gmail.com', '', '1', '05/02/2010', '01:12:18 PM', '3', '0', '20100502011218402483');
INSERT INTO `t_user` VALUES ('132', 'হাসান মোহাম্মাদ', '+8801911770334', 'mdhasan', '19851985', 'salman.06.bd@gmail.com', '', '1', '05/02/2010', '01:15:40 PM', '3', '0', '20100502011540850564');
INSERT INTO `t_user` VALUES ('133', 'বিজয় কেতন', '+8801727614790', 'shoebadnan', 'a6646394', 'shoebadnan.1@gmail.com', '', '0', '05/02/2010', '01:34:37 PM', '3', '0', '20100502013437548186');
INSERT INTO `t_user` VALUES ('134', 'মতিউর রহমান সাগর', '07881793871', 'shomudoor', 'moonlight', 'sea01199@yahoo.com', '', '1', '05/02/2010', '01:35:38 PM', '3', '0', '20100502013538509087');
INSERT INTO `t_user` VALUES ('135', 'ইন্জ্ঞিনিয়ার', '০১৭১৯০২৩১৮০', 'freedom71', '26031971', 'bm.riyadh@gmail.com', '', '1', '05/02/2010', '01:38:27 PM', '3', '0', '20100502013827303064');
INSERT INTO `t_user` VALUES ('136', 'shafiqul', '8801819294945', 'shafiqul', '786786', 'junaedislam@gmail.com', '', '1', '05/02/2010', '01:41:27 PM', '3', '0', '20100502014127864047');
INSERT INTO `t_user` VALUES ('137', 'manush', '+4917681141566', 'manush', 'bangladesh', 'doodlyyy@yahoo.com', '', '1', '05/02/2010', '01:49:41 PM', '3', '0', '20100502014941429975');
INSERT INTO `t_user` VALUES ('138', 'দণ্ডিত পুরুষ', '01191153487', 'convictedman', 'nazmoonnahar', 'rafiquzzaman_dl@yahoo.com', '', '1', '05/02/2010', '01:56:17 PM', '3', '0', '20100502015617727081');
INSERT INTO `t_user` VALUES ('139', 'parvage', '0191216532', 'parvage', 'saanjana', 'parvage_07@yahoo.com', '', '1', '05/02/2010', '02:00:32 PM', '3', '0', '20100502020032906601');
INSERT INTO `t_user` VALUES ('140', 'attovola', '+8801914858954', 'attovola', '18011993', 'teerhara@gmail.com', '', '1', '05/02/2010', '02:03:02 PM', '3', '20101107154332', '20100502020302477298');
INSERT INTO `t_user` VALUES ('141', 'পারভেজ', '01199270072', 'Parvez', '১২৩৪৫৬', 'exceptions.ltd@gmail.com', '', '1', '05/02/2010', '02:05:15 PM', '3', '0', '20100502020515654028');
INSERT INTO `t_user` VALUES ('142', 'আত্বভোলা', '+8801713245468', 'আত্বভোলা', '18011993', 'clantopathek@gmail.com', '', '1', '05/02/2010', '02:14:15 PM', '3', '0', '20100502021415503650');
INSERT INTO `t_user` VALUES ('143', 'chandu', 'ooooooooooo', 'chandu', 'hibigly', 'greenbird315@yahoo.com', '', '1', '05/02/2010', '02:28:11 PM', '3', '0', '20100502022811211357');
INSERT INTO `t_user` VALUES ('144', 'মগজ ধোলাই', '01190850014', 'মগজ ধোলাই', '627350', 'touchstn@gmail.com', '', '1', '05/02/2010', '02:37:16 PM', '3', '0', '20100502023716122064');
INSERT INTO `t_user` VALUES ('145', 'মমতা জাহান', '০১৭৩৭৪০০৭১০', 'momota', '223344', 'shahin85bd@gmail.com', '', '1', '05/02/2010', '02:38:28 PM', '3', '20110501125335', '20100502023828562184');
INSERT INTO `t_user` VALUES ('146', 'মাটি মানব', '০১৭১৫৩৩৫০৭৯', 'smmazed', 'smm106', 'mazed_sust02@yahoo.com', '', '1', '05/02/2010', '02:43:07 PM', '3', '0', '20100502024307334678');
INSERT INTO `t_user` VALUES ('147', 'রাজ', '+79516433633', 'raj', '111111', 'baramdei@yahoo.com', '', '1', '05/02/2010', '02:54:45 PM', '3', '0', '20100502025445100843');
INSERT INTO `t_user` VALUES ('148', 'আহমদ ময়েজ', '07951478557', 'somoy', 'baoul', 'amoyez@yahoo.co.uk', '', '1', '05/02/2010', '04:05:52 PM', '3', '0', '20100502040552628875');
INSERT INTO `t_user` VALUES ('149', 'Tariquel', '004522575874', 'Tariquel', 'tahmid260203', 'tariqueli@yahoo.com', '', '1', '05/02/2010', '04:06:50 PM', '3', '0', '20100502040650114062');
INSERT INTO `t_user` VALUES ('150', 'আশিক', '+৮৮০১৯২৭৯২৪৬৭৬', 'আশিক মাহামুদ', '০০০০০০০০০০', 'ashik2426@gmail.com', '', '0', '05/02/2010', '04:21:09 PM', '3', '0', '20100502042109235308');
INSERT INTO `t_user` VALUES ('151', 'তান্ত্রিক', '+79522438923', 'Vat_khamu', '111111', 'vat_khamu@yahoo.com', '', '1', '05/02/2010', '04:28:07 PM', '3', '0', '20100502042807871978');
INSERT INTO `t_user` VALUES ('152', 'নিঃসঙ্গ পথিক', '00971559809845', 'arian', 'airbus', 'mahmood81@ymail.com', '', '1', '05/02/2010', '05:19:01 PM', '3', '0', '20100502051901326392');
INSERT INTO `t_user` VALUES ('153', 'my blog', '017222235074', 'my', '1111111111', 'faysal.tc@gmail.com', '', '1', '05/02/2010', '08:16:24 PM', '3', '0', '20100502081624618448');
INSERT INTO `t_user` VALUES ('154', 'rongomoncho', '01671574060', 'asheque', '004003', 'cellone_mahmud@yahoo.com', '', '1', '05/02/2010', '09:22:47 PM', '3', '20101215192724', '20100502092247756883');
INSERT INTO `t_user` VALUES ('155', 'মোঃ লুৎফর রহমান', '০১৯১৩৪৬৮৩০১', 'lutfur', 'wdanhong', 'lutfurcri@yahoo.com', '', '1', '05/03/2010', '12:01:47 AM', '3', '0', '20100503120147251667');
INSERT INTO `t_user` VALUES ('156', 'সাজ্জাদ', '01911176808', 'sazzad', 'wq2344', 'sazzad_ahad@yahoo.com', '', '1', '05/03/2010', '01:28:40 AM', '3', '0', '20100503012840669212');
INSERT INTO `t_user` VALUES ('157', 'Sayedul', '+8801816108235', 'Sayedul', '003311mmaao0', 'sayedulhoquesajib@gmail.com', '', '1', '05/03/2010', '04:14:25 AM', '3', '20101020114356', '20100503041425641680');
INSERT INTO `t_user` VALUES ('158', 'chak', '913030501', 'sporsha', '805122', 'sporsha00@yahoo.com', '', '0', '05/03/2010', '05:21:16 AM', '3', '0', '20100503052116350108');
INSERT INTO `t_user` VALUES ('159', 'অরুদ্ধ সকাল', '+8801723412203', 'sokal', '123456', 'sokal.roy@gmail.com', '', '1', '05/03/2010', '10:25:44 AM', '3', '20110102151548', '20100503102544871160');
INSERT INTO `t_user` VALUES ('160', 'অক্ষর', '0402492135', 'tutul00m', '10082004', 'tutul00m@gmail.com', '', '1', '05/03/2010', '10:32:58 AM', '3', '0', '20100503103258925581');
INSERT INTO `t_user` VALUES ('161', 'ওরাকল', '(+৪৪)০৭৭৬০৭০০০৯২', 'quest', 'nasah1', 'oracle.samu@gmail.com', '', '1', '05/03/2010', '11:20:52 AM', '3', '0', '20100503112052467001');
INSERT INTO `t_user` VALUES ('162', 'মুর্সিদা আক্তার কলি', '01737400710', 'koli', 'jj', 'faysal.tc@gmail.com', '', '1', '05/03/2010', '11:33:52 AM', '3', '20110504132524', '20100503113352485664');
INSERT INTO `t_user` VALUES ('163', 'Majed Chowdhury', '01740859727', 'drmajedctg', 'coxsbazar', 'drmajedctg@yahoo.com', '', '1', '05/03/2010', '01:30:29 PM', '3', '0', '20100503013029563555');
INSERT INTO `t_user` VALUES ('164', 'মোতাছেম বিল্লা সামীম', '01722235074', 'shamim', 'jj', 'faysal.tc@gmail.com', '', '1', '05/03/2010', '11:09:40 PM', '3', '20110504132615', '20100503110940772618');
INSERT INTO `t_user` VALUES ('165', 'ফারজানা অপি', '01722235074', 'op', 'opopop', 'faysal.tc@gmail.com', '', '1', '05/03/2010', '11:13:51 PM', '3', '20110131201549', '20100503111351491937');
INSERT INTO `t_user` VALUES ('166', 'সুপারম্যান', '7894561320', 'SuperMan', 'superman', 'studentzitu@yahoo.com', '', '1', '05/03/2010', '11:59:35 PM', '3', '20110502232333', '20100503115935872999');
INSERT INTO `t_user` VALUES ('167', 'Duronto', '01722235074', 'but', 'jj', 'faysal.tc@gmail.com', '', '1', '05/04/2010', '01:56:49 AM', '3', '20110504142746', '20100504015649607839');
INSERT INTO `t_user` VALUES ('168', 'শাহাদাত হোসেন টিটু', '01722235074', 't2', 'jj', 'faysal.tc@gmail.com', '', '1', '05/04/2010', '04:23:48 AM', '3', '20110503185536', '20100504042348165688');
INSERT INTO `t_user` VALUES ('169', 'পি.কে.রাজেশ', '01728610728', 'ra', 'jj', 'isj09bd@gmail.com', '', '1', '05/04/2010', '05:23:03 AM', '3', '20110504132438', '20100504052303765188');
INSERT INTO `t_user` VALUES ('170', 'শাকিল আহমদ', '01817524563', 'sk', '1234567', 'shakilkhan_k@yahoo.com', '', '1', '05/04/2010', '07:24:06 AM', '3', '0', '20100504072406614707');
INSERT INTO `t_user` VALUES ('172', 'গুরু', '01722235074', 'guru', 'jj', 'faysal.tc@gmail.com', '', '1', '05/04/2010', '01:52:30 PM', '3', '20110504094830', '20100504015230875086');
INSERT INTO `t_user` VALUES ('173', 'asdas', 'saasas', 'yo man', 'sdf', 'studentzitu@yahoo.com', '', '1', '05/05/2010', '02:57:23 AM', '3', '0', '20100505025723976431');
INSERT INTO `t_user` VALUES ('174', 'জেবা রহমান', '01722235074', 'jba', 'jj', 'faysal.tc@gmail.com', '', '1', '05/05/2010', '06:25:10 AM', '3', '20110504142857', '20100505062510353236');
INSERT INTO `t_user` VALUES ('176', 'সাদা-পুরুষ', '01926825758', 'sadapurus', 'cjhdisyafaprmeus6+5djsahs#$%$d', 'sadapurus@gmail.com', '', '1', '05/06/2010', '09:14:19 PM', '3', '0', '20100506091419561690');
INSERT INTO `t_user` VALUES ('177', 'হাসনা হেনা মুন্নী', '01817524015', 'munni', '123456', 'tahaphc@yahoo.com', '', '1', '05/07/2010', '02:29:46 AM', '3', '20110319201427', '20100507022946721063');
INSERT INTO `t_user` VALUES ('15', 'ADMIN', '+8801718729753', 'admin', 'drummer', 'studentzitu@yahoo.com', '', '1', '05/07/2010', '01:32:36 PM', '3', '0', '20100507013236631173');
INSERT INTO `t_user` VALUES ('14', 'এডমিন', 'এডমিন', 'admin', 'admin', 'studentzitu@yahoo.com', '', '1', '05/07/2010', '01:33:25 PM', '3', '20101128225415', '20100507013325231549');
INSERT INTO `t_user` VALUES ('13', 'জিতু', '01718729753', 'zitu', 'zitu', 'studentzitu@yahoo.com', '', '1', '18-May-2010', '12:36:00 AM', '3', '20110408143350', '420024');
INSERT INTO `t_user` VALUES ('180', 'PHC', '01672326753', 'phc', '123123', 'tarek.japan@gmail.com', '', '1', '05/08/2010', '03:22:56 AM', '3', '0', '20100508032256864273');
INSERT INTO `t_user` VALUES ('182', 'এ নেগেটিভ', '017222235074', 'a-', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '09:51:59 AM', '3', '0', '20100509095159440427');
INSERT INTO `t_user` VALUES ('183', 'বি পজেটিভ', '017222235074', 'b+', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '09:54:55 AM', '3', '0', '20100509095455621332');
INSERT INTO `t_user` VALUES ('184', 'বি নেগেপিভ', '017222235074', 'b-', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '09:57:32 AM', '3', '0', '20100509095732253244');
INSERT INTO `t_user` VALUES ('185', 'এবি পজেটিভ', '017222235074', 'ab+', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '10:00:08 AM', '3', '0', '20100509100008760012');
INSERT INTO `t_user` VALUES ('186', 'এবি নেগেটিভ', '017222235074', 'ab-', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '10:03:02 AM', '3', '0', '20100509100302256287');
INSERT INTO `t_user` VALUES ('187', 'ICC Cricket Live Score', '017222235074', 'o+', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '10:10:14 AM', '3', '0', '20100509101014387540');
INSERT INTO `t_user` VALUES ('188', 'ও নেগিটেভ', '017222235074', 'o-', '1111111111', 'faysal.tc@gmail.com', '', '0', '05/09/2010', '10:17:05 AM', '3', '0', '20100509101705133295');
INSERT INTO `t_user` VALUES ('189', 'এম_আই_খান', '+8801673027053', 'm_i_khan', 'Muz@h1d.', 'm.i_khan@hotmail.com', '', '1', '05/10/2010', '03:14:56 AM', '3', '0', '20100510031456970197');
INSERT INTO `t_user` VALUES ('190', 'রবীন্দ্রনাথ ঠাকুর', '420', 'robi_thakur', 'robi', 'studentzitu@yahoo.com', '', '1', '05/11/2010', '12:04:34 PM', '3', '20101015205559', '20100511120434516389');
INSERT INTO `t_user` VALUES ('191', 'রাহাত৯১', '০১৯২০৫৫৭২৯০', 'rahat91', 'rahat', 'rahat91bd@gmail.com', '', '1', '05/13/2010', '12:06:19 PM', '3', '20110503134008', '20100513120619531738');
INSERT INTO `t_user` VALUES ('192', 'তাহসিন', '01722235074', 'qrf', 'jj', 'faysal.tc@gmail.com', '', '1', '05/13/2010', '10:34:22 PM', '3', '20110329104055', '20100513103422245286');
INSERT INTO `t_user` VALUES ('193', 'Rubayat', '01727291047', 'Rubayat', '88Charlie', 'rubayat_bd@hotmail.com', '', '1', '05/13/2010', '11:31:18 PM', '3', '0', '20100513113118432913');
INSERT INTO `t_user` VALUES ('194', 'মহাসাধক', '+79522438923', 'index.html', '111111', 'php.default@yahoo.com', '', '0', '05/15/2010', '04:32:40 PM', '3', '0', '20100515043240739019');
INSERT INTO `t_user` VALUES ('195', 'আইসিএস', '01722235074', 'ics', '1111111111', 'saiful.nuversity@yahoo.com', '', '1', '05/16/2010', '05:50:20 AM', '3', '20110504095152', '20100516055020501810');
INSERT INTO `t_user` VALUES ('196', 'মোনালিসা', '01722235074', 'jb', '1111111111', 'jebarahman99@gmail.com', '', '0', '05/17/2010', '02:17:27 AM', '3', '0', '20100517021727532867');
INSERT INTO `t_user` VALUES ('197', 'সোনিয়া আক্তার সুমি', '01722235074', 'shume', '123456', 'shume.shume@yahoo.com', '', '1', '05/17/2010', '02:24:35 AM', '3', '20110429081200', '20100517022435669180');
INSERT INTO `t_user` VALUES ('198', 'Faheem', '01916395865', 'Faheem', 'faheem', 'qfaheem807@gmail.com', '180.211.216.4', '1', '05/17/2010', '12:03:08 PM', '3', '0', '20100517120308906014');
INSERT INTO `t_user` VALUES ('199', 'সাইফ', '01719212263', 'saif', '1111111111', 'saif1024@gmail.com', '', '1', '05/18/2010', '09:34:33 AM', '3', '20110331053323', '20100518093433450041');
INSERT INTO `t_user` VALUES ('200', 'ডা. সুমন রহমান', '01712036010', 'sumon', '12345', 'sumonj9@yahoo.com', '', '1', '05/19/2010', '05:07:50 AM', '3', '0', '20100519050750342093');
INSERT INTO `t_user` VALUES ('201', 'প্রধান মডারেটর', '+79522438923', 'index.aspx', '111111', 'php.default@yahoo.com', '', '1', '05/19/2010', '02:00:20 PM', '3', '0', '20100519020020680721');
INSERT INTO `t_user` VALUES ('203', 'কালেকটর', '017222235074', '99', '99', 'faysal.tc@gmail.com', '', '1', '05/21/2010', '12:47:46 PM', '3', '20110428200738', '20100521124746722206');
INSERT INTO `t_user` VALUES ('204', 'ss', 'ss', 'ss', 'ss', 'studentzitu@yahoo.com', '', '1', '05/22/2010', '12:29:52 AM', '3', '0', '20100522122952975142');
INSERT INTO `t_user` VALUES ('205', 'বাংলা', 'sdfsd', 'bangla', 'bangla', 'studentzitu@yahoo.com', '', '1', '05/22/2010', '12:31:33 AM', '3', '0', '20100522123133840114');
INSERT INTO `t_user` VALUES ('206', 'ওমর ফারুক', '01670942237', 'omor', '12345', 'omaraswj@yahoo.com', '', '1', '05/22/2010', '03:05:46 AM', '3', '0', '20100522030546813366');
INSERT INTO `t_user` VALUES ('207', 'Mahbub', '0123456', 'Mahbub', '123456', 'mahbub.me.buet@gmail.com', '', '0', '05/22/2010', '01:43:18 PM', '3', '0', '20100522014318822364');
INSERT INTO `t_user` VALUES ('208', 'আনোয়ারুল আজিম', '01812668588', 'aa', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/22/2010', '02:21:14 PM', '3', '20110427214728', '20100522022114701921');
INSERT INTO `t_user` VALUES ('209', 'আবুল বাশার', '01812668588', 'ab', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/22/2010', '03:58:35 PM', '3', '20110503153241', '20100522035835652635');
INSERT INTO `t_user` VALUES ('210', 'আকলিমা', '01812668588', 'ac', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/22/2010', '04:03:06 PM', '3', '20110504143033', '20100522040306154593');
INSERT INTO `t_user` VALUES ('211', 'এ্যাডাম', '01812668588', 'ad', '99', 'mailabcd24@yahoo.com', '', '3', '05/22/2010', '04:06:54 PM', '0', '0', 'ban_user_20100522040654170527');
INSERT INTO `t_user` VALUES ('212', 'ফজলে এলাহী', '01812668588', 'ae', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/22/2010', '04:11:13 PM', '3', '20110504161657', '20100522041113154841');
INSERT INTO `t_user` VALUES ('213', 'তারিক', '01672326753', 'tarek1', '00110011', 'ww.tarek@yahoo.com', '', '0', '05/23/2010', '07:55:12 PM', '3', '0', '20100523075512358508');
INSERT INTO `t_user` VALUES ('214', 'ABDUS SALAM SONY', '008801611820639', 'a2zearn', '7772929', 'A2ZEARN@GMAIL.COM', '', '0', '05/23/2010', '10:43:41 PM', '3', '0', '20100523104341101804');
INSERT INTO `t_user` VALUES ('215', 'আফরীন', '01812668588', 'af', 'abcdx', 'mailabcd24@yahoo.com', '', '1', '05/24/2010', '08:04:59 AM', '3', '20110429105817', '20100524080459395510');
INSERT INTO `t_user` VALUES ('216', 'মি. আজগর আলী', '01812668588', 'ag', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/24/2010', '11:15:34 AM', '3', '20110422215526', '20100524111534904048');
INSERT INTO `t_user` VALUES ('217', 'এম আহসাবন', '01812668588', 'ah', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/24/2010', '11:26:20 AM', '3', '20110504161453', '20100524112620643093');
INSERT INTO `t_user` VALUES ('218', 'সুলতানা ইয়াছমিস', '01812668588', 'ai', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/24/2010', '11:37:24 AM', '3', '20110425085747', '20100524113724438450');
INSERT INTO `t_user` VALUES ('219', 'আল-জাহান', '01812668588', 'aj', 'jj', 'mailabcd24@yahoo.com', '', '1', '05/24/2010', '11:45:32 AM', '3', '20110302225616', '20100524114532849687');
INSERT INTO `t_user` VALUES ('220', 'আনোয়ার', '01717928890', 'anwar', '12345', 'anwarhossain2765@yahoo.com', '', '0', '05/24/2010', '01:34:14 PM', '3', '0', '20100524013414442593');
INSERT INTO `t_user` VALUES ('221', 'আনোয়ার হোসেন', '০১৭১৭৯২৮৮৯০', 'anwar87', 'jj', 'shahin85bd@gmail.com', '', '1', '05/24/2010', '01:52:38 PM', '3', '20110503064347', '20100524015238666746');
INSERT INTO `t_user` VALUES ('222', 'শরীফুল ইসলাম', '০১৬৭২৩২৬৭৫৩', 'sarif', 'jj', 'ww.tarek@yahoo.com', '', '1', '05/24/2010', '11:18:47 PM', '3', '20110502155640', '20100524111847118467');
INSERT INTO `t_user` VALUES ('223', 'আকতার হোসেন', '01812668588', 'ak', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '01:18:09 AM', '2', '20110504121028', '20100525011809780908');
INSERT INTO `t_user` VALUES ('224', 'আল-হেলাল', '01812668588', 'al', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '01:29:28 AM', '3', '20110503202714', '20100525012928607310');
INSERT INTO `t_user` VALUES ('225', 'সাহ ইমরান', '01812668588', 'am', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:08:59 AM', '3', '20110501125232', '20100525020859221048');
INSERT INTO `t_user` VALUES ('226', 'নাঈমা আনাম', '01812668588', 'an', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:13:44 AM', '3', '20110504143907', '20100525021344553701');
INSERT INTO `t_user` VALUES ('227', 'এম এম আউয়াল', '01812668588', 'ao', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:20:34 AM', '3', '20110408070111', '20100525022034488126');
INSERT INTO `t_user` VALUES ('228', 'এ্যাপি', '01812668588', 'ap', '99', 'mailabcd24@yahoo.com', '', '3', '05/25/2010', '02:30:46 AM', '0', '0', 'user_ban_20100525023046786881');
INSERT INTO `t_user` VALUES ('229', 'এ হক', '01812668588', 'aq', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:35:39 AM', '3', '20110501094250', '20100525023539712285');
INSERT INTO `t_user` VALUES ('230', 'আরশাদ', '01812668588', 'ar', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:40:15 AM', '3', '20110504142918', '20100525024015955140');
INSERT INTO `t_user` VALUES ('231', 'আমান সজিব', '01812668588', 'as', '1234', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:46:43 AM', '3', '20110121090712', '20100525024643800594');
INSERT INTO `t_user` VALUES ('232', 'আলী হোসেন তানভির', '01812668588', 'at', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '02:53:51 AM', '3', '20110401174505', '20100525025351611515');
INSERT INTO `t_user` VALUES ('233', 'আহসান উল্রা', '01812668588', 'au', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '03:02:37 AM', '3', '20110103194912', '20100525030237532383');
INSERT INTO `t_user` VALUES ('234', 'অভি', '01812668588', 'av', '99', 'mailabcd24@yahoo.com', '', '0', '05/25/2010', '03:09:30 AM', '3', '0', '20100525030930627306');
INSERT INTO `t_user` VALUES ('235', 'ওয়ালী আমজাদ', '01812668588', 'aw', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '03:17:18 AM', '3', '20110503063743', '20100525031718333574');
INSERT INTO `t_user` VALUES ('236', 'নিক্সন', '01812668588', 'ax', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '03:23:22 AM', '2', '20110504161405', '20100525032322903930');
INSERT INTO `t_user` VALUES ('237', 'আয়েশা', '01812668588', 'ay', '99', 'mailabcd24@yahoo.com', '', '1', '05/25/2010', '03:28:47 AM', '3', '20110425103240', '20100525032847971976');
INSERT INTO `t_user` VALUES ('238', 'আলীজা', '01812668588', 'az', '99', 'mailabcd24@yahoo.com', '', '0', '05/25/2010', '05:29:52 AM', '3', '0', '20100525052952543104');
INSERT INTO `t_user` VALUES ('239', 'জাহিদ হাসান সৌরভ', '01710990980', 'zahid', '1111111111', 'faysal.tc@gmail.com', '', '1', '05/26/2010', '11:42:29 PM', '3', '20110504074736', '20100526114229877976');
INSERT INTO `t_user` VALUES ('240', 'শামীম চৌধুরী', '01917342453', 'samim', '12345', 'samim.dhakaversity@yahoo.com', '', '1', '05/28/2010', '11:22:27 AM', '3', '20110425114434', '20100528112227612446');
INSERT INTO `t_user` VALUES ('241', 'হাসান আহমেদ', '01719432567', 'hasan', '786', 'hasan.ahmed.mirppur@gmail.com', '', '1', '05/29/2010', '03:53:21 AM', '3', '0', '20100529035321449468');
INSERT INTO `t_user` VALUES ('242', 'ইশতার আহমেদ শাকিল', '01817515345', 'shakilabd', 'thebook', 'ww.tarek@yahoo.com', '', '1', '05/29/2010', '11:21:12 AM', '3', '20110203193757', '20100529112112745760');
INSERT INTO `t_user` VALUES ('243', 'Carex Group', '01719728762', 'cg', '123456', 'ww.tarek@yahoo.com', '', '1', '05/30/2010', '09:15:35 PM', '3', '0', '20100530091535501115');
INSERT INTO `t_user` VALUES ('244', 'ফিয়াস', '01722235074', 'fias', '1111111111', 'saif1024@gmail.com', '', '1', '05/31/2010', '01:58:49 AM', '3', '20110504143037', '20100531015849422438');
INSERT INTO `t_user` VALUES ('245', 'মো: খায়রুল আলম', '01734-300507', 'khairul', '123456', 'ww.tarek@yahoo.com', '', '0', '05/31/2010', '11:27:52 PM', '3', '0', '20100531112752738457');
INSERT INTO `t_user` VALUES ('246', 'Shamsul Haque', '01921164041', 'sms', '123456', 'shams.ih.du@gmail.com', '', '1', '06/01/2010', '06:29:52 AM', '3', '20110503193009', '20100601062952600104');
INSERT INTO `t_user` VALUES ('247', 'Dr. Engr. Md. Jahangir Alam', '0088029665639', 'jahangir', 'jesmin5207', 'mjahangiralam@ce.buet.ac.bd', '', '1', '06/01/2010', '08:23:05 AM', '3', '0', '20100601082305464435');
INSERT INTO `t_user` VALUES ('248', 'GlamModdee', '123456', 'GlamModdee', 'wifqimfe', 'pianosepagiga@gmail.com', '', '0', '06/01/2010', '09:58:35 AM', '3', '0', '20100601095835112449');
INSERT INTO `t_user` VALUES ('249', 'আয়েশা সিদ্দিকা', '০১৮২৪৫০৮২৬৪', 'asa', '123456', 'saleh.ahmed.dhaka@gmail.com', '', '1', '06/02/2010', '04:04:46 AM', '3', '20100912134610', '20100602040446943375');
INSERT INTO `t_user` VALUES ('250', 'মারিয়াম জামিলা', '01824571523', 'mm', '123456', 'saleh.ahmed.dhaka@gmail.com', '', '1', '06/02/2010', '04:08:59 AM', '3', '20110227203238', '20100602040859646603');
INSERT INTO `t_user` VALUES ('251', 'মাসুদা সুলতানা রুমী', '০১৮২৩৪৫৬৭৮৯', 'sultana', '123456', 'saleh.ahmed.dhaka@gmail.com', '', '1', '06/03/2010', '12:09:09 AM', '3', '20101021075436', '20100603120909984915');
INSERT INTO `t_user` VALUES ('252', 'ড. ইমদাদুল্লাহ মুহাজিরে সুনামগঞ্জী', '০১৮১৭৫১৫৩৪০', 'saleh2', '১২৩৪৫৬', 'saleh.ahmed.dhaka@gmil.com', '', '0', '06/03/2010', '12:16:38 AM', '3', '0', '20100603121638932430');
INSERT INTO `t_user` VALUES ('253', 'আলমগীর হোসেন', '01814675678', 'alom', '123456', 'saleh.ahmed.dhaka@gmail.com', '', '1', '06/03/2010', '12:56:02 AM', '11', '20110417224652', '20100603125602368755');
INSERT INTO `t_user` VALUES ('254', 'QRF', '01817515340', 'qrf1', '123456', 'qrf.1001@gmail.com', '', '1', '06/03/2010', '01:47:20 AM', '3', '0', '20100603014720308067');
INSERT INTO `t_user` VALUES ('255', 'মৌলভী আবু তাহের', '০১৭১৯৫৪২৫৮৫', 'abutaher', '123456', 'tarek.japan@gmail.com', '', '1', '06/05/2010', '03:42:22 AM', '3', '20110501195937', '20100605034222100817');
INSERT INTO `t_user` VALUES ('256', 'ওবায়দুল হক', '০১৭১৫৮৩৫৯৬', 'obied', '222555888', 'tarek.japan@gmail.com', '', '1', '06/05/2010', '03:44:27 AM', '3', '20110420194650', '20100605034427667615');
INSERT INTO `t_user` VALUES ('257', 'মুআল্লাম ইবরাহীম রব্বানী', '0180506210', 'ibrahim', '23655725', 'alasiratimmustakim@gmail.com', '', '1', '06/05/2010', '09:34:13 AM', '3', '20110318180615', '20100605093413253304');
INSERT INTO `t_user` VALUES ('258', 'রাহেনা আক্তার লাকী', '০১৬৭২৩২৬৭৫৩', 'lucky', '00110011', 'ww.tarek@yahoo.com', '', '1', '06/05/2010', '12:52:14 PM', '3', '0', '20100605125214391155');
INSERT INTO `t_user` VALUES ('259', 'তানিয়া আনাম', '0180506210', 'tania', '99', 'anm265@gmail.com', '', '1', '06/06/2010', '12:06:14 AM', '3', '20100918202502', '20100606120614338146');
INSERT INTO `t_user` VALUES ('260', 'আব্বাস উদ্দিন স্বপন', '০১৭৩৯৮৮৬০৯১', 'sopon', '123456', 'ww.tarek@yahoo.com', '', '1', '06/06/2010', '05:01:43 AM', '3', '0', '20100606050143546426');
INSERT INTO `t_user` VALUES ('261', 'alauddinborhab', '01556464688', 'alauddinborhan', 'Han042037', 'alauddinborhan@yahoo.com', '', '1', '06/06/2010', '07:08:29 AM', '3', '0', '20100606070829667688');
INSERT INTO `t_user` VALUES ('262', 'aftab2860', '00000000000', 'aftab2860', 'Argentina', 'aftab2860@gmail.com', '', '1', '06/06/2010', '11:53:23 PM', '3', '0', '20100606115323923013');
INSERT INTO `t_user` VALUES ('263', 'yo', '01718729753', 'yo', 'yo', 'studentzitu@yahoo.com', '', '0', '06/07/2010', '04:15:06 AM', '3', '0', '20100607041506465520');
INSERT INTO `t_user` VALUES ('264', 'sazzad', '01725839308', 'sazzadcsecu', 'lutfunnahar', 'sazzadcse@live.com', '', '1', '06/09/2010', '03:44:48 AM', '3', '0', '20100609034448396470');
INSERT INTO `t_user` VALUES ('265', 'রাকিবুল হাসান সুমন', '০১৯১৫৯৫৩৯২৩', 'rakibul', '123456', 'rakibulrp@yahoo.com', '', '1', '06/10/2010', '12:38:32 AM', '3', '20101105102657', '20100610123832202092');
INSERT INTO `t_user` VALUES ('266', 'জাহানারা হ্যাপী', '০১৮১৭৫১৫৩৪০', 'happy', '123456', 'tarek.japan@gmail.com', '', '1', '06/11/2010', '02:22:16 AM', '3', '0', '20100611022216846461');
INSERT INTO `t_user` VALUES ('267', 'zamir', '01923442385', 'mdhzamir', '01923442385', 'mdhzamir@gmail.com', '202.56.7.182', '1', '06/11/2010', '08:03:46 PM', '3', '0', '20100611080346702978');
INSERT INTO `t_user` VALUES ('268', 'এম. হাসান', '018125469241', 'h2', '123456', 'tarek.japan@gmail.com', '', '1', '06/13/2010', '03:33:27 AM', '3', '20110318124754', '20100613033327878316');
INSERT INTO `t_user` VALUES ('274', 'হাদীস প্রচারক', '01719212265', 'hp', 'hp', 'hadithpreacher@gmail.com', '', '1', '06/14/2010', '04:25:55 AM', '3', '0', '20100614042555661823');
INSERT INTO `t_user` VALUES ('270', 'মোঃ আসাদ ইকবাল', '01190115366', 'mdasadiqbal', 'mdasadiqbal', 'mdasadiqbal@gmail.com', '', '1', '06/13/2010', '02:32:38 PM', '3', '0', '20100613023238434524');
INSERT INTO `t_user` VALUES ('271', 'আহলে হাদীস', '0180506210', 'ahlehadith', 'hadith', 'saleh.ahmed.dhaka@gmail.com', '', '1', '06/13/2010', '04:33:03 PM', '3', '0', '20100613043303589003');
INSERT INTO `t_user` VALUES ('272', 'আহলে কুরআন', '০১৯৭১৫৪৮২৪', 'ahlequran', 'quran', 'reformar.islam@gmail.com', '', '1', '06/13/2010', '04:39:00 PM', '3', '0', '20100613043900675696');
INSERT INTO `t_user` VALUES ('275', 'ফারুক', '০১৭১৬৫৯৫১৭০', 'saurov', '010177', 'farukhassan6@gmail.com', '', '1', '06/15/2010', '09:46:17 AM', '3', '0', '20100615094617954014');
INSERT INTO `t_user` VALUES ('276', 'ফিউশন ফাইভ', '০১৯২৩৫৪৮৫৬', 'fifa', 'thethe', 'ffusion5@gmail.com', '', '0', '06/16/2010', '12:54:04 PM', '3', '0', '20100616125404855593');
INSERT INTO `t_user` VALUES ('277', 'এনাম উস শাকুর', '01913634323', 'enam us shakur', '279717', 'aanam2k@gmail.com', '', '1', '06/17/2010', '12:28:40 PM', '3', '0', '20100617122840888426');
INSERT INTO `t_user` VALUES ('278', 'বাংলার লাঠিয়াল', '01718729753', 'banglar_lathial', 'banglar_lathial', 'studentzitu@yahoo.com', '', '1', '06/18/2010', '02:30:59 PM', '3', '20101015230745', '201006180230591iTzqHhSYBQNnPDCdKL3aMjt0wo4Jm');
INSERT INTO `t_user` VALUES ('279', 'Leo', '01912252095', 'Leo', 'tonumia', 'Leo_leo1983@yahoo.com', '203.202.255.134', '0', '06/20/2010', '01:58:54 AM', '3', '0', '20100620015854vexak9JYRpc0t1G7hnSd3NBrgVHiqs');
INSERT INTO `t_user` VALUES ('280', 'হাসিনা আহমেদ বিউটি', '০১৭১০৯৯০৯৮০', 'hasina', 'ahmed', 'beauty.opest.net@gmail.com', '119.30.39.89', '3', '06/22/2010', '03:55:23 AM', '3', '0', 'ban_user_20100622035523dljweRGWKzUky02tSXu369CJcPmDQV');
INSERT INTO `t_user` VALUES ('281', 'হাসিনা আহমেদ তানিয়া', '01710990980', 'hasina ahmed', '01010101', 'hasina.ahmed.tania@gmail.com', '116.193.174.103', '0', '06/23/2010', '03:08:58 AM', '3', '0', '20100623030858NVUluys7i1m4p08DF2SGzMTC3rhRLH');
INSERT INTO `t_user` VALUES ('282', 'হাসিনা আহমেদ (তানিয়া)', '01710990980', 'hasinaahmed', '01010101', 'hasina.ahmed.tania@gmail.com', '116.193.174.103', '1', '06/23/2010', '03:38:05 AM', '10', '20100908104444', '20100623033805bGcPlBK5Sij4Hs9L7AxyDMraqC2VfZ');
INSERT INTO `t_user` VALUES ('283', 'ফিউশন ফাইভ.', '018192125632', 'ffive', '222555888', 'fdotfive@gmail.com', '116.193.174.103', '1', '06/23/2010', '04:03:37 AM', '3', '0', '20100623040337c1KNes9krMdF6XCYRxhoZTLPUSibJ2');
INSERT INTO `t_user` VALUES ('284', 'মনির আহমেদ', '01913255816', 'monirahmed', '019132558166', 'monirahmed85@ymail.com', '117.18.231.23', '1', '06/23/2010', '03:14:18 PM', '3', '0', '20100623031418zmRCABney6ijQqP8Gtr4vkaDxowTJ0');
INSERT INTO `t_user` VALUES ('285', 'মোস্তাফিক', '01914750737', 'Mostafiq', '018406', 'mostafiq_lcbs@yahoo.com', '122.99.97.53', '0', '06/24/2010', '02:01:33 AM', '3', '0', '20100624020133RMwsYWZei6tqBKTP9C5yzf3g7hvLxF');
INSERT INTO `t_user` VALUES ('286', 'ইউজার', '01718729753', 'user', 'user', 'studentzitu@yahoo.com', '', '1', '06/24/2010', '11:00:36 AM', '3', '20110501222038', '20100624110036AiqJoysP27RLdEjtzr4b5vHZXfBgcM');
INSERT INTO `t_user` VALUES ('287', 'সাইরাস চৌধুরী', '01815456072', 'syrusbd', '39133913', 'syrusbd@gmail.com', '117.18.231.15', '1', '06/27/2010', '10:02:55 PM', '3', '20101011221000', '20100627100255FJZfT4Eksqyz0KXbNWdpH8eBUC3DvS');
INSERT INTO `t_user` VALUES ('288', 'আমিনুল ইসলাম মামুন', '01712701623', 'Aminul Islam Mamun', '786786', 'aimamun@yahoo.com', '114.130.8.8', '1', '06/29/2010', '12:23:42 AM', '3', '20110504142030', '20100629122342RuKyHoAjJPh9ldxNrviBz6qQDCmw1F');
INSERT INTO `t_user` VALUES ('289', 'Remar', '123456', 'Remar', 'qHyRXs0481', 'admin@femdomfreepics.net', '84.23.54.89', '0', '06/29/2010', '10:29:44 AM', '3', '0', '20100629102944seV4jNFbxHp3EUGrqDPXRLigKna7k1');
INSERT INTO `t_user` VALUES ('290', 'সন্তান দিবস (১৫ই নভেম্বর)', 'N/A', 'Child Day', '15111511', 'childday_2005@yahoo.com', '114.130.8.8', '1', '07/02/2010', '10:49:25 PM', '3', '20110503090830', '20100702104925rRv3UV5J7u9GgSH0pQKyX4ETWlwFNc');
INSERT INTO `t_user` VALUES ('291', 'struggle', '01671981413', 'Jaffrey', 'jaffrey168', 'jaffrey168@yahoo.com', '182.16.156.122', '0', '07/03/2010', '02:47:01 AM', '3', '0', '20100703024701GvcD7QBUltsLM3xjpVkYgCfH4WPXyA');
INSERT INTO `t_user` VALUES ('292', 'jaffrey', '01671981413', 'jaffrey168', '168861', 'jaffrey168@yahoo.com', '182.16.156.122', '0', '07/03/2010', '02:48:44 AM', '3', '0', '20100703024844rZpfoMhSiHPdB2gxCly3j1bz6AuFmD');
INSERT INTO `t_user` VALUES ('293', 'মুসলিম', '01718729753', 'muslim', 'muslim', 'studentzitu@yahoo.conm', '202.148.56.81', '1', '07/03/2010', '12:53:55 PM', '3', '20110322213106', '20100703125355v7Vqnz9xX1oFWAT3mMhkDpLRliJ06w');
INSERT INTO `t_user` VALUES ('294', 'মাহবুব', '০১৬৭১৮৫৪৮০১', 'mahbub03', '123456', 'mahbub.me03@gmail.com', '58.147.174.176', '1', '07/04/2010', '06:49:13 AM', '3', '0', '20100704064913R7rlBVaWntEHp3efUqYSyCP0joMZbc');
INSERT INTO `t_user` VALUES ('295', 'faruq', '+971554616085', 'faruqdxb', '616200', 'faruq_dxb09@yahoo.com', '86.96.229.91', '1', '07/04/2010', '06:51:13 AM', '3', '0', '20100704065113g4CJnNHL3SqYhUkdab5uE0jP7TV9MD');
INSERT INTO `t_user` VALUES ('297', 'AL', '01923546577', 'al1', '123456', 'momotajahan@gmail.com', '119.30.39.89', '1', '07/05/2010', '08:55:47 AM', '3', '0', '20100705085547Q8M9eopU4J6ZASi5LGrwlqKVdsg71X');
INSERT INTO `t_user` VALUES ('298', 'Rex World', '01716353014', 'alomusic', '353014', 'alomusic74@yahoo.com', '202.56.7.185', '1', '07/05/2010', '11:22:08 PM', '3', '0', '20100705112208TaeuK1BPtLJW3wRFhxDkfoM8pQ9GZ6');
INSERT INTO `t_user` VALUES ('299', 'Nil', '01676128573', 'Nil', 'nil2344', 'mdhzamir@hotmail.com', '119.30.34.29', '1', '07/08/2010', '08:57:22 AM', '3', '20101206153514', '20100708085722WDwsfJdX6QhRvy9GUMP5jAZBxrq38C');
INSERT INTO `t_user` VALUES ('300', 'রিজওয়ান', '01714204423', 'rizf', 'mayabi', 'rizwan.me05@gmail.com', '119.30.39.89', '1', '07/08/2010', '12:29:54 PM', '3', '0', '20100708122954Dz7weTdrUbQPySm1huFHXRoWJ6g90Y');
INSERT INTO `t_user` VALUES ('301', 'রঙের মানুষ', '01670140625', 'understandable', '01670140625', 'poroshju@gmail.com', '119.30.39.90', '1', '07/08/2010', '01:25:09 PM', '3', '20110502144742', '20100708012509tg3acwv6GiZXjnWU98uqTFsyRfxl4K');
INSERT INTO `t_user` VALUES ('302', 'বেলাল উদ্দিন', '০১৮১৭৬৫৪৫৬৭', 'belaluddin', '123456', 'tarek.japan@gmail.com', '119.30.39.88', '1', '07/08/2010', '02:23:59 PM', '3', '20110424122356', '20100708022359UvFgmkSniszHDCP2cWZTA86djeGp0B');
INSERT INTO `t_user` VALUES ('303', 'সোহেলআলম', '01711933160', 'sohelalam', '933160', 'sralam.5894@yahoo.com', '119.30.39.88', '0', '07/09/2010', '12:23:37 AM', '3', '0', '20100709122337HdjqJKcZnR8BmsG9TXharxt5MNzy4E');
INSERT INTO `t_user` VALUES ('304', 'পান্দিওন', '01711933160', 'pandion', '933160', 'sohelalam65@gmail.com', '119.30.39.88', '1', '07/09/2010', '01:58:20 AM', '3', '20110503233003', '20100709015820bZGNVFhytcRxoSiCX9K2pJuelvdH6w');
INSERT INTO `t_user` VALUES ('305', 'sakhawatbd', '01914650711', 'S. M. Sakhawat Ahmed', '811077811', 'sakhawatbd@yahoo.com', '123.49.19.235', '1', '07/09/2010', '03:22:18 AM', '3', '0', '20100709032218a7dMZSk0gcYlb36z98nFiEQUJBjeCK');
INSERT INTO `t_user` VALUES ('306', 'pc', '01817656789', 'pc', '99', 'belaluddin.hatiay@yahoo.com', '119.30.39.88', '0', '07/09/2010', '06:53:28 AM', '3', '0', '20100709065328sTPDHtCrLZWcdqKYyNERJnpXz5FMxo');
INSERT INTO `t_user` VALUES ('307', 'MC', '01917656543', 'MC', '123456', 'belaluddin.hatiya@yahoo.com', '119.30.39.88', '1', '07/09/2010', '06:57:28 AM', '3', '0', '20100709065728e5fsYvP2CGygMuqWFh7Zr6NcXk0BJR');
INSERT INTO `t_user` VALUES ('308', 'মুখ ও মুখোশ', '01712046743', 'mukhomukhush', 'beepopy', 'faruque-rashid@yahoo.com', '116.68.205.25', '0', '07/10/2010', '01:19:00 AM', '3', '0', '201007100119008tXZ1YR5b4HTpvxEq90hePJAlw7jCd');
INSERT INTO `t_user` VALUES ('309', 'অণুসন্ধানী', '01911493923', 'trust', '0208005', 'gaany.balok@gmail.com', '119.30.38.67', '1', '07/10/2010', '01:27:52 AM', '3', '0', '20100710012752VC0PRhSMfr17bTiJEx9eFW4uaQ8p65');
INSERT INTO `t_user` VALUES ('310', 'আলো আধার', '01714173459', 'ehsaan018', 'lightofheaven', 'naser_iu@yahoo.com', '119.30.34.20', '0', '07/10/2010', '02:00:57 AM', '3', '0', '20100710020057wPDLfJ172hjr5bHg4ploanuFeT0Xdq');
INSERT INTO `t_user` VALUES ('311', 'হ্নীলার বাঁধন', '01199484742', 'hneelarbnadhon', 'sumon915404', 'hneelarbnadhon@yahoo.com', '117.18.231.26', '1', '07/10/2010', '02:07:55 AM', '3', '20110429000315', '20100710020755XSdQaL1bJ9P8CsKNDyB2j6rFwUTqvV');
INSERT INTO `t_user` VALUES ('312', 'লিখন', '01719-397939', 'likhon', '397939', 'bifc_likhon@yahoo.com', '27.131.12.5', '1', '07/10/2010', '02:11:06 AM', '3', '0', '20100710021106ka4bHXtZ1Rn0hAgjmPCrs9V7E5lqy6');
INSERT INTO `t_user` VALUES ('313', 'স্টাডি ইটিই', '01920929243', 'studyete', 'almighty', 'studyete@yahoo.com', '203.223.94.202', '1', '07/10/2010', '02:38:02 AM', '3', '0', '20100710023802SF7oHCVaAMvTues0DPR2Utgi14flWL');
INSERT INTO `t_user` VALUES ('314', 'মানুষ৯৯', '01678151625', 'manus99', '999999999', 'dr_arif99@yahoo.com', '202.134.8.12', '0', '07/10/2010', '02:49:07 AM', '3', '0', '20100710024907mT0fWuKS3r8UCBG2obVAvhHylX4gzd');
INSERT INTO `t_user` VALUES ('315', 'মেরিনার', '01678017503', 'mariner', 'mariner477', 'mariner.chowdhury@gmail.com', '117.18.231.6', '1', '07/10/2010', '03:04:38 AM', '3', '20110226092714', '20100710030438FY6m4GC3RbrNSJ0fglL7spze8wcyMH');
INSERT INTO `t_user` VALUES ('316', 'আকাশের তারাগুলি', 'na', 'dipshikha', '19081976', 'mahabub1908@gmail.com', '202.161.191.50', '1', '07/10/2010', '03:23:55 AM', '3', '0', '20100710032355MrgWH2vTYVJ3zfKNuCkZ4DQLPotSl1');
INSERT INTO `t_user` VALUES ('317', 'দাসত্ব', '0013168712917', 'sami_aero007', 'solido', 'sami_1284@yahoo.com', '156.26.97.181', '1', '07/10/2010', '05:05:56 AM', '3', '20110103012323', '20100710050556ALcSw1F3hqBCjo7mgxVnPRUa0rMKZe');
INSERT INTO `t_user` VALUES ('318', 'নিউটন', 'nai', 'newton', 'newton', 'studentzitu@yahoo.com', '', '1', '07/10/2010', '10:31:36 AM', '3', '0', '20100710103136Rx7G06hw8kv1TXU5CZVQKYu4AEH2Dy');
INSERT INTO `t_user` VALUES ('319', 'ORAM', '0215463225', 'orm', 'orm', 'opestblog@gmail.com', '116.193.174.103', '1', '07/10/2010', '10:45:27 PM', '3', '20110104115509', '20100710104527WxjMCkAfoTGQua4PDE90U3vzgVBnh8');
INSERT INTO `t_user` VALUES ('320', 'ওপেস্ট আর্কাইভ', '০২৪৫৮৭১২৩', 'oa', 'oa', 'faysal.tc@gmail.com', '116.193.174.103', '1', '07/10/2010', '11:20:15 PM', '3', '0', '20100710112015cpW2zk4DKfMexqiuJ109jCXtTsBELR');
INSERT INTO `t_user` VALUES ('321', 'ORAM(ওর‌্যাম)', '019123456789', 'ORAM', '1234', 'faysal.tc@gmail.com', '116.193.174.103', '1', '07/10/2010', '11:29:02 PM', '3', '0', '20100710112902r5Uoi6k170jpQ3WYxfZCXsHRADgSzJ');
INSERT INTO `t_user` VALUES ('322', 'mnurul', '01711504737', 'mnurul', 'aminurul', 'nurulamin07@hotmail.com', '202.56.4.81', '1', '07/11/2010', '04:19:44 AM', '3', '0', '20100711041944ZEq7gFo2rk1U8CxAaYuSW6D5GVsQc4');
INSERT INTO `t_user` VALUES ('323', 'অরুনাভ পাভেল', '+8801712429368', 'arunavpavel', '96321478', 'arunav.pavel@yahoo.com', '119.30.34.29', '0', '07/11/2010', '02:29:22 PM', '3', '0', '20100711022922MaRBTUfr7vuQEmlptA4nzKPhxJ3S1W');
INSERT INTO `t_user` VALUES ('324', 'চিরকুমার', '01813076272', 'chirokumar', 'sumon915404', 'hneelarbnadhon@hotmail.com', '117.18.231.2', '0', '07/12/2010', '02:06:24 AM', '3', '0', '20100712020624S3qsfAEpMloQ1ngZehKyXrNVUucm26');
INSERT INTO `t_user` VALUES ('325', 'জাকিয়া তানজিম', '+610410273470', 'Zakia Tanzim', 'shahin12', 'zakiatanzimbd@gmail.com', '203.171.197.140', '1', '07/12/2010', '03:32:40 AM', '3', '0', '201007120332408dypPzvjTmhRsSlnrAXaYcZqKoJ3UM');
INSERT INTO `t_user` VALUES ('326', 'Mithun', '+88001717287307', 'Mithun', '287307', 'mashidulislam@gmail.com', '119.30.39.88', '1', '07/12/2010', '05:58:15 AM', '3', '0', '20100712055815Vt4sPCdA2YoJvUX7Lc9Dl1eiwQTjpN');
INSERT INTO `t_user` VALUES ('327', '&#2460;&#2489;&#2495;&#2480; &#2480;&#2489;&#2478;&#2494;&#2472;', '01176861676', 'jaherrahman', '১৬৮৬১৬৭৭', 'jaher20092009@hotmail.com', '117.18.231.21', '1', '07/12/2010', '06:41:08 AM', '3', '20110504131932', '20100712064108vzmDAVZ0Ffr7YURC5G2dWL1puHEk3s');
INSERT INTO `t_user` VALUES ('328', 'শয়তান হন্তারক', '01913483874', 'evileraser', '123opE', 'dhakashark@gmail.com', '203.223.94.165', '1', '07/12/2010', '07:33:12 AM', '3', '20100911042621', '20100712073312tipJPCxm5w7kyhqFsEHUA018Krdoa2');
INSERT INTO `t_user` VALUES ('329', 'সিটিজি৪বিডি', '01815615812', 'ctg4bd', '2266800', 'ctg4bd2008@yahoo.com', '86.96.229.89', '1', '07/12/2010', '09:57:07 AM', '3', '20110503173237', '20100712095707Nc0FZnlY6R4qxbjt8iBwWkfup7meAo');
INSERT INTO `t_user` VALUES ('330', 'partho', '01713246142', 'partho', '239367', 'partho_gd@yahoo.com', '202.59.136.5', '1', '07/12/2010', '11:59:52 PM', '3', '20101004104139', '20100712115952FX8jpmnc36E1vQNBHGDqRJrs75AVTk');
INSERT INTO `t_user` VALUES ('331', 'অজানা', '01818115323', 'nayanislam', '030388', 'hasanislamnayan@gmail.com', '64.255.180.80', '1', '07/13/2010', '01:01:32 AM', '3', '0', '201007130101326o0dgQWFCNVLq3bjGr5Uc42ze9T78x');
INSERT INTO `t_user` VALUES ('332', 'নিমপাতা', '01714223622', 'sayeedahamed', 'Picchu', 'sayeedahamed@yahoo.com', '117.18.231.7', '1', '07/13/2010', '12:03:00 PM', '3', '0', '20100713120300kXUB1qfcgCVo2yEz0wQthmG6ZrlSTJ');
INSERT INTO `t_user` VALUES ('333', 'অনুসন্ধানী চোখ', '01726861677', 'jr', '861677', 'jaher20092009@hotmail.com', '117.18.231.32', '1', '07/13/2010', '10:36:33 PM', '3', '20110502143425', '20100713103633Qrq61eu0zx5JniGm47PCpV2XFEvSYD');
INSERT INTO `t_user` VALUES ('334', 'ফারুক হোসেন', '01712851306', 'faruk66bd', 'andalib', 'faruk66bd@gmail.com', '95.175.75.17', '0', '07/15/2010', '08:22:03 AM', '3', '0', '2010071508220389ecSmoVxKaW7lMjkLgbP2uwBHf0iQ');
INSERT INTO `t_user` VALUES ('335', 'ফারুক', '8801712851306', 'faruk55kw', 'andalib1', 'faruk55kw@gmail.com', '95.175.75.17', '1', '07/15/2010', '09:00:40 AM', '3', '20110422201127', '20100715090040sPMVYwnE63vt0aUj51xHQCdBeKbWZG');
INSERT INTO `t_user` VALUES ('342', 'ছারপোকা', '01722235075', 'sarpoka', '12341234', 'faysal.tc@gmail.com', '119.30.39.88', '1', '07/16/2010', '01:46:04 AM', '3', '20101121165859', '20100716014604jXHRCkE3PQgUJfa8pvwBnDsS7Mo4YZ');
INSERT INTO `t_user` VALUES ('336', 'তাহসিন আলম', '01817515340', 't.alom', '123456', 'momotajahan@gmail.com', '119.30.38.66', '1', '07/15/2010', '09:16:15 AM', '3', '0', '20100715091615DfSakc2d5Lyo6MseHuRKY10GQwnPA9');
INSERT INTO `t_user` VALUES ('337', 'lovelu', '01817707932', 'bristi_behin_boisakh', 'lovelulovleu', 'bristi_behin_boisakh@hotmail.com', '94.99.165.17', '1', '07/15/2010', '11:04:30 AM', '3', '0', '20100715110430sp7m8RcBjGbw5fHtC6JaDW2zEMinLq');
INSERT INTO `t_user` VALUES ('338', 'sobuj bangla', '+966544668617', 'rose akter', 'bangladesh', 'roseakter@ymail.com', '62.120.87.234', '1', '07/15/2010', '04:26:01 PM', '3', '0', '20100715042601bNZfgJMPSc4Hru0GLDTlxy8VeCB7Qv');
INSERT INTO `t_user` VALUES ('339', 'মিকি', '01722235074', 'miki', '12341234', 'faysal.tc@gmail.com', '119.30.39.86', '1', '07/15/2010', '11:25:23 PM', '3', '20110119205744', '20100715112523BPpegHkm1X2uiSwcDzn8fdbx4hsyo3');
INSERT INTO `t_user` VALUES ('340', 'আগামীর প্রতিনিধি', '01717861578', 'nr', '861677', 'mukhomuki@yahoo.com', '117.18.231.23', '1', '07/16/2010', '12:53:19 AM', '3', '20110502144300', '20100716125319KklVo6wSa25WJiUReMgZPmG3vYDrHL');
INSERT INTO `t_user` VALUES ('341', 'পিয়াল', '01722235074', 'pial', '12341234', 'faysal.tc', '119.30.39.88', '0', '07/16/2010', '01:33:52 AM', '3', '0', '20100716013352L2dnH4RzyfU6WKc1rPxvhpuGM9CbTw');
INSERT INTO `t_user` VALUES ('343', 'শাপলা', '01737898744', 'shapla', '1234', 'sharif94bd@gmail.com', '119.30.39.88', '1', '07/16/2010', '02:09:59 AM', '3', '20110121092121', '20100716020959gk6YzNUTGAfpPQ8MebXLV7w9qCtWdo');
INSERT INTO `t_user` VALUES ('344', 'এম.জি. হাফিজ', '+001745304827', 'M.G. Khan', '01724289030', 'hafiz827@yahoo.com', '115.127.9.146', '0', '07/16/2010', '04:25:16 AM', '3', '0', '20100716042516XH5Yu36tgnJKfh0E4d2ZvUcSy19ipb');
INSERT INTO `t_user` VALUES ('345', 'ধানসিঁড়ি', '01810000000', 'dhansirhi', 's1h1r1s12w', 'dhansirhi@gmail.com', '117.18.231.4', '1', '07/16/2010', '09:50:00 AM', '3', '0', '20100716095000v1bJonlPAGMFyR9N6BjqD7Qfs0wY8i');
INSERT INTO `t_user` VALUES ('346', 'আবু জাফর', '0192834567', 'abj', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '07/16/2010', '11:02:26 PM', '3', '20110419202051', '20100716110226YFop0czLvEXJZ3bCdgmrG2qheKj9Dw');
INSERT INTO `t_user` VALUES ('347', 'ফয়সল ইসলাম', '০১৯২৮৩৪৫৬৭', 'faisal', '1234', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '07/16/2010', '11:05:57 PM', '3', '20110121092754', '20100716110557iZSq2txA8UVhDFscTryzgEHajWfebQ');
INSERT INTO `t_user` VALUES ('348', 'তারেক হাসান শুভ', '০১৬৭২৩৩৬৭৫৩', 'ths', 'thenew', 'tarek.japan@gmail.com', '119.30.39.88', '1', '07/16/2010', '11:07:32 PM', '3', '20101030174120', '20100716110732ibUNt2D5GCl9a8xcV3rjpJZgyd4Th6');
INSERT INTO `t_user` VALUES ('349', 'লেখক', '01718729753', 'lekhok', 'lekhok', 'studentzitu@yahoo.com', '', '1', '07/17/2010', '07:48:39 PM', '3', '20100912234926', '20100717074839iVXxT98Q2C6dLsGf7qyeHtnjZ51MFc');
INSERT INTO `t_user` VALUES ('350', 'জনতার আদালত', '01725854521', 'j', '861677', 'jaher20092009@hotmail.com', '117.18.231.3', '0', '07/18/2010', '01:50:55 AM', '3', '0', '20100718015055G9rBStlg05h3vXE1s46QDpxu2bYcoR');
INSERT INTO `t_user` VALUES ('351', 'আব্দুস সাকুর', '017212338', 'abdussakur', 'abdus007176', 'abdussakur6725@gmail.com', '119.30.39.86', '1', '07/18/2010', '06:33:46 AM', '3', '20100904023749', '201007180633466eglxtnhpA34CkVEjQRLJfWYXm79Ua');
INSERT INTO `t_user` VALUES ('352', 'এন্টাইভন্ড', 'antibhondo', 'antibhondo', 'ssaniya', 'anti.bhondo@gmail.com', '111.235.157.2', '1', '07/18/2010', '12:21:19 PM', '3', '20110428222709', '20100718122119YTPiz2MfdJ0howkc7lAUamys5g4tDr');
INSERT INTO `t_user` VALUES ('353', 'মুনিম', '01715045985', 'munim', 'xeenan01', 'munim2000@yahoo.com', '115.127.10.226', '0', '07/18/2010', '02:16:33 PM', '3', '0', '20100718021633anrJY4tfHwdBVmuNRp3CEAXZK6SWMs');
INSERT INTO `t_user` VALUES ('354', 'আঁতেল', '01674757802', 'atel', '01918898564', 'joydu423@gmail.com', '203.188.250.85', '1', '07/19/2010', '12:41:04 AM', '3', '20101130170300', '20100719124104o0nqNWyTeu28rDsPzl6wXxdcgAGSJ3');
INSERT INTO `t_user` VALUES ('355', 'অনির্বাণ', '+971-50-6602031', 'chkanirban', '764040', 'chkanirban@yahoo.com', '91.75.240.126', '1', '07/19/2010', '01:48:27 AM', '3', '0', '201007190148272GX0T3NMwS5Dv4cxjRZJ1kPVmCWYil');
INSERT INTO `t_user` VALUES ('356', 'আমার আমি', '01725485445', 'aaa', '102030', 'opestid@yahoo.com', '117.18.231.11', '1', '07/19/2010', '01:55:48 AM', '3', '20110121193631', '20100719015548JlmxPqLb8YScZG7jpT5AfDCVv09n21');
INSERT INTO `t_user` VALUES ('357', 'জনতার চোখে', '01685424581', 'jaa', '102030', 'opestid@yahoo.com', '117.18.231.11', '1', '07/19/2010', '02:08:10 AM', '3', '20110121193538', '20100719020810u8aKGYz0M5m3biWT7kD4vlFCqoZfLw');
INSERT INTO `t_user` VALUES ('358', 'যোদ্ধা', '004407404581134', 'ferdous', 'late123', 'ferdous991@gmail.com', '92.14.140.26', '1', '07/19/2010', '02:19:50 AM', '3', '0', '20100719021950wgnY2MArV4jceRoUzxy0u7lT5Kh8tH');
INSERT INTO `t_user` VALUES ('359', 'আল্পনা', '01685424581', 'alpona', '102030', 'sports_ad', '117.18.231.11', '0', '07/19/2010', '02:22:40 AM', '3', '0', '20100719022240n8Rq9L0jEr3dcQMx7Jhma6Agk4X1Gi');
INSERT INTO `t_user` VALUES ('360', 'ড়ৎশড়', '01811412870', 'ohorit', '123456', 'orko_mist@yahoo.com', '119.148.7.14', '1', '07/19/2010', '04:12:30 AM', '3', '0', '20100719041230GBY0Qx32qb5oV1dp4c6ZHntEjW89rF');
INSERT INTO `t_user` VALUES ('361', 'নতুন', '01718729753', 'notun', 'notun', 'studentzitu@yahoo.com', '', '1', '07/19/2010', '09:40:56 AM', '3', '20100907130956', '20100719094056tECcN1ZL0g4AlfUR36ST9mQXoKkzHP');
INSERT INTO `t_user` VALUES ('363', '‡gvnv¤§&` bvwRg DÏxb', '01731271370', 'nazimchy', 'nazim271370', 'nazim_khan75@yahoo.com', '202.65.171.94', '1', '07/20/2010', '09:58:20 AM', '3', '20101204211432', '20100720095820UtjKDed0VNk45q7yQAucoYpwsWLbvx');
INSERT INTO `t_user` VALUES ('380', 'জসিম ইয়ামিন', '01673099765', 'josim eyameen', '906376', 'md_eyameen@yahoo.com', '180.234.153.28', '1', '07/23/2010', '08:12:48 AM', '3', '20100825010818', '20100723081248sl0UxpwcPmCitZjD4X6rGMboT9YzqJ');
INSERT INTO `t_user` VALUES ('362', 'সরোয়ার হোসেন', '(65) 91890260', 'sorowar', 'singapore', 'sorowar2002@yahoo.com', '137.132.3.10', '1', '07/19/2010', '09:15:00 PM', '3', '0', '20100719091500WkvmFU21MTKBhgtpDn40QciuRGeaNH');
INSERT INTO `t_user` VALUES ('364', 'আকতার হোসেন', '০১৮১৭৬৫৪৮৭০', 'aktar', '123456', 'haktar@ymail.com', '116.193.174.103', '1', '07/20/2010', '10:15:51 AM', '3', '20101223131242', '20100720101551cnpXyAgvsD3fNW8Tkzxlo0dBCUR56a');
INSERT INTO `t_user` VALUES ('365', 'সাদা মেঘ', '০১৮১২৩৪৫৬৭৮', 'dhakauni', 'as', 'saif.hatiya@gmail.com', '119.30.38.68', '1', '07/20/2010', '04:49:05 PM', '3', '20110422113019', '20100720044905X2Eq5ias8n3PAfGbYuL0T6yM7Jjvgz');
INSERT INTO `t_user` VALUES ('366', 'অচেনা পথিক', '০১৮১৭৫১৫৩৪০', 'tongicollegea', 'as', 'saif.hatiya@gmail.com', '119.30.38.68', '1', '07/20/2010', '04:52:43 PM', '3', '20110119020409', '20100720045243uyEadP4X6iTt2AnWbqFD0NSJ38MLQl');
INSERT INTO `t_user` VALUES ('367', 'দীপা রায়', '01817654345', 'ielts', 'as', 'saif.hatiya@gmail.com', '119.30.38.68', '1', '07/20/2010', '04:55:18 PM', '3', '20110322083815', '20100720045518h7DjliA4pNtJKvYETmGuWVwPMzULgk');
INSERT INTO `t_user` VALUES ('368', 'momi', '0191394810', 'chand', 'chand', 'chand@yahoo.net', '123.49.4.74', '0', '07/21/2010', '01:00:27 AM', '3', '0', '20100721010027PA4oFtah5mSQ3BgVDGdyl21KXnx9uk');
INSERT INTO `t_user` VALUES ('369', 'Bazalia', '+971554616085', 'faruqdxb2009', '616200', 'faruq_dxb09@yahoo.com', '86.96.228.93', '1', '07/21/2010', '07:44:39 AM', '2', '0', '20100721074439VcLXEGAMet7nqgZBxH8K21N6zikQS3');
INSERT INTO `t_user` VALUES ('370', 'বাজালিয়া বোমাংহাট', '+৮৮০১৮২০৫১৫৫৬৪', 'Bomanghat', '61620012', 'bomanghat@yahoo.com', '195.229.236.218', '1', '07/21/2010', '09:23:49 AM', '3', '0', '201007210923496LTdCPtkY9SGFAeVm42DWvsEuNgoRK');
INSERT INTO `t_user` VALUES ('371', '&#2437;&#2474;&#2503;&#2480;&#2494; &#2478;&#2495;&#2472;&#2495;', '2543265', 'opera', 'opera', 'oprerasing@gmail.com', '123.200.14.202', '1', '07/22/2010', '01:13:58 AM', '3', '20110503171541', '20100722011358JEpseTxD9CtUmg65AQaNLjc2VFwnb8');
INSERT INTO `t_user` VALUES ('372', 'P.H.C', '01987656544', 'p.h.c', 'thenew', 'tarek.japan@gmail.com', '119.30.38.67', '1', '07/22/2010', '01:45:32 AM', '3', '20110312163032', '20100722014532GbwLEjmhX719pfcBPtU8aogxTKJrdz');
INSERT INTO `t_user` VALUES ('373', 'M.A.Shah', '01917705781', 'mashah', 'megha24', 'mushtaque.shah@gmail.com', '203.223.94.194', '1', '07/22/2010', '08:01:21 AM', '3', '0', '20100722080121AWkUHsqr3uD8F2Cwhfe4a1RJi6NY7K');
INSERT INTO `t_user` VALUES ('374', 'আজাদ আল্-আমীন', '01740541765', 'azadalamin', '01712043829', 'azad_alamin@yahoo.com', '203.223.95.172', '1', '07/22/2010', '08:55:46 AM', '3', '20101011225304', '201007220855468Wv2RuTHmChaldtbxG0ZJKkFg1sQL4');
INSERT INTO `t_user` VALUES ('375', 'জেনন', '01554312415', 'xenon', 'mrinalkanti', 'chyama143@gmail.com', '120.50.183.38', '1', '07/22/2010', '09:32:20 AM', '3', '0', '20100722093220BmEH6Wd0QKSjefTJo5sMUhCqucrxFn');
INSERT INTO `t_user` VALUES ('376', 'আবুফয়সাল', '00971506113627', 'abufaisal', 'namkol', 'lokmanelectronics@gmail.com', '195.229.235.36', '0', '07/22/2010', '10:21:31 AM', '3', '0', '201007221021318mzNeDpVidc2v3W1RwuJyHgMlZ4hro');
INSERT INTO `t_user` VALUES ('377', 'khadimoul', '00971559470065', 'khadimoul', '096136', 'kmul2006@gmail.com', '195.229.237.43', '1', '07/22/2010', '01:27:07 PM', '3', '0', '201007220127076XJoLz5uK0jFWgdUwykp7Pi3D4VErs');
INSERT INTO `t_user` VALUES ('378', 'Zia', '01817046188', 'RahmanMdZiaur', '123bangla', 'zia_wt@yahoo.com', '117.18.231.26', '1', '07/23/2010', '03:24:26 AM', '3', '0', '201007230324264LMCxBrheZURXDP6uWSJ9zEVmT50ba');
INSERT INTO `t_user` VALUES ('379', 'কোপা শামসু', '01711170012', 'kopashamsu', '567432', 'syful_bh@live.com', '116.193.174.71', '1', '07/23/2010', '04:33:24 AM', '3', '0', '20100723043324jEXx28Yg0V9hncHirQbqP1MF5K6v73');
INSERT INTO `t_user` VALUES ('381', 'রুবাইয়্যাত', '01916272262', 'rubaiyaatahsan', '0311199003111990', 'rubaiyaatahsan@gmail.com', '113.11.4.185', '1', '07/23/2010', '04:11:53 PM', '3', '0', '20100723041153zyJAwZHT3VLmiUBWj5SEgrMY691kbn');
INSERT INTO `t_user` VALUES ('382', 'মেঘবালক', '01711946810', 'meghbalok', 'rajshahi94', 'meghbalok94@gmail.com', '117.18.231.7', '1', '07/24/2010', '09:54:43 AM', '3', '20110104041423', '20100724095443JoW9nvxUClyDLutSKifc8HFq5BQGVE');
INSERT INTO `t_user` VALUES ('383', 'সোনামনির', '01912299885', 'shonamonir', 'opest2shonamonir', 'shonamonir@live.com', '202.134.14.27', '1', '07/24/2010', '05:00:45 PM', '3', '0', '20100724050045sVn519DWwq8omCFNTZfYjE3v7eULk4');
INSERT INTO `t_user` VALUES ('384', 'নাজমুস', '01739845976', 'errrorer', '*nzmskb*', 'errrorer@gmail.com', '119.30.39.86', '1', '07/25/2010', '01:35:57 AM', '3', '20101111031753', '20100725013557lUB1Zfh0gmYGdacpRkV3x7E2izjStv');
INSERT INTO `t_user` VALUES ('385', 'চির নীল', '01520084455', 'everblue', '8532110', 'faizul666@gmail.com', '119.30.39.89', '1', '07/25/2010', '02:58:20 AM', '1', '0', '20100725025820CmMj4zLHEWkRaobdhrBDyQlXTAgGp0');
INSERT INTO `t_user` VALUES ('386', 'গুগল', '01718729753', 'google', 'google', 'studentzitu@yahoo.com', '', '1', '07/25/2010', '11:59:18 AM', '3', '20100907125806', '201007251159188yKZeX9HmsfGcUVarBbDukPQlNzLjh');
INSERT INTO `t_user` VALUES ('387', 'ইয়াহু', '01718729753', 'yahoo', 'yahoo', 'studentzitu@yahoo.com', '', '1', '07/25/2010', '12:00:09 PM', '3', '20100906231712', '20100725120009jutgR7lJ4Afi6FbspUcNCVZoyzMBdX');
INSERT INTO `t_user` VALUES ('388', 'ফেসবুক', '01718729753', 'facebook', 'facebook', 'studentzitu@yahoo.com', '', '1', '07/25/2010', '12:02:12 PM', '3', '0', '201007251202122Bs3KCEVrgDmJ81kuPQcWzal67SMN4');
INSERT INTO `t_user` VALUES ('389', 'শাওন দি বস 4', '+8801710571571', 'sawontheboss4', 'jasia03', 'sawontheboss4@gmail.com', '111.235.158.18', '1', '07/26/2010', '05:59:24 AM', '3', '20110102122430', '20100726055924jMZwf93mFqvS2P5rLRDyg7x4BinsHu');
INSERT INTO `t_user` VALUES ('390', 'YouTube', '01718729753', 'youtube', 'youtube', 'studentzitu@yahoo.com', '', '1', '07/26/2010', '01:53:13 PM', '3', '0', '20100726015313NzHPum20e4R7Y5dLEgoQnGqUwaT3rk');
INSERT INTO `t_user` VALUES ('391', 'গাঁয়ের মেয়ে', '01751548842', 'gm', '102030', 'opestid@yahoo.com', '117.18.231.27', '1', '07/27/2010', '05:17:11 AM', '3', '20110331223947', '20100727051711jAkyNwVou3bRCE6YeF0qlcZaGthi42');
INSERT INTO `t_user` VALUES ('392', 'শাহারিয়ার', '01199000000', 'shahariar', 'shahariar', 'shahariar.rony@hotmail.com', '202.56.7.184', '1', '07/27/2010', '11:22:53 AM', '3', '0', '20100727112253N9AKSlX5igmQxYdwp0v23cDZkqe4Gs');
INSERT INTO `t_user` VALUES ('393', 'মাতবর', '০১৭১৭৮৮৫৫২২', 'matbor', 'মাতবর১', 'djghaura@gmail.com', '96.44.133.12', '1', '07/28/2010', '02:19:14 AM', '3', '20110418183534', '20100728021914hQTogV1LNKZ4uP7Ba5lbXRt3feFEW2');
INSERT INTO `t_user` VALUES ('394', 'খান মোঃ নাছির উদ্দীন সুমন', '০১১৯৯৪৮৪৭৪২', 'sumon-coxs', 'sumon915404', 'hneelarbnadhon@hotmail.com', '117.18.231.11', '0', '07/28/2010', '02:47:49 AM', '3', '0', '20100728024749kgX9ioM325NlZsF8yLKwrBpJQPVfTj');
INSERT INTO `t_user` VALUES ('395', 'রাজাকার', '01195105186', 'rajakar', 'sumon915404', 'sumon_ckp@yahoo.com', '117.18.231.11', '1', '07/28/2010', '02:53:53 AM', '3', '20110121200126', '20100728025353KyNLAB2v67YqJ9Q3HWXlxRc1kEThsg');
INSERT INTO `t_user` VALUES ('396', 'জামাতহেটার', '01712703570', 'gamathater', '123457', 'potitarpoti@gmail.com', '119.30.39.88', '1', '07/29/2010', '07:55:41 PM', '3', '0', '20100729075541SuY6QwPphdVnv2rGcsRWzHKJyFoiA1');
INSERT INTO `t_user` VALUES ('397', 'রাতজাগা মেয়ে', '01676377198', 'ratjaga', 'ratjaga1', 'ratjaga@guerrillamailblock.com', '180.211.216.4', '0', '07/29/2010', '11:23:03 PM', '3', '0', '20100729112303BxViLvq51YMcetKXFklGRf34bJWPjE');
INSERT INTO `t_user` VALUES ('398', 'লাভ গুরু', '01718729753', 'love_guru', 'loveguru', 'studentzitu@yahoo.com', '', '1', '07/30/2010', '01:16:53 AM', '3', '20110331235044', '201007300116536psAVkWUDjcEZ9oMhw3y7glfxeHB1t');
INSERT INTO `t_user` VALUES ('399', 'শহীদ', '01718729753', 'shahid', 'shahid', 'studentzitu@yahoo.com', '', '1', '07/30/2010', '01:21:16 AM', '3', '0', '20100730012116yK8jHvzqLGE097YfcWDiPmCNaoFsRh');
INSERT INTO `t_user` VALUES ('400', 'মুক্তিযোদ্ধা', '01718729753', 'muktijoddha', 'muktijoddha', 'studentzitu@yahoo.com', '', '1', '07/30/2010', '01:26:32 AM', '3', '20101228144632', '20100730012632N2nceoF78kJK6Y1fMduw0AxmCUhiqE');
INSERT INTO `t_user` VALUES ('401', 'প্রযুক্তি', '01718729753', 'projukti', 'projukti', 'studentzitu@yahoo.com', '', '1', '07/30/2010', '01:41:50 AM', '3', '20100907133927', '20100730014150qk4jEBQn01bx3HrcMJu9XYhVet8KSG');
INSERT INTO `t_user` VALUES ('402', 'হ্যাকার', '01718729753', 'hacker', 'hacker', 'studentzitu@yahoo.com', '', '1', '07/30/2010', '01:50:29 AM', '3', '20100920145405', '20100730015029dUj79GmN80afxhVcEvrgP6RulZMTCy');
INSERT INTO `t_user` VALUES ('403', 'ন্যান্সি', '01674757802', 'nency', '01918898564', 'joydu24@gmail.com', '203.188.250.85', '1', '07/30/2010', '08:18:07 AM', '3', '20101130170223', '20100730081807iDCHzXkpMPEsaJtrT3WGe6KgjvAxU4');
INSERT INTO `t_user` VALUES ('404', 'মঈনুল হোসেন', '০১৭১০৯১২৯৩৮', 'moinul', 'moinul', 'moinul90@gmail.com', '180.211.216.4', '1', '07/30/2010', '09:10:45 AM', '3', '20101230205727', '20100730091045aAy8kW19t4XHhrfuBQiqMvzoTd0Gcm');
INSERT INTO `t_user` VALUES ('411', 'আজমান আন্দালিব', '০১৭২৭২৬২১৯৫', 'Azman Andalib', 'akhterprantooishee', 'akhterbw@gmail.com', '119.30.39.85', '1', '08/03/2010', '09:04:01 PM', '3', '20110319124811', '20100803090401EVyx4GbmWzhsBLwaDUARkfvYK8jF7T');
INSERT INTO `t_user` VALUES ('405', 'ছাইয়া', '01190675611', 'tarek al salam', '00838076', 'tarek_ckp@yahoo.com', '117.18.231.28', '1', '08/01/2010', '01:57:31 AM', '3', '0', '20100801015731TivhEug7VUsDMo0z13lWtY62KAe4nj');
INSERT INTO `t_user` VALUES ('406', 'এ. রহমান', '01754544851', 'abr', '102030', 'abdurahman1011@yahoo.com', '117.18.231.2', '0', '08/01/2010', '04:32:40 AM', '3', '0', '20100801043240mkHb7Ncx2reMtyZPjg1FXRnwd3SvWi');
INSERT INTO `t_user` VALUES ('407', 'এ রহমান', '01754544851', 'arahman', '102030', 'opestid@yahoo.com', '117.18.231.2', '1', '08/01/2010', '04:38:41 AM', '3', '20110502143906', '20100801043841lpxy7vZGF4Y3HnKLdz0Rmhe8bTNfwP');
INSERT INTO `t_user` VALUES ('408', 'Equaryerarkep', '123456', 'Equaryerarkep', 'hzWKyuq714', 'tarrieddy@mail.ru', '95.26.208.95', '0', '08/02/2010', '05:42:57 AM', '3', '0', '20100802054257knRNbdyYuz9QZL4HcwpAlxCK3emDfJ');
INSERT INTO `t_user` VALUES ('409', 'পান্থ বিহোস', '01673636757', 'bihosh', 'bihosat', 'ebihosh@gmail.com', '119.30.39.88', '1', '08/02/2010', '03:32:12 PM', '3', '20100904202235', '20100802033212QhzjsmWYf4LXGRPHnu9BVyCqaZ2dcJ');
INSERT INTO `t_user` VALUES ('410', 'গনেশ', '০১৭১৭৬৯৫২৪০', 'monerul', 'samire', 'monerul@gmail.com', '180.211.216.4', '1', '08/03/2010', '11:27:52 AM', '3', '0', '20100803112752zd5k0mYs7RweDSEgrAK3JyW6oHfN8p');
INSERT INTO `t_user` VALUES ('412', 'আল মামুন', '01912-722424', 'Al Mamun', '123456', 'mamunnarail@yahoo.com', '116.193.174.158', '0', '08/04/2010', '01:03:20 AM', '3', '0', '20100804010320vynHTPg38NozFXDRKELSmpxq5dabcj');
INSERT INTO `t_user` VALUES ('413', 'বিবেকের কারাগার', '01754544851', 'bk', '102030', 'opestid@yahoo.com', '117.18.231.3', '1', '08/04/2010', '01:21:27 AM', '3', '20110105140121', '20100804012127gSKkYX06rc8Cizq3ZLao7QRBMW4dmJ');
INSERT INTO `t_user` VALUES ('414', 'মামুন', '01912-722424', 'Mamun', '722424', 'mamunnarail@yahoo.com', '116.193.174.158', '1', '08/04/2010', '02:19:19 AM', '3', '20110314130155', '20100804021919QnM7NvlSgeJW8rVEHmy4kZdYXDKFsL');
INSERT INTO `t_user` VALUES ('415', 'ইবনে রুশদ', '০২১৫৫৮৫৬৫৪', 'akash', '123456789', 'technojit@gmail.com', '119.30.39.88', '1', '08/04/2010', '02:39:23 AM', '3', '0', '20100804023923BYy8qnV73Le6abhWvmfor1Q5PjR4Ft');
INSERT INTO `t_user` VALUES ('416', 'সামু', '01718729753', 'samu', 'samu', 'studentzitu@yahoo.com', '', '1', '08/04/2010', '08:34:38 AM', '3', '20101217213132', '20100804083438R9rTchpvbjw4txgo8e7FQNuS3EXKUi');
INSERT INTO `t_user` VALUES ('417', 'ডাক্তার', '01718729753', 'doctor', 'doctor', 'studentzitu@yahoo.com', '', '1', '08/06/2010', '12:41:56 AM', '3', '20110417010302', '20100806124156Qn35AiqJdVhUCEFRr9G7HKc4ZSfxup');
INSERT INTO `t_user` VALUES ('418', 'সাহাদাত উদরাজী', '01911380728', 'udraji', 'udraji123456', 'udraji@gmail.com', '202.22.202.106', '0', '08/06/2010', '12:43:14 AM', '3', '0', '20100806124314TZMojDKrWvN8uEcbqJAyCi1GpUYHFa');
INSERT INTO `t_user` VALUES ('419', 'Z. Alom', '01923655725', 'zalom', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '05:59:47 AM', '3', '20110503202644', '20100806055947ca7FuDpBqSYbh3Ao2PgjwxeHrM9GET');
INSERT INTO `t_user` VALUES ('420', 'ফিরোজ আলম', '01715750157', 'falam', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '06:28:08 AM', '3', '20110417210027', '201008060628086XJjGTxiQ08VNFRsYKEZqMHvhLwD4z');
INSERT INTO `t_user` VALUES ('421', 'মাহমুদা আলম সেতু', '01715750157', 'shetu', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '06:39:13 AM', '3', '0', '20100806063913ZBPSytXGKosbuMCwY48JLpUH3lDd6T');
INSERT INTO `t_user` VALUES ('422', 'ডা. জাহাঙ্গীর আলম', '01674878922', 'jalom', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '06:45:54 AM', '3', '20100912005416', '201008060645542W61Y0QoAMvPf9LpCRTgUuVXS3stEq');
INSERT INTO `t_user` VALUES ('423', 'আসিফুল আলম প্রিন্স', '01674878922', 'princ', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '07:00:23 AM', '3', '20110502185515', '20100806070023qHnRyTXeb0K6iLSCvMVjumzwGZa8Fx');
INSERT INTO `t_user` VALUES ('424', 'আকতার হোসাইন', '01926', 'akhossain', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.88', '1', '08/06/2010', '07:10:08 AM', '3', '20101123221419', '2010080607100895n3qiMx8JeCPjkm4WvrwZFKRgbQVl');
INSERT INTO `t_user` VALUES ('425', 'বাংলার নবাব', '23445566', 'nobab', '123456', 'saleh.ahmed.dhaka@gmail.com', '119.30.38.67', '1', '08/06/2010', '12:52:03 PM', '3', '20110105211921', '20100806125203GnT82lVdr0QgYS4sUfoHDijXzupeLw');
INSERT INTO `t_user` VALUES ('426', 'জাম্বো', '01918377062', 'jumbo', 'iloveyou', 'himubangla@gmail.com', '122.173.181.53', '3', '08/06/2010', '02:35:36 PM', '0', '0', 'ban_user201008060235366GqCEZP3jMeAnkShV1aK0NxpovL7gf');
INSERT INTO `t_user` VALUES ('427', 'আব্দুল খালেক', '০১৯২৫৪৭৮৬৫২', 'akhalek', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.158', '0', '08/06/2010', '10:24:03 PM', '3', '0', '20100806102403QRUDFbj1LCuhaHYTgXz0tn9VlJ3i6A');
INSERT INTO `t_user` VALUES ('428', 'আব্দুশ শুকুর', '০১৯২৩৫৬৪৫৮৭', 'a.sukur', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.158', '0', '08/06/2010', '10:25:27 PM', '3', '0', '201008061025275nDQq791dJbMXHcmarupSY0zAogB3h');
INSERT INTO `t_user` VALUES ('429', 'আলী আহমেদ', '০১৮২৪৫৭৪১২', 'a.ahmed', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.158', '0', '08/06/2010', '10:26:14 PM', '3', '0', '20100806102614JRiWMw4YFk50jhETZv2LKuq9SpBDAm');
INSERT INTO `t_user` VALUES ('430', 'এনামুল হক', '০১৮২৪৫৬৭৫', 'anam', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.158', '0', '08/06/2010', '10:27:00 PM', '3', '0', '20100806102700iYuLRflUQsoVbavdxhM3kGX6TnyjAz');
INSERT INTO `t_user` VALUES ('431', 'লুতফুর রহমান', '০১৯২৪৫৭৭৪১২', 'l.rahman', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.158', '0', '08/06/2010', '10:27:45 PM', '3', '0', '20100806102745UkyrpQbVqmt0Puowh3Z76s9KazdgLC');
INSERT INTO `t_user` VALUES ('432', 'লূৎফুর রহমান', '০১২৪৫৮৭৪২', 'ltfur.r', '123456', 'shawkat.ali.zawhar@gmail.com', '116.193.174.158', '1', '08/06/2010', '11:16:00 PM', '3', '0', '201008061116004MQ0PdueTm5Z6NUxlEX2Yshk8pyqza');
INSERT INTO `t_user` VALUES ('433', 'ফর্ক', '01718729753', 'forko', 'forko', 'studentzitu@yahoo.com', '', '1', '08/07/2010', '05:57:39 AM', '3', '0', '20100807055739V7pLy5zaTDZjP9xr4G0WFu2eXkdoQn');
INSERT INTO `t_user` VALUES ('434', 'ইঞ্জি: আজিজুল হক', '০১৭৩০০৮৩২৩৩', 'aziz', '1234', 'engrhuq47@gmail.com', '116.193.174.158', '0', '08/07/2010', '09:52:56 AM', '3', '0', '20100807095256qB3ls4dhaxzrQmuU95T6iMGYoCKEvk');
INSERT INTO `t_user` VALUES ('435', 'তিষা', '০১৯২৩৪৫৬৭৮', 'টesha', '123456', 'tarek.japan@gmail.com', '119.30.38.75', '1', '08/08/2010', '02:02:41 AM', '3', '20101022164242', '20100808020241BWay415SFkgxedhYNAEvVtfZjK3n2L');
INSERT INTO `t_user` VALUES ('436', 'নীল প্রজাপতি', '০১৮১৫৭৬৪৫৬৭', 'nilprojapoti', 'tahrij', 'talha_jamil@yahoo.com', '116.193.174.27', '1', '08/09/2010', '02:50:12 PM', '3', '20100828003516', '201008090250123RH5ouqac9BbfxNWrteTS7MUzwCl6J');
INSERT INTO `t_user` VALUES ('437', 'ইসমাঈল হোসেন', '01712304325', 'ismael', '123456', 'saleh.ahmed.dhaka@gmail.com', '116.193.174.27', '1', '08/09/2010', '09:38:50 PM', '3', '0', '20100809093850oDW74VsSpdFThGBkAmxycCJtrHLz9e');
INSERT INTO `t_user` VALUES ('438', 'iepkhemtkor', '43186938813', 'iepkhemtkor', 'NkNtnv', 'hycsow@sttqfu.com', '118.97.64.122', '0', '08/10/2010', '03:40:44 AM', '3', '0', '20100810034044DgoX3w5JQjGH0eaFA7zmRMv18NYEB6');
INSERT INTO `t_user` VALUES ('439', 'wfcjtyvgpuh', '59533166528', 'wfcjtyvgpuh', 'jBv3E', 'mbyflo@hymiju.com', '184.73.235.81', '0', '08/10/2010', '03:53:37 AM', '3', '0', '20100810035337xyjS1XeouPKpiAGZ93qCzRY6Q08gHV');
INSERT INTO `t_user` VALUES ('440', 'kwkhlguzlez', '35631476010', 'kwkhlguzlez', 'kliJx', 'jmolms@qwmyjn.com', '213.163.97.20', '0', '08/10/2010', '07:49:14 AM', '3', '0', '201008100749143GSM6bCon1A8TkYW5itHe0jrsULhZl');
INSERT INTO `t_user` VALUES ('441', 'xewqxflo', '38490542952', 'xewqxflo', 'UzAMdp', 'qeqqtn@sajzjd.com', '115.76.202.63', '0', '08/10/2010', '10:35:16 AM', '3', '0', '201008101035168VcKiN9b25GTDYMWlkav6nm0ZHSFof');
INSERT INTO `t_user` VALUES ('442', 'সত্যের পূজারী', '8801715378778', 'sotterpujari', 'tahrij', 'jaberibnazar@gmail.com', '119.30.38.72', '1', '08/10/2010', '05:23:49 PM', '3', '20110104185145', '20100810052349E5XTFd9vbiPp2NwuhyQVWKH6ZGBoms');
INSERT INTO `t_user` VALUES ('443', 'daud', '01929763049', 'Daud', '1111980', 'daud_dhk@yahoo.com', '203.76.113.90', '1', '08/10/2010', '11:19:41 PM', '3', '0', '20100810111941WCD5TLK9em4MoV0rtyc6lJnfa8QEPY');
INSERT INTO `t_user` VALUES ('444', 'স্টিফেন হকিং', '01718729753', 'stf_hok', 'stfhok', 'studentzitu@yahoo.com', '', '1', '08/11/2010', '12:51:54 PM', '3', '20100906121544', '20100811125154oACp7NtQVE63baFXTWg4D2xGqeyLfm');
INSERT INTO `t_user` VALUES ('445', 'বন্ধু', '০১৯২৩৪৫৬৭৮', 'friend', '123456', 'nsakibcox@gmail.com', '116.193.174.27', '0', '08/12/2010', '09:54:06 AM', '3', '0', '20100812095406wQYorm1f2iNtLWqG0E3MVRPjD6znaZ');
INSERT INTO `t_user` VALUES ('446', 'ydnjfots', '98171056526', 'ydnjfots', 'fcMmYK', 'joagqc@isznpj.com', '173.212.209.160', '0', '08/12/2010', '11:52:43 AM', '3', '0', '20100812115243NMkYgCwupQvKn7HmJ9ZG4q2P68D3Et');
INSERT INTO `t_user` VALUES ('447', 'লিমন', '8801715182342', 'limon', '595455', 'hasan.mah1985@gmail.com', '180.200.236.250', '1', '08/13/2010', '02:58:11 PM', '3', '0', '20100813025811xb6WE0v7fuy2JKgrBQ4cFwMjVtTLZh');
INSERT INTO `t_user` VALUES ('448', 'মধু', '01716900515', 'modhu', '12345678', 'modhujodu@yahoo.com', '180.234.36.203', '1', '08/14/2010', '12:25:12 AM', '3', '20110503232540', '20100814122512QVw42fC7ZyqY19pW8d50itXERPzoNA');
INSERT INTO `t_user` VALUES ('449', 'মুসাফির', 'অঘোষিত', 'musafir', 'mahmud', 'abdullahalmahmud.masum@gmail.com', '202.65.173.73', '1', '08/14/2010', '01:22:32 PM', '3', '0', '20100814012232zEDLXsUuZlgHQ7JwSeix4A8vKPRG3b');
INSERT INTO `t_user` VALUES ('450', 'দুরন্ত পথিক', '01670187538', 'tareqbdmiu', 'meghla', 'tareqbdmiu@yahoo.com', '64.255.164.44', '0', '08/15/2010', '01:06:15 AM', '3', '0', '20100815010615pZNF6cS0vmoGKwXaUf8txsRqnj1lYP');
INSERT INTO `t_user` VALUES ('451', 'পাভেল চৌধুরী', '৬৪৬৬৫৭৭৭৪০', 'pavelcc', 'pavel4pavel', 'pavelcc@gmail.com', '65.51.114.50', '1', '08/16/2010', '08:17:10 AM', '3', '20110414060633', '20100816081710Th1iM57easKwtgXbBZfW8N6dYzpP4j');
INSERT INTO `t_user` VALUES ('452', 'অতিথী', '01718729753', 'otithi', 'otithi', 'studentzitu@yahoo.com', '', '1', '08/16/2010', '02:37:54 PM', '3', '20100907125538', '201008160237546dgRV8NJZAQh0DEBu4xLn5Xblyfcvr');
INSERT INTO `t_user` VALUES ('453', 'আnমna', '01754241589', 'a', '102030', 'opestid@yahoo.com', '117.18.231.17', '1', '08/17/2010', '04:25:51 AM', '3', '20110502143027', '2010081704255116uEmRNsjhpUQt32KHZy4SiD9AxrkY');
INSERT INTO `t_user` VALUES ('454', 'junaidul', '00966558589539', 'junaidul', '123456789', 'mosajunaid@yahoo.com', '188.55.16.69', '1', '08/17/2010', '05:30:43 PM', '3', '0', '201008170530438AUk1zeYCFXEhKGTrN6Wo93xbBMJsm');
INSERT INTO `t_user` VALUES ('455', 'আব্দুল্লাহ আল মামুন', '78686', 'mamun2010', '১২৩৪৫৬', 'saleh.ahmed.dhaka@gmail.com', '203.223.95.97', '1', '08/18/2010', '09:59:31 AM', '3', '0', '20100818095931SCTBoZFt8hsYmKJl4X7ubHUxiMEz05');
INSERT INTO `t_user` VALUES ('456', 'hiddensms', '018126578756', 'hiddensms', '1591598', 'hiddensms@yahoo.com', '2.89.208.99', '1', '08/18/2010', '10:49:41 AM', '3', '0', '20100818104941t7WAaolJu4yUFVzb3MHs5fBc8e1k2N');
INSERT INTO `t_user` VALUES ('457', 'মুসলিম৫৫', '01715643400', 'muslim55', 'bma477', 'muslim55.swib@gmail.com', '117.18.231.25', '1', '08/18/2010', '12:10:31 PM', '3', '20110216200511', '20100818121031ikqYHec8CbTxgyzhQB4XJrs1jmMfla');
INSERT INTO `t_user` VALUES ('458', 'sohan240', '+8801722566220', 'neamulhasan_neel@yahoo.com', 'valobasi', 'neamulhasan_neel@yahoo.com', '111.235.157.179', '1', '08/18/2010', '05:42:31 PM', '3', '0', '20100818054231csnxZ3Nm1oBH0DdMhkgUTtiVJEfj48');
INSERT INTO `t_user` VALUES ('459', 'effillise', '123456', 'effillise', 'wuInJEh294', 'gubpoga@gmail.com', '87.254.147.220', '0', '08/18/2010', '06:51:05 PM', '3', '0', '20100818065105zBkK619ZHQrm8YNyMD3tn0g4Jx5pAc');
INSERT INTO `t_user` VALUES ('460', 'rafiq', '00966557391437', 'Rafiq', 'islam', 'engr_rafique@hotmail.com', '198.36.40.2', '0', '08/18/2010', '11:51:35 PM', '3', '0', '20100818115135EBm9Ysfz87MVnqDAJRvbLk3Gjr2ahu');
INSERT INTO `t_user` VALUES ('461', 'tanvir hasan dipu', '01815434387', 'bejoy_1', '4993', 'bejoy_1@yahoo.com', '119.30.38.65', '1', '08/19/2010', '02:03:37 AM', '3', '0', '20100819020337LXQJGNyMUj4sp1cwq3Pb7nrkHEoBZ6');
INSERT INTO `t_user` VALUES ('462', 'জামিনদার', '01722933224', 'probortan', '147258', 'probortan@gmail.com', '202.56.7.164', '0', '08/19/2010', '10:44:48 AM', '3', '0', '20100819104448zr5NjyEhmgPFLSQ2etCKxiBpo36HZJ');
INSERT INTO `t_user` VALUES ('463', 'শাহেদ রুবেল', '০০৯৭১৫৫৭৪০৪৮১০', 'shahed rubel', 'sd4321', 'shahedrubel@yahoo.com', '195.229.237.39', '1', '08/19/2010', '11:09:54 AM', '3', '0', '20100819110954StDUybYw7XeohVfzZiL4ECqcm8MuT0');
INSERT INTO `t_user` VALUES ('464', 'লাবিব', '+88012345678900', 'labib', '14757670', 'xlabib@gmail.com', '119.30.39.89', '1', '08/19/2010', '11:18:28 AM', '3', '0', '20100819111828yq3vAdjhrFR75lWXgpbMJnSzfUamD0');
INSERT INTO `t_user` VALUES ('465', 'প্রভাষক', '01813 788 538', 'Lecturer_Ashiq', '1qaz2wsx', 'Ashiq.Shawon@gmail.com', '117.18.229.29', '1', '08/19/2010', '11:27:46 AM', '3', '20110401175455', '201008191127461bQtG59zwLZgyl7rD8nhsHV4BKNckX');
INSERT INTO `t_user` VALUES ('466', 'রাজা সরকার', '9330958045', 'rajasarkar', 'megh10', 'rajasar_2003@yahoo.com', '223.223.141.244', '1', '08/19/2010', '12:02:47 PM', '3', '20101116230654', '20100819120247LZQuziYThqJPFpAMSt5bd0EN6RcyG2');
INSERT INTO `t_user` VALUES ('467', 'রুদ্রমরু', '01747184593', 'skmliton', 'skmliton', 'skmliton@yahoo.com', '115.69.213.26', '1', '08/20/2010', '02:32:14 AM', '3', '20101010223649', '20100820023214Xi9FEtm3VragzSKMPR16fBWJ407Z2h');
INSERT INTO `t_user` VALUES ('468', 'অদৃশ্য আতংক', '01670140625', 'attonko', '01670140625', 'attonko@gmail.com', '203.223.94.98', '1', '08/20/2010', '04:47:58 AM', '3', '20110114175920', '20100820044758WUCseR5b4nG0TtEZrKAJiogcDj72VY');
INSERT INTO `t_user` VALUES ('469', 'ড. হাতাশি', '01720500648', 'hatashe', '10july87', 'hatashe@gmail.com', '117.18.231.32', '1', '08/20/2010', '10:46:55 AM', '3', '20101011005833', '20100820104655W2vTLrPXVDUfNyBCu3t5xkaRQ1eisF');
INSERT INTO `t_user` VALUES ('470', 'হিমায়িত দিহান', '01674806859', 'dihan91', '77151345', 'dihan91@gmail.com', '203.76.106.190', '1', '08/20/2010', '11:11:32 AM', '3', '20101028001354', '20100820111132Gar3BTXtzlV05fLwksnUQNCdcyWR7D');
INSERT INTO `t_user` VALUES ('471', 'উপাল', '+8801717058703', 'upal_ce', '2f8js7p1', 'upalbond@yahoo.com', '119.30.38.84', '1', '08/20/2010', '11:53:42 AM', '3', '0', '20100820115342s2U4fnNmz8b590vjcWVPMGKQYgAFH1');
INSERT INTO `t_user` VALUES ('472', 'উপল', '01717058703', 'upal.buet', '2f8js7p1', 'upal.buet@gmail.com', '119.30.38.84', '1', '08/20/2010', '12:00:12 PM', '3', '0', '201008201200127ThQxCHURus4lMprFZAzJKc3oe0im5');
INSERT INTO `t_user` VALUES ('473', 'আরিফ', '01717376115', 'arifbag', '01717376115', 'arifbaganchara@gmail.com', '119.30.34.10', '0', '08/20/2010', '12:38:37 PM', '3', '0', '20100820123837GLV6U08bQyzM5pJYHFZWoxB1ANrdDs');
INSERT INTO `t_user` VALUES ('474', 'আমি আরিফ', '01717376115', 'arifjes', '01717376115', 'arifbaganchara@gmail.com', '119.30.34.10', '0', '08/20/2010', '12:46:34 PM', '3', '0', '201008201246349B1VAG37io8Ndca52jlYesMWqmJnuw');
INSERT INTO `t_user` VALUES ('475', 'মোঃ শরিফুল ইসলাম সবুজ', '01722604994', 'sobuz_ict', 'rajshahi', 'sobuz_ict@yahoo.com', '202.56.7.178', '1', '08/20/2010', '05:23:43 PM', '3', '20101013150754', '20100820052343Xy23h6RatJC4fWrgzckPq5AFdQGLpB');
INSERT INTO `t_user` VALUES ('476', 'কুরআনের আলো', '01923876546', 'bqss', 'thequran1', 'saleh.ahmed.dhaka@gmail.com', '202.56.7.170', '1', '08/20/2010', '11:34:07 PM', '3', '0', '201008201134070pdvncMU5XJlHzu6QaCLFWfrSGK7Do');
INSERT INTO `t_user` VALUES ('477', 'জমকালো', '01719270516', 'Jomkalo', '270516', 'baadshahmintu@yahoo.com', '202.51.183.54', '0', '08/21/2010', '06:30:51 AM', '3', '0', '20100821063051q5c72FDBWLwYAsJmSthuzgXx4i69rK');
INSERT INTO `t_user` VALUES ('478', 'ঘুম', '000000000000', 'gHuM', 'bAnglAdesh', 'sajibnub@gmail.com', '114.130.13.110', '1', '08/21/2010', '09:58:51 AM', '3', '0', '20100821095851RsM3SkpgUmh0CVYF5endJWjuK18tbT');
INSERT INTO `t_user` VALUES ('479', 'মো. আবুল হোসেন, শিবচর, মাদারিপুর', '01715026528', 'abul_shib', '30101974', 'abul6974@gmail.com', '119.30.39.89', '1', '08/21/2010', '10:09:04 AM', '3', '20110422140637', '20100821100905CX5wHEPreDhuZTG06mKcVanQLtbFio');
INSERT INTO `t_user` VALUES ('480', 'Saifur Rahman Saif', '01912955006', 'saifn', 'bangladesh', 'saif.satkhira@gmail.com', '117.18.231.20', '1', '08/21/2010', '10:18:58 AM', '3', '20110418004424', '20100821101858yNRGDcvFrq6lz7Lp4BEaXV1toAHd5n');
INSERT INTO `t_user` VALUES ('481', 'আবিদ কায়সার', '01715026538', 'abid', '30101974', 'abul6974@gmail.com', '119.30.39.84', '1', '08/21/2010', '10:22:53 AM', '3', '0', '20100821102253aMGkD95WXbAiyswdP8EqF0xglHeYSr');
INSERT INTO `t_user` VALUES ('482', 'মৈত্রী', '01715730088', 'MOITRY', 'ALLAHU', 'cyberbaba_bd@yahoo.com', '202.134.14.28', '1', '08/21/2010', '10:27:36 AM', '3', '20110303113204', '20100821102736wW4y6iQlU5gT09Mvesz3oGp1Bb2CRu');
INSERT INTO `t_user` VALUES ('483', 'তক্ষশিলা', '01192929292', 'mahi', 'mahi', 'hasan_ddak1@yahoo.com', '180.211.216.4', '1', '08/21/2010', '12:08:56 PM', '3', '20101026233826', '20100821120856W0ThgabAZ6CJxtoVmpDE9XzN7Liuq4');
INSERT INTO `t_user` VALUES ('484', 'লুসিফারের প্রলাপ', '+8801670880341', 'lucifer d prito', 'banglalink', 'angkush@ymail.com', '202.56.7.170', '1', '08/21/2010', '05:54:09 PM', '3', '20100907193809', '20100821055409qrWKl1JuYh2ckwGTUy9Z0vjVzobH6P');
INSERT INTO `t_user` VALUES ('485', 'আপেল', '01190937494', 'aple', 'sadia123456', 'aple_bd@ymail.com', '115.127.7.174', '1', '08/21/2010', '06:48:04 PM', '3', '20110111205422', '20100821064804Gq6hUJ287zCybkxsjNiug9m0wDFRpV');
INSERT INTO `t_user` VALUES ('486', 'তাজুল ইসলাম মুন্না', '01672470364', 'tajulislam', 'ninjastorm', 'bcmunna@yahoo.com', '114.130.28.150', '1', '08/22/2010', '02:48:35 AM', '3', '0', '20100822024835Exh21FMzN76ksedblV945PoTyaimuq');
INSERT INTO `t_user` VALUES ('487', 'মেরী', '025634', 'mari', 'mari', 'marina.kajol@gmail.com', '123.200.14.202', '1', '08/22/2010', '03:04:54 AM', '3', '20110416204449', '201008220304541pgSHvDztYWV5nryZK27UBElFCNm4T');
INSERT INTO `t_user` VALUES ('488', 'Ariful Islam Arif', '0566731883', 'md_arif1', 'marif1', 'md_arif1@yahoo.com', '188.51.34.248', '1', '08/22/2010', '05:08:09 AM', '3', '0', '20100822050809qRJ5abyQsTPMY92vV4LzjipomtxlC7');
INSERT INTO `t_user` VALUES ('489', 'Ariful Islam', '009660566731883', 'arifbdfeni', 'marif1', 'md_arif1@yahoo.com', '188.51.34.248', '0', '08/22/2010', '05:12:22 AM', '3', '0', '20100822051222y7vYdAwro0HpQXGtuLs4qzexaUBnMl');
INSERT INTO `t_user` VALUES ('490', 'ধ্রুব তারা', '07909036334', 'dhrubotara', 'arnab2008', 'arnab.goswami1987@googlemail.com', '92.24.83.184', '1', '08/22/2010', '05:40:05 AM', '3', '20100910065229', '20100822054006K75pgiylaZUbQkNec3uB4tPf1qnTJ2');
INSERT INTO `t_user` VALUES ('491', 'আবু জাফর মুহাম্মাদ ইকবাল', '01912926255', 'A.J.M. IQBAL', '123456', 'livefresh2511@yahoo.com', '64.255.180.84', '1', '08/22/2010', '11:56:14 AM', '3', '20100921220045', '20100822115614GNtjlVHQkhxJzeEBK42oFXCSMT6iYw');
INSERT INTO `t_user` VALUES ('492', 'mahi', '01191919191', 'mahii', 'mahi', 'hasan_ddak1@yahoo.com', '180.211.216.4', '0', '08/22/2010', '12:17:38 PM', '3', '0', '20100822121738Cpw71lufBUHm8vDzgQ4cijtkxShdab');
INSERT INTO `t_user` VALUES ('493', 'স্বপ্নকথক', '01913221448', 'shopnokothok', '010945', 'badhan1986@gmail.com', '115.69.213.10', '1', '08/22/2010', '03:50:24 PM', '3', '20100912010835', '20100822035024EKF5di0XTLbufUwPqc7aNxtR2eY8nH');
INSERT INTO `t_user` VALUES ('494', 'আরণ্যক', '1724503641', 'aronnok', '0505087', 'jacques0308@gmail.com', '117.18.231.4', '1', '08/23/2010', '12:20:16 PM', '3', '0', '20100823122016KtTuoHnb9DcBq82rxMdpl53sQUSAEP');
INSERT INTO `t_user` VALUES ('495', 'IMON', '0088017473517415468', 'Rahul Ahmed Imon', 'shineimon', 'imon_shine@yahoo.com', '109.83.56.22', '0', '08/23/2010', '07:54:42 PM', '3', '0', '20100823075442bzd0XrAoKePYNRuf3MEqHaxUiSWZ2D');
INSERT INTO `t_user` VALUES ('496', 'Ahmed Imon', '0088017473517415468', 'Imon shine', 'shineimonahmed', 'imon_shine@yahoo.com', '109.83.56.22', '0', '08/23/2010', '07:58:29 PM', '3', '0', '20100823075829MUwsYpoC3JiNncRe4bzuKjv08DZBt1');
INSERT INTO `t_user` VALUES ('498', 'এহসানুল মাহবুব', '98485f4', 'ahsan', '123456', 'saleh.ahmed.dhaka@yahoo.com', '116.193.174.27', '0', '08/24/2010', '12:11:27 PM', '3', '0', '201008241211273m0PirhDF7lCgy45TWvspAcQkew8a9');
INSERT INTO `t_user` VALUES ('499', 'আল্লামা ইসমাইল ফারূকী', '০১৯২৩৪৫৬৭৮', 'aif', '123456', 'nsakibcox@gmail.com', '119.30.38.65', '1', '08/24/2010', '03:23:25 PM', '3', '20101021131038', '20100824032325balG0vEgR1eNmwfW36cABUnh9L5VYj');
INSERT INTO `t_user` VALUES ('500', 'আওয়ামী ইসলাম', '8801737311322', 'aowamiislam', 'tahrij', 'ligislam@gmail.com', '119.30.38.69', '1', '08/25/2010', '06:38:55 AM', '3', '20100827164922', '20100825063855S1xoQZ05dw2t7pa3zsUuYe46r8gcqF');
INSERT INTO `t_user` VALUES ('501', 'রক্ষী বাহিনী', '8801737311322', 'rakkhibahini', 'tahrij', 'ligrakkhibahini@gmail.com', '119.30.38.69', '1', '08/25/2010', '07:20:31 AM', '3', '20100829053951', '20100825072031cXhMqFKxztsryN1dVJnjEAR245ZeDi');
INSERT INTO `t_user` VALUES ('502', 'সোনার বাপের সোনার ছেলে', '8801737311322', 'sonarchele', 'tahrij', 'sonarbapersonarchele@gmail.com', '119.30.38.66', '1', '08/25/2010', '08:45:57 AM', '3', '20100830173235', '20100825084557JfU706dhYj5H29NCQpBb3P4WTGxgaz');
INSERT INTO `t_user` VALUES ('503', 'মাহমুদুল হাসান রাসেদ', '62654', 'rased', '123456', 'mahmud_faith@yahoo.com', '116.193.174.27', '1', '08/26/2010', '01:01:41 AM', '3', '20100826121535', '20100826010141gFu42GvMcrBCJVDxkzey6SfX7AwiQ8');
INSERT INTO `t_user` VALUES ('504', 'erfanul hoque', '01822960301', 'erfanul hoque', '123456789', 'mosa-m-juaid@hotmail.com', '188.48.108.69', '0', '08/26/2010', '03:49:00 PM', '3', '0', '20100826034900MBaum6XRVhC0Us2Z1zFk9tldjoewQA');
INSERT INTO `t_user` VALUES ('505', 'সালাহ উদ্দীন আইয়ুবী', '০১৯১৩', 'sua', '313', 'saleh.ahmed.dhaka@yahoo.com', '116.193.174.27', '0', '08/27/2010', '12:49:45 AM', '3', '0', '20100827124945qP9FGCd15A28XxLBbQfM0U6HEgaroj');
INSERT INTO `t_user` VALUES ('506', 'জনি খান', '০১৭১৭৫৫৮৮২২', 'jony', '2007731036', 'jonykhan_sust@live.com', '119.30.39.67', '0', '08/27/2010', '03:43:20 AM', '3', '0', '201008270343204PM8cQ0VAtvkLNiE9H6qCbs1gJWnYR');
INSERT INTO `t_user` VALUES ('507', 'সত্যের খোঁজে', '8801737311322', 'sotterkhoje', 'tahrij', 'sotterkhoje@gmail.com', '119.30.39.66', '1', '08/27/2010', '05:56:38 AM', '3', '20100827173507', '20100827055638NZdA6buFHsV3rfB4MRzak7QwpSiCLW');
INSERT INTO `t_user` VALUES ('508', 'বাকশাল', '8801737311322', 'bakshal', 'tahrij', 'bakshalbangladesh@gmail.com', '119.30.39.66', '1', '08/27/2010', '06:06:02 AM', '3', '20100829052655', '20100827060602qLygoShPk8Fz1s9mKwERH0uU7M34ti');
INSERT INTO `t_user` VALUES ('509', 'মনিরুল. হক. ফিরোজ', '+8801816337076', 'mhferoz', '143haque', 'monirul27@gmail.com', '116.193.174.200', '0', '08/27/2010', '12:50:28 PM', '3', '0', '20100827125028DR5wdlSevoBkV2801LQF7UPMEhb4Wc');
INSERT INTO `t_user` VALUES ('510', 'valo manus', '+8801737180936', 'chandon', 'opest', 'c_4kites88@yahoo.com', '115.127.6.179', '0', '08/28/2010', '09:45:17 AM', '3', '0', '201008280945176BgdE3b5uWKYprch9m4UL8Pjs1MCXN');
INSERT INTO `t_user` VALUES ('511', 'পাগলা', '01724257685', 'pagla', 'pagla', 'babasoresori@yahoo.com', '180.211.216.4', '1', '08/28/2010', '03:30:45 PM', '3', '20101205002250', '201008280330458PMZi7uyqkTjp4tsW1oE5KQVAc3J2a');
INSERT INTO `t_user` VALUES ('512', 'নীরব', '01722814822', 'n', '102030', 'opestid@yahoo.com', '117.18.231.26', '1', '08/29/2010', '04:30:13 AM', '3', '20110302220911', '20100829043013UKcpWqdtRgFjY54Ty9CBrHDvGfVN1k');
INSERT INTO `t_user` VALUES ('513', 'gvBbywÏb', '01717685043', 'Mainuddin', '01717685043', 'mainuddin_24@yahoo.com', '119.18.145.249', '1', '08/29/2010', '05:49:02 AM', '3', '0', '20100829054902hBelMDArWjwoTZgEpzLxG8RHtJ4aSk');
INSERT INTO `t_user` VALUES ('514', 'প্রেমিক', '01718729753', 'pramik', 'pramik', 'studentzitu@yahoo.com', '', '1', '08/29/2010', '06:10:15 AM', '3', '20100907123516', '20100829061015upqbLVMAxQkh3Ee25GaYoZNd9wmF1K');
INSERT INTO `t_user` VALUES ('515', 'প্রেমিকা', '01718729753', 'pramika', 'pramika', 'studentzitu@yahoo.com', '', '1', '08/29/2010', '06:10:42 AM', '3', '20100907130649', '20100829061042yWGseCLrjlAa6DdmFzVf41owYQuhRn');
INSERT INTO `t_user` VALUES ('516', 'omar', '01727453071', 'abdur rahim', '654123', 'abdurrhmn085@gmail.com', '117.18.231.11', '0', '08/29/2010', '06:33:10 AM', '3', '0', '20100829063310pQARMmyNgS53YPZTtDikzrohJGCl0a');
INSERT INTO `t_user` VALUES ('517', 'দুরন্তপনা', '01754214524', 'd', '102030', 'opestid@yahoo.com', '117.18.231.3', '1', '08/29/2010', '10:40:40 PM', '3', '20100830095106', '20100829104040bKD01ltqoZ7zfyJuxSc5GPm8UrLC3g');
INSERT INTO `t_user` VALUES ('518', '3 ইডিয়ট', '01754214524', '3', '102030', 'opestid@yahoo.com', '117.18.231.3', '1', '08/29/2010', '11:08:26 PM', '3', '20100908204936', '20100829110826AN3irw1cl7SJWafhz8dGx96qtQ2Vsg');
INSERT INTO `t_user` VALUES ('519', 'ফাহমিদা তাসনীম', '01722814822', 'ft', '102030', 'opestid@yahoo.com', '117.18.231.3', '1', '08/29/2010', '11:11:44 PM', '3', '20110413214719', '20100829111144o67mBHCnUeDsfyvZMJ94GQYFcl1d0j');
INSERT INTO `t_user` VALUES ('520', 'এলার্ট পে', '01199333079', 'alertpay', 'sumon915404', 'chirokumar420@gmail.com', '117.18.231.12', '1', '08/30/2010', '06:43:25 AM', '3', '20110121201552', '20100830064325sgu0DKk8liMdmveyGhwPcfbNB62aW1');
INSERT INTO `t_user` VALUES ('521', 'বকলম', '01722145482', 'b', '102030', 'opestid@yahoo.com', '117.18.229.13', '1', '08/30/2010', '05:20:39 PM', '3', '20100831042655', '20100830052039fjw73YqoKUaxmJMVSkQX5enWFh29Di');
INSERT INTO `t_user` VALUES ('522', 'লুসিয়ারের প্রলাপ', '01754214524', 'lp', '102030', 'opestid@yahoo.com', '117.18.231.31', '1', '08/30/2010', '11:22:28 PM', '3', '20101009132444', '20100830112228ejZtNuXGKEWDnkT87wc6CrmPxV0oUv');
INSERT INTO `t_user` VALUES ('523', 'মেঘ বালক', '01557854541', 'mb', '102030', 'opestid@yahoo.com', '117.18.231.27', '1', '08/31/2010', '05:31:45 AM', '3', '20110120195436', '201008310531454nEm89QBGWqb1pcy5ArRU2aYCgsiZX');
INSERT INTO `t_user` VALUES ('524', 'বন্ধুতা', '01557854541', 'fnd', '102030', 'opestid@yahoo.com', '117.18.231.27', '1', '08/31/2010', '05:51:12 AM', '3', '20110310184243', '20100831055112wGdWajXBcKloAT6YUCSqPbthpLsQ5r');
INSERT INTO `t_user` VALUES ('525', 'চুরি যাওয়া আগুন...', '+919477372909', 'stollen_fusion', 'stollenfusion', 'love_sign20@yahoo.co.in', '110.227.161.40', '1', '08/31/2010', '02:14:17 PM', '3', '20100901015058', '201008310214179ifqPQkozeSuj1lbMCxrTDGvsZXJN7');
INSERT INTO `t_user` VALUES ('526', 'জ. রহমান', '01716861677', 'j2', '16861677', 'jaherrahman@yahoo.com', '117.18.231.26', '1', '08/31/2010', '06:40:39 PM', '3', '20110418200802', '20100831064039BKdbX2Jtz6Acgn1apHNLGhCPikDm7Q');
INSERT INTO `t_user` VALUES ('527', 'পাগলের ডাক্তার', '01199121121', 'pagolerdoctor', 'sumon915404', 'chirokumar420@gmail.com', '117.18.231.12', '1', '09/01/2010', '08:28:21 AM', '3', '20100905160332', '20100901082821kQcnToafgmBqRYZUDiXFtwEp2Jv5WC');
INSERT INTO `t_user` VALUES ('528', 'কাঠের খাঁচা', '01673564562', 'aumi_aik', '220522', 'aumi_aik@yahoo.com', '117.18.231.25', '1', '09/01/2010', '02:27:43 PM', '3', '20100902013016', '20100901022743omeKGbfyxSqn65Rvid4VBszjW7cMEp');
INSERT INTO `t_user` VALUES ('529', 'ছন্দহীন', 'sondohin', 'sondohin', 'megh_33@yahoo.com', 'sondohin@gmail.com', '119.30.34.4', '1', '09/01/2010', '04:11:44 PM', '3', '20101219003424', '20100901041144pC19SzAXZHWLj5FbVqEQNM6oGsdgmP');
INSERT INTO `t_user` VALUES ('530', 'নষ্ট কবি', '01197245439', 'architect_rajib', 'shokuntola', 'architect.rajib@gmail.com', '112.137.4.133', '1', '09/02/2010', '02:34:49 AM', '3', '20110427110943', '201009020234497cYwx8BiSnLszMajH5f0h9FZKAuQW3');
INSERT INTO `t_user` VALUES ('531', 'shishir', '0191119193', 'iftakharul awal', '01716328262', 'titir_js@yahoo.com', '120.50.181.226', '1', '09/02/2010', '01:08:20 PM', '3', '0', '20100902010820rfVRtCBZPeQNsLbk6UvMHDzmEan3AF');
INSERT INTO `t_user` VALUES ('532', 'kaloombash', '01911087786', 'kaloombash', '645421', 'kaloombash@ovi.com', '210.4.73.10', '1', '09/03/2010', '04:41:01 AM', '3', '20101021120517', '20100903044101UbRs2ECmLzxA3har7fQJiNY9B1yHGp');
INSERT INTO `t_user` VALUES ('533', 'জসিম উদ্দিন', '01814332378', 'Jashim uddin', '332378', 'jashim_u59@yahoo.com', '64.255.164.44', '1', '09/03/2010', '06:04:42 PM', '3', '20100922113311', '201009030604424v8nmhH2ya1j7rzogklJcDpNM0KutY');
INSERT INTO `t_user` VALUES ('534', 'ধূমকেতু', '01722818683', 'Sisir anam', 'shshiranam', 'Www.almukaddas@gmail.com', '64.255.180.116', '0', '09/04/2010', '04:59:28 AM', '3', '0', '20100904045928B3yCF1mEnb75rpPs0uwav8fgZRGtVk');
INSERT INTO `t_user` VALUES ('535', 'প্রিয় ওপেস্ট', '০১৯২৩৮৭৬৫৪', 'opesta', 'asd', 'tarek.japan@gmail.com', '119.30.38.76', '1', '09/04/2010', '06:39:38 AM', '3', '20101022161342', '201009040639381M6UqFxQhSpAlG7LXzucT4Vm2yov9j');
INSERT INTO `t_user` VALUES ('536', 'এস.কে.ফয়সাল আলম', '01195224492', 'sk_foysal', '11110000op.', 'sk_foysal@yahoo.com', '119.30.38.67', '1', '09/04/2010', '05:06:01 PM', '3', '20100905042938', '201009040506011lLRNJUx8tMwgyHdv04nqjbKVisz75');
INSERT INTO `t_user` VALUES ('537', 'পোংটা', '০১১৯৮১৯১৯১৯', 'rossi', 'rossnor', 'rnd0387@gmail.com', '180.234.26.115', '1', '09/05/2010', '04:35:07 AM', '3', '20100907000445', '20100905043507PC2UBJjqZrRQXkS8GDnhyx4Mmpet0a');
INSERT INTO `t_user` VALUES ('538', 'মোঃ নাছির উদ্দীন সুমন', '01199276553', 'sumon420', 'sumon915404', 'spamer_sumon@yahoo.com', '117.18.231.6', '1', '09/05/2010', '05:12:34 AM', '3', '20110121194732', '20100905051234fgT9lPG6RcspbovQthjXmu1CqN2DKr');
INSERT INTO `t_user` VALUES ('539', 'hashim', '00', 'hashim_anb', 'hashim1153', 'abdulhashim92@yahoo.com', '77.64.36.111', '0', '09/05/2010', '04:54:23 PM', '3', '0', '20100905045423P0C34ZbNeFho8dmLA6alyV7c2qHWQB');
INSERT INTO `t_user` VALUES ('540', 'উদাসী ফাহিম', '01730007124', 'fahimsyl', '265794', 'fahim.salam@gmail.com', '180.149.8.127', '1', '09/05/2010', '05:04:02 PM', '3', '20101124232441', '20100905050402vR61EN94Ba2pdX8hulZQyrmMnGbSHY');
INSERT INTO `t_user` VALUES ('541', 'অতিথি১৭', '01718729753', 'thief', 'thief', 'studentzitu@yahoo.com', '', '1', '09/06/2010', '12:53:59 AM', '3', '20110322111350', '20100906125359zNf9eprSuJsYvqyHU8bmZL25FkExlV');
INSERT INTO `t_user` VALUES ('542', 'Dinar', '01712929336', 'Dinar_abc', '711376', 'Dinar_abc@yahoo.com', '64.255.164.49', '0', '09/06/2010', '06:15:05 PM', '3', '0', '20100906061505PSaVbgfceldFxBtQGErZTi2huvWKq3');
INSERT INTO `t_user` VALUES ('543', 'মাসুদা সুলতানা রুমী', '01557854541', 'rumi1', '102030', 'opestid@yahoo.com', '117.18.231.20', '1', '09/07/2010', '02:34:42 AM', '3', '20110416191909', '20100907023442JUPEnA4MwbCR9X8oQytYFjWve6xKTL');
INSERT INTO `t_user` VALUES ('544', 'Abu Sayed', '01731974666', 'abusayed1981', 'ferdowsi', 'abusayed1981@gmail.com', '117.18.231.10', '1', '09/07/2010', '03:38:51 AM', '3', '20110427112916', '20100907033851PSdZcptLGek30l4Y2CHjA9M6zbKr1h');
INSERT INTO `t_user` VALUES ('545', 'anwar', '+9660560855844', 'anwar hossain feni', '12345678', 'anwar855844@yahoo.com', '188.52.48.178', '1', '09/07/2010', '08:51:32 PM', '3', '20101103042643', '20100907085132wx6bipMG74vQKcrRfoUkSB8qPdZ9CE');
INSERT INTO `t_user` VALUES ('546', 'সাঈদ বীন হাবীব', '0763251139', 'sayedhabibhappy', 'beano69', 'habibsayed29@gmail.com', '119.30.39.78', '1', '09/08/2010', '08:50:50 AM', '3', '20110424180753', '20100908085050uBJxd8rZvT7HXAjl2VeDFia0CnLohz');
INSERT INTO `t_user` VALUES ('547', 'বক ধার্মীক', '01712507280', 'Mohaimin', 'rumi1017', 'mohaimin22@gmail.com', '117.18.231.13', '1', '09/08/2010', '06:26:00 PM', '3', '20100916133237', '20100908062600rdni7UHLmeF6VK1c35NZESgt8qhpGX');
INSERT INTO `t_user` VALUES ('548', 'কাক ধার্মীক', '01712507280', 'Mohaiminpcc', 'rumi1017', 'mohaiminpcc@gmail.com', '117.18.231.30', '1', '09/10/2010', '01:41:11 PM', '3', '20100911020110', '201009100141113TQaj86dADKRiM2CW5lmFx74bEBhwo');
INSERT INTO `t_user` VALUES ('549', 'azad', '+966502942039', 'nerob', '3135161', 'nirobmon2008@yahoo.com', '77.64.24.233', '1', '09/11/2010', '10:47:23 AM', '3', '0', '201009111047230PQ6UtjZHF9Rh2VpDmbnof1EY8lWgc');
INSERT INTO `t_user` VALUES ('550', 'সবুজ_বাংলা', '00966565441485', 'sobuj_bangla', '056522', 'banglasobuj@gmail.com', '77.64.9.30', '1', '09/11/2010', '11:25:46 AM', '3', '20110309182156', '20100911112546Nh1SF2DUKqjXLQ7tmvRgWpio0JYe8G');
INSERT INTO `t_user` VALUES ('551', 'সাইফুর রহমান', '01199484743', 'sayfur', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.6', '1', '09/11/2010', '12:24:17 PM', '3', '20100919021528', '20100911122417VnNuQps64SbZi9vjyoz1HYk7clexWJ');
INSERT INTO `t_user` VALUES ('552', 'সুজন', '01712571239', 'Shakhawat', '225588', 'sujon.du@yahoo.com', '202.148.56.81', '1', '09/12/2010', '08:46:40 AM', '3', '20100912202439', '20100912084640mlxVTYkHayRunFc9vUdPsE2GAfejtD');
INSERT INTO `t_user` VALUES ('553', 'মিতুল', '01676677667', 'MITUL', 'mitul,111', 'modhujodu@yahoo.com', '119.40.90.104', '1', '09/12/2010', '01:02:56 PM', '3', '20110327162541', '20100912010256oq7TZsWHNnhCLablyweiX8dzKY4Bcf');
INSERT INTO `t_user` VALUES ('554', 'দুলাভাই', '০১১৯১৯১৯১৯১', 'imti', '9997777', 'resvyimti@yahoo.com', '180.211.216.4', '1', '09/12/2010', '11:07:30 PM', '3', '20100913102706', '20100912110730TzGKwRt8U5XYfiPHDEmplJoVjCsrBF');
INSERT INTO `t_user` VALUES ('555', 'মিতা', '01676677667', 'mita', 'mitul,111', 'modhujodu@yahoo.com', '113.11.96.4', '1', '09/13/2010', '07:56:38 AM', '3', '20110327162659', '20100913075638d9yxGlCSwPsMWNvZnpBQTjD58rkfbh');
INSERT INTO `t_user` VALUES ('556', 'মিস্টি', '01676677667', 'misti', 'mitul,111', 'modhujodu@yahoo.com', '113.11.96.4', '1', '09/13/2010', '08:12:28 AM', '3', '20110327162735', '20100913081228tmRLGUJYV0sNKBAWvZPHjXQzqbxk1E');
INSERT INTO `t_user` VALUES ('557', 'তৃষা', '01725218898', 'trisha', 'bdtrisha', 'habib_saied@yahoo.com', '119.30.38.71', '1', '09/14/2010', '07:13:38 AM', '3', '20100917155910', '20100914071338vjq4ActsGFuNU0Y3xQRhT5VM61w9oS');
INSERT INTO `t_user` VALUES ('558', 'ggunva', '55963257243', 'ggunva', 'JiJOM', 'rspxbc@qjdvhz.com', '12.168.203.132', '0', '09/15/2010', '01:49:05 AM', '3', '0', '20100915014905bgSKTZqPwRm0JMHaArVd7jy1sWUBxE');
INSERT INTO `t_user` VALUES ('559', 'robel', '01820958507', 'tamal', 'tamal123', 'mobarakru23@gmail.com', '59.152.91.90', '1', '09/15/2010', '01:57:18 AM', '3', '0', '20100915015718GJWx3aYrH2UyD7lwkXRN5MdptBnTKZ');
INSERT INTO `t_user` VALUES ('560', 'তমাল', '+8801193016409', 'tamal2001', 'tamal123', 'mobarakru23@gmail.com', '59.152.91.90', '1', '09/15/2010', '02:01:31 AM', '3', '20100915130432', '20100915020131ZfHCPUyNjn0v7XzDLc4g5lEKawhs3x');
INSERT INTO `t_user` VALUES ('561', 'সৈয়দ', '+৯৮৯১৯১৫৮৫৯১৭', 'bangla_syed', 'marjan', 'bangla_syed@yahoo.com', '80.191.89.40', '1', '09/15/2010', '02:31:13 AM', '3', '20100915144349', '20100915023113ZGNfp4mJki1MzP8FLDaAV60hrH9Wwy');
INSERT INTO `t_user` VALUES ('562', 'শীয়া', '01711897909', 'shia1214', '110110', 'shia1214@yahoo.com', '80.191.89.40', '1', '09/15/2010', '02:32:48 AM', '3', '20110103223706', '20100915023248LqaxoWUnmKkwDd37hSTv4PNsQje6G2');
INSERT INTO `t_user` VALUES ('563', 'আরিফুর রহমান', '01557854541', 'arifur', '102030', 'opestid@yahoo.com', '117.18.231.19', '1', '09/15/2010', '06:03:03 AM', '3', '20101009134350', '20100915060303VS3dNAyGmHjtQk6JRZgUXbD24EF0f7');
INSERT INTO `t_user` VALUES ('564', 'iqlpeo', '56583545533', 'iqlpeo', '58VPX', 'lpclcf@wznhfx.com', '189.28.0.190', '0', '09/15/2010', '07:21:09 PM', '3', '0', '20100915072109AJ3ua1Xj8zW4ewGNi6QFp0o7cDxCqH');
INSERT INTO `t_user` VALUES ('565', 'বলদ', '01199876543', 'bolod', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.12', '1', '09/15/2010', '10:25:24 PM', '3', '20110121201646', '20100915102524vThd7UrEt3bxjPJWQoayB4kDLgX0u1');
INSERT INTO `t_user` VALUES ('566', 'jakir hossain', '0663441633', 'jakir2010', '648999', 'jakir2010@yahoo.com', '212.198.251.101', '1', '09/16/2010', '08:32:54 AM', '3', '0', '20100916083254HEWGyQParmFSBb6DlnU4e3dLwZsozA');
INSERT INTO `t_user` VALUES ('567', 'বঙ্গবন্ধু', '০১১৯৮৭৭৬৬৫৫', 'bangabandhu', '73079610', 'sajib_tsc@yahoo.com', '117.18.231.14', '1', '09/18/2010', '11:30:26 PM', '3', '20100925170209', '20100918113026GrxPksJoYT6WiQ7mMBvaAn3NECgq5K');
INSERT INTO `t_user` VALUES ('568', 'Manik Anondo', '+8801725443377', 'manik_anondo', 'maanik007', 'manik_anondo@yahoo.com', '203.223.94.68', '1', '09/19/2010', '09:04:16 AM', '3', '0', '201009190904166WVwTB2z4jgDcLodPMrFlGXQ3ZyxJR');
INSERT INTO `t_user` VALUES ('569', 'ডাকাত', '01718729753', 'dakat', 'dakat', 'studentzitu@yahoo.com', '', '1', '09/20/2010', '03:11:50 AM', '3', '20100920141718', '20100920031150pVKaUinCGxduJ175rMZANskLYmSq8h');
INSERT INTO `t_user` VALUES ('570', 'ছিনতাইকারী', '01199484742', 'cintaykari', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.18', '1', '09/20/2010', '10:03:26 AM', '3', '20110121200926', '20100920100326rBsXaVHDL0Aqkgw5GiQFp8e4MElt7C');
INSERT INTO `t_user` VALUES ('571', 'পকেটমার', '01199484744', 'opcketmar', '123456', 'opest2010@yahoo.com', '117.18.231.18', '1', '09/20/2010', '10:05:53 AM', '3', '0', '20100920100553YJotkmyqZWU59K6x081ErwnGNfVAbs');
INSERT INTO `t_user` VALUES ('572', 'পুলিশ', '01199484743', 'police', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.18', '1', '09/20/2010', '10:11:15 AM', '3', '0', '20100920101115Nv7BeCH8toDYpa0l9FrmqUVTsQ5WG1');
INSERT INTO `t_user` VALUES ('573', 'নিভৃত পথচারী', '01917535695', 's4shibly', 'o9143276', 's4shibly@yahoo.com', '120.50.3.45', '1', '09/21/2010', '12:00:43 AM', '3', '20100921115528', '20100921120043dsRXgtHJlmFK5nPyfM86jGei79bAuk');
INSERT INTO `t_user` VALUES ('574', 'বর্ণ চোরা', '01719212545', 'bc', '102030', 'opestid@yahoo.com', '117.18.231.30', '1', '09/21/2010', '01:28:15 AM', '3', '20100921125024', '20100921012815fG5XRDSE0n7iYMld1umaVrzA64peUv');
INSERT INTO `t_user` VALUES ('575', 'nunlvqv', '20909529348', 'nunlvqv', 'Nvfn4X', 'vznong@sodzrd.com', '12.168.203.132', '0', '09/21/2010', '10:28:12 AM', '3', '0', '201009211028124TwALNv9uzUQy8DlabjhBp2fZe56FC');
INSERT INTO `t_user` VALUES ('576', 'মহসিন শ্রীধরী', '+447986710686', 'mohsin', 'hamida', 'mohsinsridhari@gmail.com', '92.24.85.143', '1', '09/21/2010', '10:31:55 AM', '3', '20110417233422', '20100921103155m0ENqTgtKdyh4YvVzxHSLnlef9rBFZ');
INSERT INTO `t_user` VALUES ('577', 'জর্জিস', '01711180214', 'georgis05', '0525grgtnn', 'georgis05@yahoo.com', '119.30.39.82', '1', '09/22/2010', '04:43:28 AM', '3', '20100924215239', '201009220443282mjCWBK3fiu9kagHNwGTqQ1bA7VJyP');
INSERT INTO `t_user` VALUES ('578', 'ঢেউ', '01716094796', 'common', 'syful90', 'syful.bics@gmail.com', '119.30.38.67', '1', '09/22/2010', '07:32:08 PM', '3', '20101018142433', '20100922073208lFht0NiVxkM9S325cuvCYPGWzgKfHd');
INSERT INTO `t_user` VALUES ('579', 'মরুভূমির জলদস্যু', '01710562848', 'qshohenq', '88267640', 'qshohenq@gmail.com', '114.130.17.98', '1', '09/23/2010', '03:37:37 AM', '3', '20110504162405', '20100923033737nJf1ZpEVPsjCcx82RtYdhvDFz34u0a');
INSERT INTO `t_user` VALUES ('580', 'দেশপ্রেমিক', '01718729753', 'desh_premik', 'desh_premik', 'studentzitu@yahoo.com', '', '1', '09/23/2010', '09:47:08 AM', '3', '20101012114348', '20100923094708qjxTJUAYmai54Vs82pl6PbL0WtZuKc');
INSERT INTO `t_user` VALUES ('581', 'মুন্সির পোলা', '01727453071', 'a.rahman', '302010', 'abdurrhmn085@gmail.com', '117.18.231.11', '1', '09/23/2010', '11:41:02 AM', '3', '20101016123054', '20100923114102Nl7x20rgpsb9TDSVURH4aFeWt6EuLq');
INSERT INTO `t_user` VALUES ('582', 'মাগি তোরে চুদম', '01752142252', 'SEXSEX', 'AAAAAAAA', 'undertaker1869@aol.com', '64.255.164.68', '0', '09/23/2010', '03:08:52 PM', '3', '0', '20100923030852aX5WlT9iNobzBEg8RymsHk2KqfChQn');
INSERT INTO `t_user` VALUES ('583', 'হাসান আরিফ', '01190321431', 'hasanarif', '08301031', 'hasanmarif@gmail.com', '180.149.1.254', '1', '09/24/2010', '03:03:55 AM', '3', '20100925000015', '20100924030355Meap6PxXdUBLw5ZGv829biTVY3knhH');
INSERT INTO `t_user` VALUES ('584', 'পরশ', '01672459791', 'pmporosh', '8061426001', 'pmporosh@yahoo.com', '180.234.47.206', '1', '09/24/2010', '05:39:54 AM', '3', '20110415193007', '20100924053954W0xZ3mEFYBHpqn7yJvDz8atVKjUsQg');
INSERT INTO `t_user` VALUES ('585', 'wzaqikbixmm', '53004640289', 'wzaqikbixmm', 'V1ZfqQ', 'vxkptw@ayubqq.com', '217.119.27.222', '0', '09/24/2010', '12:55:21 PM', '3', '0', '201009241255216WLC3l4AkPsfwSjyKth0NXd2HboDpx');
INSERT INTO `t_user` VALUES ('586', 'umndsm', '38536498097', 'umndsm', 'AJcLhg', 'xumbos@xcdqhz.com', '41.178.74.210', '0', '09/26/2010', '10:01:27 AM', '3', '0', '20100926100127Y26ikHxXVUcleLTf4REwFvsyqgj081');
INSERT INTO `t_user` VALUES ('587', 'ওয়ালি  আহমেদ', '01924996233', 'chany', '123456', 'chany_69@yahoo.com', '180.211.216.4', '1', '09/28/2010', '04:30:16 AM', '3', '0', '20100928043016a9kTfcG71gzpNSj8oy0DYRmqxWCKiu');
INSERT INTO `t_user` VALUES ('588', 'খোকন', '01935811304', 'arj304', '01199475019', 'arjun.halder304@gmail.com', '117.18.231.28', '0', '09/28/2010', '10:46:56 AM', '3', '0', '201009281046563EqbFeyf4a2cC8ABNRYWkjDGwuKitX');
INSERT INTO `t_user` VALUES ('589', 'KKKKKKKK', '01752142252', 'KKKKKKKK', 'KKKKKKKK', 'undertaker1869@aol.com', '64.255.180.80', '0', '09/29/2010', '07:19:17 AM', '3', '0', '20100929071917F05J9zBrSjuLkd7q2N8H3KbTUs6QZY');
INSERT INTO `t_user` VALUES ('590', 'মুনিরা', '01676677667', 'munira', 'muniramunira', 'sharmin@onebook.com.bd', '113.11.96.184', '0', '09/30/2010', '10:54:39 PM', '3', '0', '20100930105439yZW5BtPJuQD4dse8pbnG3TcN2jFMYz');
INSERT INTO `t_user` VALUES ('591', 'মনিরা চৌধুরী', '01676677667', 'monira', '2222222222', 'eshae77@yahoo.com', '113.11.96.184', '1', '09/30/2010', '11:12:43 PM', '3', '20110421195907', '20100930111243UwKbsBZEWC69GhYjLltn7yX0ud8rDp');
INSERT INTO `t_user` VALUES ('592', 'ByncenussyWes', '123456', 'ByncenussyWes', '02iwGpH995', 'bludhaundgeng@mail.ru', '91.201.66.25', '0', '10/01/2010', '01:23:08 PM', '3', '0', '20101001012308byLX6zNYG3pgCahK7flkRtsU0runid');
INSERT INTO `t_user` VALUES ('593', 'শান্তি প্রিয়', '01726687115', 'mamunipc', '01726687115', 'mamunipc09@aol.com', '78.154.193.61', '1', '10/02/2010', '04:29:32 PM', '3', '20101003093151', '20101002042932NztvKDVb1hJ7CW2qusn8QA36LcP4wx');
INSERT INTO `t_user` VALUES ('594', 'হাবিব', 'xxxxxxxxxxxx', 'Doinnapata', '090909', 'mostafiz_ctg@yahoo.com', '188.52.219.88', '1', '10/03/2010', '12:37:53 AM', '3', '20110421223547', '201010031237537foUgpBZyk6jAWwxSDq4aT51XeziJr');
INSERT INTO `t_user` VALUES ('595', 'adhor', 'nai', 'Adhor', 'adhor20', 'adhor518@gmail.com', '195.229.235.42', '0', '10/03/2010', '12:47:33 PM', '3', '0', '201010031247335W0bfA8PJrotp3TK1aB4XQcGUNzCFH');
INSERT INTO `t_user` VALUES ('596', 'নাজমুল হাসান বাবু', '01913446750', 'sonchorini', '2982004', 'n.h.babu_sk@hotmail.com', '119.30.38.70', '1', '10/04/2010', '06:00:55 AM', '3', '20110323174801', '20101004060055MviulNde6UbRnwmVLZQW5t2YkKz7pG');
INSERT INTO `t_user` VALUES ('597', 'কাজী নজরুল ইসলাম', '01716861676', 'NazrulIslam', '102030', 'opestid@yahoo.com', '117.18.231.8', '1', '10/06/2010', '09:39:05 AM', '3', '20101126113320', '20101006093905NK43aVFzwWtZPyi58uXcBYhADks01n');
INSERT INTO `t_user` VALUES ('598', 'রংঙিন প্রজাপতি', '01716861676', 'Color Fly', '102030', 'opestid@yahoo.com', '117.18.231.8', '1', '10/06/2010', '09:59:57 AM', '3', '20110317192416', '20101006095957T8eVgqfY4BM1nEsQZJzDH7krAh5PNS');
INSERT INTO `t_user` VALUES ('599', 'মোঃ জুয়েল আলম', '008801712162675', 'alam', '055107', 'md_eliash2002@yahoo.com', '94.96.73.78', '0', '10/06/2010', '02:15:42 PM', '3', '0', '20101006021542l5xHiq4GwV0RUYXms1PEd7to6CjWNa');
INSERT INTO `t_user` VALUES ('600', 'Licswalpali', '123456', 'Licswalpali', 'k4wlBIc844', 'nomberonetrent@gmail.com', '76.10.223.186', '0', '10/06/2010', '09:17:02 PM', '3', '0', '20101006091702r0kucRPY3yEXC7lSVK61TQ2WhgsetB');
INSERT INTO `t_user` VALUES ('601', 'প্রিয়', '01923655725', 'dear', 'asdf', 'shawkat.ali.zawhar@gmail.com', '119.30.38.76', '1', '10/07/2010', '06:38:33 AM', '3', '20110418165148', '20101007063833X47lwnyg8d3z6VUvjSuLaFRWCJDNKE');
INSERT INTO `t_user` VALUES ('602', 'নির্ঝর', '01671756437', 'nirjharhit@gmail.com', '01717077564', 'nirjharhit@gmail.com', '64.255.180.146', '0', '10/07/2010', '02:35:28 PM', '3', '0', '20101007023528ymP84uWBgptXwkj2qK0D3a5MLxdHGf');
INSERT INTO `t_user` VALUES ('603', 'pahna', '01735133080', 'papia', '123456', 'sharif94bd', '119.30.38.65', '0', '10/08/2010', '12:34:08 AM', '3', '0', '20101008123408sKwnuRyXaPpl71NS3ckCtGWiQH8j9J');
INSERT INTO `t_user` VALUES ('604', 'আল জাহান', '01723988298', 'Md Al Jahan', 'tengra', 'aljahan1986@gmail.com', '202.56.7.176', '1', '10/10/2010', '01:26:22 PM', '3', '20101121232429', '20101010012622xhCn1mGtb3YrPSAvlX67U0Z8MJEFH4');
INSERT INTO `t_user` VALUES ('605', 'নীল আর্মষ্ট্রং', '01718729753', 'neel', 'neel', 'studentzitu@yahoo.com', '', '1', '10/10/2010', '01:31:29 PM', '3', '20101011004207', '20101010013129UvWYLSnDJ3heiGlBjrgcPqkVTQzRx9');
INSERT INTO `t_user` VALUES ('606', 'আলপিন', '01716215219', 'alpin', '853653', 'ahsan_joy@yahoo.com', '58.147.172.55', '1', '10/11/2010', '01:04:45 AM', '3', '20101011124021', '20101011010445SZD45QEUKeVlGynJmY7sz1ANw0ihFW');
INSERT INTO `t_user` VALUES ('607', 'নিজাম কুতুবী', '+8801814261603', 'nejamkutubi', '0176873758357357', 'kutubibd@gmail.com', '117.18.231.1', '1', '10/11/2010', '02:52:01 AM', '3', '20110503222931', '20101011025201YjymZ3BaPGVrDNsUu0Cxgv2wlHXdKE');
INSERT INTO `t_user` VALUES ('608', 'রাসেল.নেট', '01734019285', 'raselnet best', 'a1b2c3d4', 'rasel.face@yahoo.com', '119.30.34.9', '1', '10/11/2010', '03:46:06 AM', '3', '20101011154320', '20101011034606QWTXrHftKRGuEZ6gd0BscjzaJ481yL');
INSERT INTO `t_user` VALUES ('609', 'বাংলা ভাই', '01718729753', 'banglavai', 'banglavai', 'studentzitu@yahoo.com', '', '1', '10/12/2010', '12:48:37 AM', '3', '0', '20101012124837S8MRy4atb1UHYNT3FkcisWuCDvzBdV');
INSERT INTO `t_user` VALUES ('610', 'জীবন', '01815675062', 'Sorwar azam', '915375', 'azamcpi75@yahoo.com', '202.56.7.169', '0', '10/12/2010', '11:52:50 AM', '3', '0', '20101012115250pj8lRves5qUM1JZ3Ln9oBtC4hEy0rP');
INSERT INTO `t_user` VALUES ('611', 'asdf', '01816010101', 'asdfnazim', 'nazim-iubat', 'nazim_iubat@yahoo.com', '113.11.58.41', '0', '10/12/2010', '10:58:42 PM', '3', '0', '20101012105842VkTjFoLwsgaqlBdnM1C59Kx4DEAr7z');
INSERT INTO `t_user` VALUES ('612', 'হাদী কুষ্টিয়া', '089804', 'Hadibest', '089804', 'halamin50@yahoo.com', '122.102.35.34', '1', '10/13/2010', '06:37:46 AM', '3', '20101015103344', '2010101306374674qoygSNUTHxc2lmuLWh5Q8Pr60JYf');
INSERT INTO `t_user` VALUES ('613', 'শাহেদ আহমেদ', '8801733651434', 'shahed', 'shahedamd', 'shahed95@gmail.com', '119.30.38.81', '1', '10/13/2010', '09:00:52 AM', '3', '20110217012204', '20101013090052g5q01etfyjMZiu4Sdo3QPLNT7JzFlb');
INSERT INTO `t_user` VALUES ('614', 'সেজুতি', '০১৬১১৭৭৮৮১১', 'sejuti', '2222222222', 'eshae77@yahoo.com', '113.11.96.95', '1', '10/13/2010', '09:45:19 AM', '3', '20101126063753', '20101013094519urdzFSRvZA8Tlk2LJGqxPUYX4ps5Bw');
INSERT INTO `t_user` VALUES ('615', 'সীমান্ত', '০১৬১১৭৭৮৮১১', 'simanto', '2222222222', 'eshae77@yahoo.com', '119.40.90.39', '1', '10/13/2010', '11:57:26 AM', '3', '20110327141007', '20101013115726asHZi785APgRoLj4zQ9eYXK6F3pnJG');
INSERT INTO `t_user` VALUES ('616', 'আনোয়ার হোসেন সাগর', '01717928890', 'a.hossain', 'thethe', 'anwar.hossain.dhaka@gmail.com', '119.30.38.86', '1', '10/13/2010', '12:05:42 PM', '3', '20101121114227', '20101013120542gCRheNnBKs3fzyJZQvrEXHGWatdL1j');
INSERT INTO `t_user` VALUES ('617', 'বাদশামিন্টু', '+8801719270516', 'baadshahmintu', '270516', 'mintu.baadshah@gmail.com', '202.51.183.54', '1', '10/14/2010', '03:57:06 AM', '3', '20110502130342', '20101014035706zoc2mClH5d7UaGW1ENJPKi3VkQDAsY');
INSERT INTO `t_user` VALUES ('618', 'মাগরিব বিন মোস্তফা', '01716909909', 'magrib', '2222222222', 'eshae77@yahoo.com', '180.234.52.97', '1', '10/14/2010', '05:05:46 AM', '3', '20110323154358', '20101014050546hgSfptjFCzKus9GykbwWMEQnaH5iZA');
INSERT INTO `t_user` VALUES ('619', 'বিধি', '01716900515', 'bidhi', '2222222222', 'eshae77@yahoo.com', '180.234.59.30', '1', '10/14/2010', '05:35:54 AM', '3', '20110407123301', '20101014053554PR5gf9yJ2617jpSdi4Alhax3BMUtbE');
INSERT INTO `t_user` VALUES ('620', 'লাল সৈনিক', '0096895697801', 'parvez21thcentury', '95697801', 'rakibparvez@gmail.com', '82.178.69.24', '1', '10/14/2010', '09:49:08 AM', '3', '20101015035833', '20101014094908Lg862DQ0FnB9yhkSGHwNZcPKUXTrMY');
INSERT INTO `t_user` VALUES ('621', 'খান', '০১৭১৭৫৫৮৮২২', 'Khan', '2007731036', 'jonykhan36@gmail.com', '117.18.231.21', '1', '10/14/2010', '02:39:36 PM', '3', '20110413015858', '20101014023936lZfEgnSCAQ7PsLW2VdU1K8we4YkNpq');
INSERT INTO `t_user` VALUES ('622', 'masum', '01724067303', 'masum', '811482', 'ma_sum999@yahoo.com', '202.134.14.27', '0', '10/15/2010', '12:52:07 PM', '3', '0', '20101015125207pgy0dAZGh7cFfDKz5s2oWLRYNjPkSQ');
INSERT INTO `t_user` VALUES ('623', 'সাদা ক্যানভাস', '01715214241', 'fly', '102030', 'opestid@yahoo.com', '117.18.231.6', '1', '10/15/2010', '11:51:48 PM', '3', '0', '20101015115148UNi5gstA6bL0uxcKPQp4f39mT8E1Z7');
INSERT INTO `t_user` VALUES ('624', 'মজবাসার', '416 5057243', 'mjbashar', 'jamilul', 'sangsker@yahoo.com', '99.254.102.60', '0', '10/16/2010', '01:55:55 AM', '3', '0', '20101016015555Twl367v5P4VgLdhWQzMpCRjKumiqHY');
INSERT INTO `t_user` VALUES ('625', 'mdmjbashar', '905 7918712', 'mdmjbashar', 'jamilul', 'sangsker@yahoo.com', '99.254.102.60', '0', '10/16/2010', '02:13:34 AM', '3', '0', '20101016021334zQMY8gpbstv1mfJ0UGDluB2cCkeLqS');
INSERT INTO `t_user` VALUES ('626', 'সায়েম চৌধুরী', '01670225877', 'sayemchoudhury', 'railline', 'sayemsust@gmail.com', '119.30.39.85', '0', '10/16/2010', '03:52:31 AM', '3', '0', '20101016035231KJ7mh4rF6ZzEiPfVqlenbvTHWj8GAX');
INSERT INTO `t_user` VALUES ('627', 'ভয়াল অগ্নিপুরুষ', '01670225877', 'sayemxpress', 'railline', 'sayemsust@gmail.com', '119.30.39.85', '1', '10/16/2010', '03:55:41 AM', '3', '20110211132753', '201010160355412cb1RvLTh3EUknlABmq4Y5PDFQWHuX');
INSERT INTO `t_user` VALUES ('628', 'ক্রীতদাস', '01713590007', 'Istiaq', 'amaricha', 'istiaaq@gmail.com', '202.134.8.92', '1', '10/16/2010', '10:42:36 PM', '3', '20101017120217', '20101016104236rs7LXwNoWT8YiSDngmdQJpcq20EK6b');
INSERT INTO `t_user` VALUES ('629', 'জামিল', '৯০৫ ৭৯১৮৭১২', 'jamil', 'jamilul', 'sangsker@yahoo.com', '99.254.102.60', '0', '10/16/2010', '11:40:19 PM', '3', '0', '20101016114019NBFq0GTDAzmC432fUSresYLlZjwbWx');
INSERT INTO `t_user` VALUES ('630', 'alauddin1987', '01916936139', 'alauddin1987', 'admin123456', 'alauddin1987@gmail.com', '119.30.34.2', '1', '10/20/2010', '12:51:28 PM', '3', '20110504173539', '20101020125128lCqgaZMmjvAkTQW57t1YXPezSho9Hy');
INSERT INTO `t_user` VALUES ('631', 'যমুনা থেকে বলছি', '01713581824', 'md lutfor rahman', '01713581824', 'talukdar.telecom@gmail.com', '202.56.7.172', '1', '10/21/2010', '09:54:36 AM', '3', '20101022123708', '20101021095436qkB4xZVlzw8rDPgSpJiLhMKa6s1uU5');
INSERT INTO `t_user` VALUES ('632', 'ডিজিটাল সময়', '+8801924872743', 'duronto_pothik10', 'opestnet', 'duronto_pothik10@yahoo.com', '64.255.180.191', '1', '10/21/2010', '12:11:38 PM', '3', '20101221161600', '201010211211382VlozgrDqAxGwB6WbfSEpsZdt4NKQk');
INSERT INTO `t_user` VALUES ('633', 'আরাফাত', '01923655754', 'arafat', '1234', 'rakibul.dhakanet@gmail.com', '119.30.39.78', '1', '10/21/2010', '10:02:23 PM', '3', '20110118202906', '20101021100223rT83boVCil1ABSMk4yezGEtRQcsJY5');
INSERT INTO `t_user` VALUES ('634', 'ইরাক', '0192345657', 'erak', '1234', 'rakibul.dhakanet@gmail.com', '119.30.39.88', '1', '10/22/2010', '05:15:34 AM', '3', '20110220175556', '201010220515348USkG9RX1WhZwDu5BM2VPg7azNYdFe');
INSERT INTO `t_user` VALUES ('635', 'আফরোজা', '0171865450', 'afroza', 'asdf', 'rakibul.dhakanet@gmail.com', '119.30.38.72', '1', '10/22/2010', '05:44:55 AM', '3', '20101031202359', '20101022054455JEurkwdCXjR30i8W4gy5AVh1qcB7Z2');
INSERT INTO `t_user` VALUES ('636', 'রাষ্ট্রপ্রধান', '01824887938', 'MD. MAHBUBUL KARIM', 'mykingfisher', 'i_statesman@yahoo.com', '202.134.8.94', '1', '10/22/2010', '09:56:43 AM', '3', '20101023124744', '201010220956431jkv6THfsaeWxq5YXPztK2bANSd7nr');
INSERT INTO `t_user` VALUES ('637', 'রুবেল০০৭', 'rubel007cse', 'rubel007cse', '01718244288', 'rubel007cse@gmail.com', '119.30.38.69', '1', '10/22/2010', '01:39:39 PM', '3', '20101103014041', '20101022013939qcKMCSp5DyF4utafJEnj0G29eBYZ3b');
INSERT INTO `t_user` VALUES ('638', 'shemul', '01912912866', 'shem', '01557308785', 'shemulsust@gmail.com', '180.149.20.123', '1', '10/23/2010', '12:14:28 AM', '3', '20101208205658', '20101023121428bPX1NuJcBkwWjt5s6Vz74DpfCUrq9g');
INSERT INTO `t_user` VALUES ('639', 'বাঙ্গাল মানুষ', '01199088867', 'Bangla Manush', '62514133', 'maxmintu@gmail.com', '180.234.37.116', '1', '10/23/2010', '12:14:54 AM', '3', '20101023112313', '20101023121454azUf1uLYRlwQWtNq2ZjTvVMsBndS7b');
INSERT INTO `t_user` VALUES ('640', 'নাফিজ তাহমিদ', '01717431002', 'nafiztahmid', '272641', 'nafiztahmid@yahoo.com', '116.193.174.223', '0', '10/23/2010', '01:10:33 AM', '3', '0', '20101023011033TaR01gwHdp8JAL2VD3exYfzy5isMbv');
INSERT INTO `t_user` VALUES ('641', 'মোঃ শরিফুল আলম', '01713644202', 'mdsharifulalam', '255604', '255604', '220.255.7.234', '0', '10/23/2010', '01:13:39 AM', '3', '0', '20101023011339LsxtzbyeQPoCNiwAvY69u5ZMml7TUj');
INSERT INTO `t_user` VALUES ('642', 'হাসানুর', '01717187721', 'hasanur', 'hasan7721', 'fnur101@yahoo.com', '122.144.9.241', '1', '10/23/2010', '01:51:53 AM', '3', '20101023213014', '20101023015153GlfHpbsdmXwQEx9DWBCkgjiTFtJrLK');
INSERT INTO `t_user` VALUES ('643', 'অসামাজিক তানীম ও পড়শী সমাচার', '01197078918', 'mjtanim', '01197078918', 'mjtanim@yahoo.com', '203.112.203.210', '1', '10/23/2010', '01:56:09 AM', '3', '20101031201931', '20101023015609qpoY2Unmis1x9S74rZ3zaNQbEe6gcF');
INSERT INTO `t_user` VALUES ('644', 'জাহিদু্ল', '01911390599', 'zahid2', '12345', 'zahid_bba0018@yahoo.com', '202.164.209.2', '1', '10/23/2010', '04:18:53 AM', '3', '0', '20101023041853NUMB4E8W6ledRkXv9nVDTyiPqh7SGF');
INSERT INTO `t_user` VALUES ('645', 'Zahidul Islam', '01923655725', 'zahid100', '123456', 'zahid_bba0018@yahoo.com', '202.56.7.176', '1', '10/23/2010', '04:21:46 AM', '3', '20101226095843', '201010230421464YiPJUC0ZsyGxwoWpRb198zlNvDaLg');
INSERT INTO `t_user` VALUES ('646', 'lalsabuj', '111111111111', 'lalsabuj', 'language', 'lalsabuj_1971@yahoo.com', '202.44.109.44', '1', '10/23/2010', '04:33:32 AM', '3', '20101023154058', '20101023043332i9ufB14DjqdSx7o53HUJFRYt2WgzkQ');
INSERT INTO `t_user` VALUES ('647', 'কাঠবিড়ালী', '01912478194', 'Md. Shohel Rana', '478194', 'shohelrana70@yahoo.com4', '203.112.203.210', '0', '10/23/2010', '10:27:40 AM', '3', '0', '20101023102740T3HrayxK4CqEJ7gL9dkSphunlijwUf');
INSERT INTO `t_user` VALUES ('648', 'waduzzaman', '01715913303', 'waduzzaman', 'tamosi123', 'waduzzaman@gmail.com', '123.49.22.49', '1', '10/23/2010', '10:52:45 PM', '3', '0', '20101023105245p9lXW2cKCS1qFmgjZnyfHzRiJo3V6Q');
INSERT INTO `t_user` VALUES ('649', 'মেহেরুবা', '01717208037', 'meheruba', '06022010', 'meherubanisha@gmail.com', '117.18.231.28', '1', '10/24/2010', '12:41:38 AM', '3', '20101104172342', '20101024124138Cs8jFQ0Gzpl5diynMJ7Tau1w9NrfPK');
INSERT INTO `t_user` VALUES ('650', 'এসএমএস', '01724828457', 'fbi', 'amimanus', 'shams.ih.du@gmail.com', '116.193.173.121', '1', '10/24/2010', '09:41:15 AM', '3', '20110419170925', '20101024094115H0Go5wXZ9v7bz4PAa3yqNl2RKfdcCU');
INSERT INTO `t_user` VALUES ('651', 'রাকিবুল আলম', '019876543', 'rakibulalom', '123456', 'rakibul.dhakanet@gmail.com', '119.30.38.81', '1', '10/26/2010', '08:19:33 AM', '3', '20101026193430', '201010260819332QZ5xVXtdNSrkmfJTlyaFBEcRuAPDb');
INSERT INTO `t_user` VALUES ('652', 'অপু', '0192283667477', 'opu', '1234', 'moinul.haque.hatiya@gmail.com', '119.30.39.70', '1', '10/27/2010', '01:16:40 AM', '3', '20110121085008', '20101027011640Z0TFRvPiWoXSgzNEpaw1qc6G4CtenQ');
INSERT INTO `t_user` VALUES ('653', 'ছিন্ন পত্র', '01927865743', 'sinno pattro', 'book', 'moinul.haque.hatiya@gmail.com', '119.30.38.88', '1', '10/27/2010', '01:49:39 AM', '3', '20110223185048', '20101027014939m3hWnldgZBiVXFbSK9DoTp5NPCkJEU');
INSERT INTO `t_user` VALUES ('654', 'নীল পদ্ম', '01823454657', 'nilp', 'qwe', 'moinul.haque.hatiya@gmail.com', '119.30.38.88', '0', '10/27/2010', '02:08:33 AM', '3', '0', '20101027020833Jaus0Wk1j8XAHg5Qxl4D9NoVztLcfM');
INSERT INTO `t_user` VALUES ('655', 'মহী', '01723454342', 'mohi', 'qwe', 'moinul.haque.hatiya@gmail.com', '119.30.38.88', '1', '10/27/2010', '02:22:52 AM', '3', '20110421182007', '201010270222526u0TzKUNH4VP1yDwhogQsJn9mtFrMj');
INSERT INTO `t_user` VALUES ('656', 'আলেয়া', '01913257789', 'aleya', 'qwe', 'moinul.haque.hatiya@gmail.com', '119.30.38.88', '1', '10/27/2010', '02:32:56 AM', '3', '20110417193248', '20101027023256QtiAw5qXF3UVvYacBlgnTRdN7phPmk');
INSERT INTO `t_user` VALUES ('657', 'তায়েফ আহমাদ', '01717819489', 'taif023', 'sidami', 'taif_023@hotmail.com', '119.30.38.71', '1', '10/27/2010', '12:00:22 PM', '3', '20101028111316', '201010271200228e0PFXdumk2S7UoNQ1wMyVgvKhY3T4');
INSERT INTO `t_user` VALUES ('658', 'ফয়সল অভি', '01819-809095', 'Faysal-Ovi', '160174_MOM', 'faysal.ovi@gmail.com', '202.86.220.116', '1', '10/27/2010', '12:28:06 PM', '3', '20101117015034', '20101027122806A3Fl1Pk0wJudTMCSDy7x85VmbXnBR4');
INSERT INTO `t_user` VALUES ('659', 'চিকনমিয়া', '0192837656', 'cchikonmiablog', 'thebook', 'rakibul.dhakanet@gmail.com', '119.30.38.78', '1', '10/27/2010', '02:39:07 PM', '3', '20101028015014', '20101027023907SDCeKVGxlL8dfbA5YqZi3ywXN4kR07');
INSERT INTO `t_user` VALUES ('660', 'হৃদয় খান', '89386492384623', 'hridoykhan', 'bangladesh', 'khan_hridoy@ymail.com', '117.18.231.13', '1', '10/28/2010', '05:43:03 AM', '3', '20101028165902', '20101028054303bdUlN9RX7zZ6S0AikW5m4rP8YejD1F');
INSERT INTO `t_user` VALUES ('661', 'শওকত জাওহার', '01923655725', 'zawhar', '123456', 'rakibul', '119.30.39.70', '0', '10/28/2010', '10:47:56 PM', '3', '0', '20101028104756ileBmJpg4LF8ZcC9VTKyDYEqQsRa10');
INSERT INTO `t_user` VALUES ('662', 'mirror', '01553425773', 'mirror', 'mirror', 'nkamirror@gmail.com', '115.127.7.174', '0', '10/29/2010', '12:54:16 AM', '3', '0', '20101029125416rW0zfE3NjVXc9TugkZ7M82qKt6yx1s');
INSERT INTO `t_user` VALUES ('663', 'জোসেফ', '+8801190204298', 'joseph', 'opest.com', 'josephcuc@gmail.com', '117.18.229.4', '1', '10/29/2010', '12:02:42 PM', '3', '20101029233619', '20101029120242NnlSaHJM9C4PdkE2QmVfAiYZx67DB8');
INSERT INTO `t_user` VALUES ('664', 'মুখোশ', '01111111111', 'mukus', '786786', 'onlinenetbd@gmail.comnet', '117.18.231.30', '0', '10/29/2010', '01:25:00 PM', '3', '0', '20101029012500XeWpztw6M70EZly4uasLVoS2rxGvYN');
INSERT INTO `t_user` VALUES ('665', 'বাজ পক্ষী', '031123456789', 'bazpaki', 'fox2008', 'foxbox2008@gmail.com', '117.18.231.30', '0', '10/29/2010', '01:45:15 PM', '3', '0', '20101029014515QyiGJDoBflZezaWn8rgmUs3H5Xdh7R');
INSERT INTO `t_user` VALUES ('666', 'rashedul', '01813185387', 'Rashedul', 'asdfg', 'hasanrashedul88@yahoo.com', '116.193.174.25', '1', '10/30/2010', '10:03:09 AM', '3', '0', '201010301003098uJBWtNdkjvaiwQ7z1yVc0MrsLRTXY');
INSERT INTO `t_user` VALUES ('667', 'চৌকিদার', '01197078918', 'imcasia', '01197078918', 'mjtanim@yahoo.com', '203.112.203.210', '1', '10/31/2010', '09:23:37 AM', '3', '20101031211808', '201010310923373mWQD7vTru9K1MhiA6zLyPfdanoxBk');
INSERT INTO `t_user` VALUES ('668', 's', '0174675147', 'sorowr', '555', 'chittagong_trading', '119.30.39.72', '0', '10/31/2010', '10:47:04 AM', '3', '0', '201010311047047VYLxWTm2Cb15vkPKFfHj0wcq6NEJ8');
INSERT INTO `t_user` VALUES ('669', 'সোহাগ', '01741608649', 'sohag', 'salim', 'salim_rs@yahoo.com', '117.18.231.5', '1', '10/31/2010', '11:31:43 AM', '3', '20101209213541', '20101031113143pxWa7S248AguDnRj9mT0KdMUNQobPq');
INSERT INTO `t_user` VALUES ('670', 'হাবিবুর রহমান', '01735720452', 'habib', '123456', 'sharif94bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '01:00:19 PM', '3', '20101110024724', '20101031010019mxZU5NhAd3GnwbsFHfgYW2jErqPayc');
INSERT INTO `t_user` VALUES ('671', 'আমিনা আহমেদ', '01922033964', 'amina', '123456', 'sharif94bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '01:31:54 PM', '3', '20101108005848', '20101031013154Ax9DY4fRdckoKhTJqFwBjmEZUHtbMQ');
INSERT INTO `t_user` VALUES ('672', 'হাসি', '01723759523', 'hasi', '123456', 'sharif94bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '01:51:53 PM', '3', '20110504074920', '20101031015153rG9Yt6Ui81MQEDHqnBTxcLo2A0lSXF');
INSERT INTO `t_user` VALUES ('673', 'মোস্তাকিম বিল্লাহ', '01723456789', 'mostak', '123456', 'sharie94bd@gmil.com', '119.30.39.75', '0', '10/31/2010', '01:56:59 PM', '3', '0', '20101031015659zMQX2PUhTZxBW6L4YJ5Edworkg3ivR');
INSERT INTO `t_user` VALUES ('674', 'সোহেল রানা', '01723764639', 'sohel', '1234', 'sharif94bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '01:59:52 PM', '3', '20110119171841', '20101031015952ZeELH5h4WUyPgYsBrM6X3qAb82J1RF');
INSERT INTO `t_user` VALUES ('675', 'নানা', '01723758601', 'nana', '123456', 'sharif94bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '02:03:04 PM', '3', '20110414205548', '20101031020304jq1hs5RBGnZSrwUQJz2foP8ty74iFD');
INSERT INTO `t_user` VALUES ('676', 'মশা', '01723758602', 'sssss', '123456', 'sharif92bd@gmail.com', '119.30.39.75', '1', '10/31/2010', '02:06:21 PM', '3', '20110504161800', '20101031020621wRgMkmdvsjLPX6xUyolCaHBne3F579');
INSERT INTO `t_user` VALUES ('677', 'জরিনা ভেওয়া', '01724951785', 'jorina', '123456', 'sharif92bd@gmil.com', '119.30.39.75', '0', '10/31/2010', '02:14:25 PM', '3', '0', '20101031021425hd0KNwC6Ylmo8xZSAL37RtiuBpbEzG');
INSERT INTO `t_user` VALUES ('678', 'বেশ্যা জননী', '0000000000000', 'beshya', 'ajkal', 'ajkal2009@gmail.com', '117.18.231.15', '0', '10/31/2010', '03:33:18 PM', '3', '0', '20101031033318Bt8TEn165ljZr2DChJHYKfgsmeFVMU');
INSERT INTO `t_user` VALUES ('679', 'অতিথি১৬', '02420420', 'nastameya', 'bd2008bd420', 'bd2008bd@gmail.com', '117.18.231.15', '1', '10/31/2010', '04:34:54 PM', '1', '20110302210833', '20101031043454cs4nkoYwdJXvl8raML5jeNDV7qpf2F');
INSERT INTO `t_user` VALUES ('680', 'স্বপ্নবাজ', '01715426263', 'mrmithu', 'matiurrahman', 'mrmithu@yahoo.com', '119.30.39.66', '1', '10/31/2010', '04:35:14 PM', '3', '20101122005747', '20101031043514NoRwQVKYdtGHlpu7zCAcsjW6Xb248B');
INSERT INTO `t_user` VALUES ('681', 'পাপিয়া সুলতানা', '01735133080', 'lover', '1234', 'sharif94bd@gmail.com', '119.30.39.65', '1', '10/31/2010', '11:32:36 PM', '3', '20110118220411', '201010311132362RyUx8Zs7AEc9SDYwzmFl0jbpCoLGr');
INSERT INTO `t_user` VALUES ('682', 'ছোট বিড়াল', '01723456789', 'biral', '123456', 'sharif94bd@gmail.com', '119.30.39.65', '0', '11/01/2010', '12:19:24 AM', '3', '0', '20101101121924ximVQe3FvDdgkRJHfhPY1SaKyL9Erj');
INSERT INTO `t_user` VALUES ('683', 'চাবি', '01723758601', 'key', '123456', 'sharif94bd@gmail.com', '119.30.39.65', '1', '11/01/2010', '12:22:05 AM', '3', '20101115171037', '2010110112220580HpyKzLcoX2M1lW4Rr3itP5A6m7DG');
INSERT INTO `t_user` VALUES ('684', 'খন্দকার আলমগীর হোসেন', '905-230-7170', 'Khandaker23', 'swapan23', 'nabiomedical@aol.com', '99.227.224.83', '1', '11/01/2010', '12:28:19 AM', '3', '20110429030255', '20101101122819CvAdS5GgcNQ97hlVEt1zp02JjM8HaP');
INSERT INTO `t_user` VALUES ('685', 'JamesBZ', '123456', 'JamesBZ', 'ztLHD8v328', 'jamesbz@adult-pages.org', '95.211.0.70', '0', '11/01/2010', '04:49:53 AM', '3', '0', '201011010449538igKtfLUTjcCAzbSkXarFBJo2E5RNq');
INSERT INTO `t_user` VALUES ('686', 'কলমি লতা', '52411321', 'bhr', '111444777', 'belayet.nu@gmail.com', '119.30.34.4', '1', '11/01/2010', '11:05:44 PM', '3', '20110504092653', '20101101110544ZUEanVWdGtTN4MeoQhH6zX8iw0ku5J');
INSERT INTO `t_user` VALUES ('687', 'পারভেজ রাকিব', '0096895697801', 'mind_free', '95697801', 'm_parvez01@rocketmail.com', '82.178.69.245', '0', '11/02/2010', '01:30:38 PM', '3', '0', '201011020130385UR8i90KSlz6gvqnZj7ewmufVPErTc');
INSERT INTO `t_user` VALUES ('688', 'raju', '01816011472', 'raju', 'raju', 'alauddin1987@yahoo.com', '202.56.7.165', '0', '11/02/2010', '08:38:52 PM', '3', '0', '20101102083852efEkd7UGBuASjiCsNbX0Lv1lZwqWac');
INSERT INTO `t_user` VALUES ('689', 'khorkuta', '01816011472', 'khorkuta', 'khorkuta', 'alauddin1987@yahoo.com', '202.56.7.165', '0', '11/02/2010', '08:40:34 PM', '3', '0', '20101102084034LTCZiuRehdPBy5NWA89F7fXtEJpb1l');
INSERT INTO `t_user` VALUES ('690', 'goldenbangladeh', '8951233', 'goldenbangladeh', 'goldenbangladeh', 'goldenbangladeh@gmail.com', '202.56.7.165', '0', '11/02/2010', '08:52:43 PM', '3', '0', '20101102085243VT87p4aHkFqYXNftJiUADvndCgu5wP');
INSERT INTO `t_user` VALUES ('691', 'লিঙ্কন', '00966559126595', 'linkon', '12369874', 'sohaghusain_2006@yahoo.com', '94.99.11.189', '0', '11/02/2010', '09:42:07 PM', '3', '0', '20101102094207XPZwLatTkQlBdHbj3oncV7AFGpvxre');
INSERT INTO `t_user` VALUES ('692', 'দেশ-মাটি-মানুষ', '01722895437', 'matikobita', 'sa134730', 'matikobita@gmail.com', '123.49.45.129', '1', '11/02/2010', '10:37:31 PM', '3', '20101107101138', '20101102103731dSQWNnYiCJytgB6ETupowZ4rVlmhDj');
INSERT INTO `t_user` VALUES ('693', 'সাইফ মাহদী', '+8801918134730', 'saifmahdee', 'saif1347', 'saif.mahdee@gmail.com', '123.49.45.129', '1', '11/02/2010', '11:45:34 PM', '3', '20110411181349', '20101102114534YaE57gW2GdBpZjnv4cJ1twAKmbDhMH');
INSERT INTO `t_user` VALUES ('694', 'মাহবুব১৫৪', '01670017209', 'mahbub154', 'mahbub1', 'mahbub154@gmail.com', '120.50.183.83', '1', '11/02/2010', '11:59:38 PM', '3', '20101108223018', '201011021159380dw3a8cBPQgRoHpDKSYGXF1s6V7lu9');
INSERT INTO `t_user` VALUES ('695', 'লিঙ্কনহুসাইন', '00966559126595', 'linkonhusain', '', 'sohaghusain_2006@yahoo.com', '94.99.11.189', '1', '11/03/2010', '12:30:11 AM', '3', '20101103122605', '20101103123011AjfUha81dFZ02QsXNltCBxecp3mYwT');
INSERT INTO `t_user` VALUES ('696', 'মোঃ রাশেদুল ইসলাম রাশেদ', '01738300665', 'rashed ruhani', '30066500', 'rashedruhani@yahoo.com', '202.164.211.165', '1', '11/03/2010', '03:27:45 AM', '3', '20110203152732', '20101103032745b52ueprcoFiMt04mESlVAknHdxa9KR');
INSERT INTO `t_user` VALUES ('697', 'মোস্তফা', '01716959765', 'nmostafabd', '10710766', 'nmostafabd@yahoo.com', '117.18.231.4', '0', '11/03/2010', '08:53:17 AM', '3', '0', '20101103085317ZoNB2WyUrkRi1uKhQ96evtF4HalnSE');
INSERT INTO `t_user` VALUES ('698', 'shariffinance', '01199392197', 'Md. Sharif Hossain', '01199392197', 'sharif.bd86@gmail.com', '120.50.183.74', '1', '11/04/2010', '12:40:29 AM', '3', '20101106214826', '201011041240294K0sx8yGiugWb9CSEYVN2a7kZMl51X');
INSERT INTO `t_user` VALUES ('699', 'পথহারা পথিক', '01914846370', 'kabir.1202', '01722612406', 'kabir.1202@yahoo.com', '119.30.34.8', '1', '11/04/2010', '07:02:44 AM', '3', '20110504131723', '20101104070244l8ACaVoUEx2XmhrcPtguB6Jp3DQ1vK');
INSERT INTO `t_user` VALUES ('700', '&#2459;&#2507;&#2463; &#2459;&#2507;&#2463; &#2453;&#2494;&#2476;&#2509;&#2479; &#2453;&#2467;&#2494;', '01676346317', 'aina', '1234', 'faysal.tc@gmail.com', '119.30.39.76', '1', '11/04/2010', '08:18:20 AM', '3', '20110119203427', '20101104081820HYslFtM4qfBw2i8NJCdXLrA7gn6a0K');
INSERT INTO `t_user` VALUES ('701', 'অতিথি', '01923655725', 'guest', 'abcdefgh', 'tarek.japan@gmail.com', '119.30.39.76', '1', '11/04/2010', '08:39:19 AM', '0', '20101215205600', 'ban_20101104083919RGxidn5X8vlA0Qs2TUyrSjhMVBWf4Z');
INSERT INTO `t_user` VALUES ('702', 'ismail', '00971506737597', 'ismailhossain', '5693356', 'kmismailhossain@yahoo.com', '195.229.235.43', '0', '11/04/2010', '04:25:31 PM', '3', '0', '201011040425316flUgkh2oSxqFXA3sCEyND5ejaQpJd');
INSERT INTO `t_user` VALUES ('703', 'বৈকালি', '01676346317', 'boi', '1234', 'faysal.tc@gmail.com', '119.30.38.81', '1', '11/04/2010', '08:16:03 PM', '3', '20110121092315', '20101104081603FrWUfJa6hVEQpiwgx2lkbe8yAScT4Y');
INSERT INTO `t_user` VALUES ('704', 'manik_feni', '01713162441', 'shahidul hoque', '716732', 'shahid4h@gmail.com', '202.65.169.11', '0', '11/04/2010', '11:18:59 PM', '3', '0', '201011041118596B1aDH5o8R09KZAin7MpVjETvsXbC4');
INSERT INTO `t_user` VALUES ('705', 'পড়শি', '01716861676', 'porshi', '102030', 'opestid@yahoo.com', '117.18.231.29', '1', '11/05/2010', '01:07:03 AM', '3', '20110107214625', '201011050107038n14WGcr2PdTxNBVaHoiFuzQ0KZ3lU');
INSERT INTO `t_user` VALUES ('706', 'সালেহ আহমদ', '0197867657', 'salehahmed', 'ASDFGH', 'shawkat.ali.zawhar@gmail.com', '119.30.38.81', '1', '11/05/2010', '01:24:29 AM', '3', '20101213112820', '20101105012429Twusng86eWQdf1pJyoZNhGaDK25Y7c');
INSERT INTO `t_user` VALUES ('707', 'phenreste', '123456', 'phenreste', 'ixSzqgt461', 'zonin@involgu.ru', '109.194.142.3', '0', '11/05/2010', '03:26:21 PM', '3', '0', '201011050326219H2Kf0XvDUylj5ocn8NzVBYSZLseTw');
INSERT INTO `t_user` VALUES ('708', 'কবিয়াল', '01676346317', 'kobi', '12341234', 'faysal.tc', '119.30.39.65', '0', '11/06/2010', '03:55:48 AM', '3', '0', '20101106035548lcshQN62uFJKif9U3vkbV8oB7dqRZ4');
INSERT INTO `t_user` VALUES ('709', 'রেজওয়ান', '018968901', 'rezowan', '0189689019', 'rezowankarim@yahoo.com', '180.149.8.127', '1', '11/06/2010', '04:50:32 AM', '3', '20110204210211', '20101106045032zidlrUK34uQE8hvkcAxJ0yG1BCmTX7');
INSERT INTO `t_user` VALUES ('710', 'সিম্পল বয়', '01723623714', 'fahim shakil', '123456', 'simpleboyshakil@gmail.com', '180.234.27.204', '1', '11/06/2010', '10:10:36 AM', '3', '20101106230735', '20101106101036loLdUAgjsux5ktD9C401vFVcwEqreh');
INSERT INTO `t_user` VALUES ('1380', 'OPEST_Village', '019876543', 'ov', 'jj', 'shawkat.ali.zawhar@gmail.com', '180.234.77.90', '1', '04/18/2011', '08:55:29 AM', '3', '20110418203025', '20110418085529AelF5os6pfL0Qg4yC2HzGb7iqVvrBJ');
INSERT INTO `t_user` VALUES ('712', 'মহাসচিব, বিশ্ব ব্লগ সংস্থা', '01716861676', 'wbc', '102030', 'opestid@yahoo.com', '117.18.231.32', '1', '11/07/2010', '01:04:23 AM', '3', '20110314181156', '20101107010423CkXd2UxeW7i1nGS8mg5EPVKzZyfYah');
INSERT INTO `t_user` VALUES ('713', 'বন্দী-খাচা', '০১৯২৬৬৩৯৯৩২', 'akiqbal', 'tuktakkaj', 'akiqbal@gmail.com', '123.49.42.193', '1', '11/07/2010', '03:50:50 AM', '3', '20101107225403', '20101107035050TAwEaDFiYZVcMtf4dr5mq0u1BjyzoW');
INSERT INTO `t_user` VALUES ('714', 'vfngkfvcYcV', '01731443570', 'Md.Tazul Islam', '842130', 'ti.tazul@yahoo.com', '119.30.39.90', '0', '11/07/2010', '06:47:49 AM', '3', '0', '20101107064749Q0MS9f2cB7wCjpTtUY3mzlkPZGK6oh');
INSERT INTO `t_user` VALUES ('715', 'vifvnmg&k¯—fvvic‡YQc‡Vj', '01731443570', 'Md.Tazul Islam Sarkar', '842130', 'ti.tazul@yahoo.com', '119.30.39.90', '0', '11/07/2010', '06:52:10 AM', '3', '0', '20101107065210bqNkU03gApe5nQrmwESuoDPB4yJFCl');
INSERT INTO `t_user` VALUES ('716', 'neyamul hoque', '00393803682563', 'neyamul hoque', 'sangidany', 'janglebari@gmail.com', '217.201.250.154', '1', '11/08/2010', '02:47:22 AM', '3', '20110227172040', '20101108024722umhQLFAwVy1rjJU6TnbgxoSqa7Eisk');
INSERT INTO `t_user` VALUES ('717', 'drugsaddiction', '123456', 'drugsaddiction', 'BCyza9i428', 'nisalkosam@aol.com', '109.60.8.101', '0', '11/08/2010', '05:31:45 AM', '3', '0', '201011080531452h4cQYq8z1jBG6ofwMHmgDt70FeAxk');
INSERT INTO `t_user` VALUES ('718', 'Fakir Abdul Malek', '01673605818', 'Fakir Abdul Malek', '00001111', 'kobi4omi@yahoo.com', '203.188.252.26', '1', '11/09/2010', '03:32:01 AM', '3', '20110427153532', '20101109033201vfAaxgEHt4iW6Q2UVL5kS30q79hRoG');
INSERT INTO `t_user` VALUES ('719', 'নেতা', 'nil', 'v6love', 'bangladesh', 'v6love@gmail.com', '123.218.127.215', '0', '11/09/2010', '04:08:38 AM', '3', '0', '201011090408382AdByuh5nitmw6YEDeTxL4QrZkjofc');
INSERT INTO `t_user` VALUES ('720', 'জোবায়ের আহমেদ নবীন', '01911037739', 'janobin', 'nobinsona', 'janobin@gmail.com', '203.188.254.196', '1', '11/09/2010', '05:06:01 AM', '3', '20110420160543', '20101109050601tN2apeQbzvu8D0ylJdoPg9xGwFTrfA');
INSERT INTO `t_user` VALUES ('721', 'মাধবীলতা', '0192873665', 'madhobi', 'dhaka', 'tarek.japan@gmail.com', '119.30.39.73', '1', '11/09/2010', '10:26:31 AM', '3', '20110415154011', '20101109102631k0CntNqYb8ReiTB7GWjdx63lJvZhpo');
INSERT INTO `t_user` VALUES ('722', '&#2460;&#2503;&#2465; &#2478;&#2494;&#2472;&#2495;&#2453;', '01923655734', 'sazawhar', 'asdf', 'saleh.ahmed.dhaka@gmail.com', '119.30.39.66', '1', '11/09/2010', '08:15:23 PM', '3', '20110325101045', '20101109081523nuoAqdTM7X3HgG5pVvQhxEtYr81jkC');
INSERT INTO `t_user` VALUES ('723', 'হ্রিহ্রিলা', '01722235074', 'hihi', '12341234', 'faysl.uk@gmail.com', '119.30.39.66', '1', '11/09/2010', '10:43:07 PM', '3', '20110503154117', '20101109104307xKSoqNuAeW53vn2g7JXUZdE9kBTPt0');
INSERT INTO `t_user` VALUES ('724', 'নতুন বিশ্ব', '01911511088', 'taher', '123456', 'tarifm@gmail.com', '202.164.209.2', '1', '11/10/2010', '12:48:54 AM', '3', '20101110131045', '20101110124854tFG6Swia1kDE8rLy3Heoc7TXnhbMu2');
INSERT INTO `t_user` VALUES ('725', 'অ্যাডভেঞ্চারাস ভয়েজ', '0465706771', 'AdventurousVoyage', 'Min152484', 'adv.voyage@gmail.com', '94.101.2.145', '1', '11/10/2010', '02:25:54 PM', '3', '20101201192800', '20101110022554udQTpSfhcGw6P2YHgt9NVk1ezbR7mr');
INSERT INTO `t_user` VALUES ('726', 'জারিফা আমরিন', '971554601080', 'zareefaamreen', '2266800', 'zareefaamreen@gmail.com', '86.96.228.84', '1', '11/11/2010', '08:58:45 AM', '3', '0', '20101111085845U1slXBDqSrjbcznWyFwmptNaVCE32P');
INSERT INTO `t_user` VALUES ('727', 'রাখাল', '01918474273', 'ti.tazul', '443570', 'ti.tazul@yahoo.com', '119.30.34.3', '1', '11/11/2010', '10:56:42 AM', '3', '20110501125953', '20101111105642piCGXaPkdWeTAfzZ64syNJ2mj3xLtq');
INSERT INTO `t_user` VALUES ('728', 'ওপেস্ট রাইটার্স ফোরাম', '01716861676', 'orf', '102030', 'jaherrahman@yahoo.com', '117.18.231.17', '1', '11/12/2010', '12:54:22 AM', '3', '20110317180857', '20101112125422u9hHGvb8LM0ySoFUYr7iwC6RK3cpDX');
INSERT INTO `t_user` VALUES ('729', 'mycZv', '01712345678', 'Supta', '123456', 'arifsanti50@yahoo.com', '117.18.231.2', '0', '11/12/2010', '12:03:37 PM', '3', '0', '20101112120337PeEzrCnlHocXk0FtbTmpq1awduKyU4');
INSERT INTO `t_user` VALUES ('730', 'কবির য়াহমদ', '01925881228', 'kabiraahmed', 'leeton', 'kbr007@gmail.com', '119.30.39.85', '1', '11/14/2010', '11:01:04 AM', '3', '20101223225836', '20101114110104w6iE7tXef1xBnPa9sQzN8pJMLm3T2u');
INSERT INTO `t_user` VALUES ('731', 'Abu Jafor', '01713333027', 'M Abu Jafor', 'a8uJ@for', 'majafor.bd@gmail.com', '203.188.255.90', '1', '11/15/2010', '12:35:21 AM', '3', '20101115125233', '20101115123521ytvxcF4bGr6aA1W95wEMBNplZnUPuf');
INSERT INTO `t_user` VALUES ('732', 'কাক', '01**4**7656', 'bloodsand', 'f00rammarka', 'maroofbd@yahoo.com', '180.234.12.99', '1', '11/15/2010', '01:08:30 AM', '3', '0', '20101115010830pJBmAP8MVqia9HyrX0hTLfx3stjCb1');
INSERT INTO `t_user` VALUES ('733', 'ছন্নছাড়া', '01672792131', 'sonnosara', '8712726', 'toufique.elahi@gmail.com', '203.112.203.210', '1', '11/15/2010', '07:05:33 AM', '3', '20101122145159', '20101115070533169zwPur7NhUFWcGoASbesRMJZ0qfl');
INSERT INTO `t_user` VALUES ('734', 'wasy', '01740584367', 'WASy', '01740584367', 'wasyuddin.rony@gmail.com', '202.56.7.176', '1', '11/16/2010', '03:54:00 AM', '3', '20110224105649', '20101116035400iTNrMSofQ7CA5F2tXPUJYEsRVhuxH0');
INSERT INTO `t_user` VALUES ('735', 'অচীন', '080-5552-5906', 'ochin', '02022089', 'saiksbau22@gmail.com', '219.173.227.23', '1', '11/16/2010', '06:34:55 AM', '3', '20101126190246', '20101116063455wZK0lFXRhoa67D2Wdfy43qcCUHgJtu');
INSERT INTO `t_user` VALUES ('736', 'মিলা', '01551458791', 'mila', '2222222222', 'eshae77@yahoo.com', '119.40.90.230', '1', '11/18/2010', '07:29:14 AM', '3', '20101205054017', '20101118072914dXrE6hHLzx7fb2QMsF0B4c1N5vZnqY');
INSERT INTO `t_user` VALUES ('737', 'পরীক্ষামূলক', 'Doitosotta', 'doitosotta', 'sexsex94', 'saikat_brsl@yahoo.com', '202.56.7.178', '0', '11/18/2010', '08:08:09 AM', '3', '0', '20101118080809NRCkWMe8z1hJHo52Xs6ZdQVG09Y4FU');
INSERT INTO `t_user` VALUES ('738', 'নীল রং ছিলো ভীষণ প্রিয়', '01712748599', 'neelrong', 'tahhseen', 'ba8ulbu@yahoo.com', '122.248.9.67', '1', '11/19/2010', '08:59:00 AM', '3', '20110125175348', '20101119085900pZTuBwSP1ciYkX5MeDFvxE2o9Gnjgq');
INSERT INTO `t_user` VALUES ('739', 'অরণ্যতা', '01671963993', 'oronnota', 'chuadanga', 'arif.ahamed22@gmail.com', '119.30.39.75', '1', '11/20/2010', '10:00:47 PM', '3', '20110318135313', '20101120100047y2Va5WbSs8UR9NG0KEzJP1CdlLgr7F');
INSERT INTO `t_user` VALUES ('740', 'mahamud', '8801817210435', 'deepwaterfish', '816378', 'mahamudkabir@yahoo.com', '120.50.24.4', '1', '11/21/2010', '03:56:52 AM', '3', '20101225095215', '20101121035652FKPQVGtDjazvxepEymsn02NMAcRh9X');
INSERT INTO `t_user` VALUES ('741', 'mvweŸi Avn‡g`', '01552404995', 'SHABBIR AHMED', '123456', 'shabbir077@yahoo.com', '180.149.24.203', '0', '11/21/2010', '06:14:43 AM', '3', '0', '20101121061443JZ79ztmL3baAfQNVDrd6vWep5igonx');
INSERT INTO `t_user` VALUES ('742', 'সাবিলা ইয়াসমিন মিতা', '01728565123', 'sabilamita', '565123', 'sabilamita@gmail.com', '202.164.211.165', '1', '11/21/2010', '10:15:59 PM', '3', '20110109155611', '20101121101559gfsacdtNFvS1op8e3z5KZCmUPuwYry');
INSERT INTO `t_user` VALUES ('743', 'ছায়াপথ', '01731343636', 'sayapothj', '121212', 'samima008@yahoo.com', '123.49.45.248', '1', '11/22/2010', '05:26:50 AM', '3', '0', '20101122052650n1bNkSTDgJVWaLeYPCjExdBfFh2H8t');
INSERT INTO `t_user` VALUES ('744', 'moMoon', '01933650477', 'maMoon', 'du61612', 'maMoon_du2010@yahoo.com', '180.211.216.4', '0', '11/22/2010', '06:39:06 AM', '3', '0', '20101122063906yl7nRz2FqJsUg3CZDuo9kmdxBpSY0L');
INSERT INTO `t_user` VALUES ('745', 'M Asraf', '01933650477', 'dumaMoon', 'du61612', 'maMoon_du2010@yahoo.com', '180.211.216.4', '0', '11/22/2010', '06:42:09 AM', '3', '0', '20101122064209MDByp9femtRXxCqbHLk3g2oUnQ4AN0');
INSERT INTO `t_user` VALUES ('746', 'তাওফীকুল ইসলাম', '01820150459', 'tawfiq', '12345', 'tarek.japan@gmail.com', '180.234.25.109', '1', '11/22/2010', '07:41:28 AM', '3', '20101130182515', '201011220741284PbR3Al5yCK7Gia9NLZD0qFsopzdwu');
INSERT INTO `t_user` VALUES ('747', 'রাসুলের(সাঃ) শিয়া', '008801552339123', 'Ador Haque', 'waliul2003', 'adorhaq2001@gmail.com', '123.49.42.131', '1', '11/22/2010', '06:09:37 PM', '3', '20110504164815', '20101122060937xrhCb3auznGmJKy176B9w5pWgZkAle');
INSERT INTO `t_user` VALUES ('748', 'Liton', '+8801675808594', 'osman_gani', '20092328', 'ogani1979@gmail.com', '119.18.145.106', '1', '11/22/2010', '10:34:39 PM', '3', '20101123105141', '20101122103439LtWACcVX5B9FENJwjQSP0lbKkDRrhG');
INSERT INTO `t_user` VALUES ('1002', 'অরণ্য জুয়েল', '০১৭১১২২৬৯০০', 'Jewel', '112269', 'aronno_jewel@yahoo.com', '202.164.211.59', '1', '12/30/2010', '08:37:49 AM', '3', '20101230204121', '20101230083749qwTjMbt4LJDmGxEkoirfyYzFZNunQP');
INSERT INTO `t_user` VALUES ('749', 'এবি', '01716095895', 'Md.Basir', '095895', 'abbasirnet@yahoo.com', '119.30.38.79', '0', '11/24/2010', '01:24:58 PM', '3', '0', '20101124012458oPX51j6VruiDFQNcnzqfGJT3S79LZa');
INSERT INTO `t_user` VALUES ('750', 'তন্ময়', '01820150459', 'ton', '1234', 'faysl.uk@gmail.com', '119.30.39.82', '1', '11/25/2010', '06:58:21 AM', '3', '20110121091037', '20101125065821hbzuMxXAKiNcJfsEYW2daZDjVk7yow');
INSERT INTO `t_user` VALUES ('751', 'অরণ্য', '00971567942207', 'Aronno', '123na', 'ami.nirjon@yahoo.com', '195.229.236.214', '0', '11/26/2010', '05:55:06 AM', '3', '0', '20101126055506FXflG4UkASyJNRwaWv0c1MK5hLC2sq');
INSERT INTO `t_user` VALUES ('752', 'নির্জন আহমেদ অরণ্য', '00971567942207', 'nirjon', '123na', 'ami.nirjon@yahoo.com', '195.229.236.214', '1', '11/26/2010', '05:56:31 AM', '3', '20110416204513', '20101126055631lhMjvGLSfNar07k4XQeymc8wP2pEqt');
INSERT INTO `t_user` VALUES ('753', 'Tutul', '0502282986', 'Tutul', '6001264', 'manna_tutul@yahoo.com', '188.52.121.245', '1', '11/26/2010', '12:30:29 PM', '3', '20101127004205', '20101126123029JSPhLKeWMi0HcsXrunGdpY58TBkqvj');
INSERT INTO `t_user` VALUES ('754', 'হাজির পোলা পাজি', '01911591949', 'SAM Nasim', '81213560', 'jonglee_nasim@yahoo.com', '119.30.38.80', '1', '11/26/2010', '12:52:55 PM', '3', '20101206222058', '20101126125255bg1GikKdMa7op0eh4tCWyHYAPwR92T');
INSERT INTO `t_user` VALUES ('755', 'হাজির পুলা পাজি', '01911591949', 'SAMNasim', '81213560', 'jonglee_nasim@yahoo.com', '119.30.38.80', '0', '11/26/2010', '12:56:34 PM', '3', '0', '20101126125634jlHsrd710KfLywz6Xt4CYoQF3apAku');
INSERT INTO `t_user` VALUES ('756', 'মো: হারুনুর রশিদ', '0185247583', 'harun', '123456', 'harun198594@yahool.com', '180.234.24.67', '0', '11/27/2010', '11:05:13 AM', '3', '0', '20101127110513uv41tWRr7xgldUcKYTXSQBpm2hfEL8');
INSERT INTO `t_user` VALUES ('757', 'Kjk', '01198152684', 'coxy', '1248926789', 'robi492@yahoo.com', '117.18.231.32', '0', '11/28/2010', '11:02:43 AM', '3', '0', '20101128110243E5WwgdrV30ixsFZM6QJcU8GfnhpAjC');
INSERT INTO `t_user` VALUES ('758', 'জিল্লুর রহমান', '01718157076', 'writerzillur', '01718157076', 'novelistzillur@gmail.com', '119.30.38.84', '1', '11/29/2010', '03:39:52 AM', '3', '20110503202049', '201011290339526FEfTpbRydW1L9z4l0n7aGeqcjxXMm');
INSERT INTO `t_user` VALUES ('759', 'ashraf', '01671891528', 'ASHRAF', '123456', 'ashraf_act@yahoo.com', '220.247.166.115', '0', '11/29/2010', '03:56:59 AM', '3', '0', '201011290356599b1uBeDK50JqlyN4Lmdzots2wkZXfG');
INSERT INTO `t_user` VALUES ('760', 'আশরাফ', '01671891528', 'Ashraf70', '123456', 'salman_act@yahoo.com', '220.247.166.115', '0', '11/29/2010', '05:00:29 AM', '3', '0', '20101129050029xNmsqS5J6uTnkWB78MHXe3dPFgEVQa');
INSERT INTO `t_user` VALUES ('761', 'অনন্ত জীবন', '01829563144', 'onontojibon', '7momina', 'onontojibon@yahoo.com', '117.18.231.10', '1', '11/29/2010', '10:55:58 AM', '3', '20101212000934', '201011291055587AXsVYt1QrywLd42ofUET6xPluGvib');
INSERT INTO `t_user` VALUES ('762', 'Shuvo', '01191356172', 'Shuvo', 'jr2007', 'dak_peon@yahoo.com', '182.16.156.152', '1', '11/30/2010', '08:50:06 AM', '3', '20110209171057', '201011300850066rm0vudWjsq9i2DwQAxye8aobJtfC3');
INSERT INTO `t_user` VALUES ('763', 'গোল্লাছুট', '0316734982', 'gollachut', '24682468', 'farfoj@gmail.com', '117.18.231.9', '1', '12/03/2010', '06:47:33 AM', '3', '20110302211230', '20101203064733U4jTV5NDZt8LPSrnMlozu7bJF1iGgy');
INSERT INTO `t_user` VALUES ('764', 'অন্য আলো', '01814678342', 'anyaalo', '357357', 'noim911@gmail.com', '117.18.231.9', '1', '12/03/2010', '06:59:46 AM', '3', '20110302210204', '20101203065946cjtqZiW1m6gLRlQkhUvdG2e9SY57rE');
INSERT INTO `t_user` VALUES ('765', 'হামিদুর রহমান পলাশ', '01714211124', 'Hamidur Rahman (Palash)', '421112', 'hamidur_rahman18@yahoo.com', '212.76.75.234', '1', '12/04/2010', '02:37:35 AM', '3', '20110406191322', '20101204023735hj4NQwubHLMeEBKlzgxsUG1ZTS6t9a');
INSERT INTO `t_user` VALUES ('766', 'প্রজন্ম ৭৫', '0316439823', 'mukti75', 'onlinenetbd75', 'onlinenetbd@gmail.comnet', '117.18.231.12', '0', '12/04/2010', '07:23:00 AM', '3', '0', '201012040723002sciNqtjpHVxKRdX8TevCuUDWPyzaE');
INSERT INTO `t_user` VALUES ('767', 'পঁচাত্তরের বিপ্লব', '0176873755', 'bangla75', '15081975', 'bd2008bd@gmail.com', '117.18.231.12', '1', '12/04/2010', '08:07:46 AM', '3', '20110401005045', '20101204080746U8S3bpD7hoX2sQlKAmNdVq1LFiyjgr');
INSERT INTO `t_user` VALUES ('768', 'গেরামের ইসকুল', '03416754321', 'gerameriskul', '786786', 'gerameriskul@gmail.com', '117.18.231.2', '1', '12/05/2010', '10:20:02 AM', '3', '20101220221932', '20101205102002tJAkm7eLfBUGFhHKn84VRsM9aw1cgl');
INSERT INTO `t_user` VALUES ('769', 'ফেরারী সুদীপ্ত', '01195048432', 'ferari sudipto', '01914165133', 'sudiptavibhu@yahoo.com', '203.112.195.149', '1', '12/06/2010', '06:00:54 AM', '3', '20101206203308', '20101206060054Jzhncta7F641xR8mGfLwPgvsM9kVyr');
INSERT INTO `t_user` VALUES ('770', 'সকাল রয়', '01921238475', 'sokal_ratri', '123456', 'sokal.roy@gmail.com', '119.30.39.87', '1', '12/07/2010', '05:03:08 AM', '3', '20101213173746', '20101207050308ioS7WArQKgCMes2Bzd8X43pYcnG1la');
INSERT INTO `t_user` VALUES ('771', 'সুমন', '+8801819421458', 'ssuummoonn', '5555um0n', 'ssuummoonn@gmail.com', '119.30.38.78', '0', '12/07/2010', '06:37:56 AM', '3', '0', '201012070637562wi698zgxkndFN7uE4fJoTvCqLtsA1');
INSERT INTO `t_user` VALUES ('772', 'জেলাল', '01714-453286', 'zelal', 'opestzelal', 'zelalbd@gmail.com', '119.30.39.85', '1', '12/07/2010', '10:00:33 AM', '3', '20101218162641', '20101207100033lQhAw93vniNGKUCW8qXDPx42gaMbso');
INSERT INTO `t_user` VALUES ('773', 'Md. Bakirul Islam', '01724125722', 'Md. Bakirul Islam', '125722', 'baki.islam@yahoo.com', '119.30.38.78', '0', '12/08/2010', '02:44:37 AM', '3', '0', '20101208024437TpxHv40NXMBW1C5YoRPk2hfldUtQEJ');
INSERT INTO `t_user` VALUES ('774', 'saisomay', '01716005624', 'saisomay', '005624', 'chowdhury_net@yahoo.com', '180.200.239.34', '1', '12/08/2010', '07:13:54 AM', '3', '20101209215115', '20101208071354tUoufJ2hrP6CBL3Ri9DYWQdnm7X0xj');
INSERT INTO `t_user` VALUES ('775', 'meghdutt', '01190780601', 'tahasin009', '01553620977', 'tlv_tahasin_cd@yahoo.co.in', '202.65.171.98', '0', '12/08/2010', '07:22:19 AM', '3', '0', '20101208072219pGKPrldNRhgeZnaVSt93mBuxybv8LT');
INSERT INTO `t_user` VALUES ('776', 'অনর্থক', '01913520229', 'onorthok', 'mother', 'sweet.torture9@yahoo.com', '202.168.251.3', '1', '12/08/2010', '07:27:04 AM', '3', '20110129104545', '20101208072704zcWrM6i1UygZPkxeFf9pd2omBQ5aHw');
INSERT INTO `t_user` VALUES ('777', 'அடாகெகப', '8801722585336', 'Akiljnu', '07552545', 'Akil@live.com', '64.255.180.35', '0', '12/08/2010', '07:31:48 AM', '3', '0', '20101208073150ckbmhtUR6YiWVre9N85fdLyH4CKGZ0');
INSERT INTO `t_user` VALUES ('778', 'পাগলা বাবা', '01924611087', 'redwankhan', '308105', 'redwandpi@yahoo.com', '203.223.94.235', '1', '12/08/2010', '07:36:04 AM', '3', '20101209000101', '20101208073604X9Tmikj5C4dAe1SDapsvlqfoQG2xNR');
INSERT INTO `t_user` VALUES ('779', 'মুন্না97', '0097339460922', 'MunnA97', 'Mission97', 'mh_97@ymail.com', '82.194.62.20', '1', '12/08/2010', '07:43:10 AM', '3', '20101208195008', '20101208074310q7CuSrHywTa5Uszj186EQvJNZLgK3i');
INSERT INTO `t_user` VALUES ('780', 'নাঈমুল হাসান', '+8801717451309', 'naimul', '07048019', 'nmlhsn0@gmail.com', '119.30.39.81', '0', '12/08/2010', '07:43:39 AM', '3', '0', '201012080743393VcezU7sgKqB80oFLpf2u4rMDTYiNw');
INSERT INTO `t_user` VALUES ('781', 'baul', '01712037922', 'baul', '111980', 'abdurrabmiah09@yahoo.com', '119.30.38.67', '1', '12/08/2010', '07:52:59 AM', '3', '20110101130234', '20101208075259aAeolijE0Nxps4byKhY78fGMquSUwW');
INSERT INTO `t_user` VALUES ('782', 'সাধারন ব্লগার', '01676464881', 'YOUSUF SAYED', '01745098841', 'yousufibnsayed@yahoo.com', '113.11.35.140', '1', '12/08/2010', '07:54:50 AM', '3', '20101216233232', '20101208075450wB1hkeCfZST0K5dmlgAcDUF3YpQG2X');
INSERT INTO `t_user` VALUES ('783', 'কালকুট', '০১৭৪১৬০৬৬৮৭', 'kulkoot', 'kulkoot7', 'kulkoot@gmail.com', '119.30.39.85', '1', '12/08/2010', '07:55:08 AM', '3', '20110201193003', '20101208075508Q3aCTLKEGuwd6JNSmvXcrisbUAHhYP');
INSERT INTO `t_user` VALUES ('784', 'june', '01711203320', 'june', 'june1969', 'mahjabine.hyder@yahoo.com', '180.234.54.221', '0', '12/08/2010', '07:56:23 AM', '3', '0', '20101208075623V9JGZRdeqksE2NgwX5hiPoSjrcWA3v');
INSERT INTO `t_user` VALUES ('785', 'ত্রিনান্তর', '+8801819816599', 'trinantor', 'trinantor', 'rajjibhassan@aol.com', '203.223.95.210', '0', '12/08/2010', '07:57:36 AM', '3', '0', '20101208075736GyHzwbn5hu0RPkV4rEm7JoA9FBdSj1');
INSERT INTO `t_user` VALUES ('786', 'মাহফুজ খান', '01937952500', 'mahfuz001', 'rahman123', 'mahfuz001@gmail.com', '202.53.168.66', '1', '12/08/2010', '08:02:10 AM', '3', '20110214130108', '20101208080210D5iqEgfjGxYAhySwcbNpdZ3nJPuWsT');
INSERT INTO `t_user` VALUES ('787', 'মমিন@E', '+46700365601', 'try2honest', '786786786', 'mominbge@yahoo.com', '81.170.234.86', '0', '12/08/2010', '08:18:35 AM', '3', '0', '2010120808183556qiSTJuL2EdegCl19WBRMb7otcsQw');
INSERT INTO `t_user` VALUES ('788', 'ক্লান্ত মুসাফির', '০১৭৪১৬০৬৬৮৭', 'klantomusafir', 'kulkoot7', 'kulkoot@gmail.com', '119.30.39.85', '0', '12/08/2010', '08:21:19 AM', '3', '0', '201012080821190euGignHhLpaEjoRxkD1QFJ6YZUSrs');
INSERT INTO `t_user` VALUES ('789', 'Abohoman', '0433472953', 'saifpower', '01102sai', 'kishor.jina@gmail.com', '115.64.78.181', '1', '12/08/2010', '08:25:36 AM', '3', '20101208205408', '2010120808253615RaEuHSC9ZkYApon2VqbU4eyWtfgd');
INSERT INTO `t_user` VALUES ('790', 'আমি মান্না...', '01911209111', 'MANNA', 'bismillah', 'manna.bhuiyan@gmail.com', '180.234.46.9', '1', '12/08/2010', '08:40:15 AM', '3', '0', '201012080840170ZtAPpFj3QNfu8mGEc6K7oxalTBDiS');
INSERT INTO `t_user` VALUES ('791', 'বাবুই চড়ুই', '01670397270', 'banjovai', 'paradigm', 'osranto@hotmail.com', '202.56.7.176', '0', '12/08/2010', '08:42:14 AM', '3', '0', '20101208084214ZVK1f9qSMnhybvsRp7BrjE2xAtkwaQ');
INSERT INTO `t_user` VALUES ('792', 'আমি মান্না', '01911209111', 'MANNA BHUIYAN', 'bismillah', 'manna.bhuiyan@gmail.com', '180.234.46.9', '0', '12/08/2010', '08:43:33 AM', '3', '0', '20101208084333ocPx25gb3Xpyn4DmQSdLkHRN18FhiC');
INSERT INTO `t_user` VALUES ('793', 'নয়ন', '01911048386', 'nayan', '301288', 'nayan_339@yahoo.com', '113.11.35.43', '1', '12/08/2010', '09:04:34 AM', '3', '20110318195039', '20101208090434i6q3mhdGTSbvwUNDApY5V7PFWEMouc');
INSERT INTO `t_user` VALUES ('794', 'সুলতান', '01722497878', 'sultan', '10103022', 'tushermahmud2@yahoo.com', '113.11.35.43', '0', '12/08/2010', '09:16:05 AM', '3', '0', '20101208091605DcziW2wZ1x45Pfaq7elQUH8nEpXTko');
INSERT INTO `t_user` VALUES ('795', 'সুলতান মাহমুদ', '01722497878', 'sultan mahmud', '123456789', 'nayan_339@yahoo.com', '113.11.35.43', '1', '12/08/2010', '09:24:02 AM', '3', '20101208214612', '20101208092402baLPBpFKiEQV1y6ngN3Jqzw7C8mvRo');
INSERT INTO `t_user` VALUES ('796', 'shoytan', '01913254123', 'shoytan', '1611824742', 'bsabuj', '203.223.95.231', '0', '12/08/2010', '09:50:13 AM', '3', '0', '20101208095013LJHEsGX6teyVQorcWZb04quDRCjhmN');
INSERT INTO `t_user` VALUES ('797', 'ভন্ডবাবা', '004407766462507', 'vhondobaba', 'i1love2you', 'vhondobaba@yahoo.com', '90.203.250.11', '1', '12/08/2010', '12:08:05 PM', '3', '20101209001208', '20101208120805yQBs5DarPZMW6N9Y1wncpoAXvlL7x0');
INSERT INTO `t_user` VALUES ('798', 'মামদোভুত', '01713425841', 'mamdovut', 'polysona4626', 'maka092@yahoo.com', '117.18.231.3', '1', '12/08/2010', '01:14:37 PM', '3', '20101209131247', '20101208011437BaRLbS61pz85Dk7orEm9Jwi02cjlxf');
INSERT INTO `t_user` VALUES ('799', 'মিস্টার শয়তান', '01676737306', 'mister_shoitan', '123456', 'fahadcse@yahoo.com', '27.131.13.6', '1', '12/08/2010', '01:40:05 PM', '3', '20101209020747', '20101208014006TlmYEf6WupHhK0FUkn8MRaBAcXziwN');
INSERT INTO `t_user` VALUES ('800', 'Rome', '01710482353', 'Romr', '123456', 'rome53@ymail.com', '119.30.39.79', '0', '12/08/2010', '09:38:02 PM', '3', '0', '20101208093804ZUmvsDA94t21hCoTbVHzeRQcWYKSr7');
INSERT INTO `t_user` VALUES ('801', 'arif', '01922670430,01712590014', 'Syed Ariful Islam', '22121976', 'arif221276@gmail.com', '114.130.11.138', '1', '12/09/2010', '12:48:21 AM', '3', '20110216092738', '20101209124821fSdxlLPu0TQ7913RyZqrDCeGNEHVz6');
INSERT INTO `t_user` VALUES ('802', 'kobutor', '01913254123', 'kobutor', '1611824742', 'bsabuj@gmail.com', '203.223.94.228', '1', '12/09/2010', '01:43:51 AM', '3', '20110219202716', '201012090143519yeSJFzA1D7GRpHoMlj3qmbf4xZaEs');
INSERT INTO `t_user` VALUES ('803', 'tahsib', '01914978501', 'tahsib', '123456789', 'babuj@gmail.com', '203.223.94.228', '0', '12/09/2010', '01:49:02 AM', '3', '0', '20101209014902RF5jMs7rSBPUyCNxknf9oZaDehYTKp');
INSERT INTO `t_user` VALUES ('804', 'আরিফ,৭৬', '01922670430,01712590014', 'Arif,76', '22121976', 'arif221276@gmail.com', '114.130.11.138', '0', '12/09/2010', '03:23:32 AM', '3', '0', '20101209032332kPoEjD3w4ZrRSixl95d0sYvMeUg8Bn');
INSERT INTO `t_user` VALUES ('805', 'sagor express', '01912651677', 'sagor', 'al-quran', 'sagor_mrdu@yahoo.com', '117.18.231.17', '1', '12/09/2010', '10:07:16 PM', '3', '20110114165948', '20101209100716RaP7gXAlp1vMqBiFcS5thYdNmVDkH8');
INSERT INTO `t_user` VALUES ('806', 'লিঙ্কনহুসাইন২', '00966559126595', 'linkonhusain2', '12369874', 'sohaghusain@yahoo.com', '178.73.74.229', '1', '12/09/2010', '11:47:57 PM', '3', '20101212233620', '20101209114757E0lm3oVr1JQg2YwuiqxFejUKGp6XNa');
INSERT INTO `t_user` VALUES ('807', 'বিডি গ্লাডিওটার', '+880173867478', 'jadabsau', '01717623989', 'jadabsau@gmail.com', '114.130.15.218', '1', '12/10/2010', '12:23:52 AM', '3', '0', '20101210122353YsfmKDc6rgWE4V7Sdhij5FptCPyHeX');
INSERT INTO `t_user` VALUES ('808', 'ছবি মেলা', '01814563298', 'photobevy', 'atmkutubi', 'photobevy@gmail.com', '117.18.231.28', '0', '12/10/2010', '12:41:49 AM', '3', '0', '20101210124149zvxCBoWE8hVUlQg19P3nZbipSTNweF');
INSERT INTO `t_user` VALUES ('809', 'ম্যানগ্রোভ', '01712445584', 'zahidul basher', '445584', 'zahidul_basher@yahoo.com', '117.18.231.15', '1', '12/10/2010', '04:07:20 AM', '3', '20110110185149', '20101210040720U1paGk5xghJoFPWRLvz08QnjCKbs9i');
INSERT INTO `t_user` VALUES ('810', 'শামস্ রাসেল', '01738300665', 'rasel300665', '300665', 'rasel300665', '202.164.211.165', '0', '12/10/2010', '10:20:59 PM', '3', '0', '20101210102059oiJ3VAsUxwf16bThS2HDd0LXMP4Rec');
INSERT INTO `t_user` VALUES ('811', 'এরিস', '01677887788', 'arise', '2222222222', 'eshae77@yahoo.com', '180.234.40.31', '1', '12/13/2010', '12:00:06 AM', '3', '20110323095632', '2010121312000631zgBlr5dkMxPoEw0GXei2YshpJRW9');
INSERT INTO `t_user` VALUES ('812', 'অতিথী (জরিপ)', '01716861676', 'gst1', '11111', 'opestid@yahoo.com', '117.18.231.27', '1', '12/13/2010', '12:00:57 AM', '3', '20101221130152', '20101213120057Hg9rjZkx78aJmtPzTWfbuFEQsMpvRD');
INSERT INTO `t_user` VALUES ('813', 'বিজয় দিবস ই-বুক', '01716861676', 'Victory', '102030', 'opestid@yahoo.com', '117.18.231.27', '1', '12/13/2010', '12:06:01 AM', '3', '20101213122138', '20101213120601LMighK5pn1oz032f8UxtdqrTasX9JW');
INSERT INTO `t_user` VALUES ('814', 'আমিন রুবেল', '01911722685', 'aminrubel', 'aminmoli', 'aminrubel@gmail.com', '123.49.32.156', '1', '12/13/2010', '03:08:34 AM', '3', '20101213153147', '20101213030834BmWDHa2Aby0xcNrMgkp57RQJU4eKdi');
INSERT INTO `t_user` VALUES ('815', 'AvL›`', '006945199870', 'bdgr', 'athens123', 'bdgr1212@gmail.com', '85.72.227.201', '1', '12/13/2010', '03:46:21 AM', '3', '20101213155109', '20101213034621xD3twMAjv6R0EkLZCly4p7fi95XcgY');
INSERT INTO `t_user` VALUES ('816', 'কামাল', '০১৭১০৮৮', 'kamal_2010', '55770762', 'kamalsum05@yahoo.com', '91.140.235.106', '1', '12/13/2010', '03:56:28 AM', '3', '20101227193536', '20101213035628tJE3wcHFhDVYmqX1i9NbdeZ2Gg4o6p');
INSERT INTO `t_user` VALUES ('817', 'নীড়হারা', '8801749409414', 'MIRAJUL ISLAM', 'cosmic', 'miraz_mariner@ovi.com', '64.255.164.85', '0', '12/13/2010', '03:59:44 AM', '3', '0', '20101213035944ba7FmoYdZgH5zhiVqTeUscDyP1MSku');
INSERT INTO `t_user` VALUES ('818', 'shantanu Ahmed', '008801726062503', 'Shantanu Ahmed', 'mybreath', 'shant_120@yahoo.com', '59.178.180.219', '1', '12/13/2010', '04:08:05 AM', '3', '20101214113513', '20101213040805LgR9wjP7vUBFh1ToqCZKpxtmcyYMJW');
INSERT INTO `t_user` VALUES ('819', 'শ্রাবন', '880-01913055085', 'valochele', 'sbn939368', 's.mhs89@gmail.com', '203.223.94.101', '1', '12/13/2010', '04:23:05 AM', '3', '20101213162621', '20101213042305DBR45SCK0pUc7vmfjWgF8Mld6bi3qJ');
INSERT INTO `t_user` VALUES ('820', 'কামাল হাওলাদার সালমান', '01917234300', 'kamal', 'kamal143342', 'housainkamal@yahoo.com', '46.52.111.174', '1', '12/13/2010', '05:02:58 AM', '3', '20101213200146', '20101213050258X2Dx304brTtvMyZgloJpRKjUPzNaWB');
INSERT INTO `t_user` VALUES ('821', 'মদন', '01900000000', 'modon', '123456', 'mofedul@yahoo.com', '123.49.59.10', '1', '12/13/2010', '06:03:37 AM', '3', '20110504120504', '20101213060337c9Rt538mye0xo41gSKNUnzrMYCahB6');
INSERT INTO `t_user` VALUES ('822', 'শামীম', '01556309479', 'shamim102', 'b810a98b', 'shamimbarna@gmail.com', '180.149.26.146', '1', '12/13/2010', '06:17:46 AM', '3', '20110125120124', '20101213061746w24uEoFRTgdBDVWec3KtGqXsiHfUpA');
INSERT INTO `t_user` VALUES ('823', 'মহামান্য', '01611400092', 'mohamanno', 'Yogalovee', 'mohamanno@quanfey.net', '122.102.35.123', '1', '12/13/2010', '06:29:12 AM', '3', '20101230170710', '20101213062912tk87qDUFp2dQGsmSZ4gYNCvrPyHfx6');
INSERT INTO `t_user` VALUES ('824', 'নিল রঙ চিল বিশন প্রিয়', '01917665544', 'nilachol', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.25', '1', '12/13/2010', '11:23:22 AM', '3', '20110121194440', '20101213112322D9nwcNMasBmxTCGU2rdX6f3SeWiujQ');
INSERT INTO `t_user` VALUES ('825', 'চন্দহীন', '01917665544', 'chondohin', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.25', '1', '12/13/2010', '11:24:43 AM', '3', '20110121200222', '20101213112443oTVYWeJst8U65FZqpdvn2hzGAm7Kby');
INSERT INTO `t_user` VALUES ('826', 'ওপেস্টার', '01716873758', 'opestar', 'afrojasimol', 'nejamcox@yahoo.com', '117.18.231.16', '1', '12/13/2010', '11:42:14 AM', '3', '20110303230820', '201012131142146yJ3TbqsUicY92dWkZt0BCVohjL7K5');
INSERT INTO `t_user` VALUES ('827', 'টিন টিন', '০১৭১৩৪০৩২১২', 'tintin19', 'parachute', 'behindthescreen19@gmail.com', '119.30.38.69', '1', '12/13/2010', '01:52:32 PM', '3', '0', '20101213015232g73qwAz4KPSiGLFhHvETl1WV2upRNU');
INSERT INTO `t_user` VALUES ('828', 'সাইফহিমু', '+8801671359229', 'saifhimu', '01195084433', 'saif.himu@yahoo.com', '203.188.242.226', '0', '12/13/2010', '09:38:46 PM', '3', '0', '20101213093846yWlVqjYrp0vGg6fhJPsZxUb5LntFRk');
INSERT INTO `t_user` VALUES ('829', 'খাজা', '01829680592', 'Khaza', 'meyomeyo', 'Khazarakib1994@gmail.com', '64.255.180.176', '1', '12/14/2010', '03:08:58 AM', '3', '20110102143848', '20101214030858nepSim0a93UGHX7ZvlrxbE1AoTDyNj');
INSERT INTO `t_user` VALUES ('830', 'হাসান', '01552307297', 'Hasan Arif', 'arif777', 'vmarif@yahoo.com', '203.188.254.196', '1', '12/14/2010', '04:43:36 AM', '3', '20110101182325', '20101214044336cHM1ejiwyTfrvCNtSAzGdk3Q0LRqps');
INSERT INTO `t_user` VALUES ('831', 'মুরুব্বী', '+8801914958575', 'murubbe', 'parthokko', 'azadkzaman@hotmail.com', '119.30.34.9', '1', '12/14/2010', '10:57:07 AM', '0', '20101214230737', 'ban_ban_ban_20101214105707BbeZknCpVJ1W0UzDAPHSsNlfGtdv8r');
INSERT INTO `t_user` VALUES ('832', 'মুরুব্বী.', '0000000', 'azadkzaman', 'parthokko', 'azadkzaman@hotmail.com', '180.149.8.127', '1', '12/14/2010', '11:19:04 AM', '3', '20101214233406', '20101214111904jrk5FRPvYXhDoGQUNfLt1gECTsAHnS');
INSERT INTO `t_user` VALUES ('833', 'কুরআনিয়া।', '000000000', 'qrfbcd', 'thenewbook', 'qrfbd.org@gmail.com', '180.149.8.127', '1', '12/14/2010', '11:16:48 PM', '3', '20101219150050', '20101214111648dhakfyUuV0gHL78nwD1JRXYNcjCo6i');
INSERT INTO `t_user` VALUES ('834', 'নীলমেঘ', '01191420359', 'neelmegh', '1558703269', 'neelmegh13@gmail.com', '203.223.94.95', '1', '12/15/2010', '08:27:13 AM', '3', '20110223215536', '20101215082713KLdfU9qwkt6jh5ln703rHuBM8pDJaX');
INSERT INTO `t_user` VALUES ('835', 'vfcnV', '01912927332', 'bdaltaf', '927332', 'bdaltaf@yahoo.com', '117.18.231.25', '1', '12/15/2010', '11:13:22 AM', '3', '20101215235915', '201012151113224SXe3KtP0H1aYcRL2yUpuMD85AqCJN');
INSERT INTO `t_user` VALUES ('836', 'কুরআনিয়া.', '111111', 'qrfvcd', 'thenewbook', 'qrfbd.org@gmail.com', '180.149.23.153', '1', '12/16/2010', '04:11:56 AM', '3', '20101219203849', '20101216041156Q7wylLGTmdtesxkSMf09VRZi1hv36B');
INSERT INTO `t_user` VALUES ('837', 'Opest Eid 2010', '01719234567', 'opest.eid', '123456', 'abu.jafor.standard@gmail.com', '119.30.38.75', '0', '12/16/2010', '11:02:31 PM', '3', '0', '201012161102312wL3Hi5VxSC8lWdYABpcmFjhqD97rf');
INSERT INTO `t_user` VALUES ('838', 'Opest Eid  10', '01923655748', '2ndbook', '123456', 'tarek.japan@gmail.com', '119.30.38.75', '1', '12/16/2010', '11:09:22 PM', '3', '20101217115246', '20101216110922W3b8VDLw5USrtpaY9fu2NlRGByTxzQ');
INSERT INTO `t_user` VALUES ('839', 'Opest Banner', '01928456789', 'banner', 'asdf', 'tarek.japan@gmail.com', '180.234.17.195', '1', '12/17/2010', '08:09:32 AM', '3', '20110107223801', '20101217080932LWMlfQF9mcj67EbPprAdgv3UtzhGZJ');
INSERT INTO `t_user` VALUES ('840', 'মোর্শেদা আক্তার মনি', '01677887788', 'punom', '2222222222', 'eshae77@yahoo.com', '180.234.26.70', '1', '12/18/2010', '02:14:07 AM', '3', '20110221142223', '20101218021407uW3ZgHr2iMmLU1XwfcSevp4xqPhNRl');
INSERT INTO `t_user` VALUES ('841', 'hisam', '01722329183', 'hisam', '0172232918', 'mhisam358@gmail.com', '202.5.35.222', '0', '12/18/2010', '03:13:32 AM', '3', '0', '20101218031332rqVxpm5ByTQ9sZKfHtNWeM3GihFgXa');
INSERT INTO `t_user` VALUES ('842', 'সাক্ষাৎকার', '01199282726', 'opest01', '12345678', 'opest2010@yahoo.com', '117.18.231.24', '1', '12/18/2010', '04:00:19 AM', '3', '20110121200035', '20101218040019SWrPs6dYn7JHoapcFbvX5MZDKeR8fT');
INSERT INTO `t_user` VALUES ('843', 'শিয়া', '01912179526', 'shiya', 'nizamul11166', 'waliul2003@gmail.com', '123.49.42.131', '1', '12/18/2010', '07:14:34 PM', '3', '20110410201551', '201012180714348xaKsWdRmGhV7Q5wyPJA6goY1ZCljT');
INSERT INTO `t_user` VALUES ('844', 'Tanjamin', '+8801746483040', 'Tanjamin', '911792', 'tanjaminkhan@gmail.com', '119.30.34.2', '1', '12/20/2010', '09:20:03 PM', '3', '20101221092627', '201012200920038FAV64KZ52qUrcSHPkCgvmyuxdGoBz');
INSERT INTO `t_user` VALUES ('845', 'বাপ্পি', '01722587702', 'Bappy', '587702', 'bappy_2008bd@yahoo.com', '202.56.7.163', '1', '12/20/2010', '11:56:03 PM', '3', '20101223162347', '20101220115603692hfQX8WbuSs1tJYra4BDcUod3LG0');
INSERT INTO `t_user` VALUES ('846', 'ইমু', '0171686167', 'emu', 'emu', 'opestid@yahoo.com', '119.30.34.9', '1', '12/21/2010', '01:10:22 AM', '3', '20110314180204', '20101221011022iEveRjaofT5G6HZN27W0MnuUVDkdg4');
INSERT INTO `t_user` VALUES ('847', 'লাভ র্বাড', '01747642615', 'Istiak siam', '104138', '01747642615', '64.255.164.79', '0', '12/21/2010', '03:22:59 AM', '3', '0', '20101221032259mlvMSciD5ZGrx4h6TYWA72LnXbwJ9F');
INSERT INTO `t_user` VALUES ('848', 'সালমা রহমান।', '01714211125', 'salmarahman', 'salmap', 'salma.hamidteacher@yahoo.com', '212.76.75.234', '1', '12/21/2010', '07:00:17 AM', '3', '20110110162809', '20101221070017JR2U5ngqhD3c6TNijYLdfpeZF90s1v');
INSERT INTO `t_user` VALUES ('849', 'তুসিন আহমেদ', '01924994163', 'tusin', 'tosin987', 'ahmedtusin@yahoo.com', '114.31.8.48', '1', '12/21/2010', '07:05:24 AM', '3', '20101225191259', '20101221070524JTag84ZoswmqEWGvNDc62H3Y9ezByk');
INSERT INTO `t_user` VALUES ('850', 'রাশেদ মেকানিক্যাল', '01916746454', 'rashedmt', '746454', 'rashed.khan82@yahoo.com', '119.30.34.3', '1', '12/21/2010', '07:05:41 AM', '3', '20101221192258', '20101221070541uXotlHLpYacrmFAbRwhiyzKUNPe8GZ');
INSERT INTO `t_user` VALUES ('851', 'চে গুয়েভারা ২', '01677257415', 'refat_hasan', '473369', 'hasan_refat.2020@yahoo.com', '114.130.13.82', '1', '12/21/2010', '07:07:33 AM', '2', '20110426143047', '201012210707330rDaEhWVdfojgxym3tcZSwRNlnJbQH');
INSERT INTO `t_user` VALUES ('852', 'আসিফ মহিউদ্দীন', '01727077906', 'realAsifM', '9340256', 'asif21007@yahoo.com', '202.56.7.168', '1', '12/21/2010', '07:17:42 AM', '3', '20101223003254', '20101221071742cLWmMRr8qD1lz4Pv72jdXe96VawYGt');
INSERT INTO `t_user` VALUES ('853', 'মোঃমিজানুর রহমান', '01715312012', '00127happy', '014702', 'rahman00127@yahoo.com', '80.184.64.123', '1', '12/21/2010', '07:41:55 AM', '3', '20110427124633', '20101221074155hKEAuT0rPNkscRt5UDZfM4FpL3wJmX');
INSERT INTO `t_user` VALUES ('854', 'বুড়ো', '০১৯২১৪৫৩৭৯৫', 'buddah', '01921453795', 'amichintabid@gmail.com', '196.216.59.2', '1', '12/21/2010', '07:45:11 AM', '3', '20101221194812', '20101221074511E4NAS13jwqtmeoB9P6rXYb8yVnCi5D');
INSERT INTO `t_user` VALUES ('855', 'নিস্প্রান আমি', '01716819304', 'matirmanus', '01716819304', 'nispran.ami@gmail.com', '119.30.38.75', '1', '12/21/2010', '07:49:47 AM', '3', '20101224021953', '20101221074947wxekhlB2VDZpPAfjsmnLrzQ8KSbJuX');
INSERT INTO `t_user` VALUES ('856', 'সৈয়দ মোহাম্মদ আলী কবির', '01712503863', 'sma_kabir', '0123456789', 'kabirpti786@yahoo.com', '202.134.14.27', '1', '12/21/2010', '08:05:22 AM', '3', '20110415135701', '20101221080522PEBqkJxUaemo0jYVf9SuLzrTZs5wXn');
INSERT INTO `t_user` VALUES ('857', 'জাহাজী পোলা', '+60146293848', 'bangabiraj', '01711735787', 'riaz.sailorman@gmail.com', '49.125.53.201', '1', '12/21/2010', '08:25:23 AM', '3', '20110217155150', '20101221082523hRyMmcUuBjKsGa7d45tqlNwfHk6AWp');
INSERT INTO `t_user` VALUES ('858', 'রানারবাংলা', '+88 01912672345', 'ranarbangla', '672345', 'ranarbangla@live.com', '123.49.20.58', '1', '12/21/2010', '08:26:07 AM', '3', '20101222205427', '20101221082607Ap5PNrSXLK7UonTB9d2uaGeFvy0m1i');
INSERT INTO `t_user` VALUES ('859', 'Arfhoss', '01823003609', 'Arfhoss', '01673578148', 'Arfhoss@yahoo.com', '117.18.231.7', '1', '12/21/2010', '08:46:33 AM', '3', '0', '20101221084633yhLXZF0BCfmjH8dku6a4zge5qPnRAM');
INSERT INTO `t_user` VALUES ('860', 'চলতে চলতে', '+97455136345', 'xciting', 'xsxsxs', 'bodo_siloty@yahoo.com', '78.101.156.202', '1', '12/21/2010', '09:10:41 AM', '3', '20101221211212', '20101221091041Dq7jve4XucsQk1K5YhFLpflJbNdiMU');
INSERT INTO `t_user` VALUES ('861', 'ভিজামন', '01672796569', 'momosa', 'bangladesh', 'madmarefin@gmail.com', '180.234.44.66', '1', '12/21/2010', '09:18:35 AM', '3', '20101230184356', '20101221091835WBFChiNg2d9PAJkpXKQUSrzcGnlj7y');
INSERT INTO `t_user` VALUES ('862', 'নিঃসঙ্গ ছেলে', '01938436554', 'nishongochele', 'nishongochele', 'atiq_buet02@yahoo.com', '119.30.39.82', '1', '12/21/2010', '10:32:12 AM', '3', '20101224012104', '20101221103212koSYRHj0eqwlWsn1g6KT4p7BMPZG9a');
INSERT INTO `t_user` VALUES ('863', 'খোলা জানালা', '০১৯১৩৮২৬৮১১', 'smg020', 'galibkafco', 'smg020@gmail.com', '119.30.34.11', '1', '12/21/2010', '11:02:37 AM', '3', '20101226003446', '20101221110237Hj7F0pURsgm2kKv9AMySrDTwCqGutW');
INSERT INTO `t_user` VALUES ('864', 'চর্যাপদ', '01711283050', 'chorza', 'sanzida', 'farhanaaqtar@yahoo.com', '64.255.164.30', '0', '12/21/2010', '11:57:45 PM', '3', '0', '20101221115745HJuvxC1jVbZ90tLWRPpmlDKrqoe65U');
INSERT INTO `t_user` VALUES ('865', 'বনফুল', '01711283050', 'fairuj', 'sanzida', 'farhanaaqtar@yahoo.com', '64.255.164.30', '0', '12/22/2010', '12:05:51 AM', '3', '0', '20101222120551j5l2KunxtW9MJ6yCEqf18BdaeXpvNb');
INSERT INTO `t_user` VALUES ('866', 'অধরা', '01920822242', 'jinia', 'uttdhk', 'bbabli82@yahoo.com', '111.221.2.234', '1', '12/22/2010', '12:39:29 AM', '3', '20101222152534', '20101222123929oz7d2UtMkJ6EVAj3vCD0ufyGqghPZN');
INSERT INTO `t_user` VALUES ('867', 'প', '01718000000', 'pothik', '123456', 'pothik0@gmail.com', '168.187.197.59', '1', '12/22/2010', '03:24:29 AM', '3', '20101222152701', '20101222032429kZu7zvn03yhTotLgC2Q156qEdm4BXY');
INSERT INTO `t_user` VALUES ('868', 'শয়তান', '01914766587', 'satan', 'somudra123456', 'kopa.kuddus@gmail.com', '120.50.181.230', '1', '12/22/2010', '08:11:37 AM', '3', '20110428130819', '20101222081137AsUCPigSweZacpYKnkLh5qGW2NTVMy');
INSERT INTO `t_user` VALUES ('869', 'বেদুইন', '01914164918', 'Beduin', 'abcd8359', 'theblogger44@gmail.com', '210.4.77.158', '1', '12/22/2010', '08:13:58 AM', '3', '20110408215601', '20101222081358jFG3QzslAZ1hk59iroSCLWKPgDv2b0');
INSERT INTO `t_user` VALUES ('870', 'atiq', '+8801717421603', 'Atiq', '123456789', 'saaya.saaya1@gmail.com', '119.30.39.88', '1', '12/22/2010', '08:20:24 AM', '3', '20110423213428', '20101222082024JphgobNWAk8xraTyYECfcwn3GeUDu0');
INSERT INTO `t_user` VALUES ('871', 'মাসুদ রানা শাব্বীর', '+971555116730', 'masudrana', 'm5511', 'masud5511@gmail.com', '86.96.227.93', '1', '12/22/2010', '08:22:07 AM', '3', '20101222202601', '20101222082207ghy7DQ4XlbcSjFTan9ViWM6ENeBHZA');
INSERT INTO `t_user` VALUES ('872', 'পাগল', '01916939186', 'paagol', 'silhouette', 'halfbloodprince.du@gmail.com', '203.223.94.162', '1', '12/22/2010', '08:22:19 AM', '3', '20101222203029', '201012220822199SYc7odgPMypnvakVmuqLNe1QABf80');
INSERT INTO `t_user` VALUES ('873', 'তিতাস', '01712235885', 'mizanaziz', 'mr9mr9', 'uccbbaria@yahoo.com', '119.30.38.74', '0', '12/22/2010', '08:26:27 AM', '3', '0', '20101222082627ADWgZ0f4d16Y2XqrVmwGpk9tHvSJic');
INSERT INTO `t_user` VALUES ('874', 'নিশাচর', '01199183125', 'nishachor', 'silhouette', 'tondrahoto@gmail.com', '203.223.94.162', '1', '12/22/2010', '08:32:22 AM', '3', '0', '20101222083222QSvwAaBxCPiXHYK2ZzbWEUyr385ek7');
INSERT INTO `t_user` VALUES ('875', 'akibuki', '01556984210', 'akibuki', '123123', 'kashem01459@gmail.com', '202.191.124.52', '1', '12/22/2010', '08:53:21 AM', '3', '0', '20101222085321P9GSrtAWngpMJQ6zb8vK2liDC3umVR');
INSERT INTO `t_user` VALUES ('876', 'বাঙ্গাল মানুষ 1', '01831119811', 'Max Mintu', '62514133', 'maxmintu@gmail.com', '180.234.55.78', '1', '12/22/2010', '09:02:39 AM', '3', '20101222210442', '20101222090239mEyvt1q4l6LReF9Pgcb0Cj5DkAWzpT');
INSERT INTO `t_user` VALUES ('877', 'মর্নিংস্টার', '০১৬৭০১৬১৯০৩', 'morning_star', 'TV4377zVh8', 'a30931@pjjkp.com', '203.223.95.187', '0', '12/22/2010', '09:02:43 AM', '3', '0', '20101222090243GZVxDueByhpLimgt4aJ2dnbYzwkjHr');
INSERT INTO `t_user` VALUES ('878', 'অর্ণব আর্ক', '01823261837', 'Archaeologistaurnab', 'asdfgh', 'aurnab.arc@gmail.com', '203.189.230.5', '1', '12/22/2010', '09:03:12 AM', '3', '20110501022238', '201012220903120W5uE7UhCXPsiSNGk6c2vL13JoQrtp');
INSERT INTO `t_user` VALUES ('879', 'Shamim Ahsan', '01818278570', 'Shamim3331', 'shamim27857053466', 'shamim3331@yahoo.com', '119.30.34.10', '1', '12/22/2010', '09:04:16 AM', '3', '20101222220255', '20101222090416lYipvwCtUmzLHM10skA2bPWD65Xdry');
INSERT INTO `t_user` VALUES ('880', 'চাতক', '+8801816883546', 'basantasis', '442006', 'basantasis@gmail.com', '203.223.95.186', '1', '12/22/2010', '09:07:46 AM', '3', '20110104114413', '201012220907466DkH9bYW1hpVosl7Jy4LZTfuvgeqmS');
INSERT INTO `t_user` VALUES ('881', 'হাসান খা', '01912072577', 'hasankha`', 'Hasan1982', 'hasan_110031@yahoo.com', '119.30.39.78', '1', '12/22/2010', '09:09:11 AM', '3', '0', '20101222090911swT57ujoaYgX1pZQ4fERPh8m6qd3yc');
INSERT INTO `t_user` VALUES ('882', 'বিন আদম', '01712235885', 'binaziz', 'mr9mr9', 'mizanaziz71@yahoo.com', '119.30.38.74', '1', '12/22/2010', '09:09:21 AM', '3', '20110309175012', '20101222090921jZbefqa1hnLUoBvydz93cKVWPxN0SD');
INSERT INTO `t_user` VALUES ('883', 'রিফাত হোসেন', '123456789', 'Rifat', 'sun2010', 'rifat_sunny@yahoo.com', '84.112.6.77', '1', '12/22/2010', '09:12:53 AM', '3', '20101222212026', '20101222091253ghUBiqZ0TaC7vFzj2lNPWmY14eD5VH');
INSERT INTO `t_user` VALUES ('884', 'বাবুই', '01671485884', 'ashik', 'allahiskind', 'ashik_ict.mbstu@yahoo.com', '203.223.95.173', '0', '12/22/2010', '09:25:20 AM', '3', '0', '20101222092520F61EdQlDP0CK4kAcNYpUJn3GhfMsaW');
INSERT INTO `t_user` VALUES ('885', 'বিদগ্ধ পথচারী', '01914567587', 'pothochari', 'poth00amar', 'duronto.manush@gmail.com', '120.50.181.230', '1', '12/22/2010', '09:27:31 AM', '3', '20101222215227', '20101222092731Sgp4mQZckFXj9dVNqHaUDxTiGoJLt0');
INSERT INTO `t_user` VALUES ('886', 'জবাসার', '9057918712', 'mbashar', 'jamilul', 'sangsker@yahoo.com', '99.228.126.146', '0', '12/22/2010', '09:34:51 AM', '3', '0', '20101222093451l4g3okm7cD2VLB0Pyj19isMqw6Nepa');
INSERT INTO `t_user` VALUES ('887', 'বনিআদম', '+79269197556', 'priomon', 'abalpur', 'abalpur', '85.142.224.66', '0', '12/22/2010', '09:40:19 AM', '3', '0', '20101222094019mFHdBTbquyoWRpnrMEtk7DiZf019zV');
INSERT INTO `t_user` VALUES ('888', 'pagol', '+8801618010902', 'sahid898', '12345678', 'sahid_010902@yahoo.com', '180.234.142.98', '1', '12/22/2010', '09:40:51 AM', '3', '20101226110623', '20101222094051amJ1pzZ9sU2DLXvbxwW0BSAgloQK7c');
INSERT INTO `t_user` VALUES ('889', 'হাসান তারেক', '01916039839', 'tareqslash', 'speed123', 'ziad.timon@gmail.com', '116.193.174.245', '1', '12/22/2010', '09:42:17 AM', '3', '20101222215039', '20101222094217dvqTsPDB5b2GECQ8S1K4t6kaiJnZLc');
INSERT INTO `t_user` VALUES ('890', 'বাংলাদেশী', '79269197556', 'Boniadom', 'abalpur', 'mithu@mail.ru', '85.142.224.66', '1', '12/22/2010', '09:44:18 AM', '3', '20101222214503', '20101222094418jstzHPkhxK7Q0TfNL2Xm1VBy8S5En4');
INSERT INTO `t_user` VALUES ('891', 'সাদমান', '01670434073', 'sadman', 'illusionist', 'sharik_sadman@yahoo.com', '119.30.39.88', '1', '12/22/2010', '10:01:13 AM', '3', '20110116221055', '20101222100113z43tPpdqGlUNA86Xx9T0snoerKa7BQ');
INSERT INTO `t_user` VALUES ('892', 'আনিসুজ্জামান রাসেল', '+2348094190438', 'anisuzzaman', 'sys2me', 'for.russell@gmail.com', '41.190.16.7', '1', '12/22/2010', '10:06:20 AM', '3', '20101222221006', '201012221006200zZaAHb1GW59rRh6eYQctk7pLoPUyw');
INSERT INTO `t_user` VALUES ('893', 'tokjhalmishti', '07906271159', 'tokjhalmishti', 'rashu227', 'imzia2u@yahoo.co.uk', '92.3.223.106', '1', '12/22/2010', '10:16:05 AM', '3', '20110114164128', '20101222101605jNxCDEumr9S5U8QzqgMFcw2Vi1vXKB');
INSERT INTO `t_user` VALUES ('894', 'kaal', '00000', 'kaal', 'imkaal', 'kaalbd@gmail.com', '223.27.115.19', '1', '12/22/2010', '10:27:17 AM', '3', '20101222222816', '20101222102717qDgau854fLCZNnYByJiKEr7hRowjHs');
INSERT INTO `t_user` VALUES ('895', 'কাউয়ার ডিম', '01719656076', 'kauardim', 'terminated', 'person.extrardinary@gmail.com', '117.18.231.30', '1', '12/22/2010', '11:56:04 AM', '3', '20101224000616', '20101222115604s93h2PZBkGXnKHDi0vceg5pCw78JAf');
INSERT INTO `t_user` VALUES ('896', 'ইমরান', '01743695344', 'imranbban', 'adgjmptw1', 'imranbban@gmail.com', '64.255.164.43', '1', '12/22/2010', '12:14:18 PM', '3', '0', '201012221214188Qu7TezAMyJVtn56x1L2oCBa0rcHl9');
INSERT INTO `t_user` VALUES ('897', 'ভুতুস মিন্টু', '01675669705', 'mintosays', 'anotherworld', 'mintosays@yahoo.com', '180.234.36.184', '1', '12/22/2010', '12:34:22 PM', '3', '20101223003802', '201012221234228SN94VbQnz1lM2iayUo0puDmKjHwrZ');
INSERT INTO `t_user` VALUES ('898', 'মুবাশ্বির', '00966502324378', 'mubashshirmarzan', '018941546410258', 'mahmud411@gmail.com', '188.248.179.184', '1', '12/22/2010', '01:46:09 PM', '3', '20101224003435', '20101222014609GEi2l7Hz60VmA1dSxZ3hBbKuX4fWUY');
INSERT INTO `t_user` VALUES ('899', 'জীবন এখন যেমন', '01918929885', 'jibonekhonjemon', '018941546410258', 'mahmud1711@hotmail.com', '188.248.179.184', '0', '12/22/2010', '01:48:33 PM', '3', '0', '20101222014833qsvEeGYjwHPt3yL7udhRKJ98TWABMg');
INSERT INTO `t_user` VALUES ('900', 'ছায়া মানব', '000000', 'cm', '1234', 'faysal.tc@gmail.com', '180.149.14.57', '1', '12/22/2010', '11:28:01 PM', '3', '20110121091508', '20101222112801wfAdBSK81RcylPYQNor7xDpb6nCUXu');
INSERT INTO `t_user` VALUES ('999', 'নমি নোমান', '01911607022', 'nomi noman', '839844', 'kasafaddauza87@yahoo.com', '180.200.239.60', '0', '12/30/2010', '07:39:52 AM', '3', '0', '20101230073952TSUelFMWgEd4X6hLrVPAHa2y7uQZDq');
INSERT INTO `t_user` VALUES ('901', 'ভুলো মন', '01671155929', 'shahorier', 'sepaipara', 'shahorier@yahoo.com', '180.149.17.51', '1', '12/22/2010', '11:49:12 PM', '3', '20101223124506', '20101222114912A0CaflepsPn6wqb528VMLE7HvY3XTm');
INSERT INTO `t_user` VALUES ('902', 'পাংখা', '0171746454', 'pangka', 'worrior', 'perctg@yahoo.com', '117.18.229.22', '1', '12/23/2010', '12:47:06 AM', '3', '20101223144212', '20101223124706ot8eDP9TbrMJiS4Rd65mN3Hlh2FLZu');
INSERT INTO `t_user` VALUES ('903', 'আমি একা একজন', '01815032223', 'ami aka akjon', 'sayma', 'mithilasayma@yahoo.com', '119.30.38.80', '1', '12/23/2010', '04:41:54 AM', '3', '20110123161921', '20101223044154BDXTFWeMiqGLkuCoQUxtpwHyrZKc43');
INSERT INTO `t_user` VALUES ('904', 'সিপাহসালার', '01816042947', 'ashona', '079054', 'asho_na_golpo_kori@yahoo.com', '202.56.7.176', '1', '12/23/2010', '06:18:14 AM', '3', '20110224220854', '20101223061814KuBYma0jN8Xfv97hxVHtSQeWUz2MpL');
INSERT INTO `t_user` VALUES ('905', 'ইঞ্জিনিয়ার', '01751899243', 'hasib07', '225981', 'habib07_cuet@yahoo.com', '119.30.34.10', '1', '12/23/2010', '06:29:48 AM', '3', '20101223185623', '2010122306294851XKRhuQSxNEbCJw4H78VfFZ2A6Gj0');
INSERT INTO `t_user` VALUES ('906', 'কবি', '3476091551', 'masumahmed', 'opestblog', 'mmaasum@gmail.com', '72.231.19.23', '1', '12/23/2010', '10:13:50 AM', '3', '20101223231942', '20101223101350BfSLGsnav9uU2lmJ8EeXc0iVT5rQMA');
INSERT INTO `t_user` VALUES ('907', 'কুবের মাঝি', '01717173787', 'kuber majhi', 'mkhprayforallah', 'kamal.rmg.merchant@gmail.com', '202.56.7.168', '1', '12/23/2010', '12:31:54 PM', '3', '20110127190354', '201012231231549Q7KjhkHzSnMcxd1mg46PWr3evVYNt');
INSERT INTO `t_user` VALUES ('908', 'onuvob', '01711465690', 'munnaa', 'munnamkt', 'munnaabd@yahoo.com', '117.18.231.29', '1', '12/23/2010', '12:35:36 PM', '3', '20110105231414', '20101223123536uQcnrfm8eS1wNot2JqREAvsk6DUgG9');
INSERT INTO `t_user` VALUES ('909', 'ami? rubel.', '01199566866, 01616566866', 'rubelbd08', '483500', 'rubelbd08@gmail.com', '180.234.136.98', '1', '12/23/2010', '06:25:17 PM', '3', '20101224064431', '20101223062517gP3Hrs2c7T1jaCuheL6iZWDASx5GnK');
INSERT INTO `t_user` VALUES ('910', 'চাপাবাজ', '01716861676', 'cbazz', 'cbazz', 'opestid@yahoo.com', '117.18.231.17', '1', '12/24/2010', '04:32:45 AM', '3', '20110303225846', '20101224043245sYhAWH84kgGapV3NiC1lmKMPeBqxQR');
INSERT INTO `t_user` VALUES ('911', 'শুদ্ধ বাংলা', '01714381956', 'noimazad', '01714381956', 'noimazad@gmail.com', '117.18.231.12', '1', '12/24/2010', '04:50:57 PM', '3', '20110314133914', '20101224045057RLhje9CVp07ZDPdiwvJncFxAKz2tE4');
INSERT INTO `t_user` VALUES ('912', 'রিয়াজুল ইসলাম', '+821086813666', 'riaz', 'nexttime', 'blog@bdpal.net', '14.37.2.45', '1', '12/24/2010', '11:14:32 PM', '3', '20101228100312', '20101224111432VGn7etpRd5PjT6u04bWvN8H1Sxrc3m');
INSERT INTO `t_user` VALUES ('913', 'ইফতেখার বাশার মাহমুদ(পলাশ)', '01925013567', 'polash4mcce', '427135427135', 'ibmpolash@live.com', '180.234.146.129', '1', '12/25/2010', '03:27:07 AM', '3', '20110201110532', '20101225032707zTd9X8yRmxvF0j3hb5gE6p4afon7tH');
INSERT INTO `t_user` VALUES ('914', 'দেখতেসি', '+৮৮০১৬৭২৩৪৪১২৬', 'dekhtesi', '2486524865', 'tzbuet@gmail.com', '202.148.56.15', '1', '12/25/2010', '03:31:19 AM', '3', '20101228111334', '20101225033119rQMDfL3BR98dPyUbWGvcgup2YjS5xm');
INSERT INTO `t_user` VALUES ('915', 'পুস্পিতা', '13999865107', 'Puspita', '1980ctg', 'mitha.assy@gmail.com', '117.18.231.5', '1', '12/25/2010', '03:36:10 AM', '3', '20110228192108', '20101225033610CFr4WL1QyY0jAigTHupwZzlhU6nfdo');
INSERT INTO `t_user` VALUES ('916', 'মুক্ত আকাশ', '00966508950953', 'mizananwar', 'rony562', 'mizananwar@yahoo.com', '78.93.1.242', '1', '12/25/2010', '03:49:43 AM', '3', '20101225161352', '201012250349432erlxkm0oRq3idjMgQ56wTaubKAUfB');
INSERT INTO `t_user` VALUES ('917', 'স্বাধীন', '01674598312', 'suvokhan', '981939', 'suvokhanff10@gmail.com', '117.18.231.8', '1', '12/25/2010', '04:18:10 AM', '3', '20101225164616', '201012250418109lfbc0A6K5iNodt8kV3h7HzFZa4Dqr');
INSERT INTO `t_user` VALUES ('918', 'স্বল্পবাক', '01199001001', 'cchonnosara', 'eldorado321731', 'cchonnosara@gmail.com', '203.223.95.181', '1', '12/25/2010', '04:29:30 AM', '3', '20101225163141', '20101225042930KHlmbYh5ExPFG2iaj9W0ugUA4eoNz8');
INSERT INTO `t_user` VALUES ('919', 'Abu Hafsa', '01717437878', 'AbuHafsa', 'beauty', 'shuvro717@yahoo.com', '114.130.28.114', '1', '12/25/2010', '04:57:57 AM', '3', '20101227111729', '20101225045757TDMrfci5QLNBUAoqstR6k934YnxyCG');
INSERT INTO `t_user` VALUES ('920', 'obscure', '01917914334', 'obscure026', '0606026', 'obscure026@gmail.com', '113.11.49.225', '1', '12/25/2010', '06:22:27 AM', '3', '20101229143815', '20101225062227NX9SkrVihyq0QTnwFB8z1CZ5pLMgDv');
INSERT INTO `t_user` VALUES ('921', 'মোঃ আবুল কালাম আজাদ', '01911455055', 'mdabulkalamazad', 'AZAMD.opest2427539', 'eorion@gmail.com', '202.168.246.236', '1', '12/25/2010', '06:46:49 AM', '3', '20101225191801', '20101225064649Bh1unEDUjb34Z2p57QScLmvrdGNgVA');
INSERT INTO `t_user` VALUES ('922', 'মীর জাফর', '01737629423', 'jafor', '629423', 'jafor13@yahoo.com', '180.149.27.115', '1', '12/25/2010', '06:55:49 AM', '3', '20110328111228', '20101225065549xyJvDWrM4bLSR63mwZtseY7kaUqQ9C');
INSERT INTO `t_user` VALUES ('923', 'জালিমের দুশমন', '০১৭১১৭০৭৩৮৬', 'epic', '7215063', 'epicbd2000@yahoo.com', '202.148.56.68', '1', '12/25/2010', '07:14:09 AM', '3', '20101227203743', '20101225071409siYQrhk5lDz8Bmfq1Hng3ptxEJRVuM');
INSERT INTO `t_user` VALUES ('924', 'মুসাফির...', '01925103051', 'musafir...', '41526262215415', 'admahbub@gmail.com', '117.18.231.23', '1', '12/25/2010', '07:20:16 AM', '3', '20101225195956', '201012250720165l70vzWygKe82TDhUqxXGjP4AdncEL');
INSERT INTO `t_user` VALUES ('925', 'নিরপেক্ষ', '01711024997', 'ahsan habib', 'p870325!', 'h4habib@in.com', '119.30.39.85', '1', '12/25/2010', '07:28:17 AM', '3', '20110417073459', '20101225072817ucoN3nxgbMhskm5PtdDrp4l8J27Y1i');
INSERT INTO `t_user` VALUES ('926', 'সুব্রত সরকার', '01672758983', 'Subratasarker552', 'Gopon7827282', 'subratasarker552@gmail.com', '119.30.39.90', '1', '12/25/2010', '07:51:05 AM', '3', '20101227171530', '20101225075105vlf7XM8FTteVrZp5Q3H4AuBYiDRnPN');
INSERT INTO `t_user` VALUES ('927', 'azizkhan', '01911811850', 'azizkhan', 'opest811850', 'azizkhan2007@gmail.com', '64.255.164.26', '1', '12/25/2010', '07:58:54 AM', '3', '20101225203517', '2010122507585453t0SDnrTBhy6adGYx2cv8wNieLJzP');
INSERT INTO `t_user` VALUES ('928', 'দুবাই এক্সপ্রেস', '00971555291067', 'smuaaz1', '7545140', '7545140', '86.97.118.180', '0', '12/25/2010', '08:36:03 AM', '3', '0', '20101225083603TdJ4UGienYXraowCgVZBStQh5K1DN3');
INSERT INTO `t_user` VALUES ('929', 'আকিল', '01677151122', 'Akil', '07552545', 'akil@live.com', '58.145.188.68', '1', '12/25/2010', '09:10:02 AM', '3', '20101225212625', '20101225091002NBnEWTxKRG7DAZjbc1y9wrV5Ykghez');
INSERT INTO `t_user` VALUES ('930', 'অসম্ভব', '01193042082', 'impossible', 'Elias009', 'impossible_be@yahoo.com', '180.234.38.101', '1', '12/25/2010', '09:18:24 AM', '3', '20110328000213', '20101225091824kR2KBClqA70pGn5jTu83EgFxbthfLM');
INSERT INTO `t_user` VALUES ('931', 'যৈবন দাদা', '01675633229', 'zevanbd', 'wwwblog', 'zevanbd@zoho.com', '115.127.15.5', '1', '12/25/2010', '09:31:26 AM', '3', '20101230054258', '20101225093126esDjLTliyUg90xFSZW7MKp8C1qQuYh');
INSERT INTO `t_user` VALUES ('932', 'কর্ম', '01670295746', 'Imon', 'wtpmjgda', 'Imon.bd87@gmail.com', '64.255.164.60', '0', '12/25/2010', '10:18:55 AM', '3', '0', '20101225101855mBdV98KRyTuA1pjGH3Uoe5xNZMrzE2');
INSERT INTO `t_user` VALUES ('933', 'আবীর হাসান', '01822886952', 'abirhsn', 'nothing', 'abirhsn@yahoo.co.in', '180.149.8.254', '1', '12/25/2010', '10:22:41 AM', '3', '0', '201012251022412F81LBKrZ3E0fUGiRPWScxhTjpbtlg');
INSERT INTO `t_user` VALUES ('934', 'ইজিবাইক', '01675222773', 'easybaik', 'halotomake1234', 'easybaik@gmail.com', '117.18.231.14', '1', '12/25/2010', '10:30:37 AM', '3', '20101226004739', '20101225103037HquEVFS1cTGgvosfU7mrjBPDR4hnLQ');
INSERT INTO `t_user` VALUES ('935', 'bangladesh', '01925356214', 'ranibanik', '907737', 'banik.rony@yahoo.com', '64.255.164.18', '1', '12/25/2010', '10:52:57 AM', '3', '20101225233522', '20101225105257NMWhSTCncYd8gAP3oD0FVlzL4GumZ1');
INSERT INTO `t_user` VALUES ('936', 'হিমালয়', '০১৭১৭৪৫৫৬১৪', 'himaloy', 'template', 'alms_dc@yahoo.com', '119.30.34.2', '1', '12/25/2010', '11:11:17 AM', '3', '20101229003359', '20101225111117bFREWVCPdat4QqDXpATu9J3NMG8LkH');
INSERT INTO `t_user` VALUES ('937', 'মাধব', '01717390438', 'Madhab', '062005', 'faisalnsu007@yahoo.com', '203.188.249.213', '1', '12/25/2010', '11:19:18 AM', '3', '20110321205811', '20101225111918wA21d04Ylag6fMoKJGkeHSmhZD7CxQ');
INSERT INTO `t_user` VALUES ('938', 'রনি', '00966561863371', 'saarctour', '01712170960', 'sbronybd@yahoo.com', '77.31.159.39', '1', '12/25/2010', '11:26:56 AM', '3', '20101227005142', '201012251126560Z17lxgwkMhJNYEXfRe5Hzcubm9DLU');
INSERT INTO `t_user` VALUES ('939', 'চিন্তাশিল্পী', '8801916594433', 'chintashilpy', '12752500', 'shahriar_1275@yahoo.com', '203.223.95.173', '1', '12/25/2010', '11:55:56 AM', '3', '20101226001608', '201012251155561xvaCsQ0YMnFHJzpR5UeBqhPXAE48t');
INSERT INTO `t_user` VALUES ('940', 'শিবলী', '01842shible', 'shibleemehdi', 'shiblee1515', 'shibleemehdi@gmail.com', '117.18.231.10', '1', '12/25/2010', '11:56:57 AM', '3', '20110214094228', '20101225115657zuBYXD1yM6wgmR4AQt0KC3lZdkr59E');
INSERT INTO `t_user` VALUES ('941', 'aolos manuS', '01670580980', 'kamrulonly1', 'kafai2ishan', 'kamrulonly1@gmail.com', '119.30.39.91', '1', '12/25/2010', '12:08:57 PM', '3', '0', '20101225120857MNgAzkxqDjK3UX8BdaVWp0yJRiYsG9');
INSERT INTO `t_user` VALUES ('942', 'Noormohammad Bhuayan', '01911193394', 'jado', '5103151031', 'jadobd@gmail.com', '202.51.180.125', '1', '12/25/2010', '09:53:37 PM', '3', '20110402113555', '20101225095337rkhaJd3oQcMFtTmjwRuSiqnlBGg65X');
INSERT INTO `t_user` VALUES ('943', 'মাই নেম ইজ খান', '01743630177', 'My Name Is Khan', 'ishakkhan12345', 'abuumayer.khan@gmail.com', '180.149.8.127', '1', '12/25/2010', '10:23:23 PM', '3', '20110427184013', '20101225102323AuBe8P7yc51Sa3xRKtCU64kFvzJboq');
INSERT INTO `t_user` VALUES ('944', 'নাসির উদ্দিন খান', '01819387662', 'nasiruddinkhan', 'Amnn14', 'nasir_ctg_2005@yahoo.com', '119.18.147.23', '1', '12/25/2010', '10:51:31 PM', '3', '20110104112823', '20101225105131FaLjDd9CTYRqS8Ktc7zgeNhuroX2lx');
INSERT INTO `t_user` VALUES ('945', 'লিয়াকত আলী খান', '+8801191183983', 'liakotalikhanliton', 'khan.com', 'liakotalikhanliton@yahoo.com', '117.18.229.10', '1', '12/25/2010', '11:10:13 PM', '3', '20110423121050', '20101225111013X4WQp6uMEmPwdY97btZLgvVkxUT3FB');
INSERT INTO `t_user` VALUES ('946', 'বাবলা', '01670297875', 'Bablu Shyamal', 'ipvadmin', 'babluipv@gmail.com', '180.211.219.75', '0', '12/25/2010', '11:21:56 PM', '3', '0', '20101225112156jgqzwKdaxpZbR4oFltXBYN2HGyErnL');
INSERT INTO `t_user` VALUES ('947', 'Lipy', '01975735114', 'robin.rangdhanu', '01739494362', 'robin.rangdhanu@gmail.com', '202.148.56.66', '1', '12/26/2010', '03:41:28 AM', '3', '0', '20101226034128lHDZYvUVq0PspfiWkuQ8jNxr2h5z4J');
INSERT INTO `t_user` VALUES ('948', 'ইমু ৪৬৮', '+447574313555', 'imu468', '22081986', 'imu468@yahoo.com', '82.12.161.156', '1', '12/26/2010', '09:06:51 AM', '3', '20110421101327', '20101226090651LFpyjhWQU1kuiYdEn4twzbcmRVoZvf');
INSERT INTO `t_user` VALUES ('949', 'বাচ্চা ছেলে', '01717190000', 'bacchachele', 'frendz', 'tuhin.max@gmail.com', '117.18.231.15', '1', '12/26/2010', '11:13:00 AM', '3', '20101228233133', '20101226111300sha6kpt90TNBHXZx251nEriSM4bqUR');
INSERT INTO `t_user` VALUES ('950', 'এইচ, এম, পারভেজ', 'bangladesh', 'parvage007', 'bangladesh', 'parvage_07@yahoo.com', '120.50.176.38', '1', '12/26/2010', '11:26:31 AM', '3', '20101226233051', '20101226112631K2JDoERePu90LWydpCMc1a5N7Bxfth');
INSERT INTO `t_user` VALUES ('951', 'নঈম আযাদ', '01714381956', 'noim', '01714381956', 'noimazad@gmail.com', '117.18.231.19', '1', '12/26/2010', '06:15:26 PM', '3', '20110303232801', '20101226061526rHzvqRSXEFDwVhQGiTZB4gkepdmolj');
INSERT INTO `t_user` VALUES ('952', 'ছোটমির্জা', '01611300003', 'chhotomirza', 'isjclpdd', 'nadim.bd11@gmail.com', '123.49.25.250', '1', '12/27/2010', '04:41:15 AM', '3', '20101227164243', '20101227044115LKw2WlTqM4YxBrzE0Rm1gQb9fUvnH5');
INSERT INTO `t_user` VALUES ('953', 'পান্থ নজরুল', '01718729677', 'pantha_nazrul', 'ni100n', 'pantha_nazrul@yahoo.com', '202.191.124.60', '1', '12/27/2010', '05:23:44 AM', '3', '20110327135306', '20101227052344vLxJZ6lkBizfEhjRtbKmaYHncWgUV3');
INSERT INTO `t_user` VALUES ('954', 'Ostito', '01911223117', 'shibushimul', '2ndfoundation', 'shibushimul@gmail.com', '202.65.173.220', '1', '12/27/2010', '05:41:19 AM', '3', '20101227175245', '20101227054119qEy3wctl5L9bGrTXzHjunMJ6Was8Qv');
INSERT INTO `t_user` VALUES ('955', 'অক্টোপাশ', '01817040000', 'macsain', 'sainu123', 'macsain@gmail.com', '202.191.124.60', '1', '12/27/2010', '05:59:00 AM', '3', '20110427155023', '20101227055900CBD3G5Hcw0EUxd4PWzQZrMmhKaRi8e');
INSERT INTO `t_user` VALUES ('956', 'কীর্তিমান', '+8801737932459', 'exorcist', '0033315193', 'nosib_zehadi@yahoo.com', '119.30.38.71', '1', '12/27/2010', '06:00:53 AM', '3', '20101227181001', '20101227060053rMaBVE6mXpAocqd4D1xS2YKlyFLNfP');
INSERT INTO `t_user` VALUES ('957', 'হাবিবুর রহিম', '01673373727', 'habiburrahim', '29071988', 'habib.dmc66@gmail.com', '113.11.17.209', '1', '12/27/2010', '06:31:46 AM', '3', '0', '20101227063146YleZ0gPfjWv7EA4daCTLyMqB5o2n8U');
INSERT INTO `t_user` VALUES ('958', 'তানজিম', '01716149474', 'against', 'T@nz1m', 'tanzim427@yahoo.com', '119.30.39.68', '1', '12/27/2010', '06:46:22 AM', '3', '20101227224800', '20101227064622325TvMUSp1gVjfrWio9YE0b8BRcwyq');
INSERT INTO `t_user` VALUES ('959', 'আমিনুর রহমান', '01720675593', 'aminur rahman jason', 'sumakar', 'algolbd@yahoo.com', '180.234.70.106', '1', '12/27/2010', '06:48:08 AM', '3', '20101227185124', '20101227064808GcUgxF63Rs0A7r4afPjNDykWpYMi15');
INSERT INTO `t_user` VALUES ('960', 'সহজাত', '01190462411', 'abcde', '78364378', 'rats_absolute@rocketmail.com', '119.30.38.70', '1', '12/27/2010', '07:30:34 AM', '3', '20110429012951', '20101227073034APgBuZtoklE4F0pimdvSXLjysQUxHN');
INSERT INTO `t_user` VALUES ('961', 'মহা ভাবনা', '01716125435', 'mohavabna', '21061987study', 'mohavabna1975@gmail.com', '182.16.157.130', '1', '12/27/2010', '07:31:05 AM', '3', '20101227200435', '20101227073105mubtRl3YkB0Mf2WKcqSgNa7XwdzQPV');
INSERT INTO `t_user` VALUES ('962', 'প্রাঞ্জল', '+8801742721483', 'pcborty', '98502716', 'pranjalchakrabortybabu@gmail.com', '64.255.164.109', '1', '12/27/2010', '07:48:24 AM', '3', '20110315205420', '20101227074824BZWKobGnRrya6mDiwv59cQjxU7SpCz');
INSERT INTO `t_user` VALUES ('963', 'সৈকত', '01715636524', 'SAIKOT', 'DSHARMIN', 'rubyathasan@yahoo.com', '180.200.239.34', '1', '12/27/2010', '07:52:09 AM', '3', '20110401142138', '201012270752096bFZBfrpkELmt9JG2KyTV4C8DloiUW');
INSERT INTO `t_user` VALUES ('964', 'মেটালিক মোস্তাফিজ', '01673001121', 'tapobng', 'medical', 'tapobng@yahoo.com', '180.234.36.65', '1', '12/27/2010', '07:52:21 AM', '3', '20110413234126', '20101227075221yXg9fZbBevxT1Y5hq0NncoGdrDt3VQ');
INSERT INTO `t_user` VALUES ('965', 'Mahfuzur Rahman', '+8801822362856', 'High Dreamer', 'b0xer2030', 'mahfuzur.rhmn@gmail.com', '27.131.15.18', '1', '12/27/2010', '07:55:09 AM', '3', '20110409145938', '20101227075509P4v9aYACJlqMRb6N7cGUD8kyrTFezZ');
INSERT INTO `t_user` VALUES ('966', 'নাইয়াদ', '01928710516', 'naiad', '11235813213455', 'naiadtonny@gmail.com', '180.149.8.127', '1', '12/27/2010', '07:57:35 AM', '3', '20110504091351', '20101227075735ZcNModDJanGgiAXSuP85hRBjywQYbt');
INSERT INTO `t_user` VALUES ('980', 'fvjevmv', '+8801713129406', 'John Bright Gazi', 'bangladesh', 'uzalgazi@yahoo.com', '117.18.229.7', '1', '12/29/2010', '09:28:27 AM', '3', '20110306125635', '201012290928273RByP9wazq5Z8siXMpVCmvAcrjetL7');
INSERT INTO `t_user` VALUES ('967', 'ভাগ্যহীন', '01712506458', '506458', 'gp506458', '506458@gmail.com', '223.165.1.1', '1', '12/27/2010', '08:30:17 AM', '3', '20101227205521', '20101227083017o4QPGH5MkhWuNFyL1rRUBjvifTw9Vq');
INSERT INTO `t_user` VALUES ('968', 'নিষ্কর্মা', 'nishkorma', 'nishkorma', 'jhorna', 'tushar9_11@yahoo.com', '85.96.222.79', '1', '12/27/2010', '11:37:31 AM', '3', '20101228213137', '201012271137312JRZAXS85FcG6fwQKaU1LxPBEYysNC');
INSERT INTO `t_user` VALUES ('969', 'আবির্ভাব', '01723855447', 'bproy', 'bipulroy', 'bnproy@gmail.com', '180.234.44.87', '1', '12/27/2010', '01:16:01 PM', '3', '20110220012819', '20101227011601RfVS5W6rQ0iuHypChKoNYcT1g2zX7D');
INSERT INTO `t_user` VALUES ('970', 'রানা হামিদ', '+8801717623876', 'RANAHAMID', 'resham', 'ranahamid@ovi.com', '119.30.39.74', '1', '12/27/2010', '03:45:08 PM', '3', '20101228064418', '20101227034508AXwvaxDksRjiQq49ZtCc1lnLMSWYE0');
INSERT INTO `t_user` VALUES ('971', 'আবু মকসুদ', '০৭৯৬১০৩৪১৮৬', 'abumaksud', 'sifat1', 'abumaksud@hotmail.co.uk', '86.144.115.81', '1', '12/27/2010', '04:37:01 PM', '3', '20110430051205', '201012270437014Bem08Q2GsyMvYJnfklCFzLKTtqxiZ');
INSERT INTO `t_user` VALUES ('972', 'নিঝুম আকতার', '01714211125', 'Nijum Akter', '112233', 'Nijum.lookinglove@yahoo.com', '212.76.75.234', '1', '12/28/2010', '12:06:10 AM', '3', '20110105193944', '20101228120610JaL9AwH2euG5BqWPd6Y3Evm8nXQDjC');
INSERT INTO `t_user` VALUES ('973', 'লাইটহাউস', '+8801678151625', 'redrose2010', '20102010', 'redrose.redrose2010@gmail.com', '202.134.8.92', '1', '12/28/2010', '12:29:30 AM', '3', '20110203182122', '20101228122930FUWdcXKomqw65jT0HSegQDARLaZMhb');
INSERT INTO `t_user` VALUES ('974', 'আশ্রাফ', '01831321844', 'ashrafali', 'asakataf', 'ashrafali1970@gmail.com', '203.188.254.190', '1', '12/28/2010', '06:40:46 AM', '3', '20101228185522', '20101228064046RZvMCWm3BV82Gdyq7uchPbkxKFXL5J');
INSERT INTO `t_user` VALUES ('975', 'opestid.com', '01812357090', '0', '0', '0', '64.255.180.204', '0', '12/28/2010', '12:53:58 PM', '3', '0', '20101228125358MaPkiFsXpxD0G3vlEHwyCRWfq92VJU');
INSERT INTO `t_user` VALUES ('976', 'Opestid@yahoo.com', '01199121121', '00', '0000', '0000', '202.56.7.164', '0', '12/28/2010', '01:38:18 PM', '3', '0', '20101228013818MB1uRnZXJrFajVo3Y9fWsSPwe0LzHx');
INSERT INTO `t_user` VALUES ('977', 'টোনা টুনি', '01916747941', 'sajib', 'sajib', 'sajib.ewubd@gmail.com', '180.149.12.254', '1', '12/29/2010', '01:13:21 AM', '3', '20110421131636', '20101229011321DY7mkthcjZJAxST3KEdUQBepb8sr9H');
INSERT INTO `t_user` VALUES ('978', 'দিশেহারা মানব', '+8801819467054', 'mottakin103', '161271', 'mottakin_cghs@yahoo.com', '117.18.231.4', '1', '12/29/2010', '04:45:52 AM', '3', '20110314161359', '20101229044552NXE6zRq98lAFKxPHSTn3VWBvYiUGoe');
INSERT INTO `t_user` VALUES ('979', '০o0o০', '01753242222', 'oOo', '102030', 'jonaaki2010@gmail.com', '117.18.229.4', '1', '12/29/2010', '05:21:59 AM', '3', '20101231234650', '20101229052159euhY5doPCaADgNmfnUxSb9JHl4G2tq');
INSERT INTO `t_user` VALUES ('981', 'বিল্লাল', '+8801746563130', 'billal', 'billalho', 'arif_0709018@yahoo.com', '119.30.38.78', '0', '12/29/2010', '11:56:22 AM', '3', '0', '20101229115622bDJrd9EKUnyWpumzc4sxSXqkRlCaBe');
INSERT INTO `t_user` VALUES ('982', 'বাংলা স্বপ্ন', '8801711981812', 'mohib', '981813', 'mb.electron@gmail.com', '119.30.34.14', '1', '12/30/2010', '01:14:10 AM', '3', '20101231134415', '20101230011410mre2bo3sfUtx8cAvF7ZDKHRpqkG6Ph');
INSERT INTO `t_user` VALUES ('983', 'নিঝুমদ্বীপ', '8801913513555', 'nijhumdip', 'G@dhi3871', 'nijhumdip@yahoo.com', '114.130.35.90', '1', '12/30/2010', '04:45:27 AM', '3', '20110212114255', '201012300445274hRC2z6YUd1SHeL5T0ANjnKWJ7xBvP');
INSERT INTO `t_user` VALUES ('984', 'ভাবের অভাব', '01717623437', 'asfiu', 'ai9rajshahi', 'asifgenerous1983@yahoo.com', '210.4.72.2', '1', '12/30/2010', '04:58:38 AM', '3', '20101230170516', '20101230045838NaPw9mnA6vZBy4CW8UDfiXQ5p0uVGq');
INSERT INTO `t_user` VALUES ('985', 'লেদু মিয়া', '01671705670', 'jashim89', 'rayhan007', 'jashim89ctg@gmail.com', '122.152.53.75', '1', '12/30/2010', '05:17:38 AM', '3', '20101230173146', '20101230051738BVgAJwshKMFQW59m3vx8i0pCTP4H1S');
INSERT INTO `t_user` VALUES ('986', 'Mollik', '01818867114', 'Limon Mollik', 'lmn12345', 'limonmollik@yahoo.com', '119.30.39.87', '1', '12/30/2010', '05:21:03 AM', '3', '0', '20101230052103Gk0SUuLMpa2yvlmowfNEPqs8hDKQCg');
INSERT INTO `t_user` VALUES ('987', 'রাকা ও আমি', '01670103104', 'greenperosn', '028022315', 'greenperson_1987@yahoo.com', '117.18.231.27', '1', '12/30/2010', '05:23:32 AM', '3', '20101230174138', '20101230052332D4XhinPZytv2lU6daJf0R3qx7oSGW1');
INSERT INTO `t_user` VALUES ('988', 'পরান', '01713300998', 'paran', '123456', 'paran_1984@yahoo.com', '114.130.13.26', '1', '12/30/2010', '05:25:43 AM', '3', '0', '20101230052543SE5UKBDRZhgd2bQL9ompG74yFMnkwu');
INSERT INTO `t_user` VALUES ('989', 'কল্প-কথা', '01715685598', 'jahangircsebd', 'alamripa', 'jahangircsebd@gmail.com', '203.188.255.119', '1', '12/30/2010', '05:33:18 AM', '3', '20110104161331', '201012300533180LrJipElgZQc3GFXatP5BS1ws2HnWu');
INSERT INTO `t_user` VALUES ('990', 'abdullah', '01711783868', 'ABDULLAH', 'mathbaria', 'mohsindesh@gmail.com', '122.99.97.145', '1', '12/30/2010', '05:54:13 AM', '3', '20101230190158', '20101230055413Dh5L3jsGHfClb94KYQxSBNdrRaV2nu');
INSERT INTO `t_user` VALUES ('991', 'রোদছায়া', 'banglalink', 'javed_66', 'jjaved3333', 'ajajamal@yahoo.com', '203.223.95.196', '1', '12/30/2010', '05:58:08 AM', '3', '20110504171512', '20101230055808h35xvZcRo18fiXDVW2Q7AlbNMHjyra');
INSERT INTO `t_user` VALUES ('992', 'মিনহাজ আল হেলাল', '003580465706771', 'MinhajAlHelal', 'Min152484', 'minhaj6ukl@gmail.com', '94.101.2.145', '1', '12/30/2010', '06:17:23 AM', '3', '20110416130933', '20101230061723CXEaWUy672N1qBMmGnxY0H8jhf59gr');
INSERT INTO `t_user` VALUES ('993', 'mamhasan462', 'mamhasan462', 'mamhasan462', '269780', 'mamhasan462@yahoo.com', '202.56.7.169', '1', '12/30/2010', '06:17:41 AM', '3', '20110217204510', '20101230061741ihKneQfrCk8j4FmPZEJBxywsLzRAMU');
INSERT INTO `t_user` VALUES ('994', 'সোহরাব সুমন', '01932900272', 'sohrabsumon', '1234abcd', 'sohrabsumon@webexbd.com', '119.30.39.85', '0', '12/30/2010', '06:20:13 AM', '3', '0', '20101230062013t2zgivoBuYpkH7918xFfqwe4nKsm0J');
INSERT INTO `t_user` VALUES ('995', 'হুসাইন অভি', '01675646590', 'abhi', 'o00psabhi', 'abhihossain@bismillah.com', '202.56.7.172', '1', '12/30/2010', '06:28:40 AM', '3', '20110417221731', '20101230062840DgpFUcYPTMRKkvB9b18CXE7JZSWqsA');
INSERT INTO `t_user` VALUES ('996', 'জাফর', '01912099069', 'sohel007', 'asdfghjkl', 'jafar8250080@gmail.com', '123.49.21.62', '1', '12/30/2010', '06:42:44 AM', '3', '20110129180443', '20101230064244W6hqje4El5vmX2GU13KL8sb0tiYrBa');
INSERT INTO `t_user` VALUES ('997', 'হতচ্ছাড়া', 'hotochchara', 'hotochchara', 'pentium123', 'pentium123', '82.204.105.83', '0', '12/30/2010', '06:52:30 AM', '3', '0', '201012300652303YQViPqvUAgJdGk78Smjxa5cKfTFB9');
INSERT INTO `t_user` VALUES ('998', 'rubelboss', '01916452629', 'rubelboss', '782355', 'rubelboss@ymail.com', '64.255.180.126', '0', '12/30/2010', '06:54:20 AM', '3', '0', '20101230065420zwDxgkFZEGsbY5UBqtoLhJXcirHRQa');
INSERT INTO `t_user` VALUES ('1000', 'নোমান নমি', '01911607022', 'dauzanoman', '839844', 'kasafaddauza87@yahoo.com', '180.200.239.60', '0', '12/30/2010', '07:44:56 AM', '3', '0', '20101230074456Mdo23HWQbzgvBnAk8f1FJjuUw0iapT');
INSERT INTO `t_user` VALUES ('1001', 'দ্দৌজ়া নোমান', '01911607022', 'kasafaddauza', '839844', 'kasafaddauza87@yahoo.com', '180.200.239.60', '0', '12/30/2010', '07:49:50 AM', '3', '0', '20101230074950ETfmgLDxYqcl6oBrt9nPvKCzQ85Jwk');
INSERT INTO `t_user` VALUES ('1003', 'arthit', '+919679042135', 'arthit', '17121983', 'arthit.roy@gmail.com', '80.239.243.72', '0', '12/30/2010', '11:41:45 AM', '3', '0', '20101230114145JlpGdtEeD361Fn57u8iRZTMCagQmsX');
INSERT INTO `t_user` VALUES ('1004', 'কাসাফাদ্দৌজা', '01911607022', 'dauza', '935310', 'dauzanoman@yahoo.com', '202.51.181.114', '1', '12/30/2010', '01:17:56 PM', '3', '20110427174051', '20101230011756EWMiVHQncUlrgu9x8TCYDpBSm4A7o0');
INSERT INTO `t_user` VALUES ('1005', 'শাহানা', '8801911319938', 'shahanaus', 'shafeen', 'shahanaus@yahoo.com', '119.30.39.68', '1', '12/30/2010', '05:00:04 PM', '3', '20101231083714', '20101230050005qFumyzKLGpPVto2CWDXhZBc4ifrMQl');
INSERT INTO `t_user` VALUES ('1006', 'duronto pothik', '01744778899', 'duronto pothik', 'durontopothik', 'anitanipa@rocketmail.com', '119.30.34.1', '0', '12/30/2010', '07:57:12 PM', '3', '0', '20101230075712CF0glLreTEbt73fvmn6jDU42YzdkQu');
INSERT INTO `t_user` VALUES ('1007', 'এস যেড এস', '01916455799', 'szstatcu', 'qwertyuiop', 'szstatcu@yahoo.com', '119.30.39.80', '0', '12/31/2010', '07:01:48 AM', '3', '0', '201012310701487qEbyMfz8dAtvChumje1YD2aQPX6Sw');
INSERT INTO `t_user` VALUES ('1008', 'এস যেড এস জ', '01916455798', 'szstatcuj', 'szstatcujjj', 'szstatcu@yahoo.com', '119.30.39.80', '0', '12/31/2010', '07:02:48 AM', '3', '0', '20101231070248jd0ECUegzfFKJWH1MqcPX6l7iArtnT');
INSERT INTO `t_user` VALUES ('1009', 'Arshel mahmud', '01819084751', 'Arshel mahmud', '869081', 'arshel_ak@ovi.com', '64.255.164.117', '0', '12/31/2010', '07:51:14 AM', '3', '0', '20101231075114yaL3zxHmlhuXUjQ9sopFCRbNVqkMt2');
INSERT INTO `t_user` VALUES ('1010', 'স্বপ্নে-বিভোর', '01675285602', 'tatnasharlock', '111213', 'tatnasharlock@gmail.com', '58.147.170.174', '1', '12/31/2010', '03:57:38 PM', '3', '20110101040111', '20101231035738gfRmzeZBjqPTFGNC8E1p7xVahD3sdA');
INSERT INTO `t_user` VALUES ('1011', 'জাজামা', '01712009989', 'Jzaman', 'jashsu0075', 'jahiduzzaman@yahoo.com', '117.58.246.211', '1', '01/01/2011', '01:14:54 AM', '3', '20110305030047', '20110101011454XqV184wyC0Qs3AkonNpHrlaPtLdGbZ');
INSERT INTO `t_user` VALUES ('1012', 'সুন্দরী কন্যা', '01916861039', 'mati_bd', 'ab8960', 'mati.bd.dhaka@gmail.com', '203.223.95.212', '1', '01/01/2011', '02:03:11 AM', '3', '20110101142316', '20110101020311misxRKdjryl80VbX9F5taHZqoh1Npk');
INSERT INTO `t_user` VALUES ('1013', 'ELIAS SHAGAR', '01670555805', 'eliasshagar', 'ragahs.e', 'eliasshagar@yahoo.com', '203.188.248.138', '1', '01/01/2011', '02:22:24 AM', '3', '20110129165710', '20110101022224GHNT4PhAi615pB7ZnWCzdf3FJyj0t9');
INSERT INTO `t_user` VALUES ('1014', 'সিরাজ৮৪২', '01xxxxxxx000', 'siraj842', '26081981', 'siraj842@yahoo.com', '202.56.7.170', '1', '01/01/2011', '07:01:09 AM', '3', '20110411005146', '20110101070109b6yg37TN1we8VC0vqPpS92afxr4smA');
INSERT INTO `t_user` VALUES ('1015', 'তাহমিদুর রহমান', '01936515217', 'sohelshahed', '9922199', 'sohel_shahed@yahoo.com', '180.234.55.90', '1', '01/01/2011', '12:34:17 PM', '3', '20110304083853', '20110101123417V5LfDNrSm4QvHwxAjRqlKt8Zk1sCzP');
INSERT INTO `t_user` VALUES ('1016', 'জামান ২০২১', '01914884833', 'zaman2021', 'ashaduzzaman', 'engineerzaman2021@yahoo.com', '202.56.7.169', '1', '01/01/2011', '09:45:13 PM', '3', '20110102095145', '20110101094513Xt5MGygap3YDSFRC87ZVfPcnLmUl1i');
INSERT INTO `t_user` VALUES ('1017', 'কুলিমজুর', '01711500041', 'kuleemojur', '014489014489', 'kuleemojur@gmail.com', '119.30.34.11', '1', '01/02/2011', '12:31:35 AM', '3', '20110102124135', '20110102123135ofg9K6FX2cBpyGh7PRvY5tZN0wubAQ');
INSERT INTO `t_user` VALUES ('1018', 'rahman', '01674177687', 'rahman', 'a0996480', 'jasika.pool@yahoo.com', '180.211.219.19', '1', '01/02/2011', '02:38:28 AM', '3', '20110124125132', '20110102023828wBKkU8Y7pTCa20PZjW3XfHJNzynxdL');
INSERT INTO `t_user` VALUES ('1019', 'নবকবি', '01911664648', 'nabokobi', '133855', 'nabokobi@gmail.com', '123.49.60.210', '1', '01/02/2011', '03:31:50 AM', '3', '20110106131420', '20110102033150LqriQ9F4pmE2eCDb1Vnyw5xWuhzNa0');
INSERT INTO `t_user` VALUES ('1020', 'সঞ্চিতা', '01714381956', 'sanchhita', '01081988', 'kutubibd@gmail.com', '117.18.231.14', '1', '01/02/2011', '04:37:25 PM', '3', '20110302214703', '20110102043725dyif2EqoDQUHs6VBW8pXYcFmbvZ5AP');
INSERT INTO `t_user` VALUES ('1021', 'সুচয়নী', '01714381956', 'suchayani', '01081988', 'kutubibd@gmail.com', '117.18.231.14', '1', '01/02/2011', '04:41:40 PM', '3', '20110302231504', '20110102044140R38P4jSlVfkK61tqGzg9NcTmohUAwr');
INSERT INTO `t_user` VALUES ('1022', 'বিষের বাঁশী', '01714381956', 'bisherbashi', '03081988', 'kutubibd@gmail.com', '117.18.231.14', '1', '01/02/2011', '04:46:15 PM', '3', '20110302232342', '20110102044615ay7ZgX6Hj5tsRrN9dbUJinQDqxGmK1');
INSERT INTO `t_user` VALUES ('1023', 'অগ্নি-বীণা', '01714381956', 'ognibina', '03081988', 'kutubibd@gmail.com', '117.18.231.14', '1', '01/02/2011', '04:48:43 PM', '3', '20110303084040', '20110102044843tG8bVqzkvLRcJyg5xoUNEWY7asdmhF');
INSERT INTO `t_user` VALUES ('1024', 'কালি ও কলম', '01714381956', 'kaliokalam', '03081988', 'kutubibd@gmail.com', '117.18.231.14', '1', '01/02/2011', '04:53:59 PM', '3', '20110303115036', '201101020453597oveNfM8KGjh01BcaqnQ6zXWJ9RC5r');
INSERT INTO `t_user` VALUES ('1025', 'তারছিড়া', '01717515303', 'aamahin', '17515303', 'a.a.mahin@gmail.com', '180.149.26.101', '1', '01/03/2011', '01:31:05 AM', '3', '20110207223618', '20110103013105DbmiJUevulAPj27zwf9hnxQ1ESFkL0');
INSERT INTO `t_user` VALUES ('1026', 'আনু', '01915492331', 'anu', 'anuaback', 'abackanu@yahoo.com', '119.30.39.90', '0', '01/03/2011', '01:31:34 AM', '3', '0', '20110103013134rEuDoF635jks7JyQMlbvLCgx1AnT9d');
INSERT INTO `t_user` VALUES ('1027', 'কালাম', '+8801713915886', 'md.kalam', '01713915886', 'md.kalamm@yahoo.com', '119.30.39.78', '1', '01/03/2011', '04:24:10 AM', '3', '20110410180800', '20110103042410uedlz9Z0mot5bPBKvHJ8y4TV27NrYx');
INSERT INTO `t_user` VALUES ('1028', 'অতি সাধারণ', '01671690383', 'otisadharon', '478935', 'ektaar@yahoo.com', '117.18.231.2', '1', '01/03/2011', '11:13:55 AM', '3', '20110103233034', '20110103111355gwebKJi3zvZXxkR2NE8fT9ha6FVp0q');
INSERT INTO `t_user` VALUES ('1029', 'ইসরাইল-ফিলিস্তিন', '01711524324', 'ptstates', 'jukebox', 'ptstates@gmail.com', '94.168.9.90', '1', '01/03/2011', '02:34:29 PM', '3', '20110502220159', '20110103023429b802coZDKhAwpqf5PnGXjdysNYrmRV');
INSERT INTO `t_user` VALUES ('1030', 'wiqv`', '01556352534', 'cse_riyadh', 'rampur', 'cse_riyadh@yahoo.com', '203.76.157.93', '1', '01/04/2011', '01:04:28 AM', '3', '20110104131159', '20110104010428DkpeQdUit4WGJr1RMKq73hCyLS5ZFY');
INSERT INTO `t_user` VALUES ('1031', 'Riyadh', '01556352534', 'cse_riyadh1', 'rampur', 'tawhid@ibtra.com', '203.76.157.93', '1', '01/04/2011', '01:13:46 AM', '3', '20110106181114', '20110104011346lwmx53ZvVocuepK7M4n2gLXaihUQPF');
INSERT INTO `t_user` VALUES ('1032', 'আর্ণিশা আনিন্দ আফরিন', '+8801674928381', 'arnisha', '0033315193', 'arnisha_anind@hotmail.com', '119.30.38.73', '1', '01/04/2011', '01:16:18 AM', '3', '20110201184137', '20110104011618dTS61mRjpv5xNE7LPZ9Xa38tgV4oFn');
INSERT INTO `t_user` VALUES ('1033', 'ripon', '01925529813', 'ripon', '01925529813', 'ripon88bd@gmail.com', '117.18.231.29', '0', '01/04/2011', '01:37:15 AM', '3', '0', '201101040137158FEAtdQYsMKB2jovzGJmaR5kw0gVNZ');
INSERT INTO `t_user` VALUES ('1034', 'সামছুউদ্দিন৮৮', '01925529813', 'shamsuddin88', '01925529813', 'ripon88bd@gmail.com', '117.18.231.29', '1', '01/04/2011', '01:51:57 AM', '3', '20110110211854', '20110104015157i7Edrv6DbJVtuZpWqXgBlPAcx0S38F');
INSERT INTO `t_user` VALUES ('1035', 'ripon019', '01925529813', 'shamsuddin019', '01925529813', 'ripon88bd@gmail.com', '117.18.231.29', '0', '01/04/2011', '01:55:09 AM', '3', '0', '20110104015509QFvRXZAlNG3udcqriz85VC9Ysbay4f');
INSERT INTO `t_user` VALUES ('1036', 'bappi', '01731172685', 'bappy2129', '123456', 'bappy2129@gmail.com', '117.18.229.27', '1', '01/04/2011', '04:06:05 AM', '3', '0', '20110104040605tjixELNv2ukmgV5MnpsU4KdBoe6ZDG');
INSERT INTO `t_user` VALUES ('1037', 'মোছা: মুন্নী', '01742188244', 'munni 13', '188244', 'munni_bd13@yahoo.com', '180.149.29.57', '1', '01/04/2011', '05:59:35 AM', '3', '20110302193959', '20110104055935Vk9raUd8R3v2xLjN7BYCXt5b1EoqTz');
INSERT INTO `t_user` VALUES ('1038', 'কৃষক', '01822362856', 'mahfuz', 'b0xer2030', 'mrtvi002@gmail.com', '117.18.231.30', '1', '01/04/2011', '09:31:56 AM', '3', '20110419092908', '20110104093156dcDTwCNySQYlxMs4v7gekRW3tUnZb1');
INSERT INTO `t_user` VALUES ('1039', 'সাম্মবাদী', '০১৭১০৪৯৩৪৪৭', 'anwarm44', '1017165', 'anwarmmc@gmail.com', '119.30.38.65', '1', '01/04/2011', '11:31:05 AM', '3', '20110306001916', '20110104113105Kabu7JDt98C6po41BRncQEAfH3szlX');
INSERT INTO `t_user` VALUES ('1040', 'শাকিল', '+8801672017807', 'saed_shakil', '723350', 'saedshakil@yahoo.com', '119.30.34.7', '1', '01/04/2011', '11:43:55 AM', '3', '20110122152546', '20110104114355gmwGJzsYH0q3hPA2vx6yXNWjp1E8Lk');
INSERT INTO `t_user` VALUES ('1041', 'hafizur rahman real', '00447574236955', 'real2ric', '16011992', 'realsrv@yahoo.com', '95.147.43.52', '1', '01/04/2011', '10:16:31 PM', '3', '20110105101916', '20110104101631tnTMrVbaR8JvBNjgfsy1Y45ECe9c73');
INSERT INTO `t_user` VALUES ('1042', 'S. M. Hoque', '01556306017', 'S. M. Hoque', 'mainul', 'sm_hoque@yahoo.com', '203.76.157.93', '1', '01/04/2011', '10:33:05 PM', '3', '20110105105556', '20110104103305e2ywGCiVNEpQt49H1lzmoLXTFsgJdM');
INSERT INTO `t_user` VALUES ('1043', 'ম্যানিলা', '০০০০০০০০০০০', 'female', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '09:55:09 AM', '3', '20110107225607', '20110105095509BmPoXhA6RcHLjdpqnteV9CiFufrTGQ');
INSERT INTO `t_user` VALUES ('1044', 'রবার্ট', '0000000', 'foreigner', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '09:58:02 AM', '3', '20110107225738', '20110105095802KehbyPXQml2BrzoJdsA68GqgLH5tU1');
INSERT INTO `t_user` VALUES ('1045', 'প্রবাসী', '০০০০০০', 'faraway', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '0', '01/05/2011', '10:02:01 AM', '3', '0', '20110105100201xGl95JfP4Xa8spF6mMC1z7dNVEru0w');
INSERT INTO `t_user` VALUES ('1046', 'রুদ্ধ', '০০০০০০০০০০০০', 'banned', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:15:10 AM', '3', '20110107224459', '20110105101510zEMUyVbHXwd4WFf0nm2chxkT9gZp57');
INSERT INTO `t_user` VALUES ('1047', 'অবনত', '০০০০০০০০০০০০০০০০০০০', 'demotion', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:19:03 AM', '3', '20110107224351', '201101051019037FltXZSwvYrCs2zTQumgN1DajHcG6f');
INSERT INTO `t_user` VALUES ('1048', 'অগ্রগতি', '০০০০০০০০', 'promotion', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:22:18 AM', '3', '20110107224604', '20110105102218xJNfM8KnchpYBz97LDPwr6kEdSt2yi');
INSERT INTO `t_user` VALUES ('1049', 'অতিথি ৫', '000000000000', 'tobesticky', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:25:18 AM', '3', '20110107223407', '20110105102518hRmjixuLUXk9VrnTtyzG1dfgvD27BW');
INSERT INTO `t_user` VALUES ('1050', 'অতিথি ৪', '0000000000', 'donesticky', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:30:32 AM', '3', '20110107223220', '201101051030324rLBauTKm123GFnCpi5x8JhZRwDg7v');
INSERT INTO `t_user` VALUES ('1051', 'probashi100', '01923655725', 'probashi', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:51:26 AM', '3', '20110107225139', '20110105105126FAcpGYdjt6gRyrDSufMbUkH8esJK50');
INSERT INTO `t_user` VALUES ('1052', 'RULES', '0198987678', 'rules', 'asgh', 'tarek.japan@gmail.com', '119.30.39.75', '1', '01/05/2011', '10:57:17 AM', '3', '20110223133809', '20110105105717HxqCFb5Akh96emP3DNi7MKfwvXy1Ea');
INSERT INTO `t_user` VALUES ('1053', 'চ্যালেণ্জ্ঞার সিদ্দীক', '01190089850', 'challengersiddique', 'marine19841990', 'challengersiddique@yahoo.com', '202.134.8.94', '1', '01/05/2011', '10:01:22 PM', '3', '20110223215856', '201101051001229gXwoRyW3BchapESksi6UG7nb2jZ0u');
INSERT INTO `t_user` VALUES ('1054', 'উইকিলিকস', '01199384323', 'wikileaks', 'marine19841990', 'wikileaksbd@yahoo.com', '202.134.8.94', '1', '01/05/2011', '10:16:40 PM', '3', '20110221142238', '20110105101640dVFJWqZr0GeM9vX1g7lL4n2RzCkbBE');
INSERT INTO `t_user` VALUES ('1055', 'ভুদাই', '666 666 666', 'nayan146', '566577', 'nayan146@yahoo.com', '202.56.7.163', '1', '01/06/2011', '09:05:03 AM', '3', '20110107145908', '20110106090503UkFKf8WrgDGM973zl5AvBhQum6NSHo');
INSERT INTO `t_user` VALUES ('1056', 'NUMAN', '01756211721', 'Nilkabbo', '12345678', 'www.numan.tvi@gmail.com', '119.30.39.81', '0', '01/07/2011', '02:45:08 AM', '3', '0', '20110107024508HQb3PJkpBUFc564djRnmD8XGVls2ev');
INSERT INTO `t_user` VALUES ('1057', 'system', '0192345667', 'system', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '05:20:50 AM', '3', '20110107222637', '20110107052050REvA3Pw2TkD95dtprWhiSMCgNzb8uJ');
INSERT INTO `t_user` VALUES ('1058', 'useful', '019876756', 'need', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '05:29:09 AM', '3', '20110107222809', '20110107052909ysfvo5tWbP4mAcZLrY2hSzlauCpUJw');
INSERT INTO `t_user` VALUES ('1059', 'unb', '01989838399', 'unbanned', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '07:09:54 AM', '3', '20110107192526', '20110107070954B7L4juroQmNcYVTenUWCdsGibKpZ8S');
INSERT INTO `t_user` VALUES ('1060', 'CH', '019876788333', 'child', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '07:18:13 AM', '3', '20110107230358', '20110107071813r6u2Xh89jDgmwFEJzet1dsLfHlcP0A');
INSERT INTO `t_user` VALUES ('1061', 'Writers', '0198765439', 'owf', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '07:32:59 AM', '3', '20110107230507', '20110107073259PqCQB2E3HdTRMZgn6SWe4GjKYLvrkc');
INSERT INTO `t_user` VALUES ('1062', 'কবি নজরুলের ছায়া', '01718578623', 'nazrul4u', '494929opest', 'kazi.nazrul4u@gmail.com', '119.30.34.11', '1', '01/07/2011', '08:20:20 AM', '3', '20110107210713', '20110107082020Tm8CFpQKaUyrY4XdG7wjsDR5oxBzPN');
INSERT INTO `t_user` VALUES ('1063', 'শাওন', '০০০০০০০০০০', 'pw', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:01:49 AM', '3', '20110107210432', '20110107090149ePlvLMjfahsUo3uXW7kCTA2Kbm8Zw4');
INSERT INTO `t_user` VALUES ('1064', 'আজাদ', '০০০০০০০০০', 'question', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:06:50 AM', '3', '0', '201101070906505TV1msNEW2qnYXibC4eJPMtH3ZkQGh');
INSERT INTO `t_user` VALUES ('1065', 'রায়হান', '০০০০০০০০০', 'issue', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:13:02 AM', '3', '0', '20110107091302Rc2AjS3kJl6xaFyZQ7sPrKYvwfTg1B');
INSERT INTO `t_user` VALUES ('1066', 'HHH', '000000000', 'inteview', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:22:12 AM', '3', '0', '20110107092212pWd6ni2YEZzwg4CkVQM7uDNGHJohTm');
INSERT INTO `t_user` VALUES ('1067', 'যুবাইর', '0000000000000', 'mistory', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:27:37 AM', '3', '0', '20110107092737oBZQjptdLCuz8TRbUqJGkWwH4lPxrF');
INSERT INTO `t_user` VALUES ('1068', 'the boss', '00000000000000000', 'interview', 'asgh', 'tarek.japan@gmail.com', '119.30.38.68', '1', '01/07/2011', '09:52:01 AM', '3', '0', '20110107095201zn4Z2pt9CRiM80UxbkqGcwjdorfBlA');
INSERT INTO `t_user` VALUES ('1069', '&#2476;&#2494;&#2463;&#2474;&#2494;&#2480;', '01811002021', 'batpar', '990010', 'ti.tazul@yahoo.com', '119.30.38.81', '1', '01/07/2011', '11:32:54 AM', '3', '20110430111014', '20110107113254GW5SKNxQaL1ehlw9g8DnyVkb3qF2EC');
INSERT INTO `t_user` VALUES ('1070', 'Baraka', '123456', 'Baraka', '00XYZ7u699', 'baraka@nonude-teen.com', '84.23.34.227', '0', '01/07/2011', '06:34:33 PM', '3', '0', '20110107063433vyJP1eKAp9D36NZG2cCaj4MkdXWgqF');
INSERT INTO `t_user` VALUES ('1071', 'গীটার', '+8801911926645', 'guitar', '028029', 'musfiqurpial@yahoo.com', '113.21.231.66', '1', '01/09/2011', '02:11:36 AM', '3', '20110501203248', '20110109021136n4XaLbEtNZ2BJSszm5TyDjlYpUd908');
INSERT INTO `t_user` VALUES ('1072', 'চাঁটগাইয়া পোলা', '01913222693', 'majidblog', '021060419', 'majid@abulkhairgroup.com', '119.18.145.131', '1', '01/09/2011', '03:53:54 AM', '3', '20110109164217', '20110109035354zELe5mPHMbqa4Rhrcu8BSsdovK0Uwk');
INSERT INTO `t_user` VALUES ('1073', 'জনি', '01924478069', 'jony88bd@gmail.com', 'gp01710467822', 'jony88bd@gmail.com', '117.18.231.28', '0', '01/09/2011', '09:37:06 AM', '3', '0', '20110109093706bogSs803peZ2aFDMGfxz4vEYLkRw1X');
INSERT INTO `t_user` VALUES ('1074', 'ক্লিকটুএসইও', '01913513666', 'clicktoseo', 'G@dhi3871', 'clicktoseo@gmail.com', '180.234.25.181', '1', '01/09/2011', '12:05:32 PM', '3', '20110110003300', '20110109120532w7e5hqV68xgMYPfCDFGUdLspSkcaTl');
INSERT INTO `t_user` VALUES ('1075', 'মুস্তাফিজ', '01716179047', 'mustaafiz', '750545', 'mustaafiz13@gmail.com', '203.223.94.167', '1', '01/09/2011', '02:19:57 PM', '3', '20110110035505', '20110109021957aWwU3BMidb1DGeNCEfjmhn7pSryqtk');
INSERT INTO `t_user` VALUES ('1076', 'মাহমুদ জনি্', '01714655140', 'joymahmud', 'gp01710467822', 'jony88bd@gmail.com', '117.18.231.4', '1', '01/10/2011', '09:28:45 AM', '3', '20110110215432', '2011011009284547WyB0DTc9gVL5FZAdv6iQJNmEPRYU');
INSERT INTO `t_user` VALUES ('1077', 'ঋমিম', '01716816148', 'HRimi', 'MEHENAZ', 'hrimi20@yahoo.com', '119.30.39.89', '0', '01/11/2011', '02:04:07 AM', '3', '0', '20110111020407ApjTlDhHqKtBboE0afJY6vPuFVkweQ');
INSERT INTO `t_user` VALUES ('1078', 'ঋমি', '01716816148', 'Hrimi Karim', 'MEHENAZ', 'hrimi20@yahoo.com', '119.30.39.89', '1', '01/11/2011', '02:17:50 AM', '3', '20110213130027', '20110111021750zsmdt0HV2ZJp1cuT9EGfqU3bLwy7rC');
INSERT INTO `t_user` VALUES ('1079', 'নীলকাব্য', '01756211721', 'numan', '87654321', 'www.numan.tvi@gmail.com', '203.223.94.158', '0', '01/11/2011', '03:47:00 AM', '3', '0', '20110111034700Zq2mDTya4wCzX0PvrYbFNMuVlx9Qci');
INSERT INTO `t_user` VALUES ('1080', 'Neera', '01740-635135', 'Shikdar Waliuzzaman', '641075', 'rinqumagura@yahoo.com', '202.56.7.170', '1', '01/12/2011', '03:26:19 AM', '3', '0', '20110112032619VrHFMqRzKeBY5QJkG4gycXuboh9apP');
INSERT INTO `t_user` VALUES ('1081', 'নীরা', '01740-635135', 'Rinku', '641075', 'rinqumagura@yahoo.com', '202.56.7.170', '1', '01/12/2011', '03:30:14 AM', '3', '20110402193423', '20110112033014qgwD5QCebyfFBaovi03rl71ZpHUtPE');
INSERT INTO `t_user` VALUES ('1082', 'প্রান্তর', '01113777692', 'nabil', '555555', 'nabil_01913097692@yahoo.com', '180.234.34.157', '1', '01/12/2011', '06:26:52 AM', '3', '20110112184046', '20110112062652wSKiRm7acspxbCyPvQ2H4Nz0AoE3dk');
INSERT INTO `t_user` VALUES ('1083', 'হেলাল এম রহমান', '01716861676', 'helal', 'helal', 'opestid@gmail.com', '117.18.231.8', '1', '01/12/2011', '06:40:25 AM', '3', '20110314135138', '20110112064025hCof9iuXpAKyjn26VSr5bdZvHleLNg');
INSERT INTO `t_user` VALUES ('1084', 'ফাহিম আহমদ', '000000000000000000', 'fahimhappy', 'sultanpu', 'fahim_idd@yahoo.com', '195.229.242.62', '1', '01/13/2011', '12:54:23 AM', '3', '20110331201745', '20110113125423qb6ki1PD8WFzG3phorenHUgNulSJmK');
INSERT INTO `t_user` VALUES ('1085', 'elias', '8801675438140', 'elias', '123456', 'elias_ban@yahoo.com', '180.211.217.135', '1', '01/13/2011', '04:16:48 AM', '3', '0', '20110113041648gSBUX9Znms5WPutrbdQDH3opyNzJeR');
INSERT INTO `t_user` VALUES ('1086', 'নিলয়-নিলাভ', '+971554159569', 'niloynilav', 'maafatima', 'niloynilav@live.com', '86.96.228.86', '1', '01/13/2011', '07:16:54 AM', '3', '20110113192205', '20110113071654GfDy3iHBXWL9AwJSTY7gEFz8UbNx0c');
INSERT INTO `t_user` VALUES ('1087', 'chenabalok', '01520083802', 'chenabalok', '01919183158', 'fun12kom@gmail.com', '122.102.35.78', '1', '01/13/2011', '09:56:28 AM', '3', '20110309022326', '20110113095628Rz91vNseBwnpa7b4yGQfWT3dlFi5SH');
INSERT INTO `t_user` VALUES ('1088', 'যুক্তিমনা', '০১৫২০০১৪৫৬১', 'zuktimona', '01710172174', 'zuktimona@gmail.com', '122.102.35.78', '1', '01/14/2011', '04:15:57 AM', '3', '20110422202620', '20110114041558gCa7uLbid5Msl9vKztQZEG4PefUWDw');
INSERT INTO `t_user` VALUES ('1089', 'hasan', '+966552281230', 'c0millar_hasan', 'hasan1230', 'tree_tree45@yahoo.com', '188.50.2.224', '0', '01/14/2011', '11:15:40 AM', '3', '0', '20110114111540WTRlc6QYkj9DxCus4AEa7nVi8oSBNf');
INSERT INTO `t_user` VALUES ('1090', 'nazrul islam', '971503251190', 'banglayouth', 'pyaremohan777', 'banglayouth@yahoo.com', '86.97.10.30', '1', '01/14/2011', '02:09:27 PM', '3', '20110218162106', '20110114020927E3AgCpkPDVYZevLqKMhSjQobuFlf2J');
INSERT INTO `t_user` VALUES ('1091', 'সাপুড়ে', '00447908022918', 'a1pavel', 'swordfish00', 'a1pavel@live.co.uk', '86.21.93.154', '1', '01/14/2011', '02:16:05 PM', '3', '20110121070402', '20110114021605t4BUR1p76lJ2dqQsfmziZHywDWcECh');
INSERT INTO `t_user` VALUES ('1092', 'lirmignilkish', '123456', 'lirmignilkish', 'yfrjdfkmyz1', 'cybaloh@gmail.com', '46.147.8.20', '0', '01/15/2011', '02:02:45 AM', '3', '0', '20110115020245ZB63KRPmY8FLkScog45HhanGD1qxyp');
INSERT INTO `t_user` VALUES ('1093', 'এম,এ,আই, পাভেল', '+8801912860181', 'maipavel', 'kv-2199m5j', 'maipavel.bd@gmail.com', '203.223.94.144', '1', '01/15/2011', '01:25:58 PM', '3', '20110116130437', '20110115012558SEipJwtbVfF5GmLTPloDC41kyqUr9n');
INSERT INTO `t_user` VALUES ('1094', 'kamruzzaman', '0000000000000000', 'kam', '1234', 'kamruzzamanrubel@gmail.com', '180.234.75.224', '1', '01/15/2011', '11:41:20 PM', '3', '20110116114313', '20110115114120a4LEyq6ubj3UNwKA0cHsnQxJ81tlBX');
INSERT INTO `t_user` VALUES ('1095', 'দিদার কক্স', '০১৭১৭৫৫৮৮৩৩', 'didarcox', '018833544', 'didarcox.moula@gmail.com', '180.149.8.18', '1', '01/16/2011', '04:38:50 AM', '3', '20110121204942', '20110116043850monW2PwMya3YgkcVi6AzLjrFU01qKs');
INSERT INTO `t_user` VALUES ('1096', 'তায়েফ আহমদ', '01716861676', 't', 't', 'jaherrahman@gmail.com', '117.18.231.1', '1', '01/17/2011', '08:47:11 AM', '3', '20110121193812', '20110117084711XkNWiAJ2x40dcCP3HeUqVZrf1sS9o6');
INSERT INTO `t_user` VALUES ('1097', 'Cricket Live Score', '01987878990', 'f', 'ghijk', 'tarek.japan@gmail.com', '180.234.57.67', '1', '01/17/2011', '09:20:12 AM', '3', '20110313220835', '201101170920124v6GJ2K8dZYUHLupAXiE3WhwN0yRDj');
INSERT INTO `t_user` VALUES ('1098', 'ইঞ্জিনিয়ার মোঃ সাইফুল ইসলাম সোহাগ', '01913893703', 'engrsaiful', 'ashflower', 'saiful_13@ymail.com', '202.79.17.190', '0', '01/18/2011', '02:20:10 PM', '3', '0', '201101180220109X5vdfzrWmNk6CpGSoqZacTJhF4jlg');
INSERT INTO `t_user` VALUES ('1099', 'স্বাধীনতা', '+801717129153', 'FARID', '221277', 'f77syl@hotmail.com', '202.56.7.164', '1', '01/18/2011', '03:42:00 PM', '3', '20110218024225', '20110118034200rTdyqepk7w2fj49NnMaR6mYGEJxPLC');
INSERT INTO `t_user` VALUES ('1100', 'যাযাবর', '01716861676', 'jajabor', 'jajabor', 'opest2010@gmail.com', '117.18.231.1', '1', '01/20/2011', '05:03:00 AM', '3', '20110304224235', '2011012005030030RAyKMmJ4PbtLco6Cnw28F9HGTiaB');
INSERT INTO `t_user` VALUES ('1101', 'mithel', '01672318840', 'mithel', '648435', 'mithel0013@yahoo.com', '180.234.48.174', '1', '01/21/2011', '07:37:26 AM', '3', '20110228201026', '20110121073726RvJLh5KuVBkTsQMHeGfl46tAyjn8i7');
INSERT INTO `t_user` VALUES ('1102', 'দুরন্ত', '0171686676', 'jr1', '102030', 'opest2010@gmail.com', '117.18.231.29', '1', '01/21/2011', '09:49:55 AM', '3', '20110402123912', '20110121094955s7VhiDUT3LupqnWwQF0rHX1zKaCydZ');
INSERT INTO `t_user` VALUES ('1103', 'Maruf Khan', '0171686676', 'jr2', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:02:50 AM', '3', '20110402124119', '20110121100251RXb6jUaM9GpACViYLofnZdv1x5qJPB');
INSERT INTO `t_user` VALUES ('1104', 'Guest 18', '0171686676', 'jr3', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:05:01 AM', '3', '20110402124319', '20110121100501ugvE01dlV3qGf9NaUBQYnAjxzybKk5');
INSERT INTO `t_user` VALUES ('1105', 'T A Adison', '0171686676', 'jr4', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:06:37 AM', '3', '20110402124420', '20110121100637stj7wNZBDiu1VM8od0cU2hQKyeC9gf');
INSERT INTO `t_user` VALUES ('1106', 'গ্রাম্য পোলা ৫', '0171686676', 'jr5', '102030', 'opest2010@gmail.com', '117.18.231.9', '0', '01/21/2011', '10:09:11 AM', '3', '0', '20110121100911XpPC4A175sVWyHfKaG06Dr9dhcRnmL');
INSERT INTO `t_user` VALUES ('1107', 'বিপ্লবী', '0171686676', 'jr6', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:09:57 AM', '3', '20110402124503', '201101211009578VrtfKiRjxE6b9scgNmvTnQlL1YCqG');
INSERT INTO `t_user` VALUES ('1108', 'এস এম রায়হান', '0171686676', 'jr7', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:12:32 AM', '3', '20110402124603', '20110121101232Q5d7b3lwox0DzpHsAB2Nemk4fE6WPT');
INSERT INTO `t_user` VALUES ('1109', 'মিস্টার বিন', '0171686676', 'jr8', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:18:59 AM', '3', '20110402124638', '20110121101859HojUWuTs16CmedhE3YRD4FlkNGrV0b');
INSERT INTO `t_user` VALUES ('1110', 'দেওয়ান সাঈদ', '0171686676', 'jr9', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:30:59 AM', '3', '20110402124741', '20110121103059CirLYmwqyVasgPBo9J51K3e8ptjRZU');
INSERT INTO `t_user` VALUES ('1111', 'মাইলস্টোন', '0171686676', 'jr10', '102030', 'opest2010@gmail.com', '117.18.231.9', '1', '01/21/2011', '10:35:59 AM', '3', '20110402124848', '20110121103559kUmDn2fsdAQgTX1E3q6ji78lcrL05Y');
INSERT INTO `t_user` VALUES ('1193', 'আরিফুল ইসলাম সনেট', '+8801920435166', 'sonnet01', 'fhfdjDF54Hg', 'aisonnet01@gmail.com', '203.223.95.68', '1', '01/26/2011', '11:46:52 AM', '3', '20110127000011', '20110126114652xV4DE59fqPRW7rkTAJLK02hZBnC3bF');
INSERT INTO `t_user` VALUES ('1112', 'nastameya', '028764522', 'nm', '~!@#$$', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '10:50:31 AM', '3', '20110303153242', '20110121105031vTfLVJ7KSB2npMQdXC3sx0uYlAazUD');
INSERT INTO `t_user` VALUES ('1113', 'mamavagna', '03165345', 'nma', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '10:53:40 AM', '3', '20110314134327', '20110121105340Pqpse8JGSywAgQ74r9ThDtZW5oH2EM');
INSERT INTO `t_user` VALUES ('1114', 'kalamiya', '028753452', 'nmb', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '10:57:04 AM', '3', '20110314134819', '20110121105704DcoZ96Q5pNM3bTKWwEuySifz1A7lGX');
INSERT INTO `t_user` VALUES ('1115', 'mamojan', '0316542984', 'nmc', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '10:58:39 AM', '3', '20110302213537', '20110121105839Zu27sLg3Dok9VyMC5QdXceAtKpFvJa');
INSERT INTO `t_user` VALUES ('1116', 'ammijan', '029874532', 'nmd', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '10:59:59 AM', '3', '20110302213644', '20110121105959tYnAdcGDxrfC9g2Sse5KB8bopN3mZV');
INSERT INTO `t_user` VALUES ('1117', 'baravya', '029432653', 'nme', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:02:51 AM', '3', '20110302231303', '20110121110251Ss8VUT7ekMjbrlJQYqt6PFmi9RzCLu');
INSERT INTO `t_user` VALUES ('1118', 'baravon', '028654329', 'nmf', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:04:53 AM', '3', '20110302232832', '20110121110453x0Loq5BGzwkKuyPnRSYMbHQcV83m96');
INSERT INTO `t_user` VALUES ('1119', 'lajjatunesa', '0287628762', 'nmg', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:06:45 AM', '3', '20110303115327', '201101211106456iuW5B4xEdhLAvJkNm1brCeSHjczRZ');
INSERT INTO `t_user` VALUES ('1120', 'হ্নীলার বাঁধন ২', '01199282726', 'hbm1', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:07:32 AM', '3', '20110314141219', '20110121110732wfNqK7e9CGym0Pt4hZd8lDkzFrAW2u');
INSERT INTO `t_user` VALUES ('1121', 'হ্নীলার বাঁধন 3', '01199282727', 'hbm3', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:08:17 AM', '3', '20110303090757', '201101211108173ysz1NaYDZQg6F7oX8MkwhVjGHivTU');
INSERT INTO `t_user` VALUES ('1122', 'হ্নীলার বাঁধন 4', '01199282727', 'hbm4', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:08:41 AM', '3', '0', '20110121110841Z2LymuKdYeU6Nwr1S8PHfxqpGAn57M');
INSERT INTO `t_user` VALUES ('1123', 'হ্নীলার বাঁধন 5', '01199282727', 'hbm5', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:09:06 AM', '3', '20110303090959', '20110121110906dix7AZLYqlSjNuUVfRX3nrosw142bz');
INSERT INTO `t_user` VALUES ('1124', 'হ্নীলার বাঁধন 6', '01199282727', 'hbm6', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:09:54 AM', '3', '0', '20110121110954pEqaxyZjUC2udFeAS0g4KNwf3TYMh6');
INSERT INTO `t_user` VALUES ('1125', 'হ্নীলার বাঁধন 7', '01199282727', 'hbm7', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:10:25 AM', '3', '0', '20110121111025KwTv0Ar8F6GmzXqtRNWdxCf5DUgYLH');
INSERT INTO `t_user` VALUES ('1126', 'হ্নীলার বাঁধন 8', '01199282727', 'hbm8', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:10:49 AM', '3', '0', '20110121111049h8EsiwtP4pym67B5Sj0TLzQdVNM1c3');
INSERT INTO `t_user` VALUES ('1127', 'হ্নীলার বাঁধন 9', '01199282727', 'hbm9', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:11:10 AM', '3', '0', '20110121111110FL8UCzYMl537TndVouDXPsvxgcHteZ');
INSERT INTO `t_user` VALUES ('1128', 'kalababu', '0316763875', 'nmh', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:11:43 AM', '3', '20110303115622', '20110121111143lqJKZkcyos9g42fRAb8rBWw3MXQF6Y');
INSERT INTO `t_user` VALUES ('1129', 'Jesmin', '01199282727', 'hbm10', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.17', '1', '01/21/2011', '11:11:49 AM', '3', '0', '20110121111149y3YBxuKVstTAg2nZwvDNb9UL0hkmpc');
INSERT INTO `t_user` VALUES ('1130', 'kottarbacca', '028763982', 'nmi', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:13:09 AM', '3', '20110303115831', '20110121111309i9gxLReGs4Zj5kHhSJQqMXUY6wafWv');
INSERT INTO `t_user` VALUES ('1131', 'babarbu', '0287653782', 'nmj', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '11:59:06 AM', '3', '20110303120007', '20110121115906rlViQ7GfuZYnBDTw1c2NUgjHWCt35F');
INSERT INTO `t_user` VALUES ('1132', 'taltoboyn', '0316234908', 'nmk', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:05:32 PM', '3', '20110303121915', '2011012112053240qmBheYKQDoGZcMC9gp3asi7EXV8y');
INSERT INTO `t_user` VALUES ('1133', 'premikkaku', '0292753406', 'nml', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:07:16 PM', '3', '20110303140901', '20110121120716yMYepl9FswgK7d16fZWvG2u5HqQrz4');
INSERT INTO `t_user` VALUES ('1134', 'bessamya', '02981245768', 'nmm', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:08:19 PM', '3', '20110303141009', '201101211208194UfH0PxbGkieE8X1v26zKCJoj3lwmn');
INSERT INTO `t_user` VALUES ('1135', 'dostonari', '0316230936', 'nmn', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:09:38 PM', '3', '20110303150813', '20110121120938Zi4l51NKFMvUadWo90gSQwxGLqjfXA');
INSERT INTO `t_user` VALUES ('1136', 'valobasakori', '02915467834', 'nmo', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:11:28 PM', '3', '20110303151101', '20110121121128FDHxcSVd3tzym826fipXTNBCr1GElg');
INSERT INTO `t_user` VALUES ('1137', 'valobasar pran', '02810432756', 'nmp', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:14:27 PM', '3', '20110303151217', '20110121121427jeGVSxk72W5UKmwvhu6MXTyNJ1BQ8f');
INSERT INTO `t_user` VALUES ('1138', 'hajarpola', '02820945637', 'nmq', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:17:23 PM', '3', '20110303151418', '20110121121723ykfLMmEtTpv7YiAu5oDCaxSwHzb4Q1');
INSERT INTO `t_user` VALUES ('1139', 'sagurpola', '026438976', 'nmr', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:20:37 PM', '3', '20110303152725', '201101211220371rXYJSUNLniBAsobTPRG6fK8kFhu9t');
INSERT INTO `t_user` VALUES ('1140', 'soressor', '02954378234', 'nms', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:23:57 PM', '3', '20110303155126', '20110121122357P3zw51ngatEAZuWDC68SGmbNHsoMBR');
INSERT INTO `t_user` VALUES ('1141', 'saplapol', '02905431973', 'nmt', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:25:21 PM', '3', '20110303160608', '20110121122521mLt81kB4ErjvC7npWoRVTJx3w5g2zS');
INSERT INTO `t_user` VALUES ('1142', 'paddapol', '027325346', 'nmu', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:26:42 PM', '3', '20110303162637', '20110121122642iXTNZbUg6k1eSBDqtaHlycAQoxz8p5');
INSERT INTO `t_user` VALUES ('1143', 'surjamoki', '027327832', 'nmv', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:34:44 PM', '3', '20110303162800', '20110121123444HrVbtBSQs1J5iRX6eWqxAgh3zm89fZ');
INSERT INTO `t_user` VALUES ('1144', 'dhaka420', '028761437', 'nmw', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:39:19 PM', '3', '20110303162928', '20110121123919FG3AR0fJSnvWZjdTksXL41p7c28rN6');
INSERT INTO `t_user` VALUES ('1145', 'banglarmya', '0292406356', 'nmx', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:40:31 PM', '3', '20110303163221', '20110121124031LyYUQE7gw52Mozt18ZkirCmvJsTdlj');
INSERT INTO `t_user` VALUES ('1146', 'bessajergan', '028934765', 'nmy', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:41:48 PM', '3', '20110303163414', '20110121124148s6E0Mkt2857PopaWhATnYweVlLJfSz');
INSERT INTO `t_user` VALUES ('1147', 'ভাল মেয়ে', '0289342012', 'nmz', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.5', '1', '01/21/2011', '12:43:07 PM', '3', '20110303163637', '20110121124307JtAiTUuV3rwp8HDqXelhE174naF62K');
INSERT INTO `t_user` VALUES ('1148', 'নবাগত', '0171686676', 'jr11', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:35:50 PM', '3', '20110402184624', '20110121093550mE5tsdN7TKnXUC91cQZVajSbzfo2kM');
INSERT INTO `t_user` VALUES ('1149', 'হাদী মীর', '0171686676', 'jr12', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:37:24 PM', '3', '20110402184706', '20110121093724jfRvVxEMkB4HdNC6a0iAcZPt7Q3JLg');
INSERT INTO `t_user` VALUES ('1176', 'BANGLA BULU', '01712528418', 'JANE ALAM', '876543210', 'jalamtnt@gmail.com', '180.234.38.128', '1', '01/23/2011', '12:26:34 AM', '3', '20110124183001', '20110123122634RZdJ8cXrgutDKo2NxC50VzBE9fynwM');
INSERT INTO `t_user` VALUES ('1150', 'Ahmed Kamal', '0171686676', 'jr13', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:38:24 PM', '3', '20110402184803', '20110121093824HsK5lX3CqoRA8TibZaSPdGpmNvtLgD');
INSERT INTO `t_user` VALUES ('1151', 'অজন্তা তাজরীন', '0171686676', 'jr14', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:39:54 PM', '3', '20110402184847', '20110121093954wjv0ilZu43bFNcKJ71G8TrWathxCq6');
INSERT INTO `t_user` VALUES ('1152', 'ওয়ালী উল্লাহ', '0171686676', 'jr15', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:42:04 PM', '3', '20110302215050', '20110121094204ZrdPf8QekAqbtD4FWjlG3SXmpM7Hwh');
INSERT INTO `t_user` VALUES ('1153', 'Robin Milford', '0171686676', 'jr16', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:46:26 PM', '3', '20110402184957', '20110121094626KWdF4DcvhLQuZS7fVXzB83o1mJqGHA');
INSERT INTO `t_user` VALUES ('1154', 'ঊশৃংখল ঝড়কন্যা', '01199282727', 'hbm11', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:47:11 PM', '3', '0', '20110121094711tRJcEMldVgN2GvWBTYquF6hXrs5L7x');
INSERT INTO `t_user` VALUES ('1155', 'আতাউর রহমান', '01199282726', 'hbm12', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:47:11 PM', '3', '0', '20110121094711ph6M8rANyVTmd0ZeP9tYE4X7CJU5Qg');
INSERT INTO `t_user` VALUES ('1156', 'তনিমা হামিদ', '01199282727', 'hbm13', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:47:11 PM', '3', '0', '201101210947114x7Qm58jFvLXdHKlGfNJqe0Sa6nRs3');
INSERT INTO `t_user` VALUES ('1157', 'অরিল', '0171686676', 'jr17', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:47:25 PM', '3', '20110302215640', '20110121094725XowcKhNCdLqpuMgzV4E7Hi5DxvBktP');
INSERT INTO `t_user` VALUES ('1175', 'swopon', '+88001729915727', 'swopon', '0171557174344', 'sadiaislam63@yahoo.com', '202.56.7.163', '1', '01/22/2011', '08:50:50 AM', '3', '20110316170533', '20110122085050NDZ13HkF7hUa0jwoEvutCilWdrnPTK');
INSERT INTO `t_user` VALUES ('1158', 'তামান্না', '01199282727', 'hbm16', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:48:33 PM', '3', '0', '20110121094833t9RaDrVcMUfF2EwZlsj6b1PHQ0Ny8u');
INSERT INTO `t_user` VALUES ('1159', 'শাহরিন', '01199282727', 'hbm15', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:48:41 PM', '3', '0', '20110121094841iH9VKx0UgePNSJr6qc1hlvQYLZ8fyd');
INSERT INTO `t_user` VALUES ('1160', 'অহনা', '01199282727', 'hbm14', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:48:45 PM', '3', '0', '20110121094845Q7RvskgtLFxhwbjri5Tq8JD6pVHzum');
INSERT INTO `t_user` VALUES ('1161', 'আইরিন সুলতানা', '0171686676', 'heelarbadhon', '১১২২৩৩', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:49:19 PM', '3', '20110122095803', '20110121094919ySgCm7FBs5Z3dchWApn1ir6fTHRQVU');
INSERT INTO `t_user` VALUES ('1162', 'Faria', '01199282727', 'hbm17', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:49:31 PM', '3', '0', '20110121094931Vs87TbiC2ryuGUtFnEWNXgwDRJMvS9');
INSERT INTO `t_user` VALUES ('1163', 'নওশিন', '01199282727', 'hbm18', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:49:47 PM', '3', '0', '20110121094947iJs9Qx78XK4dZy5ghuWCl3VBNpeGqf');
INSERT INTO `t_user` VALUES ('1164', 'হ্নীলার বাঁধন 19', '01199282726', 'hbm19', 'sumon915404', 'hneelarbnadhon@yahoo.com', '117.18.229.30', '0', '01/21/2011', '09:50:06 PM', '3', '0', '20110121095006twDfvU0p6sSK8rEmNPX1oileCR2G5z');
INSERT INTO `t_user` VALUES ('1165', 'New Bush', '0171686676', 'jr18', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:50:36 PM', '3', '20110402185029', '2011012109503645KveunVB9h2QsGNR8w1m3SLTykxfp');
INSERT INTO `t_user` VALUES ('1173', 'Khorkuto', '01722962343', 'aktarul', '142542', 'aktar_it@yahoo.com', '83.142.228.14', '1', '01/22/2011', '05:30:15 AM', '3', '20110203195937', '201101220530151zPEbZkclvNwmFK7U2DaQuiC4HteV6');
INSERT INTO `t_user` VALUES ('1166', 'জানা', '0171686676', 'jr19', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:52:12 PM', '3', '20110402185121', '20110121095212JBSv4DfMjhdGiPzQemyYsC8lEpbHu0');
INSERT INTO `t_user` VALUES ('1167', 'ত্রিভুজ', '01199282726', 'jr420', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '09:55:25 PM', '3', '0', '20110121095525t9DNdTlzYj120HicZ3sv5eKp8EGyBm');
INSERT INTO `t_user` VALUES ('1168', 'মনির হাসান', '0171686676', 'jr20', '102030', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '09:59:30 PM', '3', '20110402185154', '20110121095930872wrnDUoRpkKeX9Sv0NiT4Z53bVCx');
INSERT INTO `t_user` VALUES ('1169', 'Sarah', '0171686676', 'heelarbadhon1', '112233', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '10:03:05 PM', '3', '20110122110944', '20110121100305pfZ7qokUiVB819DjX32KP4shH5dJxL');
INSERT INTO `t_user` VALUES ('1170', 'Pavel', '0171686676', 'jaherrahman1', '16861677', 'opest2010@gmail.com', '117.18.231.24', '1', '01/21/2011', '10:04:14 PM', '3', '0', '20110121100414kTWzEMsmhrgJwRBSCaL3uG8FYZvq0c');
INSERT INTO `t_user` VALUES ('1171', 'গ্রাম্য পোলাও', '01199282727', 'jr421', 'sumon915404', 'opest2010@yahoo.com', '117.18.229.30', '1', '01/21/2011', '10:12:50 PM', '3', '20110122105237', '201101211012500uNce2inm87SvzBkFZJfARjKYt5gEq');
INSERT INTO `t_user` VALUES ('1172', 'eisenheim', '01723626925', 'eisenheim', 'fio6627', 'philasuf@gmail.com', '202.134.8.93', '1', '01/22/2011', '02:20:56 AM', '3', '20110208115912', '201101220220565jS9NrK74Y1ATetJn2HcDQUEZ8Vyfs');
INSERT INTO `t_user` VALUES ('1174', 'nizam', '01673617483', 'nizam', '617483n', 'nizam.uddi@yahoo.com', '180.234.138.73', '1', '01/22/2011', '07:11:53 AM', '3', '20110205205519', '20110122071153bAYzyMHrkKZV9C8B6d5wx2NEGgvnJL');
INSERT INTO `t_user` VALUES ('1179', 'Abdul Hannan', '0096599147367', 'hannan', '99147367', 'hannankw@yahoo.com', '178.161.103.213', '0', '01/24/2011', '03:14:31 AM', '3', '0', '20110124031431jFEhzKG6XTiWf0BCkmybvdqZwML2DP');
INSERT INTO `t_user` VALUES ('1177', 'কোলা ব্যাঙ', '01199282726', 'kolabang', 'sumon915404', 'opest2010@yahoo.com', '117.18.231.16', '1', '01/23/2011', '09:59:55 AM', '3', '20110123221605', '20110123095955ThJjc0E6k4AYVRoxC3lauB2szX5ZdP');
INSERT INTO `t_user` VALUES ('1178', 'raisul', '+8801911223326', 'raisul', '792931', 'raisul_jsr@yahoo.com', '119.30.38.86', '1', '01/23/2011', '12:01:54 PM', '3', '0', '20110123120154WMlo7HR9mxSJtUhFGgde4kBYC3ZjPs');
INSERT INTO `t_user` VALUES ('1180', 'মাজহার', '00966543030485', 'Mazhar', '0564188485', 'mazhar_happy@yahoo.com', '188.52.80.78', '1', '01/24/2011', '03:14:34 AM', '3', '20110308051329', '20110124031435rZ2MsDyvfXStaFclYVRQjq4wn7xNPW');
INSERT INTO `t_user` VALUES ('1181', 'ShohanRedwan', '8801747340959', 'ShohanRedwan', 'shohan', 'www.hotathbreak@yahoo.com', '64.255.180.169', '0', '01/24/2011', '03:15:32 AM', '3', '0', '201101240315325fvAnco3stajg7SwDHJVyhGCmLkpNP');
INSERT INTO `t_user` VALUES ('1182', 'রঙের মানুষ রঙ্গীলা', '07952698746', 'rangeela', '0786bismillah', 'rongeela@hotmail.com', '90.196.2.49', '1', '01/24/2011', '05:31:18 AM', '3', '20110124180733', '2011012405311828QoANY0WyLRgVZpwhM3qdPKzsc1Hi');
INSERT INTO `t_user` VALUES ('1183', 'ataur.0505@yahoo.com', '01719165591', 'md.ataur rahman', '0171916591', 'ataur.0505@yahoo.com', '180.234.25.1', '1', '01/24/2011', '09:54:08 AM', '3', '20110126223250', '201101240954080DlC2rpnawbJcqBvoTkdAN6GXLmYsP');
INSERT INTO `t_user` VALUES ('1184', 'Aporupa', '00966503557112', 'shoowrob', '44445555', 'shoowrob@gmail.com', '188.52.80.78', '1', '01/24/2011', '02:19:37 PM', '3', '20110501091253', '20110124021937yQbAu6UkqGxw0DSBzjoZpJEHtMsmfn');
INSERT INTO `t_user` VALUES ('1185', 'ধ্রুবনীল', '01723291150', 'dhruboonil', '1234567890', 'medhruboo@gmail.com', '119.30.34.13', '1', '01/25/2011', '04:02:52 AM', '3', '20110306110729', '20110125040252X58CGjFKkZfH2y7RbPmUzLp6QhgqAw');
INSERT INTO `t_user` VALUES ('1186', 'porosh', '01744575191', 'porosh', 'porosh', 'porosh020285@gmail.com', '119.30.34.9', '0', '01/25/2011', '09:05:40 AM', '3', '0', '20110125090540l350Rymj7toSGeg2KNhrv8WdazTXnq');
INSERT INTO `t_user` VALUES ('1187', 'akram', '01918991922', 'akram', 'hossain', 'maroof35309@gmail.com', '119.30.34.2', '0', '01/25/2011', '10:59:55 AM', '3', '0', '201101251059558ng9t6azkx41clWJbpVyjGXhefQDT2');
INSERT INTO `t_user` VALUES ('1188', 'misbah', '01911744382', 'misbah', '01911744382', 'uddin.misbah15@yahoo.com', '117.18.231.17', '0', '01/25/2011', '11:50:28 AM', '3', '0', '201101251150281uZ2BK4bmLfRd7D8wtjvoNkiAn9HSY');
INSERT INTO `t_user` VALUES ('1189', 'মিছবাহ', '01674855845', 'misbah uddin', 'misbah', 'uddin.misbah15@yahoo.com', '117.18.231.17', '0', '01/25/2011', '12:00:54 PM', '3', '0', '20110125120054t4BTZVnWc9UAuk63Slgo8r5zEFCDmP');
INSERT INTO `t_user` VALUES ('1190', 'ivRyC', '01716006200', 'mhraju83happy', 'mimama83', 'mh_raju83@yahoo.com', '119.30.34.11', '0', '01/25/2011', '01:06:29 PM', '3', '0', '20110125010629lWsoYHbtqFRf4nkvN8CaDuX7yrpST2');
INSERT INTO `t_user` VALUES ('1191', 'এমেলিয়া', '01817639098', 'sayedsakarob', 'sayed72933', 'sayedsakarob@ymail.com', '180.234.38.85', '1', '01/26/2011', '03:37:40 AM', '3', '20110204211806', '20110126033740sPtVq1SgZxUCG7jvTKaY4zwukFyn8L');
INSERT INTO `t_user` VALUES ('1192', 'moslem', '01819361240', 'moslem.babu', 'babu116677', 'moslem.babu@gmail.com', '119.30.34.7', '1', '01/26/2011', '06:16:29 AM', '3', '20110315015102', '20110126061629s189aBCxEM2QGNhPd0RHmoUXK7uzZp');
INSERT INTO `t_user` VALUES ('1194', 'অন্ধকারের যাত্রী', '01813174334', 'Tauhid', 'tauhidul', 'orko_mti@yahoo.com', '123.49.4.210', '0', '01/27/2011', '01:41:41 PM', '3', '0', '20110127014141aCDYyTqLopPSgGfNcRXiwd0zr35Wl9');
INSERT INTO `t_user` VALUES ('1195', 'এস  ইসলাম', '01715495188', 'sfk505', '123123', 'sfk505@yahoo.com', '119.30.39.74', '1', '01/28/2011', '03:24:55 AM', '3', '20110328223902', '20110128032455UNZc5aujBn1CfbQi72xVkoqFMg3GvJ');
INSERT INTO `t_user` VALUES ('1196', 'akritogga', '01675001995', 'akritogga_2011', '257002', 'bashir_khan365@yahoo.com', '117.18.231.20', '1', '01/28/2011', '10:33:03 AM', '3', '20110324203146', '20110128103303NLX28libQkhPmSZ9Tr3Jog47AxUt1e');
INSERT INTO `t_user` VALUES ('1197', 'monir786', '0556979564', 'Md Monir Hossain', '8846297', 'monir7585@yahoo.com', '195.229.236.221', '0', '01/28/2011', '03:16:03 PM', '3', '0', '20110128031603LdNv0cqTlGozDmPgMxZejQ2iRauJYr');
INSERT INTO `t_user` VALUES ('1198', 'monir khan', '0556979564', 'Monir786', '8846297', 'monir7585@yahoo.com', '195.229.236.221', '0', '01/28/2011', '03:18:14 PM', '3', '0', '20110128031814SPd2wBJNQgX7qbcvDACeFj9s1ztox6');
INSERT INTO `t_user` VALUES ('1199', 'মিজান', '+966535216680', 'dhaka86', 'bd0283256', 'my_blog_2011@yahoo.com', '188.55.108.222', '1', '01/29/2011', '12:43:14 AM', '3', '0', '20110129124315Psrw5GfCDYajt07gB1uvAniHmU9hMo');
INSERT INTO `t_user` VALUES ('1200', 'Ross308', '+966550626345', 'Ross308', '0501662548', 'soheel88@yahoo.com', '109.83.198.30', '0', '01/29/2011', '07:37:45 AM', '3', '0', '20110129073745sLzSNpvPFfWqhQaodXrRDtnwxkiMg5');
INSERT INTO `t_user` VALUES ('1201', 'hasib adi', '01675748330', 'hasib adi', '9866264', 'sahabuddinhasib@gmail.com', '180.234.73.104', '1', '01/30/2011', '10:24:56 AM', '3', '20110130223643', '20110130102456oq5sxeyNlSG0b4AThcp2FutkLaJdr8');
INSERT INTO `t_user` VALUES ('1202', 'আফসানা', '01675952483', 'Afsana Akhter', '56619979', 'afsanaornob@gmail.com', '202.126.122.134', '1', '01/30/2011', '12:50:03 PM', '3', '0', '201101301250037QS3JAmoPf1uvtMF6cG9dBLaHY2nEl');
INSERT INTO `t_user` VALUES ('1203', 'আবিল', '01925001007', 'abil', 'iamabil', 'abil.rbhs@gmail.com', '58.147.170.174', '1', '01/31/2011', '11:29:01 AM', '3', '20110131233358', '20110131112901xqERgQZjKsvfAeYBndMSPk8V9brUtw');
INSERT INTO `t_user` VALUES ('1204', 'মডারেটর @মডু', '01724728734', 'modo', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.18', '1', '01/31/2011', '01:47:06 PM', '3', '20110303154302', '20110131014706vPUt4XSW0g9TqJ7y3useZLkFlmYaxi');
INSERT INTO `t_user` VALUES ('1205', 'sharita', '01196107173', 'sharita', 'sharitafathema', 'sharita_seu@yahoo.com', '117.18.231.31', '1', '02/01/2011', '01:19:28 AM', '3', '0', '20110201011928tFzsXTCA6gimalb40dM1BjJUSnweqR');
INSERT INTO `t_user` VALUES ('1206', 'সৈয়দ হোসেন মাহমুদ', '01718303332', 'tuhin15', 'tuhin526021', 'shmt_15@yahoo.com', '123.200.11.3', '1', '02/01/2011', '02:52:11 AM', '3', '0', '20110201025211poMWUSlwX3b8cQ7sCHRrPaBJ5EnZjy');
INSERT INTO `t_user` VALUES ('1207', 'লোরক', '০১১০১০১০১০১৩', 'lorok', 'heroalamin', 'lorok_du@yahoo.com', '180.234.83.110', '1', '02/01/2011', '06:19:29 AM', '3', '20110504124818', '201102010619292r6Xmt5RMBvAE7npij3az4bQgfLNPx');
INSERT INTO `t_user` VALUES ('1208', 'স্পিক এশিয়া অনলাইন', '01199484746', 'speakasia', 'sumon915404', 'nur_cox83@yahoo.com', '117.18.231.31', '1', '02/02/2011', '12:54:20 PM', '3', '20110424171335', '20110202125420SUfRigt75qFZPW0ErXdNwVlpjLGy6b');
INSERT INTO `t_user` VALUES ('1209', 'চিনা বাদাম', '0000000000000000000', 'banglades', '0557019952', 'alfayezalamgir@yahoo.com', '86.96.228.86', '1', '02/03/2011', '02:30:05 AM', '3', '0', '201102030230056Miyv49d8uZVwnrePzjYSmTlHXa7NJ');
INSERT INTO `t_user` VALUES ('1210', 'বুলবুল আহমেদ', '01716297155', 'Bulbul', 'bushra', 'bulbul_bd_raj@yahoo.com', '203.112.215.134', '1', '02/03/2011', '04:29:38 AM', '3', '20110213004034', '20110203042938y9cwBiNWojdY40LvPFlG8HtXf7xaK2');
INSERT INTO `t_user` VALUES ('1211', 'জুন  123', '01711203320', 'june 123', 'june1969', 'salmaabid89@yahoo.com', '180.234.60.228', '0', '02/03/2011', '04:46:31 AM', '3', '0', '20110203044631mCtDkFB3byArwodgWi6q0h42KL1vX8');
INSERT INTO `t_user` VALUES ('1212', 'জুন১২', '01711203320', 'mahjabine', 'june1969', 'salmaabid89@yahoo.com', '180.234.60.228', '0', '02/03/2011', '04:48:06 AM', '3', '0', '20110203044807UBd0mXSvz8l4WGYMCEgQNpL6JqhjPt');
INSERT INTO `t_user` VALUES ('1213', 'খড়কুটো', '01722962343', 'Aktaul', 'blog142542tesha', 'aktar_it@hotmail.com', '27.131.13.5', '1', '02/03/2011', '08:05:20 AM', '3', '0', '20110203080520oTLgkjCvBhcuJXPQlnex15iNY9wUGp');
INSERT INTO `t_user` VALUES ('1214', 'সবুজ পাহাড়ের রাজা', '01829730490', 'kingofgreenhill', 'hsoapkaiuen85a6dd', 'aidbd2010@gmail.com', '180.149.1.254', '1', '02/03/2011', '10:26:32 AM', '3', '20110203223803', '20110203102632dufJbN3RsUBzG8i7ScCZ6xX4tr1vTg');
INSERT INTO `t_user` VALUES ('1215', 'এম মাহিম', '০১৮১২৬৩২৬০৪', 'mahim1', '090909', 'uktyteen@yahoo.com', '188.48.191.114', '0', '02/05/2011', '06:53:17 PM', '3', '0', '20110205065317GYkZ5rRgVtpn9PUhQJieAbxlcX02j7');
INSERT INTO `t_user` VALUES ('1216', 'এম ডি  মাহিম', '০১৮১২৬৩২৬০৪', 'm mahim', '090909', 'untyteen@yahoo.com', '188.48.191.114', '1', '02/05/2011', '06:57:17 PM', '3', '20110501165420', '20110205065717CBhF3j4dQklTEK0fmcGYuVb8woJMn7');
INSERT INTO `t_user` VALUES ('1217', 'হ্নীলার বন্ধন', '+8801716861676', 'hbondon', '16861677', 'hneelarbandon@gmail.com', '202.56.7.171', '1', '02/06/2011', '10:53:25 AM', '3', '20110208102257', '201102061053256x8ACESdbvToKqZg4PWJBY0irmfHUy');
INSERT INTO `t_user` VALUES ('1218', 'সানজিদা আফরিন নাবিলা', '+8801716861676', 'sanzida', '16861677', 'hneelarbandon@gmail.com', '119.30.34.11', '1', '02/07/2011', '09:31:18 AM', '3', '20110413225513', '20110207093118ASPNq50vBaDmy9zb3Zd2WgGjoJ7QwH');
INSERT INTO `t_user` VALUES ('1219', 'বাংলার ডাহুক', '+8801717452733', 'Md Masud alam', '01716973399', 'masud5271@yahoo.com', '27.131.12.6', '1', '02/07/2011', '10:57:25 AM', '3', '20110207230726', '20110207105725nScq4FAvtQBMzR08TljDw26WbCH9VZ');
INSERT INTO `t_user` VALUES ('1220', 'OPEST RULES', '0198765635', '1', 'jj', 'tarek.japan@gmail.com', '119.30.38.85', '1', '02/07/2011', '11:47:22 AM', '3', '20110223134221', '20110207114722VYy54m7WlUzdSXEifNqvhwut9ZgMK3');
INSERT INTO `t_user` VALUES ('1221', 'ক্ষনিক', '01712955615', 'M R Hazari', '12474800', 'mrihazari2011@yahoo.com', '180.211.219.10', '0', '02/08/2011', '01:14:30 AM', '3', '0', '20110208011430WhLmJEfHZBjTolYXqe85F0Kt2gvNsz');
INSERT INTO `t_user` VALUES ('1222', 'ক্ষনিক', '01712955615', 'M R Islam Hazari', '12474800', 'mrihazari2011@gmail.com', '180.211.219.10', '1', '02/08/2011', '01:20:47 AM', '3', '20110227165420', '20110208012047mg2aHJzf7bDeLFMsuViZSqyKUwpYRE');
INSERT INTO `t_user` VALUES ('1223', 'poly', '672587525', 'luna', '1980mb', 'yeasmin_luna@yahoo.com', '87.222.3.55', '0', '02/08/2011', '07:02:58 AM', '3', '0', '20110208070258C6gVmJnYRSA0BwklcuPtMfX5e1vbE3');
INSERT INTO `t_user` VALUES ('1224', 'মিজানুর রহমান মনির', '01915787527', 'mizanurrahman', '123456', 'tarek.japan@gmail.com', '119.30.38.75', '1', '02/08/2011', '10:08:07 AM', '3', '20110208222638', '201102081008078lxf3N6MXSWpTwJy5Pkm27KgBr1qcL');
INSERT INTO `t_user` VALUES ('1225', 'দোলন', '01813098874', 'dolon20032004', 'darkas', 'dolon20032004@yahoo.com', '119.30.34.13', '0', '02/08/2011', '11:44:33 AM', '3', '0', '20110208114434thYGulS6on8pW0UkRE7HM9cNfXx2ZP');
INSERT INTO `t_user` VALUES ('1226', 'দোলনবস', '01813098874', 'dolon2003', 'darkas', 'dolon20032004@yahoo.com', '119.30.34.13', '1', '02/08/2011', '11:53:12 AM', '3', '0', '20110208115312ZERncJ1B2CpqAK43tzwPmglvjVbD8f');
INSERT INTO `t_user` VALUES ('1227', 'অচিন পাখি', '01911470021', 'moyazzem', '300589', 'moyazzem_ml@yahoo.com', '123.200.11.3', '1', '02/09/2011', '03:00:16 AM', '3', '20110329182700', '201102090300164xCJ1s6oqFSGEDY09ZRAW8pTgaPvu7');
INSERT INTO `t_user` VALUES ('1228', 'দ্যা ডিজাইনার', '01711500041', 'thedesignerbd', 'tdbdopest', 'thedesignerbd@yahoo.com', '202.56.7.169', '1', '02/09/2011', '08:39:42 PM', '3', '20110210090230', '20110209083942SNqW6mHrQTdCe12ZY9kVKhA0jB3XDz');
INSERT INTO `t_user` VALUES ('1229', 'জংলী জানোয়ার', '01197381304', 'jongly januar', 'password', 'jongly_januar@yahoo.com', '117.18.231.24', '1', '02/11/2011', '11:03:18 AM', '3', '20110308193543', '20110211110318KB1R4Pxjeao9YhFNgDXpGfw2ZUyWn5');
INSERT INTO `t_user` VALUES ('1230', 'নিরত্যয় নিনাদ', '01717807287', 'Ninad', '1491414', 'jibon.joddha@gmail.com', '180.234.70.139', '0', '02/11/2011', '05:48:39 PM', '3', '0', '201102110548393GzJN29oaZL6jREMdbQxBtkgrwXe0s');
INSERT INTO `t_user` VALUES ('1231', 'সন্দীপন বসু মুন্না', '01711199974', 'sandipanbasumunna', '01717494244', 'sbasu.munna@gmail.com', '119.30.39.84', '1', '02/12/2011', '11:35:39 PM', '3', '20110213155827', '20110212113539w2YUk0rpmLSGC5lVFd4nhQHKay6f9J');
INSERT INTO `t_user` VALUES ('1232', 'ভালবাসা', '+8801829115656', 'bd.com.bd', '01822126025', 'bd.com2011@gmail.com', '119.15.152.10', '1', '02/13/2011', '08:48:01 AM', '3', '20110214145145', '20110213084801NTCBD0aoP85fsgEV7iY2M6AylrmxuG');
INSERT INTO `t_user` VALUES ('1233', 'এ আর রহমান', '+8801939429004', 'arifurrahman', '01717880554', 'arifurrahman869@gmail.com', '119.15.152.10', '1', '02/14/2011', '03:34:24 AM', '3', '20110214161249', '201102140334245q0DJmVysYl94ptR3dkbj8wKTNAuSo');
INSERT INTO `t_user` VALUES ('1234', 'imran', '01737395166', 'imran', '06111992', 'imran.bpharm@gmail.com', '123.200.11.3', '1', '02/15/2011', '12:04:42 AM', '3', '20110215210947', '201102151204422zXPobHSqy1R4uAxeWMfYQ58lN3sjh');
INSERT INTO `t_user` VALUES ('1235', 'পরাগ', '01720768932', 'parag', 'bangladesh', 'bangladesh', '78.109.196.7', '0', '02/17/2011', '12:55:23 AM', '3', '0', '2011021712552396caYBVmehEkjuRpl7ido4KZCNrngM');
INSERT INTO `t_user` VALUES ('1236', 'আরিপ মল্লিক', '008801711589664', 'arip', 'arafat', 'ariphossain@yahoo.com', '115.164.230.151', '0', '02/17/2011', '02:14:33 AM', '3', '0', '20110217021433rg1n49ko5yFAUWRlPK3B6mbCV2LhzJ');
INSERT INTO `t_user` VALUES ('1237', 'জাগ্রত্ব সত্তা', '০১৯১৪৯৭৮৫০৪', 'jagroto', '1558703269', 'jagrotosotta@gmail.com', '180.149.12.157', '1', '02/18/2011', '06:28:45 AM', '3', '20110324174420', '20110218062845nhi6cu1GXrCmLZawkgWtQAdvozEp4R');
INSERT INTO `t_user` VALUES ('1238', 'ইকবাল', '01712869093', 'Iqbal', '869093', 'iqbaldu36smhall@yahoo.com', '117.18.231.2', '1', '02/18/2011', '01:24:05 PM', '3', '0', '20110218012405VfygsdzHDcJtkuS7wQUZT1q8bonEWP');
INSERT INTO `t_user` VALUES ('1239', 'ভালোর পথে', '01717298119', 'valor pothe', '990880', 'raising.sun13@gmail.com', '119.30.34.11', '1', '02/20/2011', '02:27:19 AM', '3', '20110302013959', '20110220022719Vcbxk4Q8EKSsau3diAJPGMphXj2e70');
INSERT INTO `t_user` VALUES ('1240', 'sopnobaz', '01674424738', 'Dreamer', '962935', 'bipulgomes@gmail.com', '114.130.28.62', '1', '02/20/2011', '02:40:24 AM', '3', '20110220154748', '20110220024024vGYmiTx0qN6F8newLHzVQC3WAPRfUr');
INSERT INTO `t_user` VALUES ('1241', 'সত্যবানী', '01611640000', 'sottobanee', 'aaqa09', 'tareqmasud09@gmail.com', '203.188.244.162', '1', '02/20/2011', '05:25:49 AM', '3', '20110220172944', '20110220052549Bqjgv1iykfh5LKdMH60mWabR3TloVY');
INSERT INTO `t_user` VALUES ('1242', 'সাদা কাক', '01914752117', 'hasan19', '23223422', 'hasan_3939@yahoo.com', '117.18.231.11', '1', '02/20/2011', '05:40:46 PM', '3', '0', '201102200540461YPfU85wXDrhp7Kmly4vBz0qenb2Vo');
INSERT INTO `t_user` VALUES ('1243', 'শাহাদাত হুসাইন', 'shahadat08ruet@gmail.com', 'shahadat', '34672968', 'shahadat08ruet@gmail.com', '180.149.25.38', '1', '02/22/2011', '02:18:35 AM', '3', '20110502203634', '20110222021835ZACS6Rkz1s74plKQGh05Dodc98aLuY');
INSERT INTO `t_user` VALUES ('1244', 'নসিব পঞ্চম জিহাদী', '+8801737932459', 'vold3morte', '0033315193', 'nosib@live.com', '119.30.39.84', '1', '02/23/2011', '02:21:40 AM', '3', '20110223143345', '20110223022140eKTpYbxL8qol73rnJfU1sBzyESG9Ww');
INSERT INTO `t_user` VALUES ('1245', 'rubel', '+8801912429159', 'rubel', '0192429159', 'bangladeshi_rubel@yahoo.com', '117.18.231.10', '1', '02/23/2011', '03:59:36 AM', '3', '20110223162604', '20110223035936msWkSBpHl5wiLdtqKju7cX6e42UQNz');
INSERT INTO `t_user` VALUES ('1246', 'করিম', '01673330244', 'Karim', 'dragon9', 'istiaque9@live.com', '65.49.14.47', '0', '02/23/2011', '11:41:03 AM', '3', '0', '20110223114103w6kz8Txq27U3h9LfG1WdJjCbKlvDZi');
INSERT INTO `t_user` VALUES ('1247', 'zabed', '+971505677818', 'zabed', '41744895', 'zabed_shibli@yahoo.com', '86.98.156.242', '1', '02/23/2011', '01:22:28 PM', '3', '0', '20110223012228yB8Pi6nRztmEd9v1WJMhf4HYxcgqTs');
INSERT INTO `t_user` VALUES ('1248', '^^^ সীমান্ত ঈগল ^^^', '01558674540', 'sadi_ctg', 'hm880082', 'muf.mahmud@yahoo.com', '180.149.3.254', '1', '02/24/2011', '12:04:54 AM', '3', '20110501005629', '20110224120454sRnFqutpyQHgYB2l31AoerC5PENjbi');
INSERT INTO `t_user` VALUES ('1249', 'জিয়া উদ্দিন রুমি', '01673212920', 'ZIA UDDIN RUMI', '01553675260', 'zia_2029@yahoo.com', '64.255.164.41', '1', '02/24/2011', '08:20:10 AM', '3', '20110224220931', '201102240820102B8uhQ1SMzWsmLxFoJdGgEb9DeN3fq');
INSERT INTO `t_user` VALUES ('1250', 'উত্তরসুরী', '+20103852701', 'skabdullah177', 'pAglAAlU', 'skabdullah177@yahoo.com', '41.91.181.146', '1', '02/24/2011', '04:57:41 PM', '3', '20110402043952', '20110224045741D1bpZyeRjVL739Wv2MYSGmUq4koahn');
INSERT INTO `t_user` VALUES ('1251', 'Pathik', '+88 0155374835', 'Pathik', 'gareeb123', 'bdbhabna@gmail.com', '117.18.229.32', '1', '02/26/2011', '04:42:05 AM', '3', '20110226165206', '20110226044206ivxJQzXqyFZfd73pP9HMLCWDS50KRr');
INSERT INTO `t_user` VALUES ('1252', 'amon', '01725324716', 'amon', '017342238', 'anushah.sust@gmail.com', '203.112.195.149', '1', '02/26/2011', '07:36:43 AM', '3', '0', '20110226073643uDJnA1e0pvsGmTg6RjN8bcKFwWPdZB');
INSERT INTO `t_user` VALUES ('1253', 'ব১কলম', '01712543456', 'ba1kolom', '1!2@3#4$', 'rabjur@yahoo.com', '119.30.39.76', '1', '02/26/2011', '11:21:33 AM', '3', '20110325140658', '20110226112133VKF5n3Zb9XHWPfQNla4BD6mcRwYqdk');
INSERT INTO `t_user` VALUES ('1254', 'পাঠক পরিষদ', '+8801716861671', 'reader', '112233', 'monthlykishor@gmail.com', '117.18.231.24', '1', '02/26/2011', '11:58:39 AM', '1', '20110430124008', '20110226115839fcJCElViKbe52MT9GhvjkRB67qWsn8');
INSERT INTO `t_user` VALUES ('1306', 'প্রিয়া', '01814261603', 'db', '43974397', 'kutubibd@gmail.com', '117.18.231.17', '1', '03/13/2011', '03:27:28 AM', '3', '20110326155733', '20110313032728TkZpzlvnru628dRy4iHtsacAYKLBbM');
INSERT INTO `t_user` VALUES ('1255', 'শ্রাবন্য', '8801552606188', 'srabonno', 'theone', 'srabon19@yahoo.com', '117.18.231.22', '1', '02/26/2011', '11:10:45 PM', '3', '20110303124513', '20110226111045FKpc78RgAXPhESVYnjzC0u5BMiw6rk');
INSERT INTO `t_user` VALUES ('1256', 'ফয়েজ উদ্দিন সাকিল', '01732636304', 'shakilfaij', 'fmfsfmfs', 'shakilfaij@yahoo.com', '203.223.94.213', '1', '02/28/2011', '03:45:37 AM', '3', '20110301030206', '20110228034537kpzdMo1Liu4mDUcZ2gGsrKbf7yhXTe');
INSERT INTO `t_user` VALUES ('1257', 'info.sromobazar@gmail.com', '01196011463', 'sromobazar', 'infobazar', 'info.sromobazar@gmail.com', '114.130.35.199', '1', '03/01/2011', '12:39:58 AM', '3', '20110417103423', '20110301123958oqKRxpw3ejscNdXVUla9gvPLr6STnF');
INSERT INTO `t_user` VALUES ('1258', 'valosaiful', '01721021972', 'valosaiful', '635241', 'valosaiful@ovi.com', '119.30.34.9', '0', '03/01/2011', '07:32:04 AM', '3', '0', '201103010732043pQ8vGNBd2oXw1qyKac9VYiEbjCUnT');
INSERT INTO `t_user` VALUES ('1259', 'আমার পুঠিয়া', '01740569284', 'tarcira', '17515303', 'aa.mahin@yahoo.com', '180.149.12.14', '1', '03/01/2011', '08:30:08 AM', '3', '20110301204843', '20110301083010S4D1cYE7RjUoJvZ953dtgPeGAwVT8i');
INSERT INTO `t_user` VALUES ('1260', 'নিকু', '01814261603', 'niku', '~!@#$%', 'kutubibd@gmail.com', '117.18.231.23', '1', '03/02/2011', '01:05:12 AM', '3', '20110420133017', '20110302010512LabxNpiFh2WERZdlnctAUwQDGk164C');
INSERT INTO `t_user` VALUES ('1261', 'jibontory', '01933312722', 'masudislam', '01913134835', 'masudislam85@gmail.com', '117.18.231.18', '1', '03/02/2011', '01:17:58 AM', '3', '20110302132709', '2011030201175898SqXJnNviYu1skZmgfdEtb5jPyL2G');
INSERT INTO `t_user` VALUES ('1262', 'topu', '01917008030', 'bhoottopu', '14342011', 'bhootbhoot50@yahoo.com', '113.11.46.62', '1', '03/02/2011', '04:45:31 AM', '3', '0', '20110302044531qa5dLDS7RAUzuZkjEfYhVcx6H1FmQt');
INSERT INTO `t_user` VALUES ('1263', '@EAN', '01714272912', 'EAN', '7up2coke', 'e.ashif@gmail.com', '203.223.95.227', '1', '03/02/2011', '06:05:58 AM', '3', '20110303185705', '201103020605585binsJfu1FNMa9EwHRrgeX3BckUQSZ');
INSERT INTO `t_user` VALUES ('1264', 'inoman666', '01913397161', 'inoman666', 'rangpuri', 'iftekharnoman@yahoo.com', '120.50.26.108', '0', '03/02/2011', '09:55:04 AM', '3', '0', '20110302095504nb8ATSMYlV2vqrgtK6huzZCBX4px3L');
INSERT INTO `t_user` VALUES ('1265', 'চরিপুল', '02998776335', 'sia', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.4', '1', '03/03/2011', '03:47:05 AM', '3', '20110308124251', '20110303034705YzBGxiqk2plm49jeQUfwXcSPN78Zga');
INSERT INTO `t_user` VALUES ('1266', 'ধরিপুল', '0341654876', 'sib', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.4', '1', '03/03/2011', '04:10:55 AM', '3', '20110303161223', '20110303041055lp4TgJZoWYhEVdyA5niNxQDR7s2eC0');
INSERT INTO `t_user` VALUES ('1267', 'বিশ্ব প্রেমীক', '01714786543', 'sic', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.4', '1', '03/03/2011', '04:41:11 AM', '3', '20110303164647', '20110303044111af1FinbMZpLrK52tGslPc9YSEmdBHj');
INSERT INTO `t_user` VALUES ('1268', 'জয় বাংলা @ইন্ডিয়ান বাংলা', '018186432546', 'sid', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.4', '1', '03/03/2011', '04:49:18 AM', '3', '20110303165027', '20110303044918whAc9gRXovaksGDzEpTdmKnbYWj68t');
INSERT INTO `t_user` VALUES ('1269', 'শামা', '01715983654', 'sie', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:03:09 AM', '3', '20110303184552', '20110303060309JpHaevqSXQ5Tnf1Y0BGNrc8i7ZRjLt');
INSERT INTO `t_user` VALUES ('1270', 'পেমাদাশ', '01814874526', 'sif', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:04:10 AM', '3', '20110303184648', '20110303060410Dugmn5w4fiZ92eR7KxEtzqTpAQ83al');
INSERT INTO `t_user` VALUES ('1271', 'লাইলি', '01716876528', 'sig', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:05:11 AM', '3', '20110303184758', '20110303060511DYoa7Zi8WVcPQxdw9Ejy40A6UTSLGe');
INSERT INTO `t_user` VALUES ('1272', 'alamgir', '0502250867', 'alamgir bhuyain', '2250867', 'alamgir510@yahoo.com', '86.96.228.86', '1', '03/03/2011', '06:05:55 AM', '3', '20110303182805', '20110303060555tSpjTf2Z76QwEc0CVx4GFJ8Bahnbrm');
INSERT INTO `t_user` VALUES ('1273', 'নাজমা', '01826572890', 'sih', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:06:09 AM', '3', '20110303184907', '20110303060609U705BgEkfa3HLWDXFzGlmdwVN829Ji');
INSERT INTO `t_user` VALUES ('1274', 'আসিকুল্লাহ', '01199265376873', 'sii', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:07:05 AM', '3', '20110303185008', '20110303060705Zjw3bc4KRiAD08o7yMnFXJBUxEsWSl');
INSERT INTO `t_user` VALUES ('1275', 'জব্বর আলী', '01922765872', 'sij', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:07:56 AM', '3', '20110303185102', '20110303060756gLCkAv2UhHPuKnTsZJN8oarQ6E4yq7');
INSERT INTO `t_user` VALUES ('1276', 'নাইমুল ইসলাম', '01762873872', 'sik', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:08:45 AM', '3', '20110303185150', '20110303060845l5KYDVaqr2s8XLMcpvyQoSiguGPHR1');
INSERT INTO `t_user` VALUES ('1277', 'Hujur Kebla', '01723476187', 'sil', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:09:45 AM', '3', '20110303193225', '201103030609450yACnJE5jtg7Nmp3oqaZXBuYGSl8Kk');
INSERT INTO `t_user` VALUES ('1278', '&#2476;&#2494;&#2434;&#2482;&#2494;&#2480; &#2460;&#2472;&#2472;&#2496;', '01729836510', 'sim', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:10:40 AM', '3', '20110303193534', '20110303061040KcVBmGhoAUjbFWu9Qnqfpk4wi3a08v');
INSERT INTO `t_user` VALUES ('1279', 'Hasina', '01926371092', 'sin', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:12:24 AM', '3', '20110303194847', '201103030612241JUn5rAZcG9ym4vCo6dkQahs2jxRFP');
INSERT INTO `t_user` VALUES ('1280', 'জয় মাদারি', '01672873810', 'sio', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:13:25 AM', '3', '20110303200151', '201103030613251iQtJvT0khXPeMKC7RwF6ZEugxH94d');
INSERT INTO `t_user` VALUES ('1281', 'Bengle mother   ', '01702651092', 'sip', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:14:22 AM', '3', '20110303201226', '20110303061422xcikAHpruo2yaYlv9NBUs8XQzbW3GE');
INSERT INTO `t_user` VALUES ('1282', 'পাদ্দার চর', '01830912536', 'siq', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:15:38 AM', '3', '20110303201331', '20110303061538gG0bxmXk5TlAdRraNcnqi94z1328pj');
INSERT INTO `t_user` VALUES ('1283', 'বিম্পি', '011872345162', 'sir', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:16:27 AM', '3', '20110303201439', '201103030616271hzYxUygZt07cfeq9lwkojGdXuQ3sr');
INSERT INTO `t_user` VALUES ('1284', 'আম্বালীগু', '01982435109', 'sis', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:17:43 AM', '3', '20110303201709', '20110303061743UMPLNg8SpBRaZT29Fv6bK3t0J1fHed');
INSERT INTO `t_user` VALUES ('1285', 'জামাত হেটার', '01729120912', 'sit', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:18:30 AM', '3', '20110303201822', '201103030618307hdoWJDLzV1plMEaiKtrRg2vsBbxC5');
INSERT INTO `t_user` VALUES ('1286', 'কাক্কুর বৌ', '01629812309', 'siu', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:19:31 AM', '3', '20110303202111', '20110303061932P7DifqkxnAtEgha1jRQWpMwz98yl3Z');
INSERT INTO `t_user` VALUES ('1287', 'চামচার ঝি', '028734519', 'siv', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:20:32 AM', '3', '20110303202404', '2011030306203284NUybkrKWfTncVgevlSuCJ0PBtahz');
INSERT INTO `t_user` VALUES ('1288', 'বাপের বাড়ি', '0341672983', 'siw', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:21:23 AM', '3', '20110303202457', '20110303062123zJc70NTAqXaUmCdhltGBZ4eQjngiF3');
INSERT INTO `t_user` VALUES ('1289', 'ICC Cricket Live Score', '029830912', 'six', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:22:18 AM', '3', '20110303202719', '201103030622188iuo3WqRYrLkhpVDClmAezyS7NbX2P');
INSERT INTO `t_user` VALUES ('1290', 'ওয়াজি', '02983415263', 'siy', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:23:06 AM', '3', '20110303202952', '20110303062306ba6PzlTUpC2HW9RYn7FLf41vewi5dr');
INSERT INTO `t_user` VALUES ('1291', 'নবাবীর হান্দান', '034162973', 'siz', '~!@#$%', 'bd2008bd@gmail.com', '117.18.231.13', '1', '03/03/2011', '06:24:13 AM', '3', '20110304093831', '20110303062413MrzjnSi4T31NAhemWLcXUfHy06uYbv');
INSERT INTO `t_user` VALUES ('1292', '&#2461;&#2480;&#2494;&#2474;&#2494;&#2468;&#2494;', '+8801754907403', 'rokanuddin', 'nayeem159rokan', 'rokan009@gmail.com', '123.49.63.6', '1', '03/03/2011', '06:51:27 AM', '3', '20110425140136', '20110303065127mieXMoQR70Vc3hna8ZfdzJuAGpClvS');
INSERT INTO `t_user` VALUES ('1293', 'সাতকানিয়ার রোকন', '+8801553707295', 'rokan', 'nayeem159rokan', 'rokanuddin1301@gmail.com', '123.49.63.6', '1', '03/06/2011', '04:08:53 AM', '3', '20110323205932', '20110306040853Yzrq3FyokpMdaSl5Q8e6ftJHgDCmb0');
INSERT INTO `t_user` VALUES ('1294', 'Mainul Islam', '010101010101010', 'mainul', 'newdhaka', 'shawkat.ali.zawhar@gmail.com', '119.30.39.86', '1', '03/06/2011', '05:50:29 AM', '3', '20110414084712', '20110306055029KBpu8CAe46yVqHdho23wStQMP1vbkz');
INSERT INTO `t_user` VALUES ('1295', 'জান্নাতুল করিম চৌধুরী', '01098999303', 'alif', 'littlebaby', 'shawkat.ali.zawhar@gmail.com', '119.30.39.92', '1', '03/06/2011', '06:27:48 AM', '3', '20110308135514', '20110306062748Z8YnXTP90k1jSrKiJ4GRDy62avfVCB');
INSERT INTO `t_user` VALUES ('1296', 'সবুজ পাহাড়', '01926963778', 'greenhill', '01190881503', 'antvi93@gmail.com', '180.149.12.1', '1', '03/06/2011', '11:36:21 AM', '3', '20110307000301', '201103061136214xTSUEAkt3j7luHbwBYWscQpL6ovFy');
INSERT INTO `t_user` VALUES ('1297', 'নাজিম৭০৭', '01715303000', 'nazim707', 'shumee', 'shumee', '202.134.14.26', '0', '03/07/2011', '12:24:40 AM', '3', '0', '20110307122440HcokaJvwVPMFijAECfQR1tWmy8bg9n');
INSERT INTO `t_user` VALUES ('1298', 'KAKOLI', 'KAKOLI', 'jALAM', 'BANGLAULU', 'jalamtnt@gmail.com', '180.234.52.215', '1', '03/07/2011', '06:14:54 AM', '3', '20110307183107', '20110307061454TcFBZawLNtihb38KQsUjqP9Y0dorGp');
INSERT INTO `t_user` VALUES ('1299', 'দিগন্ত', '01819807574', 'faruk', 'faruk1', 'news.faruk@gmail.com', '117.18.231.19', '0', '03/07/2011', '07:41:29 AM', '3', '0', '20110307074129ieFrzJMQ2f1cqt5Ln4UjmPwkEWuHNx');
INSERT INTO `t_user` VALUES ('1300', 'tareq', '01912791791', 'TAREQ_BEN_ZEHAD', '0191101717', 'kalimar_moshal@yahoo.com', '58.145.188.11', '0', '03/07/2011', '10:47:25 AM', '3', '0', '20110307104728ASdu1JXbpPts8q74VxNoWYjrzl9af5');
INSERT INTO `t_user` VALUES ('1301', 'nur', '+8801738676767', 'nur', '01738676767', 'nur3118@gmail.com', '119.30.38.70', '0', '03/08/2011', '05:44:13 AM', '3', '0', '20110308054413U5JrZH6vStWCb2P1zXep9Ks0DmBndV');
INSERT INTO `t_user` VALUES ('1302', 'মুসলিম উম্মাহ', '01923-655725', 'muslimummah', '23655725', 'alasiratimmustakim@gmail.com', '119.30.38.77', '1', '03/08/2011', '10:13:43 AM', '3', '20110403123945', '20110308101343tjx2wT1pqgbvh06WuznECDUyfdKYH7');
INSERT INTO `t_user` VALUES ('1303', 'নতুন সৈনিক', '+8801716861671', 'new', 'new', 'ittadicom@yahoo.com', '117.18.231.6', '1', '03/09/2011', '11:33:20 AM', '3', '20110317183048', '20110309113320eLpK1TEx4auR0d8AzFtM7ZnJlSDBmj');
INSERT INTO `t_user` VALUES ('1304', 'BONDHU', '01911772398', 'KISUshomoyer_BONDHU', '999999', 'menafa_joy@ymail.com', '180.234.53.53', '1', '03/10/2011', '01:36:14 AM', '3', '20110310140050', '20110310013614lsqo4Ba3QR0gdLJPEA5rVUt8HMhexz');
INSERT INTO `t_user` VALUES ('1305', 'qalbi', '01673909205', 'qalbi', 'qalbi', 'aminulhoque_iiuc@yahoo.com', '180.149.3.254', '1', '03/10/2011', '10:32:06 PM', '3', '20110410064305', '20110310103206MkFcy0T72daN9tX8Ru4rPVSJHhilpm');
INSERT INTO `t_user` VALUES ('1307', 'ঘোড় লাগা মানুষ', '0119', 'rishad', 'methyle', 'hassan.ragib@yahoo.com', '180.149.8.190', '1', '03/15/2011', '01:02:56 AM', '3', '20110315123638', '20110315010256s72kFCmvbPqQpLjnaxrM03RB1WehcE');
INSERT INTO `t_user` VALUES ('1308', 'lovefist', '+8801196264430', 'SAMIUL0', '276458', 'golam_samiulalim@yahoo.com', '117.18.231.29', '1', '03/15/2011', '01:04:28 AM', '3', '20110315121825', '20110315010428B3miLD5WoN6qsfykSwHGgcU0EQ7nRJ');
INSERT INTO `t_user` VALUES ('1309', 'bma', '01912264009', 'bma_admin', 'dhaka123', 'alauddin1987@yahoo.com', '119.30.39.68', '1', '03/15/2011', '01:44:42 AM', '3', '20110320211615', '2011031501444262zwWFYGJcQatDxkHEdiPb4NyRoAZM');
INSERT INTO `t_user` VALUES ('1310', 'পেন্সিল', '01751385823', 'Sanjida', 'as722324', 'ayesha_sanjida@yahoo.com', '119.30.38.84', '1', '03/15/2011', '03:08:02 AM', '3', '20110331150448', '20110315030802HQtb0DNfWgq9iTAacesBkv68dxnZ1M');
INSERT INTO `t_user` VALUES ('1311', 'উপদেষ্টা পরিষদ', '0198876666565', 'advisors-council', '223344', 'shawkat.ali.zawhar@gmail.com', '119.30.38.77', '1', '03/17/2011', '08:41:35 AM', '3', '20110317195842', '20110317084135dnxyBYbD6L0PhCGjepzWRfvaAtHsMF');
INSERT INTO `t_user` VALUES ('1312', 'মো: রাশেদ খান মেনন', '8801911981087', 'ronyred', 'iamkhan10', 'ronyred.rony@gmail.com', '180.211.216.4', '1', '03/17/2011', '03:11:21 PM', '3', '20110318021634', '201103170311217mAGajrglqXMnsxcB95HTbRoQuCP1N');
INSERT INTO `t_user` VALUES ('1313', 'নেটপোকা', '01713190664', 'netpoka', '42974297', 'faisalshameem@yahoo.com', '119.30.39.85', '1', '03/18/2011', '02:10:10 AM', '3', '20110320234448', '201103180210101kbB8GeDQfxwRvoLa9Fj560sTKNEZP');
INSERT INTO `t_user` VALUES ('1314', 'Md. Masudur Rahman', '01717905430', 'Masud.plabon', '0055984', 'plabon89@gmail.com', '119.30.38.76', '1', '03/18/2011', '09:12:38 AM', '3', '20110318203648', '20110318091238ivEJjh0Hbk8u5y7zxdU3NBtqLsYprT');
INSERT INTO `t_user` VALUES ('1315', 'নাদান বালক', '+8801713787974', 'hasanmahmud09', '01916161785', 'mahmud2109@yahoo.com', '180.149.12.135', '1', '03/18/2011', '02:25:18 PM', '3', '20110319014855', '20110318022518on93we6GWJjdb4hfP1kvHKVsLZ0Fqy');
INSERT INTO `t_user` VALUES ('1316', 'Tajur Tushar', '01911881880', 'Tushar', '01716420289', 'Mr.voson@ymail.com', '124.6.226.220', '1', '03/19/2011', '09:37:53 AM', '3', '20110320073944', '20110319093753liQMqueTwBAsGEjK1rzhNHL3fPVJF2');
INSERT INTO `t_user` VALUES ('1317', 'Tushar 420', '01911881880', 'Tajur', '01716420289', 'trtushar@yahoo.com', '124.6.226.220', '0', '03/19/2011', '09:43:28 AM', '3', '0', '20110319094328DYP9noH0Vu4L35dlZNBWbxsREMfGzk');
INSERT INTO `t_user` VALUES ('1318', 'OF', '01983777373', 'opestforum', 'opest.net', 'shawkat.ali.zawhar@gmai.com', '116.193.175.208', '0', '03/23/2011', '12:17:19 PM', '3', '0', '201103231217194YlEKXw7guQfRnG2JWjP0ZaxChqv3A');
INSERT INTO `t_user` VALUES ('1319', 'বাক স্বাধীনতা', '01674990989', 'jeebrail', 'polaukorma', 'rupoksau@gmail.com', '114.130.15.202', '1', '03/24/2011', '01:33:34 PM', '3', '20110325004119', '20110324013334vfdYHTP4c1ginLma287tRqZ0jbDoCB');
INSERT INTO `t_user` VALUES ('16', 'ডায়েরী', 'dimu na', 'diary', 'diary', 'studentzitu@yahoo.com', '', '1', '03/25/2011', '02:39:56 PM', '3', '0', '20110325023956wjXDEWZhmRpnbuxK4v1VHtyfTg2GkL');
INSERT INTO `t_user` VALUES ('1322', 'ইমেজ', '019234847466', 'dear2', 'asdf', 'www.opest.net@gmail.com', '119.30.38.74', '1', '03/25/2011', '09:21:18 PM', '3', '20110401092649', '20110325092118KM7VRjtkWNmxsvzTn2uAeJYw8BP0Fp');
INSERT INTO `t_user` VALUES ('1323', 'সোনারবাংলা', '008801815615835', 'sonarbangla', '2266800', 'jamalctg4@gmail.com', '86.96.228.86', '1', '03/26/2011', '12:29:23 AM', '3', '20110419113100', '20110326122923SXstaeFdMH1gr2wTz8ANiWnhPUu7mq');
INSERT INTO `t_user` VALUES ('1324', 'সংকলক', '01715226539', 'pushpo123', 'ty2k@dtv', 'pushpo123@gmail.com', '202.164.211.6', '1', '03/27/2011', '08:00:33 AM', '3', '20110327192921', '201103270800338zDEWh9r4fBvUKp0FPxXqcNswtYRCa');
INSERT INTO `t_user` VALUES ('1325', 'DressBazar', '02-9888956', 'dressbazar', 'seo123', 'seo@dressbazar.com', '114.130.35.199', '1', '03/29/2011', '02:41:27 AM', '3', '0', '20110329024127dJlCq98ZwRK1Qsjbiu2ztrnyfAkmHS');
INSERT INTO `t_user` VALUES ('1326', 'আমি সানু', '4120', 'shanu', 's', 'faysal.tc@gmail.com', '202.56.7.174', '1', '03/30/2011', '12:59:44 AM', '3', '20110501125041', '20110330125945Uo8jBlWkxQPwHYmN2E4fr1eg9VF7CX');
INSERT INTO `t_user` VALUES ('1327', 'নিলাঞ্জনা', '৫০৩০৪৩', 'ope', 's', 'ope.hatiya@gmail.com', '119.30.34.1', '1', '03/30/2011', '10:41:43 PM', '3', '20110504161943', '20110330104144LZUl3om5B6aiCEyjpAKTRkrx0WVwgf');
INSERT INTO `t_user` VALUES ('1328', 'nazmul hossain', '+966543507944', 'naz@hot', '552289704', 'Nworld_bh@yahoo.com', '46.44.83.211', '0', '03/31/2011', '06:48:43 AM', '3', '0', '20110331064843WehdloTVvLGb41SApac0BHMJrwKn39');
INSERT INTO `t_user` VALUES ('1329', 'Md.Nazmul Hossain', '+966543507944', 'nworld_bh@yhoo.com', '552289704', 'Nworld_bh@yahoo.com', '46.44.83.211', '0', '03/31/2011', '06:50:58 AM', '3', '0', '20110331065058jnXlYgPiJTKH78QdR4psz1FwuGkfq3');
INSERT INTO `t_user` VALUES ('1330', 'অলিউর', '০১১৯৫৪৫৮৮৬০', 'waliur', '052107', 'waliur_ctg@yahoo.com', '119.30.39.73', '1', '03/31/2011', '11:19:32 PM', '3', '20110401114302', '20110331111932C7Pw65SMclsKiFthkxXp81BnjrGuQq');
INSERT INTO `t_user` VALUES ('1331', 'Ikramul', '01914794817', 'ikramultpi', '01914794817', 'ikramultpi@gmail.com', '119.30.39.80', '0', '04/02/2011', '12:30:11 AM', '3', '0', '20110402123011wga15XAG32cWi8JqQnvMypFTPHSZm0');
INSERT INTO `t_user` VALUES ('1332', 'স্বাধীনতা ও সর্বভৌমত্ব', '01671441357', 'private', '8850212', 'universityprivate', '203.223.95.74', '0', '04/02/2011', '12:32:13 AM', '3', '0', '20110402123213lLZmuntT5xAgeWG6sBfiVQC8P1zk23');
INSERT INTO `t_user` VALUES ('1333', 'গোবেচারা', '01190088964', 'gobechara', '987654', '987654', '182.160.116.171', '0', '04/02/2011', '01:26:58 AM', '3', '0', '20110402012658g93WXcDv5R1NmQbtYHdJewArPEq7Fs');
INSERT INTO `t_user` VALUES ('1334', 'এস এ মাসুদ', '01190088964', 's a masud', '987654', 'samasud@gmail.com', '182.160.116.171', '1', '04/02/2011', '01:31:34 AM', '3', '20110402145116', '20110402013134uUlBCHtLTnA798pvPeyxFJa5QKVjWm');
INSERT INTO `t_user` VALUES ('1335', 'ঈশ্বর চন্দ্র বিদ্যাসাগর', '01733673886', 'icv', '28feb1973', 'narkoll@ovi.com', '119.30.39.66', '1', '04/02/2011', '03:16:57 AM', '3', '20110429144120', '20110402031657RJvVYsbc0kADfXwMPNed3FK9tgm8ny');
INSERT INTO `t_user` VALUES ('1336', 'শেরিফ আল সায়ার', '01918171427', 'sasshunam', '9111400', 'sheriff.sire@gmail.com', '202.164.214.46', '1', '04/02/2011', '04:31:22 AM', '3', '20110402160819', '20110402043122xbvwM0thpkA3Bjmgyis1ZCfnJV42Lo');
INSERT INTO `t_user` VALUES ('1337', 'মাহমুদুল হাসান', '53838', 'mahmud', 'jj', 'medona2021@gmail.com', '119.30.34.4', '1', '04/02/2011', '09:56:55 PM', '3', '20110502215558', '20110402095655A79aGspqHSiVXtoCyd4Zjckf6wbYPz');
INSERT INTO `t_user` VALUES ('1338', 'ফকরুল ইসলাম', '০১৮২০১৮৬৭০৭', 'fak', 'jj', 'mahmud.hatiya@gmail.com', '202.56.7.169', '1', '04/02/2011', '10:58:07 PM', '3', '20110504143623', '20110402105807ETHgJ1fPNisLFdwQmye4jh2a68Zc79');
INSERT INTO `t_user` VALUES ('1339', 'মাছুম খান', '০', 'maspun', '359910', 'masum_tangail@yahoo.com', '180.234.4.251', '0', '04/03/2011', '04:24:49 AM', '3', '0', '20110403042449hGawAx1N9ljy3dfFD6etWYpsTMKR2r');
INSERT INTO `t_user` VALUES ('1340', 'Rubayat88', '01727291047', 'rubayatrahman88', '88Charlie', 'rubayatrahman88@gmail.com', '115.69.213.10', '1', '04/03/2011', '09:57:13 AM', '3', '20110403210407', '20110403095713aVs7fhRHDuLFW6JNeTnSkUYQMlqb0A');
INSERT INTO `t_user` VALUES ('1341', 'রসিদ', '39334151', 'rahad', '39334151a', 'rahadrashid@yahoo.com', '109.63.11.70', '1', '04/03/2011', '02:28:42 PM', '3', '0', '201104030228422HrDnhRa1fQNgxoPTAUcuMWb9pEjYF');
INSERT INTO `t_user` VALUES ('1342', 'BANGLADESH.', '0198765434', 'BANGLADESH.', 'daka', 'www.opest.net@gmail.com', '180.234.64.78', '0', '04/06/2011', '09:01:19 AM', '3', '0', '20110406090119zMQ8pGv5kXb4gxDWKqfCerEVBT2jYd');
INSERT INTO `t_user` VALUES ('1343', 'Kedar Nath Patra', '8972702700', 'Kedar_2011', '9734435743', '9734435743', '117.242.150.191', '0', '04/08/2011', '04:25:22 AM', '3', '0', '201104080425238NuYEvaxLHU67qmT3gPsVJh4CoKDiB');
INSERT INTO `t_user` VALUES ('1344', 'ছাইফুল হক', '01721021972', 'valosaiful@yahoo.com', '635241', 'valosaiful@yahoo.com', '64.255.164.112', '0', '04/08/2011', '06:05:28 AM', '3', '0', '20110408060528Tg3NvVxwukSJP1anE6pjdKY8BhHtrQ');
INSERT INTO `t_user` VALUES ('1345', 'হালুয়া টাইট', '০৩৪৫৪৬৫৪৬৫৪', 'halua', '1#2#3#', 'djghaura@gmail.com', '180.149.8.41', '0', '04/08/2011', '11:18:27 PM', '3', '0', '201104081118277CRP5VepQfFhwA0dBl9gTz6syWENSn');
INSERT INTO `t_user` VALUES ('1346', 'yousuf', '01918193803', 'yousuf', '01912101553', 'yousuf.rayhan@gmail.com', '120.50.176.59', '0', '04/10/2011', '10:46:14 PM', '3', '0', '201104101046141bK6Cyw2lgHrak5MQFuU48cqfm7tBY');
INSERT INTO `t_user` VALUES ('1347', 'man of dark', '0101010010101', 'asdfgh', 'asdfgh', 'ics.onebook@gmail.com', '180.234.51.19', '0', '04/11/2011', '03:40:46 AM', '3', '0', '20110411034046hMz860sDVuovrtRXBnLEG7dqi9S1Ck');
INSERT INTO `t_user` VALUES ('1348', 'alauddin23', '01916456787', 'aaa34', 'password123', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:28:44 AM', '3', '0', '20110411042844TgouQH5qxYD1bzCPFBXE2yKcv3nl9w');
INSERT INTO `t_user` VALUES ('1349', 'werty', '01912264009', 'edede', '123456', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:30:38 AM', '3', '0', '201104110430381WQBKrtaGXVpMFCdgL6TZ7nU2bqiHy');
INSERT INTO `t_user` VALUES ('1350', 'fddfgdfgf', '01816011472', 'ewrerew', '123456t', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:35:14 AM', '3', '0', '20110411043514XlQ7khcv4ErPeDFaqKzbGVmW8oj9tp');
INSERT INTO `t_user` VALUES ('1351', 'dinislam', '01816011472', 'awear', 'password1230', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:39:05 AM', '3', '0', '201104110439054qwoBaymFpVQZr3CNG0n7Rt2gzv61l');
INSERT INTO `t_user` VALUES ('1352', 'alauddin2322', '01816011472', 'do123', 'dhaka123', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:41:47 AM', '3', '0', '20110411044148yvkZ9hpPLEXmVNuT35d6CqlD1BarKc');
INSERT INTO `t_user` VALUES ('1353', 'hkjnbkjnkjn', '01816011472', 'jhkjbkjb', 'kjnjnkjnkjn', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:43:35 AM', '3', '0', '20110411044335JpgiGaZdjlTwWHo2mfCU6xzbAXvRPE');
INSERT INTO `t_user` VALUES ('1354', 'rtgtgtgtg', '01911511088', 'wrferwfrf', 'rfrfrfrfrf', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:47:25 AM', '3', '0', '20110411044725tD9Gb3qTcQPLNhau425E8rYxvFgzjp');
INSERT INTO `t_user` VALUES ('1355', 'khjkjb', '01912264009', 'iuhbhkj', 'jbnkjnkjnkjn', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:49:04 AM', '3', '0', '2011041104490465qCaAsQdJhXtyDwzmWjV0oiruRnBH');
INSERT INTO `t_user` VALUES ('1356', 'klklk', '01912264009', 'kbhjkjb', 'kjnkjnknj', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '04:50:58 AM', '3', '0', '20110411045058nDvt6awou3pJ08MY5cNgPdCG4LRzSi');
INSERT INTO `t_user` VALUES ('1357', 'fdgfdgdfg', '01911511088', 'frgdfg', 'fgdfgfdg', '32423@gdfgh.dfgdfg', '119.30.39.38', '0', '04/11/2011', '05:20:18 AM', '3', '0', '201104110520189ChZuvxAqnt0RDzUkQ4YorFXlEpLc8');
INSERT INTO `t_user` VALUES ('1358', 'yughb', '01912264009', '213w323', '3e32e3e', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '05:22:31 AM', '3', '0', '20110411052231Ej7X9RYLiWGTMke4KNFo2p1aJbAqn8');
INSERT INTO `t_user` VALUES ('1359', 'ertertrt', '01816011472', 'thytrhytr', 'trytrytr', 'alauddin1987@gmail.commin123456', '119.30.39.38', '0', '04/11/2011', '05:24:12 AM', '3', '0', '201104110524127ZY6MesHq5T4U2ljWCvFQExfm98Rd3');
INSERT INTO `t_user` VALUES ('1360', 'rrgergreg', '01916456787', 'trytrytry', 'trytrytryt', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '05:27:35 AM', '3', '0', '20110411052735di7MaujEXlor3csBZUP6zm12CGRety');
INSERT INTO `t_user` VALUES ('1361', 'hgtfvgvhg', '01916456787', 'hvhgvgv', 'jhbhbhjb', 'alauddin1987@gmail.com', '119.30.39.38', '0', '04/11/2011', '05:30:46 AM', '3', '0', '20110411053046Yc7vyLwfq4jzxaoX2FWgGduHCeQSKJ');
INSERT INTO `t_user` VALUES ('1362', 'qwerty', '0198765434', 'qwerty', 'qwerty', 'tarek.japan@gmail.com', '180.234.62.156', '1', '04/11/2011', '05:32:18 AM', '3', '0', '20110411053218gmNvUw0LBDQxEdaKF2lkpTiX1HYArh');
INSERT INTO `t_user` VALUES ('1363', 'নাজাতের পথে যাএা', '01915606723', 'HIRDOY', '24742474', 'md.jahidulislammithu@ymail.com', '119.30.38.41', '0', '04/11/2011', '10:30:57 AM', '3', '0', '201104111030575N2esfxJz7hlkCwGM8QiVpP6SrFKb9');
INSERT INTO `t_user` VALUES ('1364', 'Md. Khaleduzzaman', '01715472363', 'farin', 'bonjour', 'farin@dhaka.net', '202.4.107.186', '1', '04/13/2011', '01:02:05 AM', '3', '20110413120552', '20110413010205Qwv90oxJVzi4khfMGH21DKqc5YUSZu');
INSERT INTO `t_user` VALUES ('1365', 'হালুয়া', '099898988', 'tight', '1#2#3#', 'djghaura@gmail.com', '180.149.8.35', '1', '04/13/2011', '02:46:27 AM', '3', '20110413215539', '201104130246270trfdUo45VugiNL2PZBch1mkyCDQKT');
INSERT INTO `t_user` VALUES ('1366', 'মেধাবী', '+88 01920 630 155', 'Md. Rezaul Hoq', '২০০৮২৩৬০১০', 'moradsust@gmail.com', '203.112.195.149', '1', '04/15/2011', '03:11:42 AM', '3', '20110420193109', '20110415031142UTrsxvYu6tflDPgH1B5w8eCMiFZ3LA');
INSERT INTO `t_user` VALUES ('1367', 'octopus', '01723767909', 'rajib mamun', '220986', 'rajib_pearl@yahoo.com', '203.112.195.149', '1', '04/15/2011', '11:29:16 AM', '3', '0', '2011041511291616nKGDCequbtSrfvHR0WiLd3VowJcY');
INSERT INTO `t_user` VALUES ('1368', 'শিমুল পুতু', '01911243431', 'Simol Potho', 'jalal77911', 'jalaliiuc@gmail.com', '119.30.35.130', '1', '04/15/2011', '04:19:01 PM', '3', '20110416035052', '20110415041901mdvRrHQ8wBEkh2Z6isJfpAXbojt3gW');
INSERT INTO `t_user` VALUES ('1369', 'শিমুল (পুতু)', '01911243431', 'shimul', 'jalal77911', 'jalaliiuc@gmail.com', '119.30.35.130', '1', '04/15/2011', '04:31:47 PM', '3', '20110417015816', '20110415043147yWKGLRxif6hvX1FM3qr2d5ESNm9bDu');
INSERT INTO `t_user` VALUES ('1370', 'short circuit', '01722081772', 'msdh85', '01722081772', 'msdh85@gmail.com', '210.4.70.4', '1', '04/16/2011', '03:26:25 AM', '3', '20110422160445', '20110416032625Kh7rpA5dqzLBQvW9CYysUScwaHPx6t');
INSERT INTO `t_user` VALUES ('1371', 'মঈন', '01733554366', 'Moin', 'moin2010', 'moinshourav@gmail.com', '203.189.230.7', '1', '04/16/2011', '11:31:15 AM', '3', '20110418222550', '20110416113115x1eAuobtEsyLD5ZapmdVSqFgvwTW03');
INSERT INTO `t_user` VALUES ('1372', 'ওয়াসিম', '01919999999', 'wasimmm', 'zxcvbnm,', 'wasimdesh@gmail.com', '119.30.38.54', '1', '04/16/2011', '01:31:32 PM', '3', '0', '20110416013132hZ0EmDxHf6drgwL98TcBNe3R4JiQCY');
INSERT INTO `t_user` VALUES ('1373', 'আশিক৯৯৯', '8801722877036', 'ashique999', '7w2vdk', 'ashique.nizam@gmail.com', '119.30.38.46', '1', '04/16/2011', '11:00:38 PM', '3', '20110422134835', '20110416110038Sq8AwjcVyJ0vrL3xaM4fN1bgkd7nD6');
INSERT INTO `t_user` VALUES ('1374', 'এম. এস. জুলহাস', '01711353363', 'M. S. Julhas', 'mhkg2876633', 'msjulhas_designer@yahoo.com', '119.30.35.129', '1', '04/16/2011', '11:13:12 PM', '3', '20110504153528', '201104161113123P9ohAmvijex0pnb86UXEgNztDsLTH');
INSERT INTO `t_user` VALUES ('1375', 'রংবাজ', '8801191283632', 'rongbaj', '19892003', 'juran56@gmail.com', '180.211.219.5', '0', '04/17/2011', '02:26:34 AM', '3', '0', '20110417022634BoQL9pVGcNKnH3RbvuUXhjwTmgMY2J');
INSERT INTO `t_user` VALUES ('1376', 'নীল অপরাজিতা ফুল', '০১৯১১০৪৮০০৭', 'nil_oporajita_ful', 'ami nondini', 'ss.priya94@gmail.com', '117.18.231.26', '1', '04/17/2011', '08:25:29 AM', '3', '20110417194424', '20110417082529unJwTWq584F9NmDHBKgi1VXc2kQzfM');
INSERT INTO `t_user` VALUES ('1377', 'seo', '01978678799', 'seo', 'jj', 'shawkat.ali.zawhar@gmail.com', '180.234.66.141', '1', '04/17/2011', '09:25:41 AM', '3', '20110418181433', '20110417092541NbdfnE19yWlu6kQsPMxgTX3aUHRjz2');
INSERT INTO `t_user` VALUES ('1378', 'Afiat', '01190537381', 'Syed Afiat Rahman', 'ar1717530569', 'afiat.account@gmail.com', '120.50.181.226', '1', '04/17/2011', '09:56:42 AM', '3', '20110417210542', '20110417095642pNCPvmt5FsoATJiuESeqGHWgwck3y6');
INSERT INTO `t_user` VALUES ('1379', 'nuralom', '01717481455', 'nuralom', 'alom1234', 'smartalom@yahoo.com', '64.255.180.140', '0', '04/18/2011', '03:49:46 AM', '3', '0', '20110418034946f31beDJxj9onhBCmvq8l6YstuaXS7T');
INSERT INTO `t_user` VALUES ('1381', 'greenhill', '01550606022', 'press', 'faruk', 'alfarukazamcht@gmail.com', '180.149.17.167', '1', '04/18/2011', '11:26:53 AM', '3', '20110418223806', '20110418112653umN4YQhH2S0az1jv9cLnJt8drqkCK7');
INSERT INTO `t_user` VALUES ('1382', '&#2453;&#2495;&#2441;&#2474;&#2495;&#2465;', '01674253888', 'Cupid', 'lokkhisyki', 'cupidsyki@yahoo.com', '180.149.8.182', '1', '04/18/2011', '04:01:57 PM', '3', '20110502115003', '201104180401571z5s2V06Mq8oiuNHTjExQglBybXYaC');
INSERT INTO `t_user` VALUES ('1383', 'desh', '009710561599147', 'mdrubel', 'prya007', 'mdrubelnazrul@yahoo.com', '86.96.228.86', '0', '04/19/2011', '05:47:53 AM', '3', '0', '20110419054753TvjyYWLtuiEUGZKc9Sogmnha54bfPx');
INSERT INTO `t_user` VALUES ('1384', 'Avey mvC`', '+8801813879350', 'abusyaed', '01672344603', 'abusayed_17@yahoo.com', '123.49.63.34', '1', '04/20/2011', '08:39:58 AM', '3', '0', '20110420083958HsViy9B3gjaKv08qTXcZwzrG1DFEbU');
INSERT INTO `t_user` VALUES ('1385', 'abu', '+8801558668754', 'abusayed', '01672344603', 'eng.abusayed@gmail.com', '123.49.63.34', '0', '04/20/2011', '08:46:25 AM', '3', '0', '20110420084625ZTrqb4UFhVoLi3JlDs0N2wWKvQYE9H');
INSERT INTO `t_user` VALUES ('1386', 'সেরা ব্লগ ও ব্লগার নির্বাচন', '01753242222', 'bestblog', 'best', 'jaherrahman@gmail.com', '117.18.231.19', '1', '04/20/2011', '10:59:06 AM', '3', '20110425000112', '20110420105906p5qLxrEi8eyZRS1NoXK2sbmwABgl0Q');
INSERT INTO `t_user` VALUES ('1387', 'সেরা  ব্লগার নির্বাচন', '01753242222', '2011', '2011', 'jaherrahman@gmail.com', '117.18.231.8', '1', '04/20/2011', '11:07:29 AM', '3', '20110501223419', '20110420110729ebnHSkGZ3qxNf4op1vLmzR9YBUVPlW');
INSERT INTO `t_user` VALUES ('1388', 'শরীফ সরকার নীল', '+8801745544495', 'sarkar1380', '01745544509', 'SARKAR1380@gmail.com', '210.1.247.68', '1', '04/20/2011', '12:08:16 PM', '3', '20110429200559', '201104201208169KzLYZorimw0aG7uFCWtc2bn8lkhxf');
INSERT INTO `t_user` VALUES ('1389', 'প্রকাশিত অথবা অপ্রকাশিত', '2525252', 'masi', 's', 'alfajake2015@gmail.com', '202.56.7.135', '1', '04/20/2011', '10:01:25 PM', '3', '20110503125111', '20110420100125CDxKeu3lyZ6VhES5cPX7ArzQgfskip');
INSERT INTO `t_user` VALUES ('1390', 'ওয়াহিদ ইকবেল', '01556493633', 'Hafiz Islam', 'H330745z', 'hafiz_i1990@yahoo.com', '119.30.39.62', '0', '04/21/2011', '06:31:14 AM', '3', '0', '201104210631144lyws9dWuMXzGZnYHB3LJEhbofR6c8');
INSERT INTO `t_user` VALUES ('1391', 'একজন সাদা বালক', '+97466030513', 'Ekjon Sada Balok', 'anilufa12', 'aishpram@gmail.com', '89.211.61.171', '1', '04/21/2011', '07:26:11 AM', '3', '20110502134133', '20110421072611fCJGsb4KtlT8QzEpgi5VMmPHN39Zce');
INSERT INTO `t_user` VALUES ('1392', 'কিশোর', '০১৬৭৪৩৬৬৮৯৫', 'kishoree', 'branc81ostoma', 'kishoree.bd@gmail.com', '119.30.35.139', '0', '04/21/2011', '12:17:22 PM', '3', '0', '20110421121722W8F5T2kB1UjtyKc3b04VJqdvXGCNhZ');
INSERT INTO `t_user` VALUES ('1393', '&#2488;&#2494;&#2439;&#2453;&#2495;', '01928710516', 'sayki', 'cupidsyki', 'naiadtonny@gmail.com', '180.149.12.180', '1', '04/21/2011', '08:08:20 PM', '3', '20110501215533', '20110421080820XUeqsg0GW5hFbA149Y3okynHRBd8iz');
INSERT INTO `t_user` VALUES ('1395', 'ভূইফোঁড়', '01723457749', 'nobaab', '19711972', 'godisfrod@gmail.com', '203.112.195.149', '1', '04/23/2011', '02:01:25 AM', '3', '20110423141607', '20110423020125E4QsafZFjbMLACTwktXKBvg8rc3Gi2');
INSERT INTO `t_user` VALUES ('1396', 'আই -পি -এল', '434563', 'ipl', 's', 'alfajake2015@gmail.com', '119.30.35.133', '1', '04/23/2011', '12:06:16 PM', '3', '20110503172741', '20110423120616HWVfBDQ0iT845eJy1mYzK9l7ckFSdN');
INSERT INTO `t_user` VALUES ('1397', 'Rahim_Shah', '01296106783', 'rahaim.shah', '123456', 'www.opest.net@gmail.com', '180.234.46.165', '1', '04/23/2011', '12:55:04 PM', '3', '20110424000039', '20110423125504MLQi9vfVw3DtH4NlcPaeyJE1UArndS');
INSERT INTO `t_user` VALUES ('1398', 'শামুক', '01671658073', 'shamuk', '742685586247', 'shamuk@live.com', '182.160.123.194', '1', '04/23/2011', '09:22:57 PM', '3', '20110424083021', '20110423092257AlUJ81aLeZiGzdQHjDxNwRBFVoK7vY');
INSERT INTO `t_user` VALUES ('1399', 'তানভীর', '8801722575821', 'Tahammad', '01722575821', 'Tahammad@ymail.com', '82.145.208.235', '0', '04/24/2011', '12:03:13 AM', '3', '0', '20110424120313pAHaDCgVc31wb4MYKln7NUyvjfrQ2u');
INSERT INTO `t_user` VALUES ('1400', 'Bulbul Tapader', '01731474533', 'Bulbul Tapader', '0192960966', 'bulbultapader@gmail.com', '114.130.35.199', '1', '04/24/2011', '06:10:56 AM', '3', '20110424171425', '20110424061056wGeRzE81rpsH6YP5KoAfLXVn9jqBDx');
INSERT INTO `t_user` VALUES ('1401', 'JAHIR AHAMED', '01820303751', 'JAHIR AHAMED', '878252', 'ahamedjahir@yahoo.com', '82.145.209.45', '0', '04/24/2011', '11:29:24 PM', '3', '0', '20110424112924xk5oJsujPi9vezyXFwmYrT8tfbEQBR');
INSERT INTO `t_user` VALUES ('1402', 'জনিকা', '01712666510', 'Zanika', 'BIRAZRSSONA098', 'kh.zmahmud@gmail.com', '117.18.231.4', '1', '04/25/2011', '01:56:28 AM', '3', '0', '20110425015628En3iQPYzcJNalhWZeMj81mv6Ds9t2g');
INSERT INTO `t_user` VALUES ('1403', 'ওপেস্ট লেখক ফোরাম', '01753242222', 'forum', 'forum', 'jaherrahman@gmail.com', '117.18.231.9', '1', '04/25/2011', '11:51:56 AM', '3', '20110501223341', '20110425115156qkgRy0SjbsZEx6UMCDmr8w3nhQtBAd');
INSERT INTO `t_user` VALUES ('1404', 'ওয়াহিদ সুজন', '01816801471', 'wahedsujan', 'farzanarupa', 'wahedsujan@gmail.com', '202.51.176.52', '1', '04/25/2011', '12:24:29 PM', '3', '20110425233933', '20110425122429xKvp2uc0JokWFzhq5jslG43a8SHBQi');
INSERT INTO `t_user` VALUES ('1405', 'সাঈদ', '01915 810 700', 'Sayeed', '1223334444', 'yoursayd_aub@yahoo.com', '202.134.8.91', '1', '04/25/2011', '09:24:23 PM', '3', '20110427063237', '20110425092423WyLc6VdatmhUjY0C3xs1iP4n8wNkp2');
INSERT INTO `t_user` VALUES ('1406', 'নীলয়', '01191420459', 'NILOY', 'abcd', 'jadu577@gmail.com', '202.134.8.90', '0', '04/26/2011', '01:40:39 PM', '3', '0', '201104260140394yasUu9JqBNkQjY6Mx5fmb0F7eSDoW');
INSERT INTO `t_user` VALUES ('1407', 'হেভেন', '01722686970', 'Hotom_Pecha', '686970', 'djuice15@yahoo.com', '202.134.14.28', '1', '04/26/2011', '11:18:52 PM', '3', '20110501171934', '20110426111852xSRcq7w2MWFZCeU3sPlXB8YfAud5Tb');
INSERT INTO `t_user` VALUES ('1408', 'Sadman Rahman', '01670012013', 'srahman', '01716902169', 's.rahmanayon', '180.149.12.95', '0', '04/27/2011', '12:04:22 AM', '3', '0', '20110427120422yVH91KU2nosL0hTamNPkvXbjSwuxrR');
INSERT INTO `t_user` VALUES ('1409', 'সাদমান রাহমান', '01670012013', 'sadmanrahmanayon', '01716902169', 's.rahmanayon@gmail.com', '180.149.12.95', '1', '04/27/2011', '12:06:21 AM', '3', '20110429100212', '20110427120621ZYr9F0SqdtcjwzuD5VR8Tvi4hgCMmo');
INSERT INTO `t_user` VALUES ('1410', 'HIMU', 'REDWAN', 'red1kbir', '477752', 'redwan_hbsb@hotmail.com', '119.30.39.61', '1', '04/27/2011', '12:11:57 AM', '3', '20110430111246', '201104271211574dhSxQvbUtl6EsgV9amKW1jukRGN7L');
INSERT INTO `t_user` VALUES ('1411', 'ভেজা বিড়াল', '01672082512', 'sbjsabuj', 'ope907585', 'sbj.sabuj@gmail.com', '114.130.35.199', '0', '04/27/2011', '12:12:57 AM', '3', '0', '20110427121257WtuPEYQq2mHAoXa9VpzMi86wRhL43n');
INSERT INTO `t_user` VALUES ('1412', 'মেনন আহমেদ', '01711251510', 'manonopset', '251510mh', 'manon4g@gmail.com', '119.30.35.135', '1', '04/27/2011', '12:25:43 AM', '3', '20110428100131', '20110427122543uFwScYKWHGA8LV3Mf2RP70xembD9Bs');
INSERT INTO `t_user` VALUES ('1413', 'ria rani', '01912306363', 'ria rani', '306367', 'riaakter.akter@gmail.com', '180.211.219.5', '1', '04/27/2011', '12:29:05 AM', '3', '20110427114659', '20110427122905CuJLUjvDit9sh8mRbf7EF4MqApaey1');
INSERT INTO `t_user` VALUES ('1414', 'অন্য সময়', '01818104042', 'AnnoSomoy', '0172002409', 'microbes.du@gmail.com', '116.193.174.171', '1', '04/27/2011', '01:10:43 AM', '3', '0', '20110427011043LchgVdx0ClyitJZmq87wBXWMSHn6UF');
INSERT INTO `t_user` VALUES ('1415', 'ইফতেখার আরসালান', '01738007961', 'omairhossain', 'a508088a', 'xmanbangla@gmail.com', '203.189.230.7', '1', '04/27/2011', '01:37:19 AM', '3', '20110427124216', '20110427013719DuyokMbYgARw3dxLfNtHsv9pj0PrTq');
INSERT INTO `t_user` VALUES ('1416', 'জাবেদ ভুঁইয়া', '8801744991905', 'jabed bhoiyan', 'jabed', 'moktolota@yahoo.com', '173.254.204.123', '0', '04/27/2011', '03:40:33 AM', '3', '0', '20110427034033VjQslkHgafyUXhwTnzEm02Zet1rSFo');
INSERT INTO `t_user` VALUES ('1417', 'FARABE', '01917306033', 'eflbdmamun', 'mamun1122', 'eflbd.mamun@gmail.com', '123.49.4.210', '1', '04/27/2011', '04:52:37 AM', '3', '20110427161322', '201104270452371jDHMt6yNLiG5vhlVkY0mKeUS2audB');
INSERT INTO `t_user` VALUES ('1418', 'জলতাজা', '01811002021', 'JOLTAJA', 'joltaja', 'ti.tazul@yahoo.com', '119.30.39.55', '1', '04/27/2011', '06:45:31 AM', '3', '20110428224535', '20110427064531Jxd09AHumEpCt4XawUMqK6RoiTWrVP');
INSERT INTO `t_user` VALUES ('1419', 'আমি বাংলার গান গাই.', '০১৯২৮৩৬৬৯২০', 'shakilabd.', 'nasif1', 'shakilsab@gmail.com', '202.164.211.165', '1', '04/29/2011', '09:06:59 AM', '3', '20110430132123', '20110429090659FdKwlW1yEiuJ5CbgaZB0HefP3AmUrS');
INSERT INTO `t_user` VALUES ('1420', 'খাঁন সাহেব', '01715280004', 'RAHAMAT', 'JJJJJ', 'RAHAMAT1905@YAHOO.COM', '82.145.210.136', '1', '04/29/2011', '08:28:31 PM', '3', '0', '20110429082831MFVnQtwZREY8mvKd60cPjipHoUWaCD');
INSERT INTO `t_user` VALUES ('1421', 'ইউনিজয়', '019876543', '10', 'ab', 'tarek.japan@gmail.com', '180.234.86.126', '1', '04/30/2011', '11:10:28 AM', '3', '20110430222352', '20110430111028yp946CvgFf1X7qDoxBUSPN8cnJWZu5');
INSERT INTO `t_user` VALUES ('1422', 'অনলাইন সাধারণ সভার অতিথি', '01753242222', '2010', '2010', 'jaherrahman@gmail.com', '117.18.231.1', '1', '05/01/2011', '08:34:56 AM', '3', '20110501224150', '20110501083456SHvyunQNcje14Glb8CaiTMUZr5YDkh');
INSERT INTO `t_user` VALUES ('1423', 'নাট-বল্টু-স্প্রিং-বেয়ারিং', '01234567890', 'rafino', '848585', 'siam.enigmax@gmail.com', '116.193.173.145', '0', '05/01/2011', '10:03:43 AM', '3', '0', '201105011003433G7YAumqt69fNB4UwXQR5ZleT8xgzr');
INSERT INTO `t_user` VALUES ('1424', 'অপরাজিতা বন্যা', 'o119111111', 'oporajitabonna', '021741', 'oporajitabonna@ymail.com', '180.234.69.10', '0', '05/01/2011', '10:17:43 AM', '3', '0', '201105011017438Vanc4BNbTf3FlyosHieAQPUqzdrhJ');
INSERT INTO `t_user` VALUES ('1425', 'ASHRAFULMUNIM', '01824145921', 'ashrafulmunim', 'a0171146801', 'munim0902126_cuet@yahoo.com', '202.56.7.139', '0', '05/01/2011', '10:34:29 AM', '3', '0', '20110501103429F47PUZ9gtnWzuCh05BqR2vLJdMDKAH');
INSERT INTO `t_user` VALUES ('1426', 'রাত জাগা তারা', 'rat jaga tara', 'nayeem7537', 'ba7537', 'nayeem07537@yahoo.com', '202.134.8.94', '1', '05/01/2011', '10:40:32 AM', '3', '20110503214431', '20110501104032NqCQ7vZHlDb42wTcYaXz9WieEhKnM0');
INSERT INTO `t_user` VALUES ('1427', 'নির্জীব', '01196165705', 'NK', 'nilkabbo001', 'nilkabbo@gmail.com', '180.234.88.37', '1', '05/02/2011', '01:11:11 AM', '3', '20110503174000', '20110502011111EDL3d4VzCQ0GNb1gm89w6MtT5YhKra');
INSERT INTO `t_user` VALUES ('1428', 'এম.জহিরুল ইসলাম', '01912780872', 'M.jahirul Islam', 'Abumahin', 'm.jahir@live.com', '180.149.27.92', '1', '05/02/2011', '04:52:01 AM', '3', '20110504145154', '20110502045201NLjWK9q1wcTV7oydYfvQSDRs4ZaigB');
INSERT INTO `t_user` VALUES ('1429', 'র', '01753242222', 'raw', 'raw', 'jaherrahman@gmail.com', '117.18.229.8', '1', '05/03/2011', '01:08:59 AM', '3', '20110503121011', '20110503010859KYeJNwcCovH9D3Mkl2qinxrRWbaAL6');
INSERT INTO `t_user` VALUES ('1430', 'সত্যসন্ধানী', '01722717171', 'sfr', '12345', 'shawkat.ali.zawhar@gmail.com', '180.234.59.61', '1', '05/03/2011', '01:43:54 AM', '3', '20110503153058', '20110503014354kLHYsi5KwDnWSr2p0byeCqZ7tA3mP8');
INSERT INTO `t_user` VALUES ('1431', 'Nahid Parvez', '01717209111', 'nahidparvez52', '198300', 'nahidparvez52@yahoo.com', '114.130.35.199', '1', '05/03/2011', '04:20:29 AM', '3', '20110503153351', '20110503042029jaMeSWJLPyRpAQ0sbBElmXV4gTdDrc');
INSERT INTO `t_user` VALUES ('1432', 'রূবাব', '+৮৮০১৯৭৭৬৬৯৯২২', 'rubab', '55246855', 'rubab999@gmail.com', '114.130.35.199', '1', '05/03/2011', '05:16:50 AM', '3', '0', '20110503051650emJ3fVqGb2UoBkTiKvdWrcN67x4lEy');
INSERT INTO `t_user` VALUES ('1433', 'রুবাব', '+8801977669922', 'rubab007', '55246855', 'rubab999@gmail.com', '114.130.35.199', '1', '05/03/2011', '05:23:35 AM', '3', '20110504174224', '20110503052335EyD8VxKHNaBZTuX9sJrGWbn240fghM');
INSERT INTO `t_user` VALUES ('1434', 'আখিমনি', '01929214774', 'Akhimony', 'akhi2017', 'akhi999', '114.130.35.199', '0', '05/03/2011', '05:43:02 AM', '3', '0', '20110503054302FHGtRSp16alNTcDuK7Bo9z4qmh3wkC');
INSERT INTO `t_user` VALUES ('1435', 'আখি_মনি', '+8801929214774', 'Akhi999', 'akhi2017', 'akhimony@gmail.com', '114.130.35.199', '1', '05/03/2011', '06:01:43 AM', '3', '20110504173813', '2011050306014342UginjERokCXpD3M6WzsB8YPehVf0');
INSERT INTO `t_user` VALUES ('1436', 'Ahammad Khalid', '0097433694827', 'Jakaria Ahmmad Khalid', 'yahoo.com', 'khalidmi6@bismillah.com', '78.101.57.234', '1', '05/03/2011', '06:55:22 AM', '3', '20110503230216', '20110503065522U75FJ14RNZw9gEhuti3YqQVMLGBy86');
INSERT INTO `t_user` VALUES ('1437', 'inequilibrium', '01724441813', 'masudur rahman', 'masud07', 'masud_039d@yahoo.com', '64.255.164.25', '0', '05/03/2011', '09:40:07 AM', '3', '0', '20110503094007PdhBW4Zmu2F1rwvfnsRkCQYSaj8VKE');
INSERT INTO `t_user` VALUES ('1438', 'কালো কাক', '01729313875', 'Rashed', '249306', 's.swopon@yahoo.com', '119.30.39.33', '1', '05/03/2011', '08:34:17 PM', '3', '20110504075823', '20110503083417lW3Y9wajy2PScG6km1XFsQ8ACDfqn5');

-- ----------------------------
-- Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `UnitId` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UnitType` int(11) DEFAULT NULL,
  `DecimalPlaces` int(11) DEFAULT NULL,
  `CompanyID` int(11) NOT NULL,
  `FirstUnitID` int(11) DEFAULT NULL,
  `SecondUnitID` int(11) DEFAULT NULL,
  `Convertion` decimal(20,4) DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UnitId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', 'Qty', '1', '2', '1', '0', '0', '0.0000', '1', '3', '2010-10-15 10:48:23', null, null);
INSERT INTO `unit` VALUES ('2', 'USD', '2', '2', '1', '0', '0', '0.0000', '1', '3', '2010-10-15 10:48:43', null, null);
INSERT INTO `unit` VALUES ('3', 'rr', '1', '3', '1', '0', '0', '0.0000', '0', '0', '2010-11-27 12:39:35', null, null);
INSERT INTO `unit` VALUES ('4', 'ffff', '2', '3', '1', '0', '0', '0.0000', '0', '0', '2010-11-27 12:40:54', null, null);
INSERT INTO `unit` VALUES ('5', 'tt', '1', '0', '1', '0', '0', '0.0000', '0', '0', '2010-11-27 12:41:42', null, null);

-- ----------------------------
-- Table structure for `unite_type`
-- ----------------------------
DROP TABLE IF EXISTS `unite_type`;
CREATE TABLE `unite_type` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unite_type
-- ----------------------------
INSERT INTO `unite_type` VALUES ('10', 'Ã Â¦â€¢Ã Â¦Â¿Ã Â¦Â²Ã Â§â€¹Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â¦Â¾Ã Â¦Â®');
INSERT INTO `unite_type` VALUES ('11', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â¦Â¾Ã Â¦Â®');
INSERT INTO `unite_type` VALUES ('12', 'Ã Â¦Â²Ã Â¦Â¿Ã Â¦Å¸Ã Â¦Â¾Ã Â¦Â°');
INSERT INTO `unite_type` VALUES ('13', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦â€°Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¡');
INSERT INTO `unite_type` VALUES ('14', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â¦Â¸');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `full_name` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `employeeid` int(10) unsigned DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `language` varchar(8) DEFAULT NULL,
  `locationid` int(10) unsigned DEFAULT NULL,
  `userlevel` int(11) NOT NULL,
  `CompanyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`username`),
  KEY `fk_user_location` (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'Admin', 'b3797e4dffd3e7373fe55603b2c312df', '94', 'owner', 'en', '1', '100', '79');
INSERT INTO `user` VALUES ('2', 'samad', null, 'b83967eadde633743f9f74e60b95bae8', '6', null, null, null, '1', '1');
INSERT INTO `user` VALUES ('3', 'nazrul', null, 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, null, '2', '1');
INSERT INTO `user` VALUES ('4', '6057', null, '177db6acfe388526a4c7bff88e1feb15', '53', null, null, null, '1', '1');
INSERT INTO `user` VALUES ('5', '6180', null, '7b6747a0207387d4bf738d2de528b8da', '54', null, null, null, '2', '1');
INSERT INTO `user` VALUES ('6', 'samad1', null, 'f6a4aefa5cbcf7129eeabac3cd0580f6', '7', null, null, null, '2', '1');
INSERT INTO `user` VALUES ('7', 'sadat', null, '69b906777020044654bafe37847add93', '5', null, null, null, '2', '1');
INSERT INTO `user` VALUES ('8', 'genuser', null, 'c5cb84d2aa03be7ea2d54660da36131e', '92', null, null, null, '1', '1');
INSERT INTO `user` VALUES ('44', 'ddd', null, '4403782c59db6f212712208e0f829d18', null, 'admin', null, null, '0', null);

-- ----------------------------
-- Table structure for `usergroup_permission`
-- ----------------------------
DROP TABLE IF EXISTS `usergroup_permission`;
CREATE TABLE `usergroup_permission` (
  `groupid` int(10) unsigned NOT NULL,
  `permissionid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`groupid`,`permissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroup_permission
-- ----------------------------
INSERT INTO `usergroup_permission` VALUES ('1', '1');
INSERT INTO `usergroup_permission` VALUES ('2', '5');
INSERT INTO `usergroup_permission` VALUES ('3', '3');
INSERT INTO `usergroup_permission` VALUES ('3', '4');
INSERT INTO `usergroup_permission` VALUES ('4', '2');
INSERT INTO `usergroup_permission` VALUES ('5', '6');
INSERT INTO `usergroup_permission` VALUES ('6', '7');
INSERT INTO `usergroup_permission` VALUES ('7', '6');
INSERT INTO `usergroup_permission` VALUES ('7', '7');
INSERT INTO `usergroup_permission` VALUES ('7', '8');
INSERT INTO `usergroup_permission` VALUES ('7', '9');

-- ----------------------------
-- Table structure for `useronline`
-- ----------------------------
DROP TABLE IF EXISTS `useronline`;
CREATE TABLE `useronline` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `timestamp` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of useronline
-- ----------------------------
INSERT INTO `useronline` VALUES ('501', '::1', '1338889477');
INSERT INTO `useronline` VALUES ('502', '::1', '1338889477');
INSERT INTO `useronline` VALUES ('503', '::1', '1338889501');
INSERT INTO `useronline` VALUES ('504', '::1', '1338889501');
INSERT INTO `useronline` VALUES ('505', '::1', '1338889540');
INSERT INTO `useronline` VALUES ('506', '::1', '1338889540');
INSERT INTO `useronline` VALUES ('507', '::1', '1338889640');
INSERT INTO `useronline` VALUES ('508', '::1', '1338889640');
INSERT INTO `useronline` VALUES ('509', '::1', '1338889670');
INSERT INTO `useronline` VALUES ('510', '::1', '1338889670');
INSERT INTO `useronline` VALUES ('511', '::1', '1338889692');
INSERT INTO `useronline` VALUES ('512', '::1', '1338889693');
INSERT INTO `useronline` VALUES ('513', '::1', '1338889709');
INSERT INTO `useronline` VALUES ('514', '::1', '1338889709');
INSERT INTO `useronline` VALUES ('515', '::1', '1338889730');
INSERT INTO `useronline` VALUES ('516', '::1', '1338889730');
INSERT INTO `useronline` VALUES ('517', '::1', '1338889753');
INSERT INTO `useronline` VALUES ('518', '::1', '1338889753');
INSERT INTO `useronline` VALUES ('519', '::1', '1338889771');
INSERT INTO `useronline` VALUES ('520', '::1', '1338889771');
INSERT INTO `useronline` VALUES ('521', '::1', '1338889847');
INSERT INTO `useronline` VALUES ('522', '::1', '1338889847');
INSERT INTO `useronline` VALUES ('523', '::1', '1338889871');
INSERT INTO `useronline` VALUES ('524', '::1', '1338889871');
INSERT INTO `useronline` VALUES ('525', '::1', '1338889889');
INSERT INTO `useronline` VALUES ('526', '::1', '1338889889');
INSERT INTO `useronline` VALUES ('527', '::1', '1338889922');
INSERT INTO `useronline` VALUES ('528', '::1', '1338889922');
INSERT INTO `useronline` VALUES ('529', '::1', '1338889964');
INSERT INTO `useronline` VALUES ('530', '::1', '1338889964');
INSERT INTO `useronline` VALUES ('531', '::1', '1338889998');
INSERT INTO `useronline` VALUES ('532', '::1', '1338889998');
INSERT INTO `useronline` VALUES ('533', '::1', '1338890033');
INSERT INTO `useronline` VALUES ('534', '::1', '1338890033');
INSERT INTO `useronline` VALUES ('535', '::1', '1338890059');
INSERT INTO `useronline` VALUES ('536', '::1', '1338890059');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `bio` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'eaktadiur', 'rajib', 'eaktadiur@gmail.com', '1', '1', '1');

-- ----------------------------
-- Table structure for `users_mvc`
-- ----------------------------
DROP TABLE IF EXISTS `users_mvc`;
CREATE TABLE `users_mvc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_mvc
-- ----------------------------
INSERT INTO `users_mvc` VALUES ('1', 'admin', 'admin', 'owner');
INSERT INTO `users_mvc` VALUES ('2', 'test2', '74be16979710d4c4e7c6647856088456', 'default');
INSERT INTO `users_mvc` VALUES ('6', 'eaktadiur', 'adebff52799054233f37c96cd8fe569f', 'admin');
INSERT INTO `users_mvc` VALUES ('7', 'admin', 'bc10839c8a69c2817165e20c359f8cc8', 'owner');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `username` varchar(32) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`username`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('admin', '1');
INSERT INTO `user_group` VALUES ('admin', '2');
INSERT INTO `user_group` VALUES ('admin', '3');
INSERT INTO `user_group` VALUES ('admin', '4');
INSERT INTO `user_group` VALUES ('admin', '7');
INSERT INTO `user_group` VALUES ('faruk', '5');

-- ----------------------------
-- Table structure for `user_level`
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `levelid` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `levelgroupid` int(2) NOT NULL,
  `processing_type` int(2) NOT NULL,
  `menugroup` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `menuid` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `approval` int(1) NOT NULL,
  PRIMARY KEY (`levelid`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', 'General User', '1', '0', '7,8,9,205', '0', '0');
INSERT INTO `user_level` VALUES ('2', 'Advance User', '1', '0', '1,7,8,9,205,502,503', '101,308,309,118,109,312,116,117,120,121,141,504', '0');
INSERT INTO `user_level` VALUES ('108', 'WT ADMIN', '4', '0', '503,7,8,9,205', '137,122,116,130,132,133,134,135,136,123,124,127,141,143,144,145,152,161,162,506,507', '0');
INSERT INTO `user_level` VALUES ('100', 'SUPER ADMIN', '100', '100', '1,2,3,4,5,19', '6,7,8,9,10,11,12,13,14,15,16,17,18,20,21,22,23,24,25,26,27,28,29', '0');
INSERT INTO `user_level` VALUES ('106', 'PROFILE ADMIN', '4', '0', '500,501,7,8,9,205', '93,94,100,97,2,3,95,203,204', '0');
INSERT INTO `user_level` VALUES ('107', 'PT ADMIN', '4', '0', '502,7,8,9,205', '139,101,102,302,303,304,305,306,308,309,118,109,312,508', '0');

-- ----------------------------
-- Table structure for `version`
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `dbversion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('60');

-- ----------------------------
-- Table structure for `vouchertype`
-- ----------------------------
DROP TABLE IF EXISTS `vouchertype`;
CREATE TABLE `vouchertype` (
  `VoucherTypeId` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `EffectiveDate` datetime NOT NULL,
  `VoucherNature` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `IsActive` int(11) DEFAULT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`VoucherTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vouchertype
-- ----------------------------

-- ----------------------------
-- Table structure for `voucher_main`
-- ----------------------------
DROP TABLE IF EXISTS `voucher_main`;
CREATE TABLE `voucher_main` (
  `voucherID` int(4) NOT NULL AUTO_INCREMENT,
  `TranNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherReferance` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VoucherDate` date NOT NULL,
  `TransactionTypeId` int(2) NOT NULL,
  `CompanyId` int(2) NOT NULL,
  `LedgerID` int(4) DEFAULT NULL,
  `Dr` double(20,2) DEFAULT '0.00',
  `Cr` double(20,2) DEFAULT '0.00',
  `Naration` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `EntryById` int(3) NOT NULL,
  `EntryDate` date NOT NULL,
  `ModifiedById` int(3) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`voucherID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of voucher_main
-- ----------------------------
INSERT INTO `voucher_main` VALUES ('10', null, null, '0000-00-00', '5', '79', '8', '500.00', '0.00', null, '0', '0000-00-00', null, null);
INSERT INTO `voucher_main` VALUES ('11', null, null, '0000-00-00', '5', '79', '8', '500.00', '0.00', null, '0', '0000-00-00', null, null);

-- ----------------------------
-- Procedure structure for `Insert_Primary_Ledger`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Primary_Ledger`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Primary_Ledger`(IN `Company_id` int)
BEGIN
DECLARE PrimartGroup INT;



	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Primary','5',0,Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Capital Account','2','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Loans(Liability)','2','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Current Liabilities','2','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Fixed Assets','1','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Investments','1','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Current Assets','1','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Branch/Divitions','2','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Mis.Expences(Assets)','1','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Suspense A/C','2','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Sales Accounts','3','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Purchase Accounts','4','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Direct Expenses','4','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Indirect Expenses','4','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Direct Income','3','0',Company_id,'1','1','1',CURDATE());
	Insert into `Group` (`Name`, GroupNatureID, UnderGroupID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) VALUES('Indirect Income','3','0',Company_id,'1','1','1',CURDATE());

	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID, 'Reserves & Supply',2,Company_id,'1','1','1',CURDATE() from `group` where `Name` = 'Capital Account' and CompanyId=Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Bank OD A/C','2', Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Loans(Liability)' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Secured Loans','2',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Loans(Liability)' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Unsecured Loans','2',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Loans(Liability)' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Duties & Texes','2',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Liabilities' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Provisions','2',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Liabilities' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Sundry Creditors','2',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Liabilities' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Stock in hand','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Deposit(Assets)','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Loans & Advances (Assets)','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Sundry Debtors','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Cash in hand','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);
	Insert into `Group` (UnderGroupID, `Name`, GroupNatureID, CompanyID, GroupType, IsActive, CreatedBy, CreatedDate) (select GroupID,'Bank Accounts','1',Company_id,'1','1','1',CURDATE() from `Group` where `Name` = 'Current Assets' and CompanyId= Company_id);

END
;;
DELIMITER ;
