/*
Create By Wayne

Source Server         : python
Source Server Version : 50545
Source Host           : 192.168.142.135:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2017-10-01 20:27:47

http://www.magedu.com
*/
DROP DATABASE IF EXISTS test;
CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE test;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('d009', 'Customer Service');
INSERT INTO `departments` VALUES ('d005', 'Development');
INSERT INTO `departments` VALUES ('d002', 'Finance');
INSERT INTO `departments` VALUES ('d003', 'Human Resources');
INSERT INTO `departments` VALUES ('d001', 'Marketing');
INSERT INTO `departments` VALUES ('d004', 'Production');
INSERT INTO `departments` VALUES ('d006', 'Quality Management');
INSERT INTO `departments` VALUES ('d008', 'Research');
INSERT INTO `departments` VALUES ('d007', 'Sales');

-- ----------------------------
-- Table structure for dept_emp
-- ----------------------------
DROP TABLE IF EXISTS `dept_emp`;
CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_emp
-- ----------------------------
INSERT INTO `dept_emp` VALUES ('10001', 'd005', '1986-06-26', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10002', 'd007', '1996-08-03', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10003', 'd004', '1995-12-03', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10004', 'd004', '1986-12-01', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10005', 'd003', '1989-09-12', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10006', 'd005', '1990-08-05', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10007', 'd008', '1989-02-10', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10008', 'd005', '1998-03-11', '2000-07-31');
INSERT INTO `dept_emp` VALUES ('10009', 'd006', '1985-02-18', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10010', 'd004', '1996-11-24', '2000-06-26');
INSERT INTO `dept_emp` VALUES ('10010', 'd006', '2000-06-26', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10011', 'd009', '1990-01-22', '1996-11-09');
INSERT INTO `dept_emp` VALUES ('10012', 'd005', '1992-12-18', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10013', 'd003', '1985-10-20', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10014', 'd005', '1993-12-29', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10015', 'd008', '1992-09-19', '1993-08-22');
INSERT INTO `dept_emp` VALUES ('10016', 'd007', '1998-02-11', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10017', 'd001', '1993-08-03', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10018', 'd004', '1992-07-29', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10018', 'd005', '1987-04-03', '1992-07-29');
INSERT INTO `dept_emp` VALUES ('10019', 'd008', '1999-04-30', '9999-01-01');
INSERT INTO `dept_emp` VALUES ('10020', 'd004', '1997-12-30', '9999-01-01');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` smallint(6) NOT NULL DEFAULT '1' COMMENT 'M=1, F=2',
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 1, '1986-06-26');
INSERT INTO `employees` VALUES ('10002', '1964-06-02', 'Bezalel', 'Simmel', 2, '1985-11-21');
INSERT INTO `employees` VALUES ('10003', '1959-12-03', 'Parto', 'Bamford', 1, '1986-08-28');
INSERT INTO `employees` VALUES ('10004', '1954-05-01', 'Chirstian', 'Koblick', 1, '1986-12-01');
INSERT INTO `employees` VALUES ('10005', '1955-01-21', 'Kyoichi', 'Maliniak', 1, '1989-09-12');
INSERT INTO `employees` VALUES ('10006', '1953-04-20', 'Anneke', 'Preusig', 2, '1989-06-02');
INSERT INTO `employees` VALUES ('10007', '1957-05-23', 'Tzvetan', 'Zielinski', 2, '1989-02-10');
INSERT INTO `employees` VALUES ('10008', '1958-02-19', 'Saniya', 'Kalloufi', 1, '1994-09-15');
INSERT INTO `employees` VALUES ('10009', '1952-04-19', 'Sumant', 'Peac', 2, '1985-02-18');
INSERT INTO `employees` VALUES ('10010', '1963-06-01', 'Duangkaew', 'Piveteau', 2, '1989-08-24');
INSERT INTO `employees` VALUES ('10011', '1953-11-07', 'Mary', 'Sluis', 2, '1990-01-22');
INSERT INTO `employees` VALUES ('10012', '1960-10-04', 'Patricio', 'Bridgland', 1, '1992-12-18');
INSERT INTO `employees` VALUES ('10013', '1963-06-07', 'Eberhardt', 'Terkki', 1, '1985-10-20');
INSERT INTO `employees` VALUES ('10014', '1956-02-12', 'Berni', 'Genin', 1, '1987-03-11');
INSERT INTO `employees` VALUES ('10015', '1959-08-19', 'Guoxiang', 'Nooteboom', 1, '1987-07-02');
INSERT INTO `employees` VALUES ('10016', '1961-05-02', 'Kazuhito', 'Cappelletti', 1, '1995-01-27');
INSERT INTO `employees` VALUES ('10017', '1958-07-06', 'Cristinel', 'Bouloucos', 2, '1993-08-03');
INSERT INTO `employees` VALUES ('10018', '1954-06-19', 'Kazuhide', 'Peha', 2, '1987-04-03');
INSERT INTO `employees` VALUES ('10019', '1953-01-23', 'Lillian', 'Haddadi', 1, '1999-04-30');
INSERT INTO `employees` VALUES ('10020', '1952-12-24', 'Mayuko', 'Warwick', 1, '1991-01-26');

-- ----------------------------
-- Table structure for salaries
-- ----------------------------
DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`from_date`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salaries
-- ----------------------------
INSERT INTO `salaries` VALUES ('10001', '60117', '1986-06-26', '1987-06-26');
INSERT INTO `salaries` VALUES ('10001', '62102', '1987-06-26', '1988-06-25');
INSERT INTO `salaries` VALUES ('10001', '66074', '1988-06-25', '1989-06-25');
INSERT INTO `salaries` VALUES ('10001', '66596', '1989-06-25', '1990-06-25');
INSERT INTO `salaries` VALUES ('10001', '66961', '1990-06-25', '1991-06-25');
INSERT INTO `salaries` VALUES ('10001', '71046', '1991-06-25', '1992-06-24');
INSERT INTO `salaries` VALUES ('10001', '74333', '1992-06-24', '1993-06-24');
INSERT INTO `salaries` VALUES ('10001', '75286', '1993-06-24', '1994-06-24');
INSERT INTO `salaries` VALUES ('10001', '75994', '1994-06-24', '1995-06-24');
INSERT INTO `salaries` VALUES ('10001', '76884', '1995-06-24', '1996-06-23');
INSERT INTO `salaries` VALUES ('10001', '80013', '1996-06-23', '1997-06-23');
INSERT INTO `salaries` VALUES ('10001', '81025', '1997-06-23', '1998-06-23');
INSERT INTO `salaries` VALUES ('10001', '81097', '1998-06-23', '1999-06-23');
INSERT INTO `salaries` VALUES ('10001', '84917', '1999-06-23', '2000-06-22');
INSERT INTO `salaries` VALUES ('10001', '85112', '2000-06-22', '2001-06-22');
INSERT INTO `salaries` VALUES ('10001', '85097', '2001-06-22', '2002-06-22');
INSERT INTO `salaries` VALUES ('10001', '88958', '2002-06-22', '9999-01-01');
INSERT INTO `salaries` VALUES ('10002', '65828', '1996-08-03', '1997-08-03');
INSERT INTO `salaries` VALUES ('10002', '65909', '1997-08-03', '1998-08-03');
INSERT INTO `salaries` VALUES ('10002', '67534', '1998-08-03', '1999-08-03');
INSERT INTO `salaries` VALUES ('10002', '69366', '1999-08-03', '2000-08-02');
INSERT INTO `salaries` VALUES ('10002', '71963', '2000-08-02', '2001-08-02');
INSERT INTO `salaries` VALUES ('10002', '72527', '2001-08-02', '9999-01-01');
INSERT INTO `salaries` VALUES ('10003', '40006', '1995-12-03', '1996-12-02');
INSERT INTO `salaries` VALUES ('10003', '43616', '1996-12-02', '1997-12-02');
INSERT INTO `salaries` VALUES ('10003', '43466', '1997-12-02', '1998-12-02');
INSERT INTO `salaries` VALUES ('10003', '43636', '1998-12-02', '1999-12-02');
INSERT INTO `salaries` VALUES ('10003', '43478', '1999-12-02', '2000-12-01');
INSERT INTO `salaries` VALUES ('10003', '43699', '2000-12-01', '2001-12-01');
INSERT INTO `salaries` VALUES ('10003', '43311', '2001-12-01', '9999-01-01');
INSERT INTO `salaries` VALUES ('10004', '40054', '1986-12-01', '1987-12-01');
INSERT INTO `salaries` VALUES ('10004', '42283', '1987-12-01', '1988-11-30');
INSERT INTO `salaries` VALUES ('10004', '42542', '1988-11-30', '1989-11-30');
INSERT INTO `salaries` VALUES ('10004', '46065', '1989-11-30', '1990-11-30');
INSERT INTO `salaries` VALUES ('10004', '48271', '1990-11-30', '1991-11-30');
INSERT INTO `salaries` VALUES ('10004', '50594', '1991-11-30', '1992-11-29');
INSERT INTO `salaries` VALUES ('10004', '52119', '1992-11-29', '1993-11-29');
INSERT INTO `salaries` VALUES ('10004', '54693', '1993-11-29', '1994-11-29');
INSERT INTO `salaries` VALUES ('10004', '58326', '1994-11-29', '1995-11-29');
INSERT INTO `salaries` VALUES ('10004', '60770', '1995-11-29', '1996-11-28');

-- ----------------------------
-- Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`title`,`from_date`),
  CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titles
-- ----------------------------
INSERT INTO `titles` VALUES ('10001', 'Senior Engineer', '1986-06-26', '9999-01-01');
INSERT INTO `titles` VALUES ('10002', 'Staff', '1996-08-03', '9999-01-01');
INSERT INTO `titles` VALUES ('10003', 'Senior Engineer', '1995-12-03', '9999-01-01');
INSERT INTO `titles` VALUES ('10004', 'Engineer', '1986-12-01', '1995-12-01');
INSERT INTO `titles` VALUES ('10004', 'Senior Engineer', '1995-12-01', '9999-01-01');
INSERT INTO `titles` VALUES ('10005', 'Senior Staff', '1996-09-12', '9999-01-01');
INSERT INTO `titles` VALUES ('10005', 'Staff', '1989-09-12', '1996-09-12');
INSERT INTO `titles` VALUES ('10006', 'Senior Engineer', '1990-08-05', '9999-01-01');
INSERT INTO `titles` VALUES ('10007', 'Senior Staff', '1996-02-11', '9999-01-01');
INSERT INTO `titles` VALUES ('10007', 'Staff', '1989-02-10', '1996-02-11');
INSERT INTO `titles` VALUES ('10008', 'Assistant Engineer', '1998-03-11', '2000-07-31');
INSERT INTO `titles` VALUES ('10009', 'Assistant Engineer', '1985-02-18', '1990-02-18');
INSERT INTO `titles` VALUES ('10009', 'Engineer', '1990-02-18', '1995-02-18');
INSERT INTO `titles` VALUES ('10009', 'Senior Engineer', '1995-02-18', '9999-01-01');
INSERT INTO `titles` VALUES ('10010', 'Engineer', '1996-11-24', '9999-01-01');
INSERT INTO `titles` VALUES ('10011', 'Staff', '1990-01-22', '1996-11-09');
INSERT INTO `titles` VALUES ('10012', 'Engineer', '1992-12-18', '2000-12-18');
INSERT INTO `titles` VALUES ('10012', 'Senior Engineer', '2000-12-18', '9999-01-01');
INSERT INTO `titles` VALUES ('10013', 'Senior Staff', '1985-10-20', '9999-01-01');
INSERT INTO `titles` VALUES ('10014', 'Engineer', '1993-12-29', '9999-01-01');
INSERT INTO `titles` VALUES ('10015', 'Senior Staff', '1992-09-19', '1993-08-22');
