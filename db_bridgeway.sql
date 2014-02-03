-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2014 at 05:13 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bridgeway`
--
CREATE DATABASE IF NOT EXISTS `db_bridgeway` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_bridgeway`;

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
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registered` varchar(100) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `firstname`, `lastname`, `company`, `email`, `contact`, `username`, `password`, `date_registered`) VALUES
(1, 'sheela', 'marinay', 'amalaya plus corporation', 'angpait@yahoo.ahah', 'hahahaha', 'edgars', '1234', ''),
(3, 'sheela', 'marinay', 'amalaya plus corporation', 'angpait@yahoo.ahah', 'hahahaha', 'jacinto', '12345', '2014-01-06 09:10:21'),
(4, 'sheela', 'marinay', 'amalaya plus corporation', 'angpait@yahoo.ahah', 'hahahaha', 'sheelamarinay', '123', '2014-01-10 11:45:56'),
(5, 'kevin', 'mark', 'markkevin the company', 'mkiek@yahoo.com', '123456', 'mark', '123', '2014-01-10 12:07:50'),
(6, 'Joseph', 'Bejar', 'Bridgeway', 'josephbejarfiles@yahoo.com', '12345678901', 'joseph', 'bejar', '2014-01-13 00:48:44'),
(7, 'qjweyhquw', 'qweiou', 'qweiouyqw', 'ajskdh@yahoo.com', '03493845734', 'jorelkimcruz', 'qwe', '2014-01-31 00:41:37'),
(8, 'asd', 'asd', 'asd', 'marcrigor08@yahoo.com', '09068615252', 'qwe', 'qwe', '2014-01-31 04:07:38'),
(9, 'kioi', 'popo', 'popo', 'popo@yahoo.com', '090909', 'popo', 'popo', '2014-01-31 04:26:53'),
(10, 'qweee', 'qweeee', '', 'marcrigor08@yahoo.com', '09068615252', 'mnm', 'asd', '2014-01-31 04:54:18'),
(11, 'gh', 'gh', '', 'marcrigor08@yahoo.com', '09068615252', 'df', 'asd', '2014-01-31 04:58:04'),
(12, 'dddd', 'dddd', '', 'marcrigor08@yahoo.com', '09068615252', 'dddd', 'ddd', '2014-01-31 04:58:53');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

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
(61, 'pansit', '2014-02-03 11:45:25', '2014-02-04 19:34:11', '0000-00-00', 5, 'out'),
(62, 'pansit', '2014-02-03 11:58:22', '2014-02-04 19:34:11', '0000-00-00', 5, 'out'),
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
(78, 'pansit  pansit', '2014-02-04 19:34:08', '2014-02-04 19:34:11', '2014-02-04', 5, 'out'),
(79, 'employee  employee', '2014-02-03 23:39:24', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(80, 'jayven  javier', '2014-02-03 23:39:36', '2014-02-03 23:39:59', '0000-00-00', 2, 'out'),
(81, 'employee  employee', '2014-02-03 23:40:04', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(82, 'employee  employee', '2014-02-03 23:40:09', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(83, 'employee  employee', '2014-02-03 23:40:13', '2014-02-03 23:46:12', '0000-00-00', 1, 'out'),
(84, 'employee  employee', '2014-02-03 23:46:07', '2014-02-03 23:46:12', '2014-02-03', 1, 'out'),
(85, 'jayven  javier', '2014-02-03 23:46:28', '0000-00-00 00:00:00', '2014-02-03', 2, 'in'),
(86, 'jorel  jorel', '2014-02-03 23:46:34', '0000-00-00 00:00:00', '2014-02-03', 4, 'in'),
(87, 'qweqweqwe  qweqwe', '2014-02-03 23:46:38', '0000-00-00 00:00:00', '2014-02-03', 3, 'in');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1016 ;

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
(0000001015, '', '2014-02-03 15:50:00', 'Authentication', 'Login', 'Successful');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_employee`
--

INSERT INTO `tb_employee` (`id`, `user_id`, `firstname`, `lastname`, `middlename`, `address`, `email`, `position`, `date_hired`, `department`, `elem_school`, `h_school`, `c_school`, `status`, `contact_no`) VALUES
(1, 2, 'employee', 'employee', 'employee', 'employee', 'employee@yahoo.com', 'employee', '2014-04-08', 'employee', 'employee', 'employee', 'employee', 'employee', 12345678),
(2, 2, 'jayven', 'javier', 'santos', 'taytay rizal', 'asa@yahoo.com', 'employee', '2014-02-14', 'accounting', 'jose rizal university', 'jose rizal university', 'jose rizal university', '', 439534534),
(3, 2, 'qweqweqwe', 'qweqwe', 'qweqwe', 'qweqwe', 'qweqweqwe', 'qrqwrqerwe', '0000-00-00', 'werwerwer', 'werwerwer', 'werwerwer', 'werwerwer', '', 345345),
(4, 2, 'jorel', 'jorel', 'jorel', 'jorel', 'jorel', 'jorel', '0000-00-00', 'jorel', 'jorel', 'jorel', 'jorel', '', 123123123),
(5, 2, 'pansit', 'pansit', 'pansit', 'pansit', 'pansit', 'pansit', '0000-00-00', 'pansit', 'pansit', 'pansit', 'pansit', '', 0),
(6, 2, 'jason', 'jason', 'jason', 'jason', 'jason', 'jason', '0000-00-00', 'jason', 'jason', 'jason', 'jason', '', 1231),
(7, 2, 'jesica', 'jesica', 'jesica', 'jesica', 'jesica@yahoo.com', 'jesica', '0000-00-00', 'jesica', 'jesica', 'jesica', 'jesica', '', 1282734234);

-- --------------------------------------------------------

--
-- Table structure for table `tb_leave`
--

CREATE TABLE IF NOT EXISTS `tb_leave` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `emp_id` int(5) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `contact_no` int(50) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tb_leave`
--

INSERT INTO `tb_leave` (`id`, `emp_id`, `reason`, `contact_no`, `emp_name`, `start_date`, `end_date`, `status`) VALUES
(1, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'Decline'),
(2, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'Accepted'),
(3, 2, 'tyuiyui', 0, 'yuiyui', '2050-01-01', '2050-01-01', 'Accepted'),
(4, 2, 'jorel', 123123, 'jorel', '2050-01-01', '2050-01-01', 'Decline'),
(5, 7, 'qweqwe', 123123, 'ttttttt', '2050-01-01', '2050-01-01', 'PENDING'),
(6, 7, 'qweqwe', 123123, '', '2050-01-01', '2050-01-01', 'PENDING'),
(7, 7, 'qweqwe', 123123, '', '2050-01-01', '2050-01-01', 'PENDING'),
(8, 7, 'qweqwe', 123123, '', '2050-01-01', '2050-01-01', 'PENDING'),
(9, 7, 'gggg', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(10, 7, 'qqssss', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(11, 7, 'miley', 123123, '', '2050-01-01', '2050-01-01', 'PENDING'),
(12, 7, 'hfghfgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(13, 7, 'hfghfgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(14, 7, 'hghgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(15, 7, 'hghgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(16, 7, 'hghgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(17, 7, 'hghgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(18, 7, 'hghgh', 0, '', '2050-01-01', '2050-01-01', 'PENDING'),
(19, 7, 'qweqwe', 0, 'jayven', '2050-01-01', '2050-01-01', 'Decline'),
(20, 7, '', 0, 'jayven jayven', '2050-01-01', '2050-01-01', 'Accepted'),
(21, 7, 'qweqwe', 0, 'jayven jayven', '2050-01-01', '2050-01-01', 'Accepted'),
(22, 9, 'jason', 0, 'jason jason', '2050-01-01', '2050-01-01', 'Decline'),
(23, 9, 'qweqwe', 123, 'jason jason', '2050-01-01', '2050-01-01', 'Accepted'),
(24, 8, 'dsasdasd', 123123123, 'pansits pansits', '2050-01-01', '2050-01-01', 'PENDING'),
(25, 8, 'qweqwe', 123123, 'pansits pansits', '2014-02-02', '2014-02-13', 'PENDING'),
(26, 8, 'qweqwe', 123123, 'pansits pansits', '2014-02-08', '2014-02-27', 'PENDING'),
(27, 8, 'qweqwe', 345345345, 'pansits pansits', '2014-02-08', '2014-02-14', 'PENDING'),
(28, 8, 'werwerwer', 6756756, 'pansits pansits', '2014-02-07', '2014-02-27', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `product_id`, `user_id`, `quantity`, `total_amount`, `status`, `date_added`) VALUES
(11, 202, 3, 1, 10, 'Paid', '2014-02-03 23:35:04'),
(12, 202, 3, 12, 120, 'Pending', '2014-02-03 23:50:06'),
(13, 202, 3, 1, 10, 'Pending', '2014-02-03 23:55:46');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`product_id`, `name`, `description`, `quantity`, `price`, `image`) VALUES
(202, 'kaimito', 'spongbob', 4, 10, 'hijo.png'),
(203, 'kalalua', 'koim,asd0ihje', 9, 100, 'images.jpg');

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
  `last_name` varchar(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `level`, `username`, `password`, `first_name`, `last_name`, `contact_no`, `email`) VALUES
(1, 1, 'superadmin', 'superadmin', 'superadmin', 'superadmin', 12345678, 'superadmin@yahoo.com'),
(2, 2, 'employee', 'employee', 'employee', 'employee', 123234234, 'employee@yahoo.com'),
(3, 3, 'customer', 'customer', 'custo', 'custodio', 12345678, 'customer@yahoo.com'),
(4, 4, 'os_admin', 'os_admin', 'os_admin', 'os_admin', 123456789, 'os_admin@yahoo.com'),
(5, 5, 'as_admin', 'as_admin', 'as_admin', 'as_admin', 123456789, 'as_admin@yahoo.com'),
(6, 6, 'emp_admin', 'emp_admin', 'emp_admin', 'emp_admin', 123456789, 'hk@yahoo.com'),
(7, 2, 'jayven', 'jayven', 'jayven', 'jayven', 123123123, 'jasdasd@yahoo.com'),
(8, 3, 'marcpogi', 'marcpogi', 'marc', 'rigor', 2147483647, 'marcrigor08@yahoo.com'),
(9, 3, 'jorel', 'cruz', 'jorel', 'cruz', 2147483647, 'jore@yahoo.com'),
(10, 3, 'kamote', '1234', 'asdad', 'asdad', 2147483647, 'asdasdads@yahoo.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
