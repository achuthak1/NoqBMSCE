-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2017 at 12:06 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noq_bmsce1.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_num` varchar(50) NOT NULL,
  `card_name` varchar(50) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `cvv` int(10) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_num`, `card_name`, `card_type`, `cvv`, `balance`) VALUES
('346460357627974', 'American Express', 'Debit Card', 942, 20200000),
('371801126007337', 'American Express', 'Credit Card', 362, 3541),
('4716890049985120', 'Visa', 'Credit Card', 720, 20192),
('4916263883903470', 'Visa', 'Debit Card', 954, 10874),
('5360752352301240', 'Master Card', 'Credit Card', 461, 23045),
('5591215289447970', 'Master Card', 'Debit Card', 164, 652),
('6011095185084460', 'Discover', 'Debit Card', 486, 2958),
('6011878447893410', 'Discover', 'Credit Card', 610, 36441);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` varchar(20) NOT NULL,
  `c_name` varchar(45) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_name`, `credits`, `sem`) VALUES
('15IS3DCCOE', 'Computer organisation and embedded systems', 4, 3),
('15IS3DCCPP', 'C++ Programming', 6, 3),
('15IS3DCDMS', 'Discrete Mathematics', 4, 3),
('15IS3DCDS', 'Data Structures', 6, 3),
('15IS3DCLIA', 'Linear Algebra', 4, 4),
('15IS3DCTFC', 'Theoretical foundations of computation', 5, 3),
('15IS4DCADA', 'Analysis and design of algorithms', 6, 4),
('15IS4DCOPS', 'Operating systems', 6, 4),
('15IS4DCPSQ', 'Probability,statistics and queuing', 4, 4),
('15IS4DCUSP', 'Unix system programming', 5, 4),
('15IS5DCWEP', 'Web Programming ', 4, 5),
('16IS5DCDBM', 'Database Management Systems ', 6, 5),
('16IS5DCDCN', 'Data Communication and Networking  ', 5, 5),
('16IS5DCJAV', 'Programming with JAVA ', 6, 5),
('16IS5DEAIN', 'Artificial Intelligence', 4, 5),
('16IS5DEDMG', 'Data Mining', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fastrack`
--

CREATE TABLE `fastrack` (
  `usn` varchar(20) NOT NULL,
  `c_id` varchar(45) DEFAULT NULL,
  `subject_name` varchar(45) DEFAULT NULL,
  `fastrack_amt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fastrack`
--

INSERT INTO `fastrack` (`usn`, `c_id`, `subject_name`, `fastrack_amt`) VALUES
('1BM14IS059', '15IS3DCDMS', 'Discrete Mathematics', '4000'),
('1BM14IS059', '15IS3DCTFC', 'Theoretical foundations of computation', '5000'),
('1BM14IS059', '15IS3DCCOE', 'Computer organisation and embedded systems', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `makeup`
--

CREATE TABLE `makeup` (
  `usn` varchar(20) NOT NULL,
  `c_id` varchar(45) DEFAULT NULL,
  `subject_name` varchar(45) DEFAULT NULL,
  `makeup_amt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `usn` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fast_flag` varchar(20) NOT NULL,
  `annual_pay` int(20) NOT NULL,
  `fast_pay` int(11) DEFAULT NULL,
  `reval_pay` int(11) DEFAULT NULL,
  `makeup_pay` int(11) DEFAULT NULL,
  `Library` int(11) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL,
  `Makeupstatus` varchar(45) DEFAULT NULL,
  `IdStatus` varchar(45) DEFAULT NULL,
  `LibraryStatus` varchar(45) DEFAULT NULL,
  `FastrackStatus` varchar(45) DEFAULT NULL,
  `RevalStatus` varchar(45) DEFAULT NULL,
  `AnnualStatus` varchar(45) DEFAULT NULL,
  `Invoice` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`usn`, `name`, `fast_flag`, `annual_pay`, `fast_pay`, `reval_pay`, `makeup_pay`, `Library`, `Id`, `Makeupstatus`, `IdStatus`, `LibraryStatus`, `FastrackStatus`, `RevalStatus`, `AnnualStatus`, `Invoice`) VALUES
('1BM14IS055', 'NIKHIL RAMANTHA KOTI', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS056', 'NISHANTH M HEGDE', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS057', 'NISHIT TANDON', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS058', 'NITEESH NARAYANA HEGDE', 'no', 49500, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS059', 'NYAMAGOUDA SAGAR VENKAPPA', 'yes', 0, 9000, 600, 0, 0, 0, 'paid', 'paid', 'paid', 'paid', 'paid', 'paid', '1BM14IS059'),
('1BM14IS060', 'P J VAISHNAVI ', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS061', 'PALLAVI KC', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS062', 'PALLAVI L ', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS063', 'POLISETTY SUMANTH', 'no', 49500, 0, 0, 0, 0, 300, 'paid', 'paid', 'paid', 'paid', 'paid', 'paid', '1BM14IS063'),
('1BM14IS064', 'PRASHANT RAMAWAT', 'no', 140000, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS065', 'PREYAANSH PINTUBHAI PATEL', 'no', 140000, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS067', 'PRONOY ROY', 'no', 140000, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS069', 'RAKSHA DECHAMMA K M', 'no', 140000, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS070', 'RAMYA D', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS071', 'RAMYASHRI P R', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS072', 'RIMMALAPUDI KRISHNA VAMSI', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS073', 'ROHAN KUMAR', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS074', 'ROHIT RAYAPEDDI ', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS076', 'SACHIN TIMMANNA BHAGWAT', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS078', 'SAMBIT MUKHERJEE', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS079', 'SAMEER RAGHAVENDRA KATTI', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS080', 'SAMYUKTH H', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS081', 'SANCHITHA R', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS082', 'SANJANA M', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS083', 'SANKALP', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS084', 'SHARANYA D', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS085', 'SHIVAM JHA', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS086', 'SHOBIT AGARWAL', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS087', 'SHREYAS GANESH', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS088', 'SHUBHAM KUMAR PANDEY', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS089', 'SIDDARTHA SRIVASTAVA', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS090', 'SONIKA MURIEL PINTO', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS091', 'SOURABH AGRAWAL', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS092', 'SUHAS B R', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS094', 'SUNAINA RASHMI R', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS095', 'SUSHMA CHIPPAGIRI', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS096', 'SYEDA ARFA AJMAYEEN', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS097', 'T MITHUN', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS098', 'VAITHIANATHAN RAMNARAYAN', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS099', 'VARSHA R', 'no', 49500, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS100', 'VARUN N', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS101', 'VARUN VENU', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS102', 'VEMURI DIVYA', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS103', 'VIJAITEJ P', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS104', 'VIJAYA ANANYA BALU', 'no', 49500, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0'),
('1BM14IS106', 'VIVEK JHA', 'no', 0, 0, 0, 0, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', '0');

-- --------------------------------------------------------

--
-- Table structure for table `paymentsapplied`
--

CREATE TABLE `paymentsapplied` (
  `usn` varchar(20) NOT NULL,
  `c_id` varchar(45) DEFAULT NULL,
  `subject_name` varchar(45) DEFAULT NULL,
  `reval_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentsapplied`
--

INSERT INTO `paymentsapplied` (`usn`, `c_id`, `subject_name`, `reval_amt`) VALUES
('1BM14IS059', '16IS5DCWEP', 'WEB Programming', 600),
('1BM14IS063', '16IS5DCWEP', 'WEB Programming', 600),
('1BM14IS063', '16IS5DCAIN', 'Artificial Intelligence', 600),
('1BM14IS063', '16IS5DCDMG', 'Data Mining', 600);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(10) NOT NULL,
  `semester` int(5) NOT NULL,
  `session` varchar(11) DEFAULT '0',
  `feedback` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `password`, `name`, `department`, `semester`, `session`, `feedback`) VALUES
('1BM14IS055', '1BM14IS055', 'NIKHIL RAMANTHA KOTI', 'ISE', 5, NULL, NULL),
('1BM14IS056', '1BM14IS056', 'NISHANTH M HEGDE', 'ISE', 5, NULL, NULL),
('1BM14IS057', '1BM14IS057', 'NISHIT TANDON', 'ISE', 5, NULL, NULL),
('1BM14IS058', '1BM14IS058', 'NITEESH NARAYANA HEGDE', 'ISE', 5, NULL, NULL),
('1BM14IS059', '1BM14IS059', 'NYAMAGOUDA SAGAR VENKAPPA', 'ISE', 5, NULL, NULL),
('1BM14IS060', '1BM14IS060', 'P J VAISHNAVI ', 'ISE', 5, NULL, NULL),
('1BM14IS061', '1BM14IS061', 'PALLAVI KC', 'ISE', 5, NULL, NULL),
('1BM14IS062', '1BM14IS062', 'PALLAVI L ', 'ISE', 5, NULL, NULL),
('1BM14IS063', '1BM14IS063', 'POLISETTY SUMANTH', 'ISE', 5, '1', 'AWESOME WORK GUYS ACHUTHA,VAMSI,SUMANTH'),
('1BM14IS064', '1BM14IS064', 'PRASHANT RAMAWAT', 'ISE', 5, NULL, 'sdkjufhukaewf'),
('1BM14IS065', '1BM14IS065', 'PREYAANSH PINTUBHAI PATEL', 'ISE', 5, NULL, NULL),
('1BM14IS067', '1BM14IS067', 'PRONOY ROY', 'ISE', 5, NULL, NULL),
('1BM14IS069', '1BM14IS069', 'RAKSHA DECHAMMA K M', 'ISE', 5, NULL, 'safkadfsajkfasl'),
('1BM14IS070', '1BM14IS070', 'RAMYA D', 'ISE', 5, NULL, NULL),
('1BM14IS071', '1BM14IS071', 'RAMYASHRI P R', 'ISE', 5, NULL, NULL),
('1BM14IS072', '1BM14IS072', 'RIMMALAPUDI KRISHNA VAMSI', 'ISE', 5, NULL, NULL),
('1BM14IS073', '1BM14IS073', 'ROHAN KUMAR', 'ISE', 5, NULL, NULL),
('1BM14IS074', '1BM14IS074', 'ROHIT RAYAPEDDI ', 'ISE', 5, NULL, NULL),
('1BM14IS076', '1BM14IS076', 'SACHIN TIMMANNA BHAGWAT', 'ISE', 5, NULL, NULL),
('1BM14IS078', '1BM14IS078', 'SAMBIT MUKHERJEE', 'ISE', 5, NULL, NULL),
('1BM14IS079', '1BM14IS079', 'SAMEER RAGHAVENDRA KATTI', 'ISE', 5, NULL, NULL),
('1BM14IS080', '1BM14IS080', 'SAMYUKTH H', 'ISE', 5, NULL, NULL),
('1BM14IS081', '1BM14IS081', 'SANCHITHA R', 'ISE', 5, NULL, NULL),
('1BM14IS082', '1BM14IS082', 'SANJANA M', 'ISE', 5, NULL, NULL),
('1BM14IS083', '1BM14IS083', 'SANKALP', 'ISE', 5, NULL, NULL),
('1BM14IS084', '1BM14IS084', 'SHARANYA D', 'ISE', 5, NULL, NULL),
('1BM14IS085', '1BM14IS085', 'SHIVAM JHA', 'ISE', 5, NULL, NULL),
('1BM14IS086', '1BM14IS086', 'SHOBIT AGARWAL', 'ISE', 5, NULL, NULL),
('1BM14IS087', '1BM14IS087', 'SHREYAS GANESH', 'ISE', 5, NULL, NULL),
('1BM14IS088', '1BM14IS088', 'SHUBHAM KUMAR PANDEY', 'ISE', 5, NULL, NULL),
('1BM14IS089', '1BM14IS089', 'SIDDARTHA SRIVASTAVA', 'ISE', 5, NULL, NULL),
('1BM14IS090', '1BM14IS090', 'SONIKA MURIEL PINTO', 'ISE', 5, NULL, NULL),
('1BM14IS091', '1BM14IS091', 'SOURABH AGRAWAL', 'ISE', 5, NULL, NULL),
('1BM14IS092', '1BM14IS092', 'SUHAS B R', 'ISE', 5, NULL, NULL),
('1BM14IS094', '1BM14IS094', 'SUNAINA RASHMI R', 'ISE', 5, NULL, NULL),
('1BM14IS095', '1BM14IS095', 'SUSHMA CHIPPAGIRI', 'ISE', 5, NULL, NULL),
('1BM14IS096', '1BM14IS096', 'SYEDA ARFA AJMAYEEN', 'ISE', 5, NULL, NULL),
('1BM14IS097', '1BM14IS097', 'T MITHUN', 'ISE', 5, NULL, NULL),
('1BM14IS098', '1BM14IS098', 'VAITHIANATHAN RAMNARAYAN', 'ISE', 5, NULL, NULL),
('1BM14IS099', '1BM14IS099', 'VARSHA R', 'ISE', 5, NULL, NULL),
('1BM14IS100', '1BM14IS100', 'VARUN N', 'ISE', 5, NULL, NULL),
('1BM14IS101', '1BM14IS101', 'VARUN VENU', 'ISE', 5, NULL, NULL),
('1BM14IS102', '1BM14IS102', 'VEMURI DIVYA', 'ISE', 5, NULL, NULL),
('1BM14IS103', '1BM14IS103', 'VIJAITEJ P', 'ISE', 5, NULL, NULL),
('1BM14IS104', '1BM14IS104', 'VIJAYA ANANYA BALU', 'ISE', 5, NULL, NULL),
('1BM14IS106', '1BM14IS106', 'VIVEK JHA', 'ISE', 5, NULL, NULL),
('root', 'admin', 'Administrator', '', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `paymentsapplied`
--
ALTER TABLE `paymentsapplied`
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`username`,`password`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
