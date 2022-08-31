-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 02:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tid_projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `First_name` varchar(45) NOT NULL,
  `Middle_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) NOT NULL,
  `Email_address` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `First_name`, `Middle_name`, `Last_name`, `Email_address`, `Password`) VALUES
(1, 'Ibironke', 'Emmanuel', 'Toluwanimi', 'ibironkectolu@gmail.com', '$2y$10$ocN2bF0GxWDainxpeunWue1gPXpGHPAGeFgqWN1gwOY0t5ZCh7zn2');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `Role_id` int(11) NOT NULL,
  `Role_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `code`) VALUES
(1, 'Access Bank', '044'),
(2, 'Citibank', '023'),
(3, 'Diamond Bank', '063'),
(4, 'Dynamic Standard Bank', '011'),
(5, 'Ecobank Nigeria', '050'),
(6, 'Fidelity Bank Nigeria', '070'),
(7, 'First Bank of Nigeria', '011'),
(8, 'First City Monument Bank', '214'),
(9, 'Guaranty Trust Bank', '058'),
(10, 'Heritage Bank Plc', '030'),
(11, 'Jaiz Bank', '301'),
(12, 'Keystone Bank Limited', '082'),
(13, 'Providus Bank Plc', '101'),
(14, 'Polaris Bank', '076'),
(15, 'Stanbic IBTC Bank Nigeria Limited', '221'),
(16, 'Standard Chartered Bank', '068'),
(17, 'Sterling Bank', '232'),
(18, 'Suntrust Bank Nigeria Limited', '100'),
(19, 'Union Bank of Nigeria', '032'),
(20, 'United Bank for Africa', '033'),
(21, 'Unity Bank Plc', '215'),
(22, 'Wema Bank', '035'),
(23, 'Zenith Bank', '057');

-- --------------------------------------------------------

--
-- Table structure for table `collateral`
--

CREATE TABLE `collateral` (
  `Collateral_id` int(11) NOT NULL,
  `Name_of_collateral` varchar(45) NOT NULL,
  `Classification_of_collateral` varchar(45) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Loan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(50) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Middle_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) NOT NULL,
  `Bank_id` int(50) NOT NULL,
  `Account_no` int(50) NOT NULL,
  `Bvn` int(50) NOT NULL,
  `Phone_number` decimal(10,0) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Date_of_birth` date DEFAULT NULL,
  `Email_address` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `First_name`, `Middle_name`, `Last_name`, `Bank_id`, `Account_no`, `Bvn`, `Phone_number`, `Gender`, `Date_of_birth`, `Email_address`, `Address`, `Password`) VALUES
(2, 'imoleayo', 'ade', 'balogun', 0, 0, 0, '9069224767', '', '2022-06-28', 'imol', '2b ketu ogudu', '123456'),
(5, 'Anike', 'Yetunde', 'Adekola', 0, 0, 0, '7085080074', '', '1993-07-12', 'imoleayobalogun@ymail.com', '2b bola onasanya street ogudu gra', 'Anike.1234'),
(13, 'Taiwo', 'ade', 'bola', 0, 0, 0, '234567', 'male', '2022-06-27', 'taiwo@adeleke', '32 ketu street', 'bolu'),
(14, 'bimbe', 'tolu', 'bisola', 0, 0, 0, '23456789', 'male', '2022-04-05', 'adelove@gmail.com', 'ikeja allen', 'yusuf'),
(15, 'Lion', 'tope', 'Adebola', 0, 0, 0, '2347890456', 'female', '1990-02-17', 'adebola@yahoo.com', '5 obatola street ikeja', 'ayo12345'),
(16, 'Dapo', 'bunmi', 'Akiode', 0, 0, 0, '9999999999', 'female', '1988-02-18', 'dapo4real@yahoo.com', '4 bolude street ikeja gra', 'dapoabiodu'),
(17, 'Toba', 'Adekunle', 'Samuel', 0, 0, 0, '8007102022', 'female', '2022-02-01', 'Samueltoba4real@yahoo.com', '33 Emmanuel Akiode AVenue', 'Samueltoba1234'),
(21, 'James', 'Bond', 'Toluwanimi', 0, 0, 0, '9039863678', 'male', '0000-00-00', 'jamesbond@ymail.com', 'lagos', ''),
(23, 'Oluwa', 'Bond', 'Toluwanimi', 0, 0, 0, '727191010', 'male', '0000-00-00', 'ggbobd@ymail.com', 'lagos', ''),
(26, 'gracias', 'Bond', 'Toluwanimi', 0, 0, 0, '9827272727', 'male', '0000-00-00', 'arogudayo@ymail.com', 'lagos', '12345'),
(27, 'opeyemi', 'Bond', 'Toluwanimi', 0, 0, 0, '3832023083', 'male', '0000-00-00', 'guehwu2@ymail.com', 'lagos', '$2y$10$3uCQx6yoOUWRJ3cptBY6MuUvp3acwBeEYnWg85RQrwssTzRjwprSS'),
(29, '', '', '', 0, 0, 0, '0', '', '0000-00-00', '', '\r\n					', '$2y$10$pLvYlN/k8wSIri54vJkGE.4saiWRJhDutWC2Sb/F.F7RCoRfvp69m'),
(33, 'tolu', 'jiggy', 'Toluwanimi', 3, 129348473, 0, '9829283822', 'male', NULL, 'ibironkectolu@gmail.com', 'jrrjlagos', '$2y$10$mpq3cKw2zOUKNQFPIMZo2eKb4zj75Li6lgxElHkNoDeRD3WhLs/f2'),
(37, 'tolu', 'jiggy', 'Toluwanimi', 0, 0, 0, '128282812', 'male', '2011-09-22', 'ibironkeoluwatolu@gmail.com', 'jrrjlagos', '$2y$10$HAtL.7dOkD/S/.EaHtid/OHA7EOniEm62hNlAj6YG8uwCqgpX1QPq'),
(38, 'toba', 'brown', 'uu', 0, 0, 0, '92382020', 'female', '2003-03-05', 'tobabrown@ymail.com', 'Po box 373 46 clover street', '$2y$10$tjx1X5JxjGrU3xXLOzkYbelE2G/2zqr5BIi1aT/jhQUb9VgCXq.pC'),
(42, 'Gary', 'wejdnwedwe', 'Mckinney', 4, 2147483647, 0, '23', 'male', '2092-09-29', 'dfweuidweu@ymail.com', '120913812098312u10', '$2y$10$PmlILJZLO/US.ypFEWuQP.oFqnHPRO.I7pnuNbC/OGdS/nbk4L0bO'),
(43, 'garyt', 'Bond', 'ggshs', 11, 25169727, 828761910, '281819233', 'male', '2022-07-13', 'hhgahaw@ymail.com', 'B26 Redemption Way , Parafa Estate\r\nlagos', '$2y$10$z9UWXNWXOx4LzRnzND7atOdJB0LqzrYUoEJ0RgHbuaMCmtYQq1sYO'),
(46, 'mr', 'thomas', 'reed', 1, 2147483647, 2147483647, '14227278', 'male', '2022-07-13', 'coolmusicng@gmail.com', 'B26 Redemption Way , Parafa Estate\r\nlagos', '$2y$10$wBN6Tl.PbNT5anPxbirRReZXY37etFd9WxXYo1S82MSiytJpNBK36'),
(47, 'samuel', 'jones', 'samueljones@gmail.com', 11, 182782723, 2147483647, '2341241111', 'male', '2022-07-14', 'ibironketolu', '3oruoweifwejfwe', '$2y$10$h/c1PlYnEzoXZpHwNm2cRuZC0UOfsCvLIcZHTJHIt2KOQc3dDRB6y');

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `Investment_id` int(50) NOT NULL,
  `Customer_id` int(50) NOT NULL,
  `invest_amount` varchar(255) NOT NULL,
  `invest_type_id` int(50) NOT NULL,
  `Maturity_date` varchar(255) NOT NULL,
  `Approval_status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
  `Date_invested` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `investment`
--

INSERT INTO `investment` (`Investment_id`, `Customer_id`, `invest_amount`, `invest_type_id`, `Maturity_date`, `Approval_status`, `Date_invested`) VALUES
(1, 33, '5000', 1, '5', 'pending', '2022-08-02 23:56:23'),
(2, 33, '10000', 5, '2', 'pending', '2022-08-02 23:59:50'),
(3, 33, '40000', 3, '10', 'pending', '2022-08-03 00:00:36'),
(4, 33, '3300', 4, '2 Months', 'failed', '2022-08-08 23:47:00'),
(5, 33, '3300', 5, '5 Months', 'pending', '2022-08-08 20:57:29'),
(6, 33, '35000', 5, '20 Months', 'completed', '2022-08-08 23:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `invst_type`
--

CREATE TABLE `invst_type` (
  `Invst_type_id` int(50) NOT NULL,
  `invest_name` varchar(255) DEFAULT NULL,
  `Invest_interest` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invst_type`
--

INSERT INTO `invst_type` (`Invst_type_id`, `invest_name`, `Invest_interest`) VALUES
(1, 'Family Investment', '10'),
(2, 'Student Investment', '10'),
(3, 'Stocks', '10'),
(4, 'Bonds', '10'),
(5, 'Retirement', '10'),
(6, 'Saving for Education', '10'),
(7, 'Retirement.', '10');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Loan_amount` int(11) NOT NULL,
  `Interest_rate` decimal(10,0) NOT NULL,
  `Loan_type_id` int(11) DEFAULT NULL,
  `Loan_duration` varchar(45) NOT NULL,
  `Date_request` timestamp NULL DEFAULT current_timestamp(),
  `Repayment_date` date NOT NULL,
  `Approval_status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`Loan_id`, `Customer_id`, `Loan_amount`, `Interest_rate`, `Loan_type_id`, `Loan_duration`, `Date_request`, `Repayment_date`, `Approval_status`) VALUES
(1, 33, 1000, '10', 3, '3 months', '2022-07-24 23:20:06', '2022-07-14', 'completed'),
(4, 33, 10000, '10', 3, '5 Months', '2022-07-25 06:50:45', '2011-07-14', 'failed'),
(5, 33, 5000, '10', 3, '5 Months', '2022-07-25 07:02:25', '2022-07-09', 'completed'),
(6, 46, 300000, '10', 4, '5 Months', '2022-07-25 07:34:17', '2022-07-14', 'completed'),
(7, 33, 300000, '10', 7, '7 months', '2022-08-08 09:40:33', '2024-10-09', 'completed'),
(8, 33, 10000, '10', 4, '5 Months', '2022-08-08 20:55:33', '2022-08-18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `loan_type`
--

CREATE TABLE `loan_type` (
  `Loan_type_id` int(11) NOT NULL,
  `Loan_name` varchar(255) NOT NULL,
  `Loan_rate` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_type`
--

INSERT INTO `loan_type` (`Loan_type_id`, `Loan_name`, `Loan_rate`) VALUES
(1, 'Mortgage Loans', '10'),
(2, 'Student Loan', '10'),
(3, 'Personal Loan', '10'),
(4, 'Land Loan', '10'),
(5, 'Small Business Loan', '10'),
(6, 'Credit-builder Loan', '10'),
(7, 'Home Equity Loan', '10'),
(8, 'Business Loan', '10'),
(10, 'Wedding Loan', '10'),
(11, 'Brwery Loan', '10'),
(12, 'Insurance Loan', '10'),
(13, 'Mighty Loan', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `First_name_UNIQUE` (`First_name`),
  ADD UNIQUE KEY `Last_name_UNIQUE` (`Last_name`),
  ADD UNIQUE KEY `Email_address_UNIQUE` (`Email_address`),
  ADD UNIQUE KEY `Password_UNIQUE` (`Password`),
  ADD UNIQUE KEY `Admin_id_UNIQUE` (`Admin_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`Role_id`),
  ADD UNIQUE KEY `Role_name_UNIQUE` (`Role_name`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collateral`
--
ALTER TABLE `collateral`
  ADD PRIMARY KEY (`Collateral_id`),
  ADD UNIQUE KEY `Name_of_collateral_UNIQUE` (`Name_of_collateral`),
  ADD KEY `customer_idx` (`Customer_id`),
  ADD KEY `loan_idx` (`Loan_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `Phone_number_UNIQUE` (`Phone_number`),
  ADD UNIQUE KEY `Email_address_UNIQUE` (`Email_address`),
  ADD KEY `Bank_id` (`Bank_id`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`Investment_id`),
  ADD KEY `fk_mycustid` (`Customer_id`),
  ADD KEY `fk_myinvstypeid` (`invest_type_id`);

--
-- Indexes for table `invst_type`
--
ALTER TABLE `invst_type`
  ADD PRIMARY KEY (`Invst_type_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`Loan_id`,`Loan_amount`),
  ADD UNIQUE KEY `Customer_id` (`Customer_id`,`Loan_amount`,`Interest_rate`,`Loan_duration`,`Repayment_date`);

--
-- Indexes for table `loan_type`
--
ALTER TABLE `loan_type`
  ADD PRIMARY KEY (`Loan_type_id`),
  ADD UNIQUE KEY `Loan_type_id_UNIQUE` (`Loan_type_id`),
  ADD UNIQUE KEY `Classification_of_loan_UNIQUE` (`Loan_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `Role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `collateral`
--
ALTER TABLE `collateral`
  MODIFY `Collateral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `Investment_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invst_type`
--
ALTER TABLE `invst_type`
  MODIFY `Invst_type_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `Loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loan_type`
--
ALTER TABLE `loan_type`
  MODIFY `Loan_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collateral`
--
ALTER TABLE `collateral`
  ADD CONSTRAINT `fk_collateral_cus_id` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_collateral_loan_id` FOREIGN KEY (`Loan_id`) REFERENCES `loan` (`Loan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `investment`
--
ALTER TABLE `investment`
  ADD CONSTRAINT `fk_custid` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `fk_inv_cus_id` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `cust_id` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `loan_type` FOREIGN KEY (`Loan_type_id`) REFERENCES `loan_type` (`Loan_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
