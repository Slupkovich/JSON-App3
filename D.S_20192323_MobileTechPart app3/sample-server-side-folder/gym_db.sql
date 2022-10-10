-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 04:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointment_info`
-- (See below for the actual view)
--
CREATE TABLE `appointment_info` (
`Appoint_Room` tinyint(4)
,`Appoint_Date_Time` datetime
,`Owner_FName` varchar(20)
,`Owner_Surname` varchar(20)
,`Pet_Name` varchar(20)
,`Pet_Type` varchar(36)
,`Vet_Name` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointment_info2`
-- (See below for the actual view)
--
CREATE TABLE `appointment_info2` (
`Room` tinyint(4)
,`Date_Time` datetime
,`First Name` varchar(20)
,`Surname` varchar(20)
,`Pet Name` varchar(20)
,`Species` varchar(36)
,`Vet Name` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_tbl`
--

CREATE TABLE `appointment_tbl` (
  `Appointment_ID` int(11) NOT NULL,
  `Appoint_Date_Time` datetime NOT NULL,
  `did_Attended` tinyint(1) NOT NULL COMMENT 'yes = 1 no = 0',
  `Appoint_Room` tinyint(4) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vet_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_tbl`
--

INSERT INTO `appointment_tbl` (`Appointment_ID`, `Appoint_Date_Time`, `did_Attended`, `Appoint_Room`, `Pet_ID`, `Vet_ID`) VALUES
(1, '2020-04-20 09:00:00', 1, 1, 1, 1),
(2, '2020-04-20 09:00:00', 1, 2, 2, 2),
(3, '2020-04-20 09:00:00', 1, 3, 3, 3),
(4, '2020-04-20 09:30:00', 1, 1, 4, 1),
(5, '2020-04-20 09:30:00', 1, 2, 5, 2),
(6, '2020-04-20 09:30:00', 1, 3, 6, 3),
(7, '2020-04-20 09:30:00', 1, 1, 7, 1),
(8, '2020-04-20 09:30:00', 1, 2, 8, 2),
(9, '2020-04-20 09:30:00', 1, 3, 9, 3),
(10, '2020-04-20 10:00:00', 0, 1, 10, 1),
(11, '2020-04-20 10:00:00', 1, 2, 11, 2),
(12, '2020-04-20 10:00:00', 1, 3, 12, 3),
(13, '2020-04-20 10:30:00', 1, 1, 13, 1),
(14, '2020-04-20 10:30:00', 1, 2, 14, 2),
(15, '2020-04-20 10:30:00', 1, 3, 15, 3),
(16, '2020-04-20 10:30:00', 1, 1, 16, 1),
(17, '2020-04-20 10:30:00', 1, 2, 17, 2),
(18, '2020-04-20 10:30:00', 1, 3, 18, 3),
(19, '2020-04-20 11:00:00', 1, 1, 19, 1),
(20, '2020-04-20 11:00:00', 0, 2, 20, 2),
(21, '2020-04-20 11:00:00', 1, 3, 21, 3),
(22, '2020-04-20 11:30:00', 1, 1, 22, 1),
(23, '2020-04-20 11:30:00', 1, 2, 23, 2),
(24, '2020-04-20 11:30:00', 1, 3, 24, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `app_view`
-- (See below for the actual view)
--
CREATE TABLE `app_view` (
`Appointment_ID` int(11)
,`Appoint_Date_Time` datetime
,`did_Attended` tinyint(1)
,`Appoint_Room` tinyint(4)
,`Owner_ID` int(11)
,`Owner_FName` varchar(20)
,`Owner_Surname` varchar(20)
,`Owners_Address_1` varchar(50)
,`Owners_Address_2` varchar(50)
,`Owners_City` varchar(20)
,`Owners_Post_Code` varchar(10)
,`Owners_Country` varchar(3)
,`Vet_ID` int(11)
,`Vet_Name` varchar(6)
,`Pet_ID` int(11)
,`Pet_Name` varchar(20)
,`Pet_Age` tinyint(11)
,`Pet_Sex` tinyint(1)
,`Pet_Type` varchar(36)
,`is_Alergic_Penicillin` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `owner_info`
-- (See below for the actual view)
--
CREATE TABLE `owner_info` (
`Pet_ID` int(11)
,`Pet_Name` varchar(20)
,`Owner_FName` varchar(20)
,`Owner_Surname` varchar(20)
,`Owners_Address_1` varchar(50)
,`Owners_Address_2` varchar(50)
,`Owners_City` varchar(20)
,`Owners_Post_Code` varchar(10)
,`Owners_Country` varchar(3)
,`Appoint_Date_Time` datetime
,`did_Attended` tinyint(1)
,`Owner_ID` int(11)
,`Appointment_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `owner_tbl`
--

CREATE TABLE `owner_tbl` (
  `Owner_ID` int(11) NOT NULL,
  `Owner_FName` varchar(20) NOT NULL,
  `Owner_Surname` varchar(20) NOT NULL,
  `Owners_Address_1` varchar(50) DEFAULT NULL,
  `Owners_Address_2` varchar(50) DEFAULT NULL,
  `Owners_City` varchar(20) DEFAULT NULL,
  `Owners_Post_Code` varchar(10) DEFAULT NULL,
  `Owners_Country` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_tbl`
--

INSERT INTO `owner_tbl` (`Owner_ID`, `Owner_FName`, `Owner_Surname`, `Owners_Address_1`, `Owners_Address_2`, `Owners_City`, `Owners_Post_Code`, `Owners_Country`) VALUES
(1, 'Aaron', 'Hanlon', '84 Wheatley Cl', 'Null', 'London', 'D4 4LF', 'IRL'),
(2, 'Aoffa', 'Abuali', '70 The Ct', 'Dannette Hey', 'Liverpool', 'D28 6YF', 'IRL'),
(3, 'Abraham', 'Mosaxes', '1 Burnside Terrace', 'Auchtermuchty', 'Cupar ', 'D14 7DE', 'IRL'),
(4, 'Adem ', 'Bakar', '3 Simpson Crescent', 'Null', 'Helmsdale', 'D8 6LE', 'IRL'),
(5, 'Byrne', 'Ciaran', 'Riverside Way', 'Null', 'Camberley', 'D5', 'IRL'),
(6, 'Clarke', 'Reece', '2 High St', 'Null', 'Lossiemouth', 'D1 6PF', 'IRL'),
(7, 'Fiance', 'Rance', '9 Linlithgow Cl', 'Papworth Everard', 'Cambridge', 'D23 3RX', 'IRL'),
(8, 'Ijera', 'Shaunahana', '106 Linkwood Cres', 'Null', 'Glasgow', 'D15 7ET', 'IRL'),
(9, 'Singapore', 'Rajendera', '118 Easdale', 'East Kilbride', 'Glasgow', 'D74 2ED', 'IRL'),
(10, 'Kelly', 'Seanna', 'Comfort Ln', 'Null', 'Richmond', 'D10 5LA', 'IRL'),
(11, 'Parker', 'Dylan', 'Bachchan Road', 'Null', 'Isle of Iona', 'PA76', 'IRL'),
(12, 'Kingston', 'Biggie', '8 Shilton Cl', 'Null', 'Bristol', 'BS15', 'IRL'),
(13, 'Haralonna', 'Christine', '41 Carnoustie Ave', 'Null', 'Gourock', 'PA19 1HG', 'IRL'),
(14, 'Laksana', 'Simona', '14 Duke Ln', 'Null', 'Fraserburgh', 'AB43 9EN', 'IRL'),
(15, 'McCann', 'Michaela', 'Railway Row', 'Null', 'Sunderland', 'SR1 3HE', 'IRL'),
(16, 'Condac', 'Sonia', '1 Howard St', 'Radcliffe', 'Manchester', 'M26 2GU', 'IRL'),
(17, 'Ibrahimovic', 'Kamile', '49 A307', 'Null', 'Esher', 'KT10', 'IRL'),
(18, 'Okaye', 'Georgia', 'Goodcheap Ln', 'Wye', 'Ashford', 'Null', 'IRL'),
(19, 'Ruadhan', 'Huger', '11 Thornley Croft', 'Emerson Valley', 'Milton Keynes', 'MK4 2JH', 'IRL'),
(20, 'Treacy', 'Stephen', 'High Halden Rd', 'Biddenden', 'Ashford', 'TN27', 'IRL');

-- --------------------------------------------------------

--
-- Table structure for table `pet_tbl`
--

CREATE TABLE `pet_tbl` (
  `Pet_ID` int(11) NOT NULL,
  `Pet_Name` varchar(20) NOT NULL,
  `Pet_Age` tinyint(11) NOT NULL,
  `Pet_Sex` tinyint(1) NOT NULL COMMENT 'Female = 1 male = 0',
  `Pet_Type` varchar(36) NOT NULL,
  `is_Alergic_Penicillin` tinyint(1) NOT NULL,
  `Owner_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet_tbl`
--

INSERT INTO `pet_tbl` (`Pet_ID`, `Pet_Name`, `Pet_Age`, `Pet_Sex`, `Pet_Type`, `is_Alergic_Penicillin`, `Owner_ID`) VALUES
(1, 'Garfield', 2, 0, 'Cat', 0, 1),
(2, 'D For', 5, 0, 'Dog', 0, 1),
(3, 'Kareem Abdul Ja-Bark', 7, 0, 'Dog', 0, 3),
(4, 'Chew Barka', 2, 0, 'Dog', 0, 4),
(5, 'Ali Cat', 1, 0, 'Cat', 0, 5),
(6, 'Cindy Clawford', 8, 1, 'Cat', 0, 6),
(7, 'Tod', 5, 0, 'Rat', 0, 7),
(8, 'Tanya', 11, 1, 'Mouse', 0, 5),
(9, 'Cat', 4, 1, 'Cat', 0, 8),
(10, 'Prince of Barkness', 10, 0, 'Dog', 0, 9),
(11, 'Droolius Caesar', 8, 0, 'Dog', 0, 10),
(12, 'Pawdrey Hepburn', 9, 1, 'Cat', 1, 11),
(13, 'Whispurr', 12, 0, 'Cat', 0, 12),
(14, 'Dirty Rotten', 2, 0, 'Rat', 0, 13),
(15, 'Sarah Jessica Barker', 8, 1, 'Dog', 0, 14),
(16, 'Fluffy', 4, 1, 'Cat', 0, 15),
(17, 'Hairy Paw-ter', 7, 1, 'Dog', 0, 16),
(18, 'Tom', 47, 0, 'Armadillo', 1, 17),
(19, 'Chairwoman Miao', 1, 1, 'Cat', 0, 18),
(20, 'Bark Twain', 2, 0, 'Dog', 0, 8),
(21, 'Sherlock Bones', 7, 0, 'Dog', 0, 19),
(22, 'Salvador Dogi', 4, 0, 'Dog', 0, 9),
(23, 'Cat Benatar', 5, 1, 'Cat', 0, 20),
(24, 'Jimmy Chew', 6, 0, 'Dog', 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `vet_tbl`
--

CREATE TABLE `vet_tbl` (
  `Vet_ID` int(11) NOT NULL,
  `Vet_Name` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vet_tbl`
--

INSERT INTO `vet_tbl` (`Vet_ID`, `Vet_Name`) VALUES
(1, 'Rick'),
(2, 'Mordy'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Structure for view `appointment_info`
--
DROP TABLE IF EXISTS `appointment_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointment_info`  AS  select `appointment_tbl`.`Appoint_Room` AS `Appoint_Room`,`appointment_tbl`.`Appoint_Date_Time` AS `Appoint_Date_Time`,`owner_tbl`.`Owner_FName` AS `Owner_FName`,`owner_tbl`.`Owner_Surname` AS `Owner_Surname`,`pet_tbl`.`Pet_Name` AS `Pet_Name`,`pet_tbl`.`Pet_Type` AS `Pet_Type`,`vet_tbl`.`Vet_Name` AS `Vet_Name` from (((`owner_tbl` join `pet_tbl` on((`owner_tbl`.`Owner_ID` = `pet_tbl`.`Owner_ID`))) join `appointment_tbl` on((`pet_tbl`.`Pet_ID` = `appointment_tbl`.`Pet_ID`))) join `vet_tbl` on((`appointment_tbl`.`Vet_ID` = `vet_tbl`.`Vet_ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `appointment_info2`
--
DROP TABLE IF EXISTS `appointment_info2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointment_info2`  AS  select `appointment_tbl`.`Appoint_Room` AS `Room`,`appointment_tbl`.`Appoint_Date_Time` AS `Date_Time`,`owner_tbl`.`Owner_FName` AS `First Name`,`owner_tbl`.`Owner_Surname` AS `Surname`,`pet_tbl`.`Pet_Name` AS `Pet Name`,`pet_tbl`.`Pet_Type` AS `Species`,`vet_tbl`.`Vet_Name` AS `Vet Name` from (((`owner_tbl` join `pet_tbl` on((`owner_tbl`.`Owner_ID` = `pet_tbl`.`Owner_ID`))) join `appointment_tbl` on((`pet_tbl`.`Pet_ID` = `appointment_tbl`.`Pet_ID`))) join `vet_tbl` on((`appointment_tbl`.`Vet_ID` = `vet_tbl`.`Vet_ID`))) order by `appointment_tbl`.`Appoint_Date_Time` ;

-- --------------------------------------------------------

--
-- Structure for view `app_view`
--
DROP TABLE IF EXISTS `app_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `app_view`  AS  select `appointment_tbl`.`Appointment_ID` AS `Appointment_ID`,`appointment_tbl`.`Appoint_Date_Time` AS `Appoint_Date_Time`,`appointment_tbl`.`did_Attended` AS `did_Attended`,`appointment_tbl`.`Appoint_Room` AS `Appoint_Room`,`owner_tbl`.`Owner_ID` AS `Owner_ID`,`owner_tbl`.`Owner_FName` AS `Owner_FName`,`owner_tbl`.`Owner_Surname` AS `Owner_Surname`,`owner_tbl`.`Owners_Address_1` AS `Owners_Address_1`,`owner_tbl`.`Owners_Address_2` AS `Owners_Address_2`,`owner_tbl`.`Owners_City` AS `Owners_City`,`owner_tbl`.`Owners_Post_Code` AS `Owners_Post_Code`,`owner_tbl`.`Owners_Country` AS `Owners_Country`,`vet_tbl`.`Vet_ID` AS `Vet_ID`,`vet_tbl`.`Vet_Name` AS `Vet_Name`,`pet_tbl`.`Pet_ID` AS `Pet_ID`,`pet_tbl`.`Pet_Name` AS `Pet_Name`,`pet_tbl`.`Pet_Age` AS `Pet_Age`,`pet_tbl`.`Pet_Sex` AS `Pet_Sex`,`pet_tbl`.`Pet_Type` AS `Pet_Type`,`pet_tbl`.`is_Alergic_Penicillin` AS `is_Alergic_Penicillin` from (((`owner_tbl` join `pet_tbl` on((`owner_tbl`.`Owner_ID` = `pet_tbl`.`Owner_ID`))) join `appointment_tbl` on((`pet_tbl`.`Pet_ID` = `appointment_tbl`.`Pet_ID`))) join `vet_tbl` on((`appointment_tbl`.`Vet_ID` = `vet_tbl`.`Vet_ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `owner_info`
--
DROP TABLE IF EXISTS `owner_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `owner_info`  AS  select `pet_tbl`.`Pet_ID` AS `Pet_ID`,`pet_tbl`.`Pet_Name` AS `Pet_Name`,`owner_tbl`.`Owner_FName` AS `Owner_FName`,`owner_tbl`.`Owner_Surname` AS `Owner_Surname`,`owner_tbl`.`Owners_Address_1` AS `Owners_Address_1`,`owner_tbl`.`Owners_Address_2` AS `Owners_Address_2`,`owner_tbl`.`Owners_City` AS `Owners_City`,`owner_tbl`.`Owners_Post_Code` AS `Owners_Post_Code`,`owner_tbl`.`Owners_Country` AS `Owners_Country`,`appointment_tbl`.`Appoint_Date_Time` AS `Appoint_Date_Time`,`appointment_tbl`.`did_Attended` AS `did_Attended`,`owner_tbl`.`Owner_ID` AS `Owner_ID`,`appointment_tbl`.`Appointment_ID` AS `Appointment_ID` from ((`owner_tbl` join `pet_tbl` on((`owner_tbl`.`Owner_ID` = `pet_tbl`.`Owner_ID`))) join `appointment_tbl` on((`pet_tbl`.`Pet_ID` = `appointment_tbl`.`Pet_ID`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`,`Vet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- Indexes for table `owner_tbl`
--
ALTER TABLE `owner_tbl`
  ADD PRIMARY KEY (`Owner_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`);

--
-- Indexes for table `pet_tbl`
--
ALTER TABLE `pet_tbl`
  ADD PRIMARY KEY (`Pet_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`);

--
-- Indexes for table `vet_tbl`
--
ALTER TABLE `vet_tbl`
  ADD PRIMARY KEY (`Vet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `owner_tbl`
--
ALTER TABLE `owner_tbl`
  MODIFY `Owner_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pet_tbl`
--
ALTER TABLE `pet_tbl`
  MODIFY `Pet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vet_tbl`
--
ALTER TABLE `vet_tbl`
  MODIFY `Vet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  ADD CONSTRAINT `appointment_tbl_ibfk_1` FOREIGN KEY (`Vet_ID`) REFERENCES `vet_tbl` (`Vet_ID`),
  ADD CONSTRAINT `appointment_tbl_ibfk_2` FOREIGN KEY (`Pet_ID`) REFERENCES `pet_tbl` (`Pet_ID`);

--
-- Constraints for table `pet_tbl`
--
ALTER TABLE `pet_tbl`
  ADD CONSTRAINT `pet_tbl_ibfk_1` FOREIGN KEY (`Owner_ID`) REFERENCES `owner_tbl` (`Owner_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
