-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2014 at 07:09 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bridgeway`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middle_initial` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hire_date` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `edu_vocational` varchar(100) NOT NULL,
  `edu_college` varchar(100) NOT NULL,
  `edu_secondary` varchar(100) NOT NULL,
  `edu_elementary` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `cellphone` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `date_applied` varchar(100) NOT NULL,
  `date_decline` varchar(100) NOT NULL,
  `employee_reference` varchar(100) NOT NULL,
  `barcode` varchar(1000) NOT NULL,
  `id_images` varchar(100) NOT NULL,
  `civil_status` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `employee_id` (`employee_id`),
  KEY `firstname` (`firstname`,`middle_initial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `firstname`, `middle_initial`, `lastname`, `address1`, `birthdate`, `email`, `position`, `hire_date`, `department`, `edu_vocational`, `edu_college`, `edu_secondary`, `edu_elementary`, `status`, `cellphone`, `telephone`, `date_applied`, `date_decline`, `employee_reference`, `barcode`, `id_images`, `civil_status`) VALUES
(25, 'Juan', 'C', 'Flavier', 'Cainta Life Homes', '11/13/1982', 'flavio@hotmail.com', 'Sales Agent', '2012-9-10 17:20:10', '', '', '', '', '', 'decline', '09256855555', '', '', '2014-01-01 10:43:01', 'BRW-00025', '4809010508898', '', 'married'),
(27, 'Christopher', 'Lanio', 'Marasigan', 'Fords Street Taniman bayan Cubao Quezon City', '04/06/1993', 'assman_34533@yahoo.com', 'Sales Manager', '2014-01-10 12:04:15', '', '', 'New York State University', 'Afternoon High School', 'Morning Elementary', 'hired', '09183566855', '8885556', '2012-11-12 00:13:56', '2014-01-10 12:04:07', 'BRW-00027', '48037877', '-1.jpg', 'single'),
(30, 'Linda', 'D', 'Curtis', '144 Antipolo City', '02/31/1970', 'lcurtis@hotmail.com', 'Cashier', '2012-10-16 00:13:33', '', '', 'Ateneo Manila', 'Rizal Technology', 'Antipolo Elementary', 'hired', '09144587854', '8659955', '2012-10-13 00:13:23', '', 'BRW-00030', '4800067055861', '30-Photo Id.jpg', 'single'),
(31, 'Andrew', 'T', 'Ang', 'China Town', '10/29/1977', 'ang@gmail.com', 'Sales Agent', '2012-10-15 00:14:10', '', '', 'UP diliman', 'Morning High School', 'Daylight  Elementary School', 'hired', '09148546846', '6995788', '', '', 'BRW-00031', '005101520100016', '31-id-pic9.jpg', 'married'),
(32, 'Robert', 'T', 'Patterson', '175 Pasig', '10/10/1990', 'rob@gmail.com', 'Staff', '2014-01-01 10:42:28', '', '', '', '', '', 'decline', '09256845555', '5685455', '2012-12-26 11:19:55', '2014-01-01 10:42:39', 'BRW-00032', '', '-1.jpg', ''),
(33, 'Robert', '', 'Patterson', '', '', 'robert@gmail.com', '', '', '', '', '', '', '', '', '', '', '2012-12-26 11:20:45', '', 'BRW-00033', '', '', ''),
(34, 'sdfsf', '', 'sdfsf', '', '', 'pstomon', '', '', '', '', '', '', '', '', '', '', '2014-01-01 11:59:16', '', 'BRW-00034', '', '', ''),
(35, 'sdfsf', 'T', 'sdfsf', 'Pasig', '11/11/1990', 'mhke_aj5566@yahoo.com', '', '', '', '', '', '', '', 'decline', '19544544455', '', '2014-01-01 12:00:23', '2014-01-01 12:39:25', 'BRW-00035', '', '35-2.jpg', ''),
(36, 'salve', 'G', 'salve', 'pasig', '01/02/2000', 'pagdanganan_michael_ryan@yahoo.com', 'Sales Manager', '2014-01-01 12:40:44', '', '', '', '', '', 'hired', '19544544455', '7874455', '2014-01-01 12:40:01', '', 'BRW-00036', '', '', ''),
(37, 'Elijah', '', 'Jacinto', '', '', 'jacintoelijah@yahoo.com', '', '', '', '', '', '', '', '', '', '', '2014-01-06 09:01:31', '', 'BRW-00037', '', '', ''),
(38, 'carla', 'requireddaw', 'natics', '123 sisa cor basilio st. samaypaloc manila', '04/02/1998', 'maayosnasir@yahoo.com', 'Cashier', '', '', '', '', '', '', 'decline', '12345678901', '', '2014-01-10 11:58:10', '2014-01-10 12:01:31', 'BRW-00038', '', '', ''),
(39, 'joseph', 'p', 'bejar', '3131', '04/13/1995', 'josephbejarfiles@yahoo.com', 'Staff', '', '', '', '', '', '', 'Applicant', '34234', '23423', '2014-01-13 00:58:12', '', 'BRW-00039', '', '', ''),
(40, 'Randell', 'G.', 'Nido', 'Taguig City', '02/11/1991', 'Randell@yahoo.com', 'General Managers', '', '', '', '', '', '', 'decline', '09341435345', '877987', '2014-01-15 16:38:47', '2014-01-15 16:44:33', 'BRW-00040', '', '', ''),
(41, 'Joseph', 'b', 'Amiel', 'fgf', '07//1995', 'joseph@yahoo.com.ph', 'Staff', '', '', '', '', '', '', 'Applicant', '09654645664', '', '2014-01-15 16:54:42', '', 'BRW-00041', '', '', ''),
(42, 'Marc', '', 'Rigor', '', '', 'marc.rig0r', '', '', '', '', '', '', '', '', '', '', '2014-01-31 03:46:59', '', 'BRW-00042', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `existing_employees`
--

CREATE TABLE IF NOT EXISTS `existing_employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middle_initial` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hire_date` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `edu_vocational` varchar(100) NOT NULL,
  `edu_college` varchar(100) NOT NULL,
  `edu_secondary` varchar(100) NOT NULL,
  `edu_elementary` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `cellphone` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `date_applied` varchar(100) NOT NULL,
  `date_decline` varchar(100) NOT NULL,
  `employee_reference` varchar(100) NOT NULL,
  `barcode` varchar(1000) NOT NULL,
  `id_images` varchar(100) NOT NULL,
  `civil_status` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `existing_employees`
--

INSERT INTO `existing_employees` (`employee_id`, `firstname`, `middle_initial`, `lastname`, `address1`, `birthdate`, `email`, `position`, `hire_date`, `department`, `edu_vocational`, `edu_college`, `edu_secondary`, `edu_elementary`, `status`, `cellphone`, `telephone`, `date_applied`, `date_decline`, `employee_reference`, `barcode`, `id_images`, `civil_status`) VALUES
(1, 'Rea', 'M.', 'Taboada', '3554 Pelaez St. Mandaluyong City', '10/07/1979', 'rea@yahoo.com', 'Clerk', '', '', '', '', '', '', 'Applicant', '09062345684', '', '', '', 'BRD-00001', '', '', ''),
(2, 'Jennifer', 'S.', 'Sy', 'Makati City', '11/08/1973', 'jennifer@gmail.com', 'Assistant Managers', '', '', '', '', '', '', 'Applicant', '09341435345', '', '', '', 'BRD-00002', '', '', ''),
(3, 'Julius Caesar', 'G.', 'Galapun', 'Novaliches City', '09/10/1971', 'julius@hotmail.com', 'Chief Executives', '', '', '', '', '', '', 'Applicant', '09341435342', '', '', '', 'BRD-00003', '', '', ''),
(4, 'Vic Arthur', 'C.', 'Tamayo', 'Makati City', '06/06/1971', 'victamayo@yahoo.com', 'Chief Executives', '', '', '', '', '', '', 'Applicant', '09072245684', '', '', '', 'BRD-00004', '', '', ''),
(5, 'Samuel', 'F.', 'Cruz', 'Pasig City', '03/25/1977', 'cruz_samuel77@yahoo.com', 'Staff', '', '', '', '', '', '', 'Applicant', '09302564364', '', '', '', 'BRD-00005', '', '', ''),
(6, 'JUAN', 'D', 'JUAN', 'FDHFJ', '10/18/2000', 'JUAN@YAHOO.COM', 'Sales Manager', '', '', '', '', '', '', 'Applicant', '8293294', '3223', '', '', 'BRD-00006', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `civil_status` varchar(15) NOT NULL,
  `citizenship` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `emergency_name` varchar(50) NOT NULL,
  `emergency_no` varchar(20) NOT NULL,
  `emergency_address` varchar(100) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registered` varchar(100) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `firstname`, `middle_name`, `lastname`, `address`, `email`, `contact`, `gender`, `civil_status`, `citizenship`, `religion`, `emergency_name`, `emergency_no`, `emergency_address`, `relationship`, `username`, `password`, `date_registered`) VALUES
(1, 'sheela', NULL, 'marinay', '', 'angpait@yahoo.ahah', 'hahahaha', '', '', '', '', '', '', '', '', 'edgars', '1234', ''),
(3, 'sheela', NULL, 'marinay', '', 'angpait@yahoo.ahah', 'hahahaha', '', '', '', '', '', '', '', '', 'jacinto', '12345', '2014-01-06 09:10:21'),
(4, 'sheela', NULL, 'marinay', '', 'angpait@yahoo.ahah', 'hahahaha', '', '', '', '', '', '', '', '', 'sheelamarinay', '123', '2014-01-10 11:45:56'),
(5, 'kevin', NULL, 'mark', '', 'mkiek@yahoo.com', '123456', '', '', '', '', '', '', '', '', 'mark', '123', '2014-01-10 12:07:50'),
(6, 'Joseph', NULL, 'Bejar', '', 'josephbejarfiles@yahoo.com', '12345678901', '', '', '', '', '', '', '', '', 'joseph', 'bejar', '2014-01-13 00:48:44'),
(7, 'qjweyhquw', NULL, 'qweiou', '', 'ajskdh@yahoo.com', '03493845734', '', '', '', '', '', '', '', '', 'jorelkimcruz', 'qwe', '2014-01-31 00:41:37'),
(8, 'asd', NULL, 'asd', '', 'marcrigor08@yahoo.com', '09068615252', '', '', '', '', '', '', '', '', 'qwe', 'qwe', '2014-01-31 04:07:38'),
(9, 'kioi', NULL, 'popo', '', 'popo@yahoo.com', '090909', '', '', '', '', '', '', '', '', 'popo', 'popo', '2014-01-31 04:26:53'),
(10, 'qweee', NULL, 'qweeee', '', 'marcrigor08@yahoo.com', '09068615252', '', '', '', '', '', '', '', '', 'mnm', 'asd', '2014-01-31 04:54:18'),
(11, 'gh', NULL, 'gh', '', 'marcrigor08@yahoo.com', '09068615252', '', '', '', '', '', '', '', '', 'df', 'asd', '2014-01-31 04:58:04'),
(12, 'dddd', NULL, 'dddd', '', 'marcrigor08@yahoo.com', '09068615252', '', '', '', '', '', '', '', '', 'dddd', 'ddd', '2014-01-31 04:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `tb_attendance`
--

CREATE TABLE IF NOT EXISTS `tb_attendance` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `date` date NOT NULL,
  `emp_id` int(5) NOT NULL,
  `job` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `tb_attendance`
--

INSERT INTO `tb_attendance` (`id`, `emp_name`, `time_in`, `time_out`, `date`, `emp_id`, `job`) VALUES
(1, 'qqwe', '0000-00-00 00:00:00', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(2, 'jayven', '0000-00-00 00:00:00', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(15, 'jayven', '0000-00-00 00:00:00', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(29, 'jayven', '0000-00-00 00:00:00', '2014-02-04 07:08:24', '0000-00-00', 0, 'out'),
(31, 'emp_admin', '2014-02-03 01:07:46', '2014-02-04 07:04:06', '0000-00-00', 45, 'out'),
(34, 'jayven', '2014-02-03 01:33:02', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(35, 'jayven', '2014-02-03 01:35:29', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(36, 'employee', '2014-02-03 10:49:17', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(38, 'employee', '2014-02-03 11:04:04', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(40, 'jorel', '2014-02-03 11:05:19', '2014-02-04 19:30:58', '0000-00-00', 4, 'out'),
(44, 'jayven', '2014-02-03 11:14:14', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(45, 'jayven', '2014-02-03 11:18:35', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(46, 'jayven', '2014-02-03 11:21:42', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(47, 'jayven', '2014-02-03 11:22:16', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(48, 'jayven', '2014-02-03 11:24:08', '2014-02-03 23:39:59', '2014-02-01', 2, 'out'),
(49, 'qweqweqwe', '2014-02-03 11:25:50', '2014-02-03 23:46:36', '0000-00-00', 3, 'out'),
(51, 'jayven', '2014-02-03 11:35:41', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(53, 'jayven', '2014-02-03 11:37:41', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(60, 'jayven', '2014-02-03 11:40:33', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(61, 'pansit', '2014-02-03 11:45:25', '2014-02-21 03:40:40', '0000-00-00', 5, 'out'),
(62, 'pansit', '2014-02-03 11:58:22', '2014-02-21 03:40:40', '0000-00-00', 5, 'out'),
(63, 'jason', '2014-02-03 12:15:36', '2014-02-03 13:42:22', '0000-00-00', 6, 'out'),
(64, 'jason  jason', '2014-02-03 13:42:13', '2014-02-03 13:42:22', '0000-00-00', 6, 'out'),
(65, 'employee  employee', '2014-02-03 17:13:42', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(66, 'jesica  jesica', '2014-02-04 06:30:32', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(67, 'jesica  jesica', '2014-02-04 06:31:29', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(68, 'jesica  jesica', '2014-02-04 06:32:07', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(69, 'jesica  jesica', '2014-02-04 06:32:58', '2014-02-04 07:01:31', '0000-00-00', 7, 'out'),
(70, 'jesica  jesica', '2014-02-04 06:35:22', '2014-02-04 07:01:31', '2014-02-04', 7, 'out'),
(71, 'jesica  jesica', '2014-02-04 07:01:29', '2014-02-04 07:01:31', '2014-02-04', 7, 'out'),
(72, 'jayven  javier', '2014-02-04 07:05:49', '2014-02-03 23:39:59', '2014-02-04', 2, 'out'),
(73, 'qweqweqwe  qweqwe', '2014-02-04 07:07:32', '2014-02-03 23:46:36', '2014-02-04', 3, 'out'),
(74, 'employee  employee', '2014-02-04 07:08:01', '2014-02-03 23:46:12', '2014-02-04', 1, 'out'),
(75, 'jayven  javier', '2014-02-04 07:08:22', '2014-02-03 23:39:59', '2014-02-04', 2, 'out'),
(76, 'jayven  javier', '2014-02-04 19:15:47', '2014-02-03 23:39:59', '2014-02-04', 2, 'out'),
(77, 'jorel  jorel', '2014-02-04 19:30:52', '2014-02-04 19:30:58', '2014-02-04', 4, 'out'),
(78, 'pansit  pansit', '2014-02-04 19:34:08', '2014-02-21 03:40:40', '2014-02-04', 5, 'out'),
(79, 'employee  employee', '2014-02-03 23:39:24', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(80, 'jayven  javier', '2014-02-03 23:39:36', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(81, 'employee  employee', '2014-02-03 23:40:04', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(82, 'employee  employee', '2014-02-03 23:40:09', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(83, 'employee  employee', '2014-02-03 23:40:13', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(84, 'employee  employee', '2014-02-03 23:46:07', '2014-02-03 23:46:12', '2014-02-03', 1, 'out'),
(85, 'jayven  javier', '2014-02-03 23:46:28', '0000-00-00 00:00:00', '2014-02-03', 2, 'in'),
(86, 'jorel  jorel', '2014-02-03 23:46:34', '0000-00-00 00:00:00', '2014-02-03', 4, 'in'),
(87, 'qweqweqwe  qweqwe', '2014-02-03 23:46:38', '0000-00-00 00:00:00', '2014-02-03', 3, 'in'),
(88, 'pansit  pansit', '2014-02-21 03:40:37', '2014-02-21 03:40:40', '2014-02-21', 5, 'out');

-- --------------------------------------------------------

--
-- Table structure for table `tb_audit_trail`
--

CREATE TABLE IF NOT EXISTS `tb_audit_trail` (
  `audit_trail_tr_no` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` char(9) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` varchar(100) NOT NULL,
  `action` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`audit_trail_tr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1423 ;

--
-- Dumping data for table `tb_audit_trail`
--

INSERT INTO `tb_audit_trail` (`audit_trail_tr_no`, `id`, `date`, `object`, `action`, `description`) VALUES
(0000000851, '', '2014-02-01 12:39:17', 'Authentication', 'Logout', 'Successful'),
(0000000852, '', '2014-02-01 13:32:25', 'Authentication', 'Login', 'Successful'),
(0000000853, '', '2014-02-01 13:33:18', 'Authentication', 'Logout', 'Successful'),
(0000000854, '', '2014-02-01 13:33:45', 'Authentication', 'Login', 'Successful'),
(0000000855, '', '2014-02-01 13:34:43', 'Authentication', 'Logout', 'Successful'),
(0000000856, '', '2014-02-01 13:34:54', 'Authentication', 'Login', 'Successful'),
(0000000857, '', '2014-02-01 13:35:00', 'Authentication', 'Logout', 'Successful'),
(0000000858, '', '2014-02-01 13:35:15', 'Authentication', 'Login', 'Successful'),
(0000000859, '', '2014-02-01 17:52:18', 'Authentication', 'Login', 'Successful'),
(0000000860, '', '2014-02-01 18:19:47', 'Authentication', 'Logout', 'Successful'),
(0000000861, '', '2014-02-01 18:19:57', 'Authentication', 'Login', 'Successful'),
(0000000862, '', '2014-02-01 18:20:18', 'Authentication', 'Logout', 'Successful'),
(0000000863, '', '2014-02-01 18:20:37', 'Authentication', 'Login', 'Successful'),
(0000000864, '', '2014-02-01 18:20:48', 'Authentication', 'Logout', 'Successful'),
(0000000865, '', '2014-02-01 18:20:55', 'Authentication', 'Login', 'Successful'),
(0000000866, '', '2014-02-01 18:21:00', 'Authentication', 'Logout', 'Successful'),
(0000000867, '', '2014-02-01 18:21:38', 'Authentication', 'Logout', 'Successful'),
(0000000868, '', '2014-02-01 18:21:47', 'Authentication', 'Login', 'Successful'),
(0000000869, '', '2014-02-01 18:23:08', 'Authentication', 'Logout', 'Successful'),
(0000000870, '', '2014-02-01 18:23:19', 'Authentication', 'Login', 'Successful'),
(0000000871, '', '2014-02-01 18:23:33', 'Authentication', 'Logout', 'Successful'),
(0000000872, '', '2014-02-01 18:23:57', 'Authentication', 'Login', 'Successful'),
(0000000873, '', '2014-02-01 18:25:02', 'Authentication', 'Logout', 'Successful'),
(0000000874, '', '2014-02-01 18:25:09', 'Authentication', 'Login', 'Successful'),
(0000000875, '', '2014-02-01 18:31:20', 'Authentication', 'Logout', 'Successful'),
(0000000876, '', '2014-02-01 18:31:49', 'Authentication', 'Login', 'Successful'),
(0000000877, '', '2014-02-01 18:33:39', 'Authentication', 'Logout', 'Successful'),
(0000000878, '', '2014-02-01 18:33:45', 'Authentication', 'Login', 'Successful'),
(0000000879, '', '2014-02-01 20:43:55', 'Authentication', 'Logout', 'Successful'),
(0000000880, '', '2014-02-01 20:44:02', 'Authentication', 'Login', 'Successful'),
(0000000881, '', '2014-02-02 11:47:50', 'Authentication', 'Login', 'Successful'),
(0000000882, '', '2014-02-02 11:55:15', 'Authentication', 'Logout', 'Successful'),
(0000000883, '', '2014-02-02 11:55:24', 'Authentication', 'Login', 'Successful'),
(0000000884, '', '2014-02-02 11:57:59', 'Authentication', 'Logout', 'Successful'),
(0000000885, '', '2014-02-02 11:58:16', 'Authentication', 'Login', 'Successful'),
(0000000886, '', '2014-02-02 12:00:20', 'Authentication', 'Logout', 'Successful'),
(0000000887, '', '2014-02-02 12:00:25', 'Authentication', 'Login', 'Successful'),
(0000000888, '', '2014-02-02 13:22:42', 'Authentication', 'Logout', 'Successful'),
(0000000889, '', '2014-02-02 13:22:47', 'Authentication', 'Login', 'Successful'),
(0000000890, '', '2014-02-02 13:39:05', 'Authentication', 'Logout', 'Successful'),
(0000000891, '', '2014-02-02 13:39:16', 'Authentication', 'Login', 'Successful'),
(0000000892, '', '2014-02-02 13:39:19', 'Authentication', 'Logout', 'Successful'),
(0000000893, '', '2014-02-02 13:39:23', 'Authentication', 'Login', 'Successful'),
(0000000894, '', '2014-02-02 13:40:34', 'Authentication', 'Logout', 'Successful'),
(0000000895, '', '2014-02-02 13:40:42', 'Authentication', 'Login', 'Successful'),
(0000000896, '', '2014-02-02 13:40:53', 'Authentication', 'Logout', 'Successful'),
(0000000897, '', '2014-02-02 13:40:58', 'Authentication', 'Login', 'Successful'),
(0000000898, '', '2014-02-02 14:08:09', 'Authentication', 'Logout', 'Successful'),
(0000000899, '', '2014-02-02 14:08:16', 'Authentication', 'Login', 'Successful'),
(0000000900, '', '2014-02-02 17:44:42', 'Authentication', 'Logout', 'Successful'),
(0000000901, '', '2014-02-02 17:44:46', 'Authentication', 'Login', 'Successful'),
(0000000902, '', '2014-02-02 17:45:29', 'Authentication', 'Logout', 'Successful'),
(0000000903, '', '2014-02-02 17:45:35', 'Authentication', 'Login', 'Successful'),
(0000000904, '', '2014-02-02 17:54:36', 'Authentication', 'Logout', 'Successful'),
(0000000905, '', '2014-02-02 17:54:41', 'Authentication', 'Login', 'Successful'),
(0000000906, '', '2014-02-02 17:55:19', 'Authentication', 'Logout', 'Successful'),
(0000000907, '', '2014-02-02 17:55:26', 'Authentication', 'Login', 'Successful'),
(0000000908, '', '2014-02-02 17:56:28', 'Authentication', 'Logout', 'Successful'),
(0000000909, '', '2014-02-02 17:56:32', 'Authentication', 'Login', 'Successful'),
(0000000910, '', '2014-02-02 17:56:54', 'Authentication', 'Logout', 'Successful'),
(0000000911, '', '2014-02-02 17:57:06', 'Authentication', 'Login', 'Successful'),
(0000000912, '', '2014-02-02 17:58:03', 'Authentication', 'Logout', 'Successful'),
(0000000913, '', '2014-02-02 17:58:09', 'Authentication', 'Login', 'Successful'),
(0000000914, '', '2014-02-02 17:58:18', 'Authentication', 'Logout', 'Successful'),
(0000000915, '', '2014-02-02 17:58:22', 'Authentication', 'Login', 'Successful'),
(0000000916, '', '2014-02-02 17:58:26', 'Authentication', 'Logout', 'Successful'),
(0000000917, '', '2014-02-02 17:58:33', 'Authentication', 'Login', 'Successful'),
(0000000918, '', '2014-02-02 17:59:57', 'Authentication', 'Logout', 'Successful'),
(0000000919, '', '2014-02-02 18:00:03', 'Authentication', 'Login', 'Successful'),
(0000000920, '', '2014-02-02 18:00:15', 'Authentication', 'Logout', 'Successful'),
(0000000921, '', '2014-02-02 18:00:21', 'Authentication', 'Login', 'Successful'),
(0000000922, '', '2014-02-02 18:01:38', 'Authentication', 'Logout', 'Successful'),
(0000000923, '', '2014-02-02 18:01:43', 'Authentication', 'Login', 'Successful'),
(0000000924, '', '2014-02-02 18:01:50', 'Authentication', 'Logout', 'Successful'),
(0000000925, '', '2014-02-02 18:01:56', 'Authentication', 'Login', 'Successful'),
(0000000926, '', '2014-02-02 18:02:12', 'Authentication', 'Logout', 'Successful'),
(0000000927, '', '2014-02-02 18:02:19', 'Authentication', 'Login', 'Successful'),
(0000000928, '', '2014-02-02 18:02:28', 'Authentication', 'Logout', 'Successful'),
(0000000929, '', '2014-02-02 18:02:33', 'Authentication', 'Login', 'Successful'),
(0000000930, '', '2014-02-02 18:03:24', 'Authentication', 'Logout', 'Successful'),
(0000000931, '', '2014-02-02 18:03:29', 'Authentication', 'Login', 'Successful'),
(0000000932, '', '2014-02-02 18:03:48', 'Authentication', 'Logout', 'Successful'),
(0000000933, '', '2014-02-02 18:03:56', 'Authentication', 'Login', 'Successful'),
(0000000934, '', '2014-02-02 18:05:47', 'Authentication', 'Logout', 'Successful'),
(0000000935, '', '2014-02-02 18:05:52', 'Authentication', 'Login', 'Successful'),
(0000000936, '', '2014-02-02 18:06:08', 'Authentication', 'Logout', 'Successful'),
(0000000937, '', '2014-02-02 18:06:14', 'Authentication', 'Login', 'Successful'),
(0000000938, '', '2014-02-02 18:07:39', 'Authentication', 'Logout', 'Successful'),
(0000000939, '', '2014-02-02 18:08:05', 'Authentication', 'Login', 'Successful'),
(0000000940, '', '2014-02-02 18:08:23', 'Authentication', 'Logout', 'Successful'),
(0000000941, '', '2014-02-02 18:08:33', 'Authentication', 'Login', 'Successful'),
(0000000942, '', '2014-02-02 18:09:02', 'Authentication', 'Logout', 'Successful'),
(0000000943, '', '2014-02-02 18:09:08', 'Authentication', 'Login', 'Successful'),
(0000000944, '', '2014-02-02 18:09:14', 'Authentication', 'Logout', 'Successful'),
(0000000945, '', '2014-02-02 18:09:19', 'Authentication', 'Login', 'Successful'),
(0000000946, '', '2014-02-03 15:07:09', 'Authentication', 'Login', 'Successful'),
(0000000947, '', '2014-02-03 15:13:42', 'Authentication', 'Logout', 'Successful'),
(0000000948, '', '2014-02-03 15:13:49', 'Authentication', 'Login', 'Successful'),
(0000000949, '', '2014-02-03 15:13:57', 'Authentication', 'Logout', 'Successful'),
(0000000950, '', '2014-02-03 15:14:02', 'Authentication', 'Login', 'Successful'),
(0000000951, '', '2014-02-03 15:14:10', 'Authentication', 'Logout', 'Successful'),
(0000000952, '', '2014-02-03 15:14:18', 'Authentication', 'Login', 'Successful'),
(0000000953, '', '2014-02-03 15:20:10', 'Authentication', 'Logout', 'Successful'),
(0000000954, '', '2014-02-03 15:20:18', 'Authentication', 'Login', 'Successful'),
(0000000955, '', '2014-02-03 15:20:25', 'Authentication', 'Logout', 'Successful'),
(0000000956, '', '2014-02-03 15:20:32', 'Authentication', 'Login', 'Successful'),
(0000000957, '', '2014-02-03 15:21:34', 'Authentication', 'Logout', 'Successful'),
(0000000958, '', '2014-02-03 15:21:41', 'Authentication', 'Login', 'Successful'),
(0000000959, '', '2014-02-03 15:21:53', 'Authentication', 'Logout', 'Successful'),
(0000000960, '', '2014-02-03 15:22:01', 'Authentication', 'Login', 'Successful'),
(0000000961, '', '2014-02-03 15:23:28', 'Authentication', 'Logout', 'Successful'),
(0000000962, '', '2014-02-03 15:23:33', 'Authentication', 'Login', 'Successful'),
(0000000963, '', '2014-02-03 15:23:39', 'Authentication', 'Logout', 'Successful'),
(0000000964, '', '2014-02-03 15:23:45', 'Authentication', 'Login', 'Successful'),
(0000000965, '', '2014-02-03 15:24:30', 'Authentication', 'Logout', 'Successful'),
(0000000966, '', '2014-02-03 15:24:34', 'Authentication', 'Login', 'Successful'),
(0000000967, '', '2014-02-03 15:24:46', 'Authentication', 'Logout', 'Successful'),
(0000000968, '', '2014-02-03 15:24:57', 'Authentication', 'Login', 'Successful'),
(0000000969, '', '2014-02-03 15:25:56', 'Authentication', 'Logout', 'Successful'),
(0000000970, '', '2014-02-03 15:26:00', 'Authentication', 'Login', 'Successful'),
(0000000971, '', '2014-02-03 15:26:19', 'Authentication', 'Logout', 'Successful'),
(0000000972, '', '2014-02-03 15:26:25', 'Authentication', 'Login', 'Successful'),
(0000000973, '', '2014-02-03 15:29:31', 'Authentication', 'Logout', 'Successful'),
(0000000974, '', '2014-02-03 15:29:35', 'Authentication', 'Login', 'Successful'),
(0000000975, '', '2014-02-03 15:29:40', 'Authentication', 'Logout', 'Successful'),
(0000000976, '', '2014-02-03 15:29:46', 'Authentication', 'Login', 'Successful'),
(0000000977, '', '2014-02-03 15:30:05', 'Authentication', 'Logout', 'Successful'),
(0000000978, '', '2014-02-03 15:30:10', 'Authentication', 'Login', 'Successful'),
(0000000979, '', '2014-02-03 15:30:17', 'Authentication', 'Logout', 'Successful'),
(0000000980, '', '2014-02-03 15:30:24', 'Authentication', 'Login', 'Successful'),
(0000000981, '', '2014-02-03 15:32:03', 'Authentication', 'Logout', 'Successful'),
(0000000982, '', '2014-02-03 15:32:08', 'Authentication', 'Login', 'Successful'),
(0000000983, '', '2014-02-03 15:32:19', 'Authentication', 'Logout', 'Successful'),
(0000000984, '', '2014-02-03 15:32:23', 'Authentication', 'Login', 'Successful'),
(0000000985, '', '2014-02-03 15:34:56', 'Authentication', 'Logout', 'Successful'),
(0000000986, '', '2014-02-03 15:35:01', 'Authentication', 'Login', 'Successful'),
(0000000987, '', '2014-02-03 15:35:07', 'Authentication', 'Logout', 'Successful'),
(0000000988, '', '2014-02-03 15:35:13', 'Authentication', 'Login', 'Successful'),
(0000000989, '', '2014-02-03 15:39:11', 'Authentication', 'Logout', 'Successful'),
(0000000990, '', '2014-02-03 15:39:17', 'Authentication', 'Login', 'Successful'),
(0000000991, 'emp_admin', '2014-02-03 15:39:24', 'Authentication', 'Time in Employee', 'Successfull'),
(0000000992, 'emp_admin', '2014-02-03 15:39:36', 'Authentication', 'Time in Employee', 'Successfull'),
(0000000993, 'emp_admin', '2014-02-03 15:39:41', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000994, 'emp_admin', '2014-02-03 15:39:44', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000995, 'emp_admin', '2014-02-03 15:39:46', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000996, 'emp_admin', '2014-02-03 15:39:48', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000997, 'emp_admin', '2014-02-03 15:39:58', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000998, 'emp_admin', '2014-02-03 15:39:59', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000000999, 'emp_admin', '2014-02-03 15:40:04', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001000, 'emp_admin', '2014-02-03 15:40:08', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001001, 'emp_admin', '2014-02-03 15:40:09', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001002, 'emp_admin', '2014-02-03 15:40:11', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001003, 'emp_admin', '2014-02-03 15:40:13', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001004, 'emp_admin', '2014-02-03 15:40:15', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001005, 'emp_admin', '2014-02-03 15:45:18', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001006, 'emp_admin', '2014-02-03 15:45:53', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001007, 'emp_admin', '2014-02-03 15:46:07', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001008, 'emp_admin', '2014-02-03 15:46:12', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001009, 'emp_admin', '2014-02-03 15:46:28', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001010, 'emp_admin', '2014-02-03 15:46:34', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001011, 'emp_admin', '2014-02-03 15:46:36', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001012, 'emp_admin', '2014-02-03 15:46:38', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001013, 'emp_admin', '2014-02-03 15:46:45', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001014, '', '2014-02-03 15:49:55', 'Authentication', 'Logout', 'Successful'),
(0000001015, '', '2014-02-03 15:50:00', 'Authentication', 'Login', 'Successful'),
(0000001016, '3', '2014-02-03 19:36:11', 'Authentication', 'Logout', 'Successful'),
(0000001017, '4', '2014-02-03 19:36:17', 'Authentication', 'Login', 'Successful'),
(0000001018, '4', '2014-02-03 20:14:23', 'Authentication', 'Logout', 'Successful'),
(0000001019, '10', '2014-02-03 20:15:01', 'Authentication', 'Login', 'Successful'),
(0000001020, '10', '2014-02-03 20:15:07', 'Authentication', 'Logout', 'Successful'),
(0000001021, '4', '2014-02-03 20:15:14', 'Authentication', 'Login', 'Successful'),
(0000001022, '4', '2014-02-03 20:15:24', 'Authentication', 'Logout', 'Successful'),
(0000001023, '10', '2014-02-03 20:15:37', 'Authentication', 'Login', 'Successful'),
(0000001024, '10', '2014-02-03 20:15:47', 'Authentication', 'Logout', 'Successful'),
(0000001025, '10', '2014-02-03 20:16:30', 'Authentication', 'Login', 'Successful'),
(0000001026, '10', '2014-02-03 20:17:13', 'Authentication', 'Logout', 'Successful'),
(0000001027, '3', '2014-02-03 20:17:17', 'Authentication', 'Login', 'Successful'),
(0000001028, '3', '2014-02-03 20:18:59', 'Authentication', 'Logout', 'Successful'),
(0000001029, '10', '2014-02-03 20:19:04', 'Authentication', 'Login', 'Successful'),
(0000001030, '10', '2014-02-03 20:26:10', 'Authentication', 'Logout', 'Successful'),
(0000001031, '4', '2014-02-03 20:26:15', 'Authentication', 'Login', 'Successful'),
(0000001032, '4', '2014-02-03 20:44:07', 'Authentication', 'Logout', 'Successful'),
(0000001033, '3', '2014-02-03 20:44:11', 'Authentication', 'Login', 'Successful'),
(0000001034, '3', '2014-02-03 20:44:18', 'Authentication', 'Logout', 'Successful'),
(0000001035, '10', '2014-02-03 20:44:27', 'Authentication', 'Login', 'Successful'),
(0000001036, '10', '2014-02-03 21:21:00', 'Authentication', 'Logout', 'Successful'),
(0000001037, '4', '2014-02-03 21:21:04', 'Authentication', 'Login', 'Successful'),
(0000001038, '4', '2014-02-03 21:22:52', 'Authentication', 'Logout', 'Successful'),
(0000001039, '3', '2014-02-03 21:22:56', 'Authentication', 'Login', 'Successful'),
(0000001040, '3', '2014-02-03 21:23:14', 'Authentication', 'Logout', 'Successful'),
(0000001041, '10', '2014-02-03 21:23:17', 'Authentication', 'Login', 'Successful'),
(0000001042, '10', '2014-02-03 21:24:50', 'Authentication', 'Logout', 'Successful'),
(0000001043, '4', '2014-02-03 21:24:56', 'Authentication', 'Login', 'Successful'),
(0000001044, '4', '2014-02-03 21:25:02', 'Authentication', 'Logout', 'Successful'),
(0000001045, '10', '2014-02-03 21:25:08', 'Authentication', 'Login', 'Successful'),
(0000001046, '10', '2014-02-03 21:25:15', 'Authentication', 'Logout', 'Successful'),
(0000001047, '4', '2014-02-03 21:25:20', 'Authentication', 'Login', 'Successful'),
(0000001048, '4', '2014-02-03 21:27:13', 'Authentication', 'Logout', 'Successful'),
(0000001049, '10', '2014-02-03 21:27:35', 'Authentication', 'Login', 'Successful'),
(0000001050, '10', '2014-02-03 21:27:44', 'Authentication', 'Logout', 'Successful'),
(0000001051, '4', '2014-02-03 21:27:49', 'Authentication', 'Login', 'Successful'),
(0000001052, '4', '2014-02-03 21:28:37', 'Authentication', 'Logout', 'Successful'),
(0000001053, '10', '2014-02-03 21:28:41', 'Authentication', 'Login', 'Successful'),
(0000001054, '10', '2014-02-03 21:28:49', 'Authentication', 'Logout', 'Successful'),
(0000001055, '4', '2014-02-03 21:28:59', 'Authentication', 'Login', 'Successful'),
(0000001056, '4', '2014-02-03 21:29:29', 'Authentication', 'Logout', 'Successful'),
(0000001057, '10', '2014-02-03 21:29:34', 'Authentication', 'Login', 'Successful'),
(0000001058, '10', '2014-02-03 21:29:48', 'Authentication', 'Logout', 'Successful'),
(0000001059, '4', '2014-02-03 21:29:53', 'Authentication', 'Login', 'Successful'),
(0000001060, '4', '2014-02-03 21:30:36', 'Authentication', 'Logout', 'Successful'),
(0000001061, '10', '2014-02-03 21:30:40', 'Authentication', 'Login', 'Successful'),
(0000001062, '10', '2014-02-03 21:31:02', 'Authentication', 'Logout', 'Successful'),
(0000001063, '4', '2014-02-03 21:31:09', 'Authentication', 'Login', 'Successful'),
(0000001064, '4', '2014-02-03 21:32:00', 'Authentication', 'Logout', 'Successful'),
(0000001065, '10', '2014-02-03 21:32:05', 'Authentication', 'Login', 'Successful'),
(0000001066, '10', '2014-02-03 21:32:14', 'Authentication', 'Logout', 'Successful'),
(0000001067, '4', '2014-02-03 21:32:20', 'Authentication', 'Login', 'Successful'),
(0000001068, '4', '2014-02-03 21:32:35', 'Authentication', 'Logout', 'Successful'),
(0000001069, '10', '2014-02-03 21:32:40', 'Authentication', 'Login', 'Successful'),
(0000001070, '10', '2014-02-03 21:39:05', 'Authentication', 'Logout', 'Successful'),
(0000001071, '4', '2014-02-03 21:39:09', 'Authentication', 'Login', 'Successful'),
(0000001072, '4', '2014-02-03 21:39:16', 'Authentication', 'Logout', 'Successful'),
(0000001073, '10', '2014-02-03 21:39:29', 'Authentication', 'Login', 'Successful'),
(0000001074, '10', '2014-02-03 21:39:35', 'Authentication', 'Logout', 'Successful'),
(0000001075, '4', '2014-02-03 21:39:41', 'Authentication', 'Login', 'Successful'),
(0000001076, '4', '2014-02-03 21:39:48', 'Authentication', 'Logout', 'Successful'),
(0000001077, '10', '2014-02-03 21:40:09', 'Authentication', 'Login', 'Successful'),
(0000001078, '10', '2014-02-03 21:40:36', 'Authentication', 'Logout', 'Successful'),
(0000001079, '4', '2014-02-03 21:40:41', 'Authentication', 'Login', 'Successful'),
(0000001080, '8', '2014-02-03 21:56:16', 'Authentication', 'Login', 'Successful'),
(0000001081, '8', '2014-02-03 21:56:29', 'Authentication', 'Logout', 'Successful'),
(0000001082, '4', '2014-02-03 21:56:58', 'Authentication', 'Login', 'Successful'),
(0000001083, '4', '2014-02-03 22:26:23', 'Authentication', 'Logout', 'Successful'),
(0000001084, '1', '2014-02-03 22:26:42', 'Authentication', 'Login', 'Successful'),
(0000001085, '1', '2014-02-03 22:31:22', 'Authentication', 'Logout', 'Successful'),
(0000001086, '4', '2014-02-03 22:31:31', 'Authentication', 'Login', 'Successful'),
(0000001087, '4', '2014-02-03 22:31:40', 'Authentication', 'Logout', 'Successful'),
(0000001088, '4', '2014-02-03 22:33:06', 'Authentication', 'Login', 'Successful'),
(0000001089, '4', '2014-02-03 22:35:55', 'Authentication', 'Logout', 'Successful'),
(0000001090, '1', '2014-02-03 22:36:03', 'Authentication', 'Login', 'Successful'),
(0000001091, '1', '2014-02-03 22:36:17', 'Authentication', 'Logout', 'Successful'),
(0000001092, '4', '2014-02-03 22:36:35', 'Authentication', 'Login', 'Successful'),
(0000001093, '4', '2014-02-03 22:39:02', 'Authentication', 'Logout', 'Successful'),
(0000001094, '1', '2014-02-03 22:39:06', 'Authentication', 'Login', 'Successful'),
(0000001095, '1', '2014-02-03 22:41:38', 'Authentication', 'Logout', 'Successful'),
(0000001096, '4', '2014-02-03 22:41:48', 'Authentication', 'Login', 'Successful'),
(0000001097, '4', '2014-02-03 22:42:35', 'Authentication', 'Logout', 'Successful'),
(0000001098, '4', '2014-02-03 22:42:55', 'Authentication', 'Login', 'Successful'),
(0000001099, '4', '2014-02-03 22:43:12', 'Authentication', 'Logout', 'Successful'),
(0000001100, '8', '2014-02-03 22:43:16', 'Authentication', 'Login', 'Successful'),
(0000001101, '8', '2014-02-03 22:43:20', 'Authentication', 'Added New Batch Order', 'Successful'),
(0000001102, '', '2014-02-03 22:43:50', 'Authentication', 'Delete Product from Batch Orde', 'Successful'),
(0000001103, '8', '2014-02-03 22:43:56', 'Authentication', 'Logout', 'Successful'),
(0000001104, '4', '2014-02-03 22:44:02', 'Authentication', 'Login', 'Successful'),
(0000001105, '4', '2014-02-03 22:44:05', 'Authentication', 'Logout', 'Successful'),
(0000001106, '1', '2014-02-03 22:44:17', 'Authentication', 'Login', 'Successful'),
(0000001107, '1', '2014-02-03 22:45:27', 'Authentication', 'Logout', 'Successful'),
(0000001108, '4', '2014-02-03 22:47:33', 'Authentication', 'Login', 'Successful'),
(0000001109, '4', '2014-02-03 22:54:40', 'Authentication', 'Add Payable', 'Successful'),
(0000001110, '4', '2014-02-03 23:25:28', 'Authentication', 'Update customer profile', 'Successful'),
(0000001111, '4', '2014-02-03 23:26:24', 'Authentication', 'Update customer profile', 'Successful'),
(0000001112, '4', '2014-02-03 23:27:20', 'Authentication', 'Update customer profile', 'Successful'),
(0000001113, '4', '2014-02-03 23:32:27', 'Authentication', 'Register New Customer', 'Successful'),
(0000001114, '4', '2014-02-03 23:32:35', 'Authentication', 'Update customer profile', 'Successful'),
(0000001115, '4', '2014-02-03 23:32:39', 'Authentication', 'Delete Customer', 'Successful'),
(0000001116, '4', '2014-02-03 23:34:55', 'Authentication', 'Logout', 'Successful'),
(0000001117, '8', '2014-02-03 23:35:28', 'Authentication', 'Login', 'Successful'),
(0000001118, '8', '2014-02-03 23:35:41', 'Authentication', 'Added New Batch Order', 'Successful'),
(0000001119, '8', '2014-02-03 23:35:52', 'Authentication', 'Logout', 'Successful'),
(0000001120, '4', '2014-02-03 23:35:58', 'Authentication', 'Login', 'Successful'),
(0000001121, '4', '2014-02-03 23:36:15', 'Authentication', 'Logout', 'Successful'),
(0000001122, '8', '2014-02-03 23:36:23', 'Authentication', 'Login', 'Successful'),
(0000001123, '8', '2014-02-03 23:36:33', 'Authentication', 'Added New Batch Order', 'Successful'),
(0000001124, '8', '2014-02-03 23:36:42', 'Authentication', 'Logout', 'Successful'),
(0000001125, '4', '2014-02-03 23:36:55', 'Authentication', 'Login', 'Successful'),
(0000001126, '4', '2014-02-03 23:37:21', 'Authentication', 'Logout', 'Successful'),
(0000001127, '8', '2014-02-03 23:37:32', 'Authentication', 'Login', 'Successful'),
(0000001128, '2', '2014-02-04 10:33:22', 'Authentication', 'Login', 'Successful'),
(0000001129, '2', '2014-02-04 10:33:36', 'Authentication', 'Logout', 'Successful'),
(0000001130, '4', '2014-02-04 10:39:54', 'Authentication', 'Login', 'Successful'),
(0000001131, '4', '2014-02-04 11:02:58', 'Authentication', 'Logout', 'Successful'),
(0000001132, '11', '2014-02-04 11:08:09', 'Authentication', 'Login', 'Successful'),
(0000001133, '11', '2014-02-04 11:08:24', 'Authentication', 'Add Payable', 'Successful'),
(0000001134, '11', '2014-02-04 11:14:17', 'Authentication', 'Add Payable', 'Successful'),
(0000001135, '11', '2014-02-04 11:16:39', 'Authentication', 'Add Payable', 'Successful'),
(0000001136, '11', '2014-02-04 11:16:43', 'Authentication', 'Add Payable', 'Successful'),
(0000001137, '11', '2014-02-04 11:24:31', 'Authentication', 'Logout', 'Successful'),
(0000001138, '4', '2014-02-04 11:24:59', 'Authentication', 'Login', 'Successful'),
(0000001139, '4', '2014-02-04 11:27:05', 'Authentication', 'Delete Customer', 'Successful'),
(0000001140, '4', '2014-02-04 11:27:28', 'Authentication', 'Delete Customer', 'Successful'),
(0000001141, '4', '2014-02-04 11:28:01', 'Authentication', 'Delete Customer', 'Successful'),
(0000001142, '4', '2014-02-04 11:30:49', 'Authentication', 'Delete Customer', 'Successful'),
(0000001143, '4', '2014-02-04 11:32:15', 'Authentication', 'Delete Customer', 'Successful'),
(0000001144, '4', '2014-02-04 11:35:42', 'Authentication', 'Delete Customer', 'Successful'),
(0000001145, '4', '2014-02-04 11:35:59', 'Authentication', 'Delete Customer', 'Successful'),
(0000001146, '4', '2014-02-04 11:40:25', 'Authentication', 'Delete Customer', 'Successful'),
(0000001147, '4', '2014-02-04 12:01:04', 'Authentication', 'Logout', 'Successful'),
(0000001148, '8', '2014-02-04 12:01:22', 'Authentication', 'Login', 'Successful'),
(0000001149, '8', '2014-02-04 12:01:34', 'Authentication', 'Added New Batch Order', 'Successful'),
(0000001150, '8', '2014-02-04 12:01:51', 'Authentication', 'Add to existing order', 'Successful'),
(0000001151, '8', '2014-02-04 12:01:58', 'Authentication', 'Logout', 'Successful'),
(0000001152, '4', '2014-02-04 12:02:11', 'Authentication', 'Login', 'Successful'),
(0000001153, '4', '2014-02-04 12:04:16', 'Authentication', 'Delete Customer', 'Successful'),
(0000001154, '4', '2014-02-04 12:05:52', 'Authentication', 'Delete Customer', 'Successful'),
(0000001155, '4', '2014-02-04 12:09:06', 'Authentication', 'Logout', 'Successful'),
(0000001156, '8', '2014-02-04 12:09:12', 'Authentication', 'Login', 'Successful'),
(0000001157, '8', '2014-02-04 12:09:16', 'Authentication', 'Added New Batch Order', 'Successful'),
(0000001158, '8', '2014-02-04 12:09:28', 'Authentication', 'Logout', 'Successful'),
(0000001159, '4', '2014-02-04 12:09:33', 'Authentication', 'Login', 'Successful'),
(0000001160, '4', '2014-02-04 12:09:41', 'Authentication', 'Logout', 'Successful'),
(0000001161, '8', '2014-02-04 12:09:49', 'Authentication', 'Login', 'Successful'),
(0000001162, '8', '2014-02-04 12:09:59', 'Authentication', 'Logout', 'Successful'),
(0000001163, '4', '2014-02-04 12:10:04', 'Authentication', 'Login', 'Successful'),
(0000001164, '4', '2014-02-04 12:16:15', 'Authentication', 'Logout', 'Successful'),
(0000001165, '8', '2014-02-04 12:16:19', 'Authentication', 'Login', 'Successful'),
(0000001166, '8', '2014-02-04 12:16:32', 'Authentication', 'Logout', 'Successful'),
(0000001167, '4', '2014-02-04 12:16:36', 'Authentication', 'Login', 'Successful'),
(0000001168, '4', '2014-02-04 13:02:00', 'Authentication', 'Logout', 'Successful'),
(0000001169, '4', '2014-02-04 13:02:06', 'Authentication', 'Login', 'Successful'),
(0000001170, '4', '2014-02-04 13:02:09', 'Authentication', 'Logout', 'Successful'),
(0000001171, '11', '2014-02-04 13:02:56', 'Authentication', 'Login', 'Successful'),
(0000001172, '11', '2014-02-04 13:05:15', 'Authentication', 'Logout', 'Successful'),
(0000001173, '8', '2014-02-04 13:05:20', 'Authentication', 'Login', 'Successful'),
(0000001174, '8', '2014-02-04 13:06:56', 'Authentication', 'Logout', 'Successful'),
(0000001175, '4', '2014-02-04 13:07:06', 'Authentication', 'Login', 'Successful'),
(0000001176, '4', '2014-02-04 13:07:55', 'Authentication', 'Logout', 'Successful'),
(0000001177, '8', '2014-02-04 13:08:00', 'Authentication', 'Login', 'Successful'),
(0000001178, '8', '2014-02-04 13:12:08', 'Authentication', 'Logout', 'Successful'),
(0000001179, '8', '2014-02-04 13:12:11', 'Authentication', 'Login', 'Successful'),
(0000001180, '8', '2014-02-04 13:15:57', 'Authentication', 'Logout', 'Successful'),
(0000001181, '4', '2014-02-04 13:16:04', 'Authentication', 'Login', 'Successful'),
(0000001182, '4', '2014-02-04 13:20:54', 'Authentication', 'Logout', 'Successful'),
(0000001183, '8', '2014-02-04 13:21:04', 'Authentication', 'Login', 'Successful'),
(0000001184, '8', '2014-02-04 13:24:49', 'Authentication', 'Logout', 'Successful'),
(0000001185, '8', '2014-02-04 13:24:49', 'Authentication', 'Logout', 'Successful'),
(0000001186, '8', '2014-02-04 13:24:55', 'Authentication', 'Login', 'Successful'),
(0000001187, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001188, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001189, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001190, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001191, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001192, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001193, '8', '2014-02-04 13:25:55', 'Authentication', 'Logout', 'Successful'),
(0000001194, '4', '2014-02-04 13:26:01', 'Authentication', 'Login', 'Successful'),
(0000001195, '4', '2014-02-04 13:26:20', 'Authentication', 'Logout', 'Successful'),
(0000001196, '8', '2014-02-04 13:26:23', 'Authentication', 'Login', 'Successful'),
(0000001197, '8', '2014-02-04 13:33:41', 'Authentication', 'Logout', 'Successful'),
(0000001198, '8', '2014-02-04 13:33:45', 'Authentication', 'Login', 'Successful'),
(0000001199, '8', '2014-02-04 13:34:05', 'Authentication', 'Logout', 'Successful'),
(0000001200, '8', '2014-02-04 13:34:10', 'Authentication', 'Login', 'Successful'),
(0000001201, '8', '2014-02-04 13:37:58', 'Authentication', 'Login', 'Successful'),
(0000001202, '8', '2014-02-04 13:44:02', 'Authentication', 'Logout', 'Successful'),
(0000001203, '8', '2014-02-04 13:44:02', 'Authentication', 'Logout', 'Successful'),
(0000001204, '8', '2014-02-04 13:44:02', 'Authentication', 'Logout', 'Successful'),
(0000001205, '8', '2014-02-04 13:44:02', 'Authentication', 'Logout', 'Successful'),
(0000001206, '8', '2014-02-04 13:44:02', 'Authentication', 'Logout', 'Successful'),
(0000001207, '8', '2014-02-04 13:44:03', 'Authentication', 'Logout', 'Successful'),
(0000001208, '8', '2014-02-04 16:37:21', 'Authentication', 'Login', 'Successful'),
(0000001209, '8', '2014-02-04 16:56:33', 'Authentication', 'Logout', 'Successful'),
(0000001210, '4', '2014-02-04 16:56:39', 'Authentication', 'Login', 'Successful'),
(0000001211, '4', '2014-02-04 17:00:32', 'Authentication', 'Delete Customer', 'Successful'),
(0000001212, '4', '2014-02-04 17:01:31', 'Authentication', 'Logout', 'Successful'),
(0000001213, '8', '2014-02-04 17:01:38', 'Authentication', 'Login', 'Successful'),
(0000001214, '4', '2014-02-05 00:30:28', 'Authentication', 'Login', 'Successful'),
(0000001215, '4', '2014-02-05 00:34:30', 'Authentication', 'Delete Customer', 'Successful'),
(0000001216, '4', '2014-02-05 00:50:00', 'Authentication', 'Update Product', 'Successful'),
(0000001217, '4', '2014-02-05 00:52:18', 'Authentication', 'Update Product', 'Successful'),
(0000001218, '4', '2014-02-05 00:52:21', 'Authentication', 'Logout', 'Successful'),
(0000001219, '1', '2014-02-05 00:52:29', 'Authentication', 'Login', 'Successful'),
(0000001220, '4', '2014-02-05 02:49:24', 'Authentication', 'Login', 'Successful'),
(0000001221, '4', '2014-02-05 02:53:08', 'Authentication', 'Update Product', 'Successful'),
(0000001222, '4', '2014-02-05 02:53:18', 'Authentication', 'Update Product', 'Successful'),
(0000001223, '4', '2014-02-05 02:54:35', 'Authentication', 'Update Product', 'Successful'),
(0000001224, '4', '2014-02-05 02:55:54', 'Authentication', 'Update Product', 'Successful'),
(0000001225, '4', '2014-02-05 02:56:30', 'Authentication', 'Update Product', 'Successful'),
(0000001226, '4', '2014-02-05 02:57:19', 'Authentication', 'Update Product', 'Successful'),
(0000001227, '4', '2014-02-05 03:10:29', 'Authentication', 'Update Product', 'Successful'),
(0000001228, '8', '2014-02-05 03:14:59', 'Authentication', 'Login', 'Successful'),
(0000001229, '8', '2014-02-05 03:15:07', 'Authentication', 'Logout', 'Successful'),
(0000001230, '4', '2014-02-05 03:15:12', 'Authentication', 'Login', 'Successful'),
(0000001231, '8', '2014-02-10 13:59:13', 'Authentication', 'Login', 'Successful'),
(0000001232, '8', '2014-02-11 06:22:52', 'Authentication', 'Login', 'Successful'),
(0000001233, '2', '2014-02-20 14:41:39', 'Authentication', 'Login', 'Successful'),
(0000001234, '2', '2014-02-20 15:29:37', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001235, '2', '2014-02-20 15:54:17', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001236, '2', '2014-02-20 15:59:16', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001237, '2', '2014-02-20 15:59:51', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001238, '2', '2014-02-20 16:16:05', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001239, '2', '2014-02-20 16:19:50', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001240, '2', '2014-02-20 16:21:12', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001241, '2', '2014-02-20 16:27:55', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001242, '2', '2014-02-20 16:41:08', 'Authentication', 'Logout', 'Successful'),
(0000001243, '6', '2014-02-20 16:41:17', 'Authentication', 'Login', 'Successful'),
(0000001244, 'emp_admin', '2014-02-20 16:55:57', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001245, '6', '2014-02-20 16:56:52', 'Authentication', 'Logout', 'Successful'),
(0000001246, '6', '2014-02-20 16:56:58', 'Authentication', 'Login', 'Successful'),
(0000001247, 'emp_admin', '2014-02-20 17:19:06', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001248, 'emp_admin', '2014-02-20 17:47:37', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001249, '6', '2014-02-20 17:55:34', 'Authentication', 'Logout', 'Successful'),
(0000001250, '2', '2014-02-20 17:55:39', 'Authentication', 'Login', 'Successful'),
(0000001251, '2', '2014-02-20 17:55:49', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001252, '2', '2014-02-20 17:58:05', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001253, '2', '2014-02-20 17:59:45', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001254, '2', '2014-02-20 18:01:37', 'Authentication', 'Logout', 'Successful'),
(0000001255, '6', '2014-02-20 18:01:42', 'Authentication', 'Login', 'Successful'),
(0000001256, '6', '2014-02-20 18:16:22', 'Authentication', 'Logout', 'Successful'),
(0000001257, '2', '2014-02-20 18:16:28', 'Authentication', 'Login', 'Successful'),
(0000001258, '2', '2014-02-20 18:16:47', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001259, '2', '2014-02-20 18:17:10', 'Authentication', 'Logout', 'Successful'),
(0000001260, '6', '2014-02-20 18:17:26', 'Authentication', 'Login', 'Successful'),
(0000001261, '2', '2014-02-20 18:21:03', 'Authentication', 'Login', 'Successful'),
(0000001262, '2', '2014-02-20 18:21:16', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001263, '2', '2014-02-20 18:50:42', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001264, '2', '2014-02-20 18:59:48', 'Authentication', 'Logout', 'Successful'),
(0000001265, '2', '2014-02-20 18:59:53', 'Authentication', 'Login', 'Successful'),
(0000001266, '2', '2014-02-20 19:00:03', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001267, '6', '2014-02-20 19:02:02', 'Authentication', 'Logout', 'Successful'),
(0000001268, '2', '2014-02-20 19:02:07', 'Authentication', 'Login', 'Successful'),
(0000001269, '2', '2014-02-20 19:02:15', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001270, '2', '2014-02-20 19:02:29', 'Authentication', 'Logout', 'Successful'),
(0000001271, '6', '2014-02-20 19:02:48', 'Authentication', 'Login', 'Successful'),
(0000001272, '6', '2014-02-20 19:03:56', 'Authentication', 'Logout', 'Successful'),
(0000001273, '2', '2014-02-20 19:04:01', 'Authentication', 'Login', 'Successful'),
(0000001274, '2', '2014-02-20 19:04:09', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001275, '2', '2014-02-20 19:04:10', 'Authentication', 'Logout', 'Successful'),
(0000001276, '6', '2014-02-20 19:04:14', 'Authentication', 'Login', 'Successful'),
(0000001277, '2', '2014-02-20 19:07:55', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001278, '2', '2014-02-20 19:07:57', 'Authentication', 'Logout', 'Successful'),
(0000001279, '6', '2014-02-20 19:08:02', 'Authentication', 'Login', 'Successful'),
(0000001280, '6', '2014-02-20 19:14:30', 'Authentication', 'Logout', 'Successful'),
(0000001281, '2', '2014-02-20 19:14:34', 'Authentication', 'Login', 'Successful'),
(0000001282, '2', '2014-02-20 19:15:02', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001283, '2', '2014-02-20 19:40:04', 'Authentication', 'Logout', 'Successful'),
(0000001284, '6', '2014-02-20 19:40:10', 'Authentication', 'Login', 'Successful'),
(0000001285, 'emp_admin', '2014-02-20 19:40:37', 'Authentication', 'Time in Employee', 'Successfull'),
(0000001286, 'emp_admin', '2014-02-20 19:40:40', 'Authentication', 'Timed out Employee', 'Successfull'),
(0000001287, 'emp_admin', '2014-02-20 19:42:36', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001288, '6', '2014-02-20 19:43:27', 'Authentication', 'Logout', 'Successful'),
(0000001289, '2', '2014-02-20 19:43:41', 'Authentication', 'Login', 'Successful'),
(0000001290, '2', '2014-02-20 19:55:17', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001291, '2', '2014-02-20 19:56:19', 'Authentication', 'Logout', 'Successful'),
(0000001292, '6', '2014-02-20 19:56:35', 'Authentication', 'Login', 'Successful'),
(0000001293, '6', '2014-02-20 19:57:58', 'Authentication', 'Logout', 'Successful'),
(0000001294, '2', '2014-02-20 19:58:03', 'Authentication', 'Login', 'Successful'),
(0000001295, '2', '2014-02-20 19:58:15', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001296, '2', '2014-02-20 19:58:18', 'Authentication', 'Logout', 'Successful'),
(0000001297, '6', '2014-02-20 19:58:26', 'Authentication', 'Login', 'Successful'),
(0000001298, '6', '2014-02-20 19:59:52', 'Authentication', 'Logout', 'Successful'),
(0000001299, '2', '2014-02-20 20:00:01', 'Authentication', 'Login', 'Successful'),
(0000001300, '2', '2014-02-20 20:00:11', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001301, '2', '2014-02-20 20:00:12', 'Authentication', 'Logout', 'Successful'),
(0000001302, '6', '2014-02-20 20:00:16', 'Authentication', 'Login', 'Successful'),
(0000001303, '6', '2014-02-20 20:02:46', 'Authentication', 'Logout', 'Successful'),
(0000001304, '2', '2014-02-20 20:02:52', 'Authentication', 'Login', 'Successful'),
(0000001305, '2', '2014-02-20 20:03:02', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001306, '2', '2014-02-20 20:03:04', 'Authentication', 'Logout', 'Successful'),
(0000001307, '6', '2014-02-20 20:03:09', 'Authentication', 'Login', 'Successful'),
(0000001308, '6', '2014-02-20 20:04:51', 'Authentication', 'Logout', 'Successful'),
(0000001309, '2', '2014-02-20 20:04:56', 'Authentication', 'Login', 'Successful'),
(0000001310, '2', '2014-02-20 20:05:15', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001311, '2', '2014-02-20 20:05:17', 'Authentication', 'Logout', 'Successful'),
(0000001312, '6', '2014-02-20 20:05:21', 'Authentication', 'Login', 'Successful'),
(0000001313, '6', '2014-02-20 20:08:32', 'Authentication', 'Logout', 'Successful'),
(0000001314, '2', '2014-02-20 20:08:36', 'Authentication', 'Login', 'Successful'),
(0000001315, '2', '2014-02-20 20:08:51', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001316, '2', '2014-02-20 20:08:54', 'Authentication', 'Logout', 'Successful'),
(0000001317, '6', '2014-02-20 20:09:04', 'Authentication', 'Login', 'Successful'),
(0000001318, '6', '2014-02-20 20:09:40', 'Authentication', 'Logout', 'Successful'),
(0000001319, '2', '2014-02-20 20:09:45', 'Authentication', 'Login', 'Successful'),
(0000001320, '2', '2014-02-20 20:09:59', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001321, '2', '2014-02-20 20:10:01', 'Authentication', 'Logout', 'Successful'),
(0000001322, '6', '2014-02-20 20:10:05', 'Authentication', 'Login', 'Successful'),
(0000001323, '6', '2014-02-20 20:10:36', 'Authentication', 'Logout', 'Successful'),
(0000001324, '2', '2014-02-20 20:11:25', 'Authentication', 'Login', 'Successful'),
(0000001325, '2', '2014-02-20 20:11:40', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001326, '2', '2014-02-20 20:11:46', 'Authentication', 'Logout', 'Successful'),
(0000001327, '6', '2014-02-20 20:11:51', 'Authentication', 'Login', 'Successful'),
(0000001328, 'emp_admin', '2014-02-20 20:17:42', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001329, 'emp_admin', '2014-02-20 20:28:40', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001330, '6', '2014-02-20 20:29:32', 'Authentication', 'Logout', 'Successful'),
(0000001331, '4', '2014-02-20 20:29:50', 'Authentication', 'Login', 'Successful'),
(0000001332, '4', '2014-02-20 20:36:26', 'Authentication', 'Logout', 'Successful'),
(0000001333, '6', '2014-02-20 20:36:31', 'Authentication', 'Login', 'Successful'),
(0000001334, '6', '2014-02-20 20:38:21', 'Authentication', 'Logout', 'Successful'),
(0000001335, '4', '2014-02-20 20:38:33', 'Authentication', 'Login', 'Successful'),
(0000001336, '4', '2014-02-20 20:53:00', 'Authentication', 'Logout', 'Successful'),
(0000001337, '1', '2014-02-20 20:53:18', 'Authentication', 'Login', 'Successful'),
(0000001338, '1', '2014-02-20 21:03:17', 'Authentication', 'Logout', 'Successful'),
(0000001339, '9', '2014-02-20 22:20:50', 'Authentication', 'Login', 'Successful'),
(0000001340, '9', '2014-02-20 22:22:06', 'Authentication', 'Logout', 'Successful'),
(0000001341, '9', '2014-02-20 22:31:27', 'Authentication', 'Login', 'Successful'),
(0000001342, '9', '2014-02-20 22:48:31', 'Authentication', 'Update Profile', 'Successful'),
(0000001343, '9', '2014-02-20 22:48:42', 'Authentication', 'Update Profile', 'Successful'),
(0000001344, '9', '2014-02-20 23:03:27', 'Authentication', 'Update Profile', 'Successful'),
(0000001345, '9', '2014-02-20 23:19:19', 'Authentication', 'Update Profile', 'Successful'),
(0000001346, '9', '2014-02-20 23:19:28', 'Authentication', 'Update Profile', 'Successful'),
(0000001347, '9', '2014-02-20 23:21:30', 'Authentication', 'Logout', 'Successful'),
(0000001348, '6', '2014-02-21 00:26:33', 'Authentication', 'Login', 'Successful'),
(0000001349, '6', '2014-02-21 00:28:51', 'Authentication', 'Logout', 'Successful'),
(0000001350, '6', '2014-02-21 00:32:49', 'Authentication', 'Login', 'Successful'),
(0000001351, 'emp_admin', '2014-02-21 00:49:40', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001352, 'emp_admin', '2014-02-21 00:51:09', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001353, '6', '2014-02-21 00:53:04', 'Authentication', 'Logout', 'Successful'),
(0000001354, '6', '2014-02-21 00:55:52', 'Authentication', 'Login', 'Successful'),
(0000001355, 'emp_admin', '2014-02-21 00:58:01', 'Authentication', 'Add UserAccount&Employee', 'Successfull'),
(0000001356, '6', '2014-02-21 00:58:38', 'Authentication', 'Logout', 'Successful'),
(0000001357, '17', '2014-02-21 00:58:43', 'Authentication', 'Login', 'Successful'),
(0000001358, '17', '2014-02-21 01:07:04', 'Authentication', 'Logout', 'Successful'),
(0000001359, '25', '2014-02-21 01:07:21', 'Authentication', 'Login', 'Successful'),
(0000001360, '25', '2014-02-21 01:10:42', 'Authentication', 'Update Profile', 'Successful'),
(0000001361, '25', '2014-02-21 01:11:08', 'Authentication', 'Update Profile', 'Successful'),
(0000001362, '25', '2014-02-21 01:11:16', 'Authentication', 'Update Profile', 'Successful'),
(0000001363, '6', '2014-02-21 01:20:58', 'Authentication', 'Login', 'Successful'),
(0000001364, '6', '2014-02-21 01:29:18', 'Authentication', 'Logout', 'Successful'),
(0000001365, '1', '2014-02-21 01:29:36', 'Authentication', 'Login', 'Successful'),
(0000001366, '1', '2014-02-21 01:29:41', 'Authentication', 'Logout', 'Successful'),
(0000001367, '6', '2014-02-21 01:29:47', 'Authentication', 'Login', 'Successful'),
(0000001368, '6', '2014-02-21 01:35:41', 'Authentication', 'Logout', 'Successful'),
(0000001369, '2', '2014-02-21 01:35:45', 'Authentication', 'Login', 'Successful'),
(0000001370, '2', '2014-02-21 01:35:50', 'Authentication', 'Logout', 'Successful'),
(0000001371, '6', '2014-02-21 01:36:11', 'Authentication', 'Login', 'Successful'),
(0000001372, '6', '2014-02-21 01:40:54', 'Authentication', 'Logout', 'Successful'),
(0000001373, '6', '2014-02-21 01:40:59', 'Authentication', 'Login', 'Successful'),
(0000001374, '6', '2014-02-21 01:41:25', 'Authentication', 'Logout', 'Successful'),
(0000001375, '17', '2014-02-21 01:41:55', 'Authentication', 'Login', 'Successful'),
(0000001376, '17', '2014-02-21 01:42:09', 'Authentication', 'Update Profile', 'Successful'),
(0000001377, '17', '2014-02-21 01:43:07', 'Authentication', 'Logout', 'Successful'),
(0000001378, '6', '2014-02-21 01:43:17', 'Authentication', 'Login', 'Successful'),
(0000001379, '9', '2014-02-21 01:48:34', 'Authentication', 'Update Profile', 'Successful'),
(0000001380, '6', '2014-02-21 01:48:58', 'Authentication', 'Logout', 'Successful'),
(0000001381, '9', '2014-02-21 01:49:30', 'Authentication', 'Login', 'Successful'),
(0000001382, '9', '2014-02-21 01:49:33', 'Authentication', 'Logout', 'Successful'),
(0000001383, '17', '2014-02-21 01:49:45', 'Authentication', 'Login', 'Successful'),
(0000001384, '17', '2014-02-21 02:14:29', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001385, '17', '2014-02-21 02:16:27', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001386, '17', '2014-02-21 02:18:40', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001387, '17', '2014-02-21 02:19:59', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001388, '17', '2014-02-21 02:20:04', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001389, '17', '2014-02-21 02:20:34', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001390, '17', '2014-02-21 02:21:06', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001391, '17', '2014-02-21 02:21:41', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001392, '17', '2014-02-21 02:44:07', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001393, '17', '2014-02-21 02:46:47', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001394, '17', '2014-02-21 02:46:56', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001395, '17', '2014-02-21 02:48:03', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001396, '17', '2014-02-21 02:48:20', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001397, '17', '2014-02-21 02:48:28', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001398, '17', '2014-02-21 02:48:36', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001399, '17', '2014-02-21 02:48:42', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001400, '17', '2014-02-21 02:48:47', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001401, '17', '2014-02-21 02:50:27', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001402, '17', '2014-02-21 02:50:40', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001403, '17', '2014-02-21 02:50:48', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001404, '17', '2014-02-21 02:51:03', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001405, '17', '2014-02-21 02:52:44', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001406, '17', '2014-02-21 02:54:13', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001407, '17', '2014-02-21 02:54:23', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001408, '17', '2014-02-21 02:55:28', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001409, '17', '2014-02-21 03:17:21', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001410, '17', '2014-02-21 04:04:41', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001411, '17', '2014-02-21 04:06:50', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001412, '17', '2014-02-21 04:08:06', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001413, '17', '2014-02-21 04:09:23', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001414, '17', '2014-02-21 04:10:06', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001415, '17', '2014-02-21 04:10:27', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001416, '17', '2014-02-21 04:11:56', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001417, '17', '2014-02-21 04:14:37', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001418, '17', '2014-02-21 05:11:01', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001419, '17', '2014-02-21 05:13:12', 'Authentication', 'Passed Leave Request', 'Successfull'),
(0000001420, '17', '2014-02-21 05:14:03', 'Authentication', 'Logout', 'Successful'),
(0000001421, '6', '2014-02-21 05:14:07', 'Authentication', 'Login', 'Successful'),
(0000001422, '6', '2014-02-21 06:02:59', 'Authentication', 'Logout', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee`
--

CREATE TABLE IF NOT EXISTS `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `date_hired` date NOT NULL,
  `department` varchar(50) NOT NULL,
  `elem_school` varchar(50) NOT NULL,
  `h_school` varchar(50) NOT NULL,
  `c_school` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `contact_no` int(50) NOT NULL,
  `casual_no` int(5) NOT NULL,
  `emergency_no` int(5) NOT NULL,
  `date_renewal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tb_employee`
--

INSERT INTO `tb_employee` (`id`, `user_id`, `firstname`, `lastname`, `middlename`, `address`, `email`, `position`, `date_hired`, `department`, `elem_school`, `h_school`, `c_school`, `status`, `contact_no`, `casual_no`, `emergency_no`, `date_renewal`) VALUES
(1, 2, 'employee', 'employee', 'employee', 'employee', 'employee@yahoo.com', 'employee', '2013-05-12', 'employee', 'employee', 'employee', 'employee', 'employee', 12345678, 0, 0, '0000-00-00'),
(2, 2, 'jayven', 'javier', 'santos', 'taytay rizal', 'asa@yahoo.com', 'employee', '2014-02-14', 'accounting', 'jose rizal university', 'jose rizal university', 'jose rizal university', '', 439534534, 0, 0, '0000-00-00'),
(3, 2, 'qweqweqwe', 'qweqwe', 'qweqwe', 'qweqwe', 'qweqweqwe', 'qrqwrqerwe', '0000-00-00', 'werwerwer', 'werwerwer', 'werwerwer', 'werwerwer', '', 345345, 14, 0, '0000-00-00'),
(4, 2, 'jorel', 'jorel', 'jorel', 'jorel', 'jorel', 'jorel', '0000-00-00', 'jorel', 'jorel', 'jorel', 'jorel', '', 123123123, 14, 0, '0000-00-00'),
(5, 2, 'pansit', 'pansit', 'pansit', 'pansit', 'pansit', 'pansit', '0000-00-00', 'pansit', 'pansit', 'pansit', 'pansit', '', 0, 14, 0, '0000-00-00'),
(6, 2, 'jason', 'jason', 'jason', 'jason', 'jason', 'jason', '0000-00-00', 'jason', 'jason', 'jason', 'jason', '', 1231, 14, 0, '0000-00-00'),
(7, 2, 'jesica', 'jesica', 'jesica', 'jesica', 'jesica@yahoo.com', 'jesica', '0000-00-00', 'jesica', 'jesica', 'jesica', 'jesica', '', 1282734234, 14, 0, '0000-00-00'),
(8, 2, 'ikaw', 'ikaw', 'ikaw', 'ikaw', 'ikaw@yahoo.com', 'ikaw', '2014-02-22', 'ikaw', 'ikaw', 'ikaw', 'ikaw', '', 2147483647, 0, 0, '0000-00-00'),
(9, 2, 'jorel', 'cruz', 'san agustin', 'oiasjdasdlkj', 'jorel@yahoo.com', 'kamote', '2013-02-20', 'kamote', 'sf', 'sdfsd', 'asfsaf', '', 2147483647, 14, 5, '0000-00-00'),
(10, 2, 'add', 'add', 'add', 'add', 'marcrigor09@gmail.com', 'add', '2013-02-21', 'add', 'add', 'add', 'add', '', 23123, 14, 2, '0000-00-00'),
(11, 0, 'emplo', 'emplo', 'emplo', 'emplo', 'emplo@yahoo.com', 'emplo', '2013-02-22', 'emplo', 'empl', 'emplo', 'emplo', '', 10823345, 14, 2, '2013-02-22'),
(12, 0, 'jorel', 'kim', 'hiasdk', 'asdasd', 'kim@kim.com', 'asdasd', '2013-02-20', 'asdasd', 'sfsdf', 'sdfsdf', 'sdsdf', '', 932323232, 14, 5, '2014-02-21'),
(13, 0, 'dfgkjdhfgksdhjfklh', 'sjkfdhsdjklfh', 'lskjdhfsljkdfh', 'sdkjfhsjlkdfh', 'poiwer@yahoo.com', 'woieruwer', '2014-02-25', 'qoweiruwiuer', 'eruityeoirty', 'werpuityeoriuty', 'woieruyweot', '', 2147483647, 14, 2, '2014-02-25'),
(14, 0, 'Jayven', 'Javier', 'Santos', '', 'jayven@yahoo.com', 'Quarterback', '2014-02-22', 'grin department', 'SAES', 'JSMJC', 'JRU', '', 12493824, 14, 5, '2014-02-22'),
(15, 0, 'Jayven', 'Javier', 'Santos', '', 'jayven@yahoo.com', 'Quarterback', '2014-02-22', 'grin department', 'SAES', 'JSMJC', 'JRU', '', 12493824, 14, 5, '2014-02-22'),
(16, 0, 'asda', 's', 'asd', 'asdasd', 'majosathleticdepartment@gmail.com', 'asd', '0231-12-31', 'sd', 'asdasd', 'd', 'd', '', 0, 14, 5, '0231-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_emp_leave`
--

CREATE TABLE IF NOT EXISTS `tb_emp_leave` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `emp_id` int(5) NOT NULL,
  `casual_no` int(5) NOT NULL,
  `emergency_no` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_leave`
--

CREATE TABLE IF NOT EXISTS `tb_leave` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `file` varchar(99) NOT NULL,
  `days_no` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `tb_leave`
--

INSERT INTO `tb_leave` (`id`, `email`, `reason`, `emp_name`, `start_date`, `end_date`, `status`, `Description`, `contact_no`, `file`, `days_no`) VALUES
(56, 'poiwer@yahoo.com', 'Sick Leave/Maternity', 'dfgkjdhfgksdhjfklh sjkfdhsdjklfh', '2014-02-21', '2014-02-22', 'PENDING', 'asdadad', 0, 'jorel cruz resume.doc', 1),
(57, 'poiwer@yahoo.com', 'Sick Leave/Maternity', 'dfgkjdhfgksdhjfklh sjkfdhsdjklfh', '2014-02-21', '2014-02-28', 'PENDING', 'asdasd', 0, 'jorel cruz resume.doc', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `batchorder_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `product_id`, `customer_id`, `product_price`, `product_quantity`, `total_price`, `order_date`, `batchorder_id`, `active`) VALUES
(6, 203, 10, 100, 1, 100, '2014-02-04 04:17:05', 984931, 3),
(15, 210, 8, 1600, 1, 1600, '2014-02-04 20:09:16', 311381, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_payables`
--

CREATE TABLE IF NOT EXISTS `tb_payables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_payables`
--

INSERT INTO `tb_payables` (`id`, `amount`, `description`, `date_added`) VALUES
(1, 12312, 'asdasdsad', '2014-02-04 19:16:39'),
(2, 123, 'asdsd', '2014-02-04 19:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE IF NOT EXISTS `tb_products` (
  `product_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` int(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=217 ;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`product_id`, `name`, `description`, `quantity`, `price`, `image`) VALUES
(211, '2323', '2323', 3, 232323, 'sea town hornet.jpg'),
(212, '2323', '2323', 2, 232323, 'jru.png'),
(213, '2323', '2323', 2, 232323, 'sea town classic.jpg'),
(214, '2323', '2323', 2, 232323, 'sea town hornet.jpg'),
(215, '2323', '2323', 2, 232323, 'sea town vivid pink.jpg'),
(216, '2323', '2323', 2, 232323, 'sea town lucho libre.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `level` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `civil_status` varchar(20) NOT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `citizenship` varchar(30) NOT NULL,
  `emergency_name` varchar(30) NOT NULL,
  `emergency_no` varchar(30) NOT NULL,
  `emergency_address` varchar(100) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `level`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `contact_no`, `address`, `email`, `gender`, `civil_status`, `religion`, `citizenship`, `emergency_name`, `emergency_no`, `emergency_address`, `relationship`) VALUES
(1, 1, 'superadmin', 'superadmin', 'superadmin', NULL, 'superadmin', 12345678, '', 'superadmin@yahoo.com', '', '', '', '', '', '', '', ''),
(2, 2, 'employee', 'employee', 'employee', NULL, 'employee', 123234234, '', 'employee@yahoo.com', '', '', '', '', '', '', '', ''),
(4, 4, 'os_admin', 'os_admin', 'os_admin', NULL, 'os_admin', 123456789, '', 'os_admin@yahoo.com', '', '', '', '', '', '', '', ''),
(5, 5, 'as_admin', 'as_admin', 'as_admin', NULL, 'as_admin', 123456789, '', 'as_admin@yahoo.com', '', '', '', '', '', '', '', ''),
(6, 6, 'emp_admin', 'emp_admin', 'emp_admin', NULL, 'emp_admin', 123456789, '', 'hk@yahoo.com', '', '', '', '', '', '', '', ''),
(7, 2, 'jayven', 'jayven', 'jayven', NULL, 'jayven', 123123123, '', 'jasdasd@yahoo.com', '', '', '', '', '', '', '', ''),
(8, 3, 'marcpogi', 'marcpogi', 'marc', NULL, 'rigor2', 2147483647, '', 'marcrigor08@yahoo.com', '', '', '', '', '', '', '', ''),
(9, 3, 'jorel', 'cruz', 'jorel', NULL, 'cruz2', 2147483647, 'adasd', 'jore@yahoo.com', 'male', 'Widowed', 'ss', 'adasd', 'asdasd', 'ss', 'asd', 'as'),
(10, 3, 'kamote', '1234', 'asdad', NULL, 'asdad', 2147483647, '', 'asdasdads@yahoo.com', '', '', '', '', '', '', '', ''),
(11, 7, 'accounting', 'accounting', 'accounting', NULL, 'accounting', 123456, '', 'accounting@yahoo.com', '', '', '', '', '', '', '', ''),
(12, 2, 'ikaw', 'ikaw', 'ikaw', NULL, 'ikaw', 2147483647, '', 'ikaw@yahoo.com', '', '', '', '', '', '', '', ''),
(13, 2, 'jorelkimcruz', '123456', 'jorel', NULL, 'cruz', 2147483647, '', 'jorel@yahoo.com', '', '', '', '', '', '', '', ''),
(14, 2, 'add', 'add', 'add', NULL, 'add', 23123, '', 'marcrigor09@gmail.com', '', '', '', '', '', '', '', ''),
(15, 2, 'emplo', 'emplo', 'emplo', NULL, 'emplo', 10823345, '', 'emplo@yahoo.com', '', '', '', '', '', '', '', ''),
(16, 2, 'kim', 'kim', 'jorel', NULL, 'kim', 932323232, '', 'kim@kim.com', '', '', '', '', '', '', '', ''),
(17, 2, 'polpol', 'polpol', 'dfgkjdhfgksdhjfklh', NULL, 'sjkfdhsdjklfh', 2147483647, 'assdasd', 'poiwer@yahoo.com', 'female', '', 'assd', 'asdasd', 'asdasd', 'asd', 'asd', 'asd'),
(18, 3, 'marc', 'pogi', '', '', 'rigor', 13123, 'asdasd', 'asd@yahoo.com', 'male', 'Single', 'asd', 'asdas', 'asd', '', 'asd', 'ad'),
(19, 3, 'marc29', 'qwert', '', '', 'rigor', 12345, 'asdasd', 'marcrigor08@yahoo.com', 'male', 'Single', 'asdasd', 'asdasd', 'asd', '123', 'asd', 'ads'),
(20, 3, 'qwe', 'qwe', 'adasd', '', 'qwe', 0, 'd', 'marcrigor08@yahoo.com', 'male', 'Single', 'd', 'ada', 'asd', '23', 'sad', 'ds'),
(21, 3, 'ss', 'sss', 'asd', '', 'asd', 12, 'asdasd', 'majosathleticdepartment@gmail.com', 'female', 'Single', 'asd', '12312', 'asd', '123', 'ads', '123s'),
(22, 3, 'qwee', 'qweeee', 'fghfgh', '', 'hfghfgh', 23, 'asdasd', 'asd@yahoo.com', 'female', 'Widowed', 'adsad', 'asdas', 'asdasd', '2', 'asd', 'sad'),
(23, 3, 'asd', 'asd', 'asdasdasdas', '', 'asdasd', 0, 'asdasd', 'asd@yahoo.com', 'female', 'Married', 'asd', 'asd', 'asdasdasd', 'asd', '213', 'asd'),
(24, 3, 's', 'qwee', 'asda', '', 'asd', 0, 'asdasd', 'marcrigor08@yahoo.com', 'female', 'Single', 'asd', 'asds', 'asdasdas', 'ss', 'sad', 'asd'),
(25, 2, 'asdasd', 'asdasd', 'asda', 'asd', 's', 0, 'asdasd', 'majosathleticdepartment@gmail.com', 'female', 'Widowed', 'sda', 'sd', 'd', 'd', 'd', 'da');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
