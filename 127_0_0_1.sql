-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2014 at 07:02 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=860 ;

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
(0000000859, '', '2014-02-01 17:52:18', 'Authentication', 'Login', 'Successful');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_employee`
--

INSERT INTO `tb_employee` (`id`, `user_id`, `firstname`, `lastname`, `middlename`, `address`, `email`, `position`, `date_hired`, `department`, `elem_school`, `h_school`, `c_school`, `status`, `contact_no`) VALUES
(1, 2, 'employee', 'employee', 'employee', 'employee', 'employee@yahoo.com', 'employee', '2014-04-08', 'employee', 'employee', 'employee', 'employee', 'employee', 12345678);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_leave`
--

INSERT INTO `tb_leave` (`id`, `emp_id`, `reason`, `contact_no`, `emp_name`, `start_date`, `end_date`, `status`) VALUES
(1, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'PENDING'),
(2, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'PENDING'),
(3, 2, 'tyuiyui', 0, 'yuiyui', '2050-01-01', '2050-01-01', 'PENDING'),
(4, 2, 'jorel', 123123, 'jorel', '2050-01-01', '2050-01-01', 'PENDING');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`product_id`, `name`, `description`, `quantity`, `price`, `image`) VALUES
(186, 'sdsd', 'sds', 234, 24, ''),
(188, 'sasd', 'sdfsd', 454, 454, ''),
(191, 'asdasd', 'asda', 343, 3434, ''),
(192, 'sds', 'ssds', 34, 343, ''),
(193, 'sd', 'sdsd', 34, 45, ''),
(194, 'sd', 'ssdf', 657, 567, ''),
(195, 'sdsd', 'sdsd', 23, 34, ''),
(196, 'sadas', 'sd', 34, 4545, ''),
(197, 'sdds', 'sd', 34, 4545, ''),
(198, 'asda', 'sdfs', 46, 456, ''),
(199, 'sfd', 'sdfs', 435, 4365, ''),
(200, 'dsd', 's', 34, 56, ''),
(201, 'sd', 'sd', 34, 34, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `level`, `username`, `password`, `first_name`, `last_name`, `contact_no`, `email`) VALUES
(1, 1, 'superadmin', 'superadmin', 'superadmin', 'superadmin', 12345678, 'superadmin@yahoo.com'),
(2, 2, 'employee', 'employee', 'employee', 'employee', 123234234, 'employee@yahoo.com'),
(3, 3, 'customer', 'customer', 'customer', 'customer', 12345678, 'customer'),
(4, 4, 'os_admin', 'os_admin', 'os_admin', 'os_admin', 123456789, 'os_admin@yahoo.com'),
(5, 5, 'as_admin', 'as_admin', 'as_admin', 'as_admin', 123456789, 'as_admin@yahoo.com'),
(6, 6, 'emp_admin', 'emp_admin', 'emp_admin', 'emp_admin', 123456789, 'hk@yahoo.com'),
(7, 2, 'jayven', 'jayven', 'jayven', 'jayven', 123123123, 'jasdasd@yahoo.com'),
(8, 3, 'marcpogi', 'marcpogi', 'marc', 'rigor', 2147483647, 'marcrigor08@yahoo.com'),
(9, 3, 'jorel', 'cruz', 'jorel', 'cruz', 2147483647, 'jore@yahoo.com');

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
--
-- Database: `knowledge`
--
CREATE DATABASE IF NOT EXISTS `knowledge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `knowledge`;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE IF NOT EXISTS `audit_trail` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `type` varchar(45) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`objectId`, `description`, `type`, `time`) VALUES
(1, 'testing2@test.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 10:35:33'),
(2, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 10:36:01'),
(3, ' updated user 27. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-12 10:52:05'),
(4, '31 updated user 27. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-12 10:54:15'),
(5, 'Admin 31 updated user 27. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-12 10:54:51'),
(6, 'Admin 31 updated user 27. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-12 10:55:10'),
(7, 'Admin 31 deleted user 27. <br/> IP ADDRESS :127.0.0.1', 'DELETE USER', '2014-01-12 10:55:57'),
(8, 'Admin 31 added a new user. <br/> IP ADDRESS :127.0.0.1', 'ADD USER', '2014-01-12 10:57:57'),
(9, 'testing2@test.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 12:41:35'),
(10, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 14:46:25'),
(11, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 15:26:06'),
(12, 'Admin 31 updated user 28. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-12 15:26:26'),
(13, 'kamote@kamote.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 15:29:03'),
(14, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 15:35:57'),
(15, 'kamote@kamote.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-12 15:45:46'),
(16, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-14 17:06:38'),
(17, 'Admin 31 updated user 28. <br/> IP ADDRESS :127.0.0.1', 'UPDATE USER', '2014-01-14 17:06:50'),
(18, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-14 17:18:59'),
(19, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-14 18:53:31'),
(20, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-24 14:42:07'),
(21, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-26 10:16:02'),
(22, 'admin@admin.com logged in. <br/> IP ADDRESS :127.0.0.1', 'LOG IN', '2014-01-30 17:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_description` longtext,
  `product_price` int(11) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  `product_image` varchar(150) NOT NULL DEFAULT 'default.jpg',
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`objectId`, `product_name`, `product_description`, `product_price`, `product_type`, `product_image`) VALUES
(2, 'M.G Wired Blanket', 'Flexible rockwool blanket insulation has one side stitched with 0.5 mm diameter gulvanized wire and mesh of hexagonal pattern. Used for fittings, valves, large pipes.', 10000, 'Industrial Product', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `objectId` int(10) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`objectId`, `active`, `service_name`, `group`, `price`) VALUES
(1, 1, 'Amputation of leg 1-10kga', 'Surgery', 8000),
(2, 1, 'Amputation of leg 11-20kg', 'Surgery', 10000),
(3, 1, 'Amputation of leg 20-30kg', 'Surgery', 12000),
(4, 1, 'Amputation of leg 35 and up', 'Surgery', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `objectId` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `user_level` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`objectId`, `username`, `password`, `first_name`, `last_name`, `email`, `user_level`, `createdAt`) VALUES
(28, 'testing2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Maria', 'Makiling', '2828testing2@test.com', 1, '2013-12-23 12:53:30'),
(31, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin', 'admin', 'admin@admin.com', 2, '2014-01-05 18:18:26'),
(32, 'testing', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test', 'test', 'testing@test.com', 1, '2014-01-12 10:57:57'),
(33, 'kamote', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asdasd', 'asdadsa', 'kamote@kamote.com', 1, '2014-01-12 15:28:56');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(7, 'db_bridgeway', 'tb_products', 'description', '', '', '_', ''),
(8, 'db_bridgeway', 'tb_products', 'quantity', '', '', '_', ''),
(5, 'db_bridgeway', 'tb_products', 'product_id', '', '', '_', ''),
(6, 'db_bridgeway', 'tb_products', 'name', '', '', '_', ''),
(9, 'db_bridgeway', 'tb_products', 'price', '', '', '_', ''),
(10, 'db_bridgeway', 'tb_products', 'image', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"db_bridgeway","table":"tb_products"},{"db":"db_bridgeway","table":"tb_user"},{"db":"knowledge","table":"products"},{"db":"db_bridgeway","table":"tb_audit_trail"},{"db":"db_bridgeway","table":"tb_audit"},{"db":"db_bridgeway","table":"tb_employee"},{"db":"db_bridgeway","table":"employment_login"},{"db":"db_bridgeway","table":"tbl_customer"},{"db":"db_bridgeway","table":"existing_employees"},{"db":"db_bridgeway","table":"employees"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_bridgeway', 'tb_products', '{"sorted_col":"`tb_products`.`product_id` ASC"}', '2014-02-01 14:53:55'),
('root', 'vet_app', 'users_order', '{"sorted_col":"`users_order`.`objectId` DESC","CREATE_TIME":"2013-11-28 04:33:49","col_visib":["1","1","1","1","1"]}', '2014-01-18 05:07:12'),
('root', 'knowledge', 'products', '{"CREATE_TIME":"2014-01-06 11:48:39","col_visib":["1","1","1","1","1","1"],"sorted_col":"`products`.`objectId` ASC"}', '2014-01-14 17:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-02-01 11:53:37', '[]');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- Database: `vet_app`
--
CREATE DATABASE IF NOT EXISTS `vet_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vet_app`;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE IF NOT EXISTS `audit_trail` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`objectId`, `description`, `time`, `type`) VALUES
(21, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-12 05:23:06', 'LOG IN'),
(22, 'testing2@test.com logged in. <br/> IP ADDRESS :127.0.0.1', '2014-01-12 10:34:58', 'LOG IN'),
(23, '127.0.0.1 logged in. <br/> Email :test@test.com', '2014-01-16 22:25:56', 'LOG IN'),
(24, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-16 22:30:38', 'LOG IN'),
(25, '127.0.0.1 logged in. <br/> Email :kamote@kamote.com', '2014-01-18 04:00:28', 'LOG IN'),
(26, 'User 27 added reservation. Reservation ID: 31', '2014-01-18 04:00:47', 'ADD RESERVATION'),
(27, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-18 04:01:06', 'LOG IN'),
(28, '127.0.0.1 logged in. <br/> Email :kamote@kamote.com', '2014-01-18 04:53:03', 'LOG IN'),
(29, 'User 27 added a order to cart. Order ID: 53', '2014-01-18 04:59:18', 'ADD ORDER TO CART'),
(30, 'User 27 checkout cart. Cart ID/Receipt #: 1', '2014-01-18 04:59:21', 'CHECKOUT CART'),
(31, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-19 07:40:35', 'LOG IN'),
(32, '127.0.0.1 logged in. <br/> Email :accounting@admin.com', '2014-01-19 07:46:58', 'LOG IN'),
(33, '127.0.0.1 logged in. <br/> Email :accounting@admin.com', '2014-01-19 07:47:28', 'LOG IN'),
(34, '127.0.0.1 logged in. <br/> Email :accounting@admin.com', '2014-01-19 07:49:18', 'LOG IN'),
(35, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-19 07:49:33', 'LOG IN'),
(36, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-19 07:50:03', 'LOG IN'),
(37, '127.0.0.1 logged in. <br/> Email :accounting@admin.com', '2014-01-19 07:51:02', 'LOG IN'),
(38, '127.0.0.1 logged in. <br/> Email :accounting@admin.com', '2014-01-19 07:51:09', 'LOG IN'),
(39, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-19 07:51:18', 'LOG IN'),
(40, '127.0.0.1 logged in. <br/> Email :asa@asa.com', '2014-01-19 07:51:42', 'LOG IN'),
(41, '127.0.0.1 logged in. <br/> Email :asa@asa.com', '2014-01-19 07:53:01', 'LOG IN'),
(42, '127.0.0.1 logged in. <br/> Email :asa@asa.com', '2014-01-19 07:55:36', 'LOG IN'),
(43, '127.0.0.1 logged in. <br/> Email :kamote@kamote.com', '2014-01-19 14:31:03', 'LOG IN'),
(44, '127.0.0.1 logged in. <br/> Email :kamote@kamote.com', '2014-01-19 14:31:04', 'LOG IN'),
(45, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-20 14:42:52', 'LOG IN'),
(46, '127.0.0.1 logged in. <br/> Email :pmanager@admin.com', '2014-01-20 14:43:36', 'LOG IN'),
(47, '127.0.0.1 logged in. <br/> Email :pmanager@admin.com', '2014-01-20 14:53:48', 'LOG IN'),
(48, '127.0.0.1 logged in. <br/> Email :pmanager@admin.com', '2014-01-20 14:56:11', 'LOG IN'),
(49, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-21 14:57:08', 'LOG IN'),
(50, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-24 15:16:09', 'LOG IN'),
(51, '127.0.0.1 logged in. <br/> Email :superadmin@admin.com', '2014-01-30 16:53:14', 'LOG IN'),
(52, '127.0.0.1 logged in. <br/> Email :kamote@kamote.com', '2014-01-30 16:53:35', 'LOG IN');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(45) DEFAULT NULL,
  `doctors_rate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`objectId`, `doctor_name`, `doctors_rate`) VALUES
(1, 'Dr. Jose Enriquez', NULL),
(2, 'Dr. Benjar Manalili', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`objectId`, `product_name`, `product_quantity`, `product_price`, `product_type`) VALUES
(1, 'ALLOPURINOL tablet 300mg, 100/box. Sold per tab.', 4964, 10, 'Tablets and Capsules'),
(2, 'ALUMINUM HYDROXIDE MAGNESIUM HYDROXIDE tablet 200mg/100mg, 100/box.Sold per tab.', 2973, 10, 'Tablets and Capsules');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `objectId` int(10) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`objectId`, `active`, `service_name`, `group`, `price`) VALUES
(1, 1, 'Amputation of leg 1-10kga', 'Surgery', 8000),
(2, 1, 'Amputation of leg 11-20kg', 'Surgery', 10000),
(3, 1, 'Amputation of leg 20-30kg', 'Surgery', 12000),
(4, 1, 'Amputation of leg 35 and up', 'Surgery', 15000),
(5, 3, 'Anal Gland Flushing', 'Surgery', 500),
(6, 3, 'Castration CAT (CARA)', 'Surgery', 800),
(7, 3, 'Pin Removal + Sedation', 'Surgery', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `objectId` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `user_level` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`objectId`, `username`, `password`, `first_name`, `last_name`, `email`, `user_level`, `createdAt`) VALUES
(22, 'test', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Gian', 'Robles', 'test@test.com', 1, '2013-12-05 17:11:09'),
(23, 'superadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'superadmin', 'superadmin', 'superadmin@admin.com', 2, '2013-12-05 17:14:09'),
(24, 'adminuser', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'adminuser', 'adminuser', 'adminuser@admin.com', 3, '2013-12-05 17:16:10'),
(25, 'adminreserve', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'adminreserve', 'adminreserve', 'adminreserve@yahoo.com', 4, '2013-12-05 19:17:16'),
(26, 'test2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test2', 'test2', 'test2@test.com', 1, '2013-12-06 01:17:29'),
(27, 'jorel', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sadasd', 'asdasdasd', 'kamote@kamote.com', 1, '2014-01-18 04:00:18'),
(28, 'asd', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dsas', 'asda', 'asa@KAMOTE.COM', 1, '2014-01-18 04:45:22'),
(29, 'accounting', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'jorel', 'cruz', 'accounting@admin.com', 5, '2014-01-19 07:43:25'),
(30, 'asd', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asd', 'asd', 'asa@asa.com', 5, '2014-01-19 07:51:31'),
(31, 'jorel', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asd', 'aasdasd', 'pmanager@admin.com', 6, '2014-01-20 14:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `users_order`
--

CREATE TABLE IF NOT EXISTS `users_order` (
  `objectId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `usersId` int(11) NOT NULL,
  `productAmount` int(11) NOT NULL,
  `totalPrice` float NOT NULL,
  `orderDate` datetime NOT NULL,
  `batchOrderId` int(11) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`objectId`),
  KEY `productId` (`productId`),
  KEY `usersId` (`usersId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `users_order`
--

INSERT INTO `users_order` (`objectId`, `productId`, `usersId`, `productAmount`, `totalPrice`, `orderDate`, `batchOrderId`, `active`) VALUES
(32, 1, 22, 1, 10, '2014-12-08 22:55:58', 105877, 0),
(37, 2, 22, 1, 10, '2013-12-15 21:29:47', 545358, 0),
(38, 2, 22, 2, 20, '2013-12-15 21:32:06', 480923, 0),
(39, 1, 22, 7, 70, '2013-12-15 21:34:21', 406463, 0),
(40, 2, 22, 4, 40, '2013-12-15 21:35:53', 909225, 0),
(41, 2, 22, 8, 80, '2013-12-15 21:38:23', 939410, 0),
(42, 1, 22, 11, 110, '2013-12-15 21:48:30', 781674, 0),
(43, 1, 22, 3, 30, '2013-12-15 21:50:56', 452853, 0),
(44, 2, 22, 2, 20, '2013-12-15 21:51:02', 452853, 0),
(45, 1, 22, 5, 50, '2013-12-15 21:55:06', 458703, 0),
(46, 1, 22, 1, 10, '2013-12-15 21:57:10', 773599, 0),
(47, 2, 22, 1, 10, '2013-12-16 20:23:03', 773599, 0),
(48, 1, 22, 2, 20, '2013-12-16 21:57:29', 985717, 0),
(49, 2, 22, 1, 10, '2013-12-17 05:24:26', 891070, 0),
(51, 1, 22, 1, 10, '2014-01-05 14:39:41', NULL, 1),
(52, 1, 22, 1, 10, '2014-01-05 14:42:02', NULL, 1),
(53, 1, 27, 1, 10, '2014-01-18 12:59:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_reservation`
--

CREATE TABLE IF NOT EXISTS `users_reservation` (
  `objectId` int(10) NOT NULL AUTO_INCREMENT,
  `serviceId` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `reserveDate` varchar(15) NOT NULL,
  `reserveTime` varchar(15) NOT NULL,
  `reserveDateTime` datetime NOT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`objectId`),
  KEY `serviceId` (`serviceId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users_reservation`
--

INSERT INTO `users_reservation` (`objectId`, `serviceId`, `userId`, `reserveDate`, `reserveTime`, `reserveDateTime`, `confirmed`, `timestamp`) VALUES
(31, 1, 27, '01/24/2014', '12:00 PM', '2014-01-24 12:00:00', 2, '2014-01-18 04:52:50');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_order`
--
ALTER TABLE `users_order`
  ADD CONSTRAINT `users_order_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`objectId`),
  ADD CONSTRAINT `users_order_ibfk_2` FOREIGN KEY (`usersId`) REFERENCES `users` (`objectId`);

--
-- Constraints for table `users_reservation`
--
ALTER TABLE `users_reservation`
  ADD CONSTRAINT `users_reservation_ibfk_1` FOREIGN KEY (`serviceId`) REFERENCES `services` (`objectId`),
  ADD CONSTRAINT `users_reservation_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`objectId`);
--
-- Database: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
