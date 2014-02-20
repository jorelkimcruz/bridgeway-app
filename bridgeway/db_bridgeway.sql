-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2014 at 04:18 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 2, 'dsfsa', 'sdfds', 'sdfsd', 'sdfsdf', 'sdfs', 'ds', '0000-00-00', 'sdf', 'sdfs', 'qdfsfgs', 'dsfsdq', '', 2423),
(2, 2, 'asdas', 'asdsaDSFS', 'sdfs', 'dsfs', 'sdfds', 'dsfsf', '0000-00-00', 'dssdf', 'sdfs', 'dsfs', 'dsf', '', 0),
(3, 2, 'Joseph', 'Santos', 'Dela Cruz', 'Makati', 'santos@yahoo.com', 'Technical Support', '0000-00-00', 'HR', 'sample', 'sample', 'sample', '', 143543),
(4, 2, 'Rhea', 'Taboada', 'Liko', 'Makati', 'rea@yahoo.com', 'Accountant', '0000-00-00', 'Accounting', 'sample', 'sample', 'sample', '', 213213),
(5, 2, 'Vic', 'Tamayo', 'Arthur', 'Marikina', 'vic@google.com', 'Manager', '0000-00-00', 'Head', 'sample', 'sample', 'sample', '', 34543),
(6, 2, 'Johny', 'Coronel', 'Smith', 'Mandaluyong', 'coroneljohn@yahoo.com', 'Technical Support', '0000-00-00', 'Technical', 'sample', 'sample', 'sample', '', 546),
(7, 2, 'Benedic', 'Tolentino', 'Cret', 'Navotas', 'benedic@yahoo.com', 'Technical Support', '0000-00-00', 'Technical', 'sample', 'sample', 'sample', '', 43534);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`product_id`, `name`, `description`, `quantity`, `price`, `image`) VALUES
(1, 'Linksys', 'Router', 85, 1500, '1.jpg'),
(2, 'Cisco', 'Router', 100, 3500, '2.jpg'),
(3, 'TP-Link', 'Router', 100, 2500, '4.jpg'),
(4, 'HP', 'Router', 100, 3000, '3.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `level`, `username`, `password`, `first_name`, `last_name`, `contact_no`, `email`) VALUES
(1, 1, 'superadmin', 'superadmin', 'superadmin', 'superadmin', 12345678, 'superadmin@yahoo.com'),
(2, 2, 'employee', 'employee', 'employee', 'employee', 123234234, 'employee@yahoo.com'),
(4, 4, 'os_admin', 'os_admin', 'os_admin', 'os_admin', 123456789, 'os_admin@yahoo.com'),
(5, 5, 'as_admin', 'as_admin', 'as_admin', 'as_admin', 123456789, 'as_admin@yahoo.com'),
(6, 6, 'emp_admin', 'emp_admin', 'emp_admin', 'emp_admin', 123456789, 'hk@yahoo.com'),
(11, 7, 'accounting', 'accounting', 'accounting', 'accounting', 123456, 'accounting@yahoo.com'),
(14, 3, 'joseph', 'bejar', 'Joseph', 'Bejar', 2147483647, 'joseph@yahoo.com'),
(15, 2, 'josephsantos', 'santos', 'Joseph', 'Santos', 143543, 'santos@yahoo.com'),
(16, 2, 'rhea', 'taboada', 'Rhea', 'Taboada', 213213, 'rea@yahoo.com'),
(17, 2, 'vic', 'tamayo', 'Vic', 'Tamayo', 34543, 'vic@google.com'),
(18, 2, 'johny', 'coronel', 'Johny', 'Coronel', 546, 'coroneljohn@yahoo.com'),
(19, 2, 'benedic', 'tolentino', 'Benedic', 'Tolentino', 43534, 'benedic@yahoo.com'),
(20, 3, 'bejar', 'joseph', 'joseph1', 'bejar', 324234, 'josephbejarfiles@yahoo.com.ph');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
