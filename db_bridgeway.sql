-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2014 at 07:34 PM
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
  `time_in` varchar(100) NOT NULL,
  `time_out` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `emp_id` int(5) NOT NULL,
  `job` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tb_attendance`
--

INSERT INTO `tb_attendance` (`id`, `emp_name`, `time_in`, `time_out`, `date`, `emp_id`, `job`) VALUES
(1, 'qqwe', 'qweqwe', 'qweqweqwe', 'qweqwe', 2, ''),
(2, 'jayven', '8:30', '9:00', 'February 10,2014', 7, 'in'),
(15, 'jayven', '', '', '', 7, 'in'),
(16, 'jayven', '', '', '', 0, 'in'),
(17, 'jayven', '', '', '', 88, 'in'),
(18, 'jayven', '', '', '', 88, 'in'),
(23, 'jayven', '', '', '', 233, 'in'),
(24, 'jayven', '', '', '', 23232, 'in'),
(28, 'jayven', '', '', '', 7878, 'in'),
(29, 'jayven', '', '', '', 0, 'in'),
(30, 'jayven', '', '', '', 909, 'in');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=879 ;

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
(0000000878, '', '2014-02-01 18:33:45', 'Authentication', 'Login', 'Successful');

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
(1, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'Accepted'),
(2, 2, 'qweqweqwe', 213123123, 'qweqweqwe', '2050-01-01', '2050-01-01', 'Decline'),
(3, 2, 'tyuiyui', 0, 'yuiyui', '2050-01-01', '2050-01-01', 'PENDING'),
(4, 2, 'jorel', 123123, 'jorel', '2050-01-01', '2050-01-01', 'Accepted');

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
(3, 3, 'customer', 'customer', 'customer', 'customer', 12345678, 'customer@yahoo.com'),
(4, 4, 'os_admin', 'os_admin', 'os_admin', 'os_admin', 123456789, 'os_admin@yahoo.com'),
(5, 5, 'as_admin', 'as_admin', 'as_admin', 'as_admin', 123456789, 'as_admin@yahoo.com'),
(6, 6, 'emp_admin', 'emp_admin', 'emp_admin', 'emp_admin', 123456789, 'hk@yahoo.com'),
(7, 2, 'jayven', 'jayven', 'jayven', 'jayven', 123123123, 'jasdasd@yahoo.com'),
(8, 3, 'marcpogi', 'marcpogi', 'marc', 'rigor', 2147483647, 'marcrigor08@yahoo.com'),
(9, 3, 'jorel', 'cruz', 'jorel', 'cruz', 2147483647, 'jore@yahoo.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
