-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 04:56 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RAPTORS_COLLEGE`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLASS`
--

CREATE TABLE `CLASS` (
  `CLASS_CODE` varchar(8) NOT NULL,
  `CLASS_TIME` varchar(11) NOT NULL,
  `EMP_ID` varchar(8) NOT NULL,
  `COURSE_CODE` varchar(8) NOT NULL,
  `ROOM_NO` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLASS`
--

INSERT INTO `CLASS` (`CLASS_CODE`, `CLASS_TIME`, `EMP_ID`, `COURSE_CODE`, `ROOM_NO`) VALUES
('CL_1', '8 AM', 'E_101', 'ECO101', 'RN_101'),
('CL_2', '8 AM', 'E_102', 'ECE_102', 'RN_102'),
('CL_3', '9 AM', 'E_103', 'PROG_01', 'RN_104'),
('CL_4', '8 AM', 'E_104', 'M_101', 'RN_103'),
('CL_5', '10 AM', 'E_106', 'BIO_101', 'RN_106'),
('CL_6', '11 AM', 'E_107', 'POL_101', 'RN_107'),
('CL_7', '12 PM', 'E_108', 'ED_111', 'RN_108'),
('CL_8', '1 PM', 'E_109', 'ED_111', 'RN_201'),
('CL_9', '2 PM', 'E_110', 'SPT_99', 'RN_203'),
('CL_99', '8 AM', 'E_105', 'EVS_1', 'RN_105');

-- --------------------------------------------------------

--
-- Table structure for table `COLLEGE`
--

CREATE TABLE `COLLEGE` (
  `CLG_CODE` varchar(8) NOT NULL,
  `CLG_NAME` varchar(25) NOT NULL,
  `EMP_ID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COLLEGE`
--

INSERT INTO `COLLEGE` (`CLG_CODE`, `CLG_NAME`, `EMP_ID`) VALUES
('RC_101', 'RAPTORS COLLEGE TORONTO', 'E_110');

-- --------------------------------------------------------

--
-- Table structure for table `COURSE`
--

CREATE TABLE `COURSE` (
  `DEPT_CODE` varchar(8) NOT NULL,
  `COURSE_CODE` varchar(8) NOT NULL,
  `COURSE_NAME` varchar(25) NOT NULL,
  `COURSE_CREDITS` double NOT NULL,
  `C_DURATION` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSE`
--

INSERT INTO `COURSE` (`DEPT_CODE`, `COURSE_CODE`, `COURSE_NAME`, `COURSE_CREDITS`, `C_DURATION`) VALUES
('D_16', 'AND_067', 'ANDROID', 2, '2 YEARS'),
('D_19', 'ARC_101', 'ARCHITECTURE BASICS', 3, '2 YEARS'),
('D_13', 'BIO_101', 'BIOLOGY', 4, '2 YEARS'),
('D_23', 'BUS_100', 'BUSINESS MANAGEMENT', 3, '2 YEARS'),
('D_15', 'ECE_102', 'BASICS OF ELECTRONICS', 4, '2 YEARS'),
('D_11', 'ECO101', 'SOCIAL ECONOMICS', 4, '2 YEARS'),
('D_19', 'ED_111', 'ENGINEERING DRAWING', 4, '2 YEARS'),
('D_18', 'EVS_1', 'EVS', 1, '1 YEAR'),
('D_16', 'JAVA_22', 'JAVA', 2, '1 YEAR'),
('D_22', 'MEC_56', 'MECHANICS', 3, '1 YEAR'),
('D_21', 'MOL_101', 'ATOMS & MOLECULES', 2, '3 YEARS'),
('D_14', 'M_101', 'MUSIC', 4, '1 YEAR'),
('D_17', 'POL_101', 'SOCIAL POLITICS', 2, '1 YEAR'),
('D_16', 'PROG_01', 'PROGRAMMING C', 2, '1 YEAR'),
('D_12', 'SPT_99', 'SPORTS', 1, '1 YEAR'),
('D_12', 'WRES_101', 'WRESTLING', 1, '6 MONTHS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `courses_opted`
-- (See below for the actual view)
--
CREATE TABLE `courses_opted` (
`CLASS_CODE` varchar(8)
,`STU_ID` varchar(8)
,`E_GRADE` varchar(12)
,`COURSE_CODE` varchar(8)
,`COURSE_NAME` varchar(25)
,`STU_FNAME` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENTS`
--

CREATE TABLE `DEPARTMENTS` (
  `DEPT_CODE` varchar(8) NOT NULL,
  `DEPT_NAME` varchar(25) NOT NULL,
  `CLG_CODE` varchar(8) NOT NULL,
  `EMP_ID` varchar(25) NOT NULL,
  `EMP_NAME` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPARTMENTS`
--

INSERT INTO `DEPARTMENTS` (`DEPT_CODE`, `DEPT_NAME`, `CLG_CODE`, `EMP_ID`, `EMP_NAME`) VALUES
('D_11', 'ECONOMICS', 'RC_101', 'E_101', 'JASS KAUR'),
('D_12', 'SPORTS', 'RC_101', 'E_110', 'MICHAEL'),
('D_13', 'BIOLOGY DEPARTMENT', 'RC_101', 'E_106', 'HARMAN'),
('D_14', 'MUSIC', 'RC_101', 'E_104', 'JASSI GILL'),
('D_15', 'ELECTRONICS', 'RC_101', 'E_102', 'ARSHDEEP'),
('D_16', 'COMPUTER TECHNOLOGY', 'RC_101', 'E_112', 'MARCOS'),
('D_17', 'SOCIAL SCIENCE', 'RC_101', 'E_107', 'KARN GILL'),
('D_18', 'EVS DEPARTMENT', 'RC_101', 'E_105', 'RAMESH'),
('D_19', 'ARCHITECTURE', 'RC_101', 'E_109', 'CHETNA'),
('D_21', 'CHEMISTRY', 'RC_101', 'E_113', 'BALDEEP'),
('D_22', 'PHYSICS', 'RC_101', 'E_115', 'ALEX DEEP'),
('D_23', 'BUSINESS', 'RC_101', 'E_111', 'SOORAJ');

-- --------------------------------------------------------

--
-- Table structure for table `DIRECTOR_CLG`
--

CREATE TABLE `DIRECTOR_CLG` (
  `EMP_ID` varchar(8) NOT NULL,
  `CLG_CODE` varchar(8) NOT NULL,
  `EMP_NAME` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DIRECTOR_CLG`
--

INSERT INTO `DIRECTOR_CLG` (`EMP_ID`, `CLG_CODE`, `EMP_NAME`) VALUES
('E_110', 'RC_101', 'MICHAEL');

-- --------------------------------------------------------

--
-- Table structure for table `ENROLL`
--

CREATE TABLE `ENROLL` (
  `CLASS_CODE` varchar(8) NOT NULL,
  `STU_ID` varchar(8) NOT NULL,
  `E_DATE` date NOT NULL,
  `E_GRADE` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ENROLL`
--

INSERT INTO `ENROLL` (`CLASS_CODE`, `STU_ID`, `E_DATE`, `E_GRADE`) VALUES
('CL_1', 'S07100', '2017-06-09', '3.8'),
('CL_1', 'S07101', '2017-06-09', '3.6'),
('CL_1', 'S07102', '2017-06-09', '2.8'),
('CL_2', 'S07103', '2017-06-12', '3.0'),
('CL_2', 'S07104', '2017-06-12', '3.2'),
('CL_2', 'S07105', '2017-06-12', '2.1'),
('CL_3', 'S07106', '2017-08-12', '2.4'),
('CL_3', 'S07107', '2017-08-12', '3.1'),
('CL_4', 'S07108', '2017-08-12', '3.8'),
('CL_4', 'S07109', '2017-08-12', '2.6'),
('CL_5', 'S07110', '2017-08-12', '3.8'),
('CL_5', 'S07201', '2017-08-23', '2.0'),
('CL_5', 'S07202', '2017-08-23', '3.4'),
('CL_6', 'S08201', '2017-09-23', '3.1'),
('CL_6', 'S08203', '2017-09-23', '4.0'),
('CL_7', 'S08301', '2017-08-17', '2.0'),
('CL_7', 'S08303', '2017-08-17', '2.1'),
('CL_8', 'S08305', '2017-08-17', '2.3'),
('CL_9', 'S08309', '2017-08-17', '2.1');

-- --------------------------------------------------------

--
-- Table structure for table `HEAD_DEPARTMENT`
--

CREATE TABLE `HEAD_DEPARTMENT` (
  `DEPT_CODE` varchar(8) NOT NULL,
  `EMP_ID` varchar(8) NOT NULL,
  `EMP_NAME` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HEAD_DEPARTMENT`
--

INSERT INTO `HEAD_DEPARTMENT` (`DEPT_CODE`, `EMP_ID`, `EMP_NAME`) VALUES
('D_11', 'E_101', 'JASS KAUR'),
('D_12', 'E_110', 'MICHAEL'),
('D_13', 'E_106', 'HARMAN'),
('D_14', 'E_104', 'JASSI GILL'),
('D_15', 'E_102', 'ARSHDEEP'),
('D_16', 'E_112', 'MARCOS'),
('D_17', 'E_107', 'KARN GILL'),
('D_18', 'E_105', 'RAMESH'),
('D_19', 'E_109', 'CHETNA'),
('D_21', 'E_113', 'BALDEEP'),
('D_22', 'E_115', 'ALEX DEEP'),
('D_23', 'E_111', 'SOORAJ');

-- --------------------------------------------------------

--
-- Table structure for table `INSTRUCTOR`
--

CREATE TABLE `INSTRUCTOR` (
  `EMP_ID` varchar(8) NOT NULL,
  `EMP_NAME` varchar(11) NOT NULL,
  `GENDER` enum('M','F') NOT NULL,
  `EMP_SPECIALITY` varchar(25) NOT NULL,
  `PHONE_NO` double NOT NULL,
  `DEPT_CODE` varchar(8) NOT NULL,
  `COURSE_CODE` varchar(8) NOT NULL,
  `AGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `INSTRUCTOR`
--

INSERT INTO `INSTRUCTOR` (`EMP_ID`, `EMP_NAME`, `GENDER`, `EMP_SPECIALITY`, `PHONE_NO`, `DEPT_CODE`, `COURSE_CODE`, `AGE`) VALUES
('E_101', 'JASS KAUR', 'F', 'SOCIAL ECONOMICS', 6479885643, 'D_11', 'ECO101', 29),
('E_102', 'ARSHDEEP', 'M', 'ELECTRONICS', 6479671677, 'D_15', 'ECE_102', 27),
('E_103', 'AKSHAY', 'M', 'IT', 5664789763, 'D_16', 'JAVA_22', 40),
('E_104', 'JASSI GILL', 'M', 'MUSIC', 2345678902, 'D_14', 'M_101', 30),
('E_105', 'RAMESH', 'M', 'ENVIRONMENTAL SCI', 2345678333, 'D_18', 'EVS_1', 40),
('E_106', 'HARMAN', 'M', 'BIOLOGY', 3452345674, 'D_13', 'BIO_101', 31),
('E_107', 'KARN GILL', 'M', 'SOCIAL SCI', 2345678444, 'D_17', 'POL_101', 29),
('E_108', 'PALAK', 'F', 'ENGINEERING DRAWING', 2345678903, 'D_19', 'ED_111', 25),
('E_109', 'CHETNA', 'F', 'ARCHITECTURE BASICS', 2345678901, 'D_19', 'ARC_101', 50),
('E_110', 'MICHAEL', 'M', 'BASKETBALL', 2345678905, 'D_12', 'SPT_99', 40),
('E_111', 'SOORAJ', 'M', 'BUSINESS STUDIES', 2345678909, 'D_23', 'BUS_100', 60),
('E_112', 'MARCOS', 'M', 'PROGRAMMING', 2345678909, 'D_16', 'PROG_01', 40),
('E_113', 'BALDEEP', 'F', 'MOLECULAR SCI', 2345678908, 'D_21', 'MOL_101', 30),
('E_114', 'VARINDER GI', 'M', 'ANDROID', 5564567890, 'D_16', 'AND_067', 27),
('E_115', 'ALEX DEEP', 'F', 'MECHANICS', 5564567891, 'D_22', 'MEC_56', 30),
('E_116', 'JOHN CENA', 'M', 'SPORTS WRESTLING', 5564567893, 'D_12', 'WRES_101', 32);

-- --------------------------------------------------------

--
-- Stand-in structure for view `instructors_age_less_than_30`
-- (See below for the actual view)
--
CREATE TABLE `instructors_age_less_than_30` (
`EMP_ID` varchar(8)
,`AGE` int(11)
,`DEPT_CODE` varchar(8)
,`DEPT_NAME` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `ROOM`
--

CREATE TABLE `ROOM` (
  `ROOM_NO` varchar(8) NOT NULL,
  `ROOM_LOC` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ROOM`
--

INSERT INTO `ROOM` (`ROOM_NO`, `ROOM_LOC`) VALUES
('RN_101', 'FIRST FLOOR B1'),
('RN_102', 'FIRST FLOOR  B1'),
('RN_103', 'FIRST FLOOR B1'),
('RN_104', 'FIRST FLOOR B1'),
('RN_105', 'FIRST FLOOR B1'),
('RN_106', 'FIRST FLOOR B1'),
('RN_107', 'FIRST FLOOR B1'),
('RN_108', 'FIRST FLOOR B1'),
('RN_201', 'SECOND FLOOR B1'),
('RN_202', 'SECOND FLOOR B1'),
('RN_203', 'SECOND FLOOR B1'),
('RN_204', 'SECOND FLOOR B1'),
('RN_301', 'THIRD FLOOR B1'),
('RN_302', 'THIRD FLOOR B1'),
('RN_303', 'THIRD FLOOR B1');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `STU_ID` varchar(8) NOT NULL,
  `STU_LNAME` varchar(11) NOT NULL,
  `STU_FNAME` varchar(11) NOT NULL,
  `GENDER` enum('M','F') NOT NULL,
  `STU_ADDRESS` varchar(50) NOT NULL,
  `EMP_ID` varchar(8) NOT NULL,
  `DEPT_CODE` varchar(8) NOT NULL,
  `STU_DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`STU_ID`, `STU_LNAME`, `STU_FNAME`, `GENDER`, `STU_ADDRESS`, `EMP_ID`, `DEPT_CODE`, `STU_DOB`) VALUES
('S07100', 'BOPARAI', 'ARSH', 'M', '71 OLIVIA BRAMPTON', 'E_112', 'D_16', '1992-06-09'),
('S07101', 'GILL', 'VARINDER', 'M', '7 OLIV TORONTO', 'E_112', 'D_16', '1992-07-07'),
('S07102', 'KAUR', 'BALDEEP', 'F', '72 RUTHERFORD RD BRAMPTON', 'E_112', 'D_16', '1991-02-09'),
('S07103', 'HARPAL', 'SINGH', 'M', '20 DON MILLS NORTH YORK', 'E_112', 'D_16', '1992-06-12'),
('S07104', 'KAUR', 'GAGAN', 'F', 'TORONTO', 'E_101', 'D_11', '1996-06-09'),
('S07105', 'SINGH', 'GURVIR', 'M', 'BRAMPTON', 'E_101', 'D_11', '1992-09-09'),
('S07106', 'KAUR', 'HARDEEP', 'F', 'KITCHENER', 'E_101', 'D_11', '1991-03-09'),
('S07107', 'SINGH', 'JASPAL', 'M', 'BRAMPTON', 'E_101', 'D_11', '1990-06-09'),
('S07108', 'SINGH', 'HARMEET', 'M', 'TORONTO', 'E_101', 'D_11', '1990-06-12'),
('S07109', 'BAJAJ', 'AKSHAY', 'M', 'CHINHCOUSY', 'E_102', 'D_15', '1997-05-09'),
('S07110', 'RAJDEV', 'ANMOL', 'F', 'KENNEDY BRAMPTON', 'E_102', 'D_15', '1992-06-09'),
('S07201', 'SINGH', 'MONA', 'F', 'DOWNTOWN', 'E_103', 'D_16', '1998-06-09'),
('S07202', 'PAWAE', 'LALITA', 'F', 'BRAMPTON', 'E_103', 'D_16', '1989-06-09'),
('S08201', 'KAUR', 'SEHAJ', 'F', 'BRAMPTON', 'E_104', 'D_14', '1999-02-09'),
('S08203', 'SOHI', 'DAYA', 'M', 'BRAMPTON', 'E_104', 'D_14', '1992-06-09'),
('S08301', 'SOHI', 'BARINDER', 'M', 'DIXIE ROAD BRAMPTON', 'E_107', 'D_17', '1992-01-11'),
('S08303', 'SOHI', 'BALWINDER', 'F', 'DIXIE BRAMPTON', 'E_107', 'D_17', '1992-11-09'),
('S08305', 'KAUR', 'JAR', 'F', 'BRAMPTON', 'E_109', 'D_19', '1995-03-09'),
('S08309', 'GUUD', 'HELLOI', 'M', 'BRAMPTON ONTARIO', 'E_109', 'D_19', '1988-06-09');

-- --------------------------------------------------------

--
-- Stand-in structure for view `students_in_room`
-- (See below for the actual view)
--
CREATE TABLE `students_in_room` (
`ROOM_NO` varchar(8)
,`ROOM_LOC` varchar(25)
,`CLASS_CODE` varchar(8)
,`CLASS_TIME` varchar(11)
,`NO_OF_STUDENTS` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_students`
-- (See below for the actual view)
--
CREATE TABLE `total_students` (
`DEPT_CODE` varchar(8)
,`DEPT_NAME` varchar(25)
,`TOTAL_STUDENTS` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `courses_opted`
--
DROP TABLE IF EXISTS `courses_opted`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raptors_college`.`courses_opted`  AS  select `B`.`CLASS_CODE` AS `CLASS_CODE`,`B`.`STU_ID` AS `STU_ID`,`B`.`E_GRADE` AS `E_GRADE`,`D`.`COURSE_CODE` AS `COURSE_CODE`,`C`.`COURSE_NAME` AS `COURSE_NAME`,`A`.`STU_FNAME` AS `STU_FNAME` from (((`raptors_college`.`student` `A` join `raptors_college`.`enroll` `B`) join `raptors_college`.`course` `C`) join `raptors_college`.`class` `D`) where ((`B`.`STU_ID` = `A`.`STU_ID`) and (`D`.`COURSE_CODE` = `C`.`COURSE_CODE`) and (`B`.`CLASS_CODE` = `D`.`CLASS_CODE`)) group by `D`.`COURSE_CODE`,`B`.`E_GRADE` order by `B`.`E_GRADE` desc limit 5 ;

-- --------------------------------------------------------

--
-- Structure for view `instructors_age_less_than_30`
--
DROP TABLE IF EXISTS `instructors_age_less_than_30`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raptors_college`.`instructors_age_less_than_30`  AS  select `I`.`EMP_ID` AS `EMP_ID`,`I`.`AGE` AS `AGE`,`I`.`DEPT_CODE` AS `DEPT_CODE`,`D`.`DEPT_NAME` AS `DEPT_NAME` from (`raptors_college`.`instructor` `I` join `raptors_college`.`departments` `D`) where ((`I`.`AGE` < 30) and (`I`.`DEPT_CODE` = `D`.`DEPT_CODE`)) group by `I`.`AGE`,`I`.`EMP_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `students_in_room`
--
DROP TABLE IF EXISTS `students_in_room`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raptors_college`.`students_in_room`  AS  select `R`.`ROOM_NO` AS `ROOM_NO`,`R`.`ROOM_LOC` AS `ROOM_LOC`,`C`.`CLASS_CODE` AS `CLASS_CODE`,`C`.`CLASS_TIME` AS `CLASS_TIME`,count(`S`.`STU_ID`) AS `NO_OF_STUDENTS` from (((`raptors_college`.`room` `R` join `raptors_college`.`class` `C`) join `raptors_college`.`enroll` `E`) join `raptors_college`.`student` `S`) where ((`E`.`CLASS_CODE` = `C`.`CLASS_CODE`) and (`E`.`STU_ID` = `S`.`STU_ID`) and (`R`.`ROOM_NO` = `C`.`ROOM_NO`)) group by `R`.`ROOM_NO` ;

-- --------------------------------------------------------

--
-- Structure for view `total_students`
--
DROP TABLE IF EXISTS `total_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raptors_college`.`total_students`  AS  select `B`.`DEPT_CODE` AS `DEPT_CODE`,`B`.`DEPT_NAME` AS `DEPT_NAME`,count(`A`.`STU_ID`) AS `TOTAL_STUDENTS` from (`raptors_college`.`student` `A` join `raptors_college`.`departments` `B`) where (`B`.`DEPT_CODE` = `A`.`DEPT_CODE`) group by `B`.`DEPT_CODE` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASS`
--
ALTER TABLE `CLASS`
  ADD PRIMARY KEY (`CLASS_CODE`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `COURSE_CODE` (`COURSE_CODE`),
  ADD KEY `ROOM_NO` (`ROOM_NO`);

--
-- Indexes for table `COLLEGE`
--
ALTER TABLE `COLLEGE`
  ADD PRIMARY KEY (`CLG_CODE`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `COURSE`
--
ALTER TABLE `COURSE`
  ADD PRIMARY KEY (`COURSE_CODE`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`);

--
-- Indexes for table `DEPARTMENTS`
--
ALTER TABLE `DEPARTMENTS`
  ADD PRIMARY KEY (`DEPT_CODE`),
  ADD KEY `CLG_CODE` (`CLG_CODE`),
  ADD KEY `EMP_ID` (`EMP_ID`,`EMP_NAME`);

--
-- Indexes for table `DIRECTOR_CLG`
--
ALTER TABLE `DIRECTOR_CLG`
  ADD KEY `EMP_ID` (`EMP_ID`,`EMP_NAME`),
  ADD KEY `CLG_CODE` (`CLG_CODE`);

--
-- Indexes for table `ENROLL`
--
ALTER TABLE `ENROLL`
  ADD KEY `CLASS_CODE` (`CLASS_CODE`),
  ADD KEY `STU_ID` (`STU_ID`);

--
-- Indexes for table `HEAD_DEPARTMENT`
--
ALTER TABLE `HEAD_DEPARTMENT`
  ADD KEY `EMP_ID` (`EMP_ID`,`EMP_NAME`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`);

--
-- Indexes for table `INSTRUCTOR`
--
ALTER TABLE `INSTRUCTOR`
  ADD PRIMARY KEY (`EMP_ID`,`EMP_NAME`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`),
  ADD KEY `COURSE_CODE` (`COURSE_CODE`);

--
-- Indexes for table `ROOM`
--
ALTER TABLE `ROOM`
  ADD PRIMARY KEY (`ROOM_NO`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`STU_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CLASS`
--
ALTER TABLE `CLASS`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `INSTRUCTOR` (`EMP_ID`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`COURSE_CODE`) REFERENCES `COURSE` (`COURSE_CODE`),
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`ROOM_NO`) REFERENCES `ROOM` (`ROOM_NO`);

--
-- Constraints for table `COLLEGE`
--
ALTER TABLE `COLLEGE`
  ADD CONSTRAINT `college_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `INSTRUCTOR` (`EMP_ID`);

--
-- Constraints for table `COURSE`
--
ALTER TABLE `COURSE`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `DEPARTMENTS` (`DEPT_CODE`);

--
-- Constraints for table `DEPARTMENTS`
--
ALTER TABLE `DEPARTMENTS`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`CLG_CODE`) REFERENCES `COLLEGE` (`CLG_CODE`),
  ADD CONSTRAINT `departments_ibfk_2` FOREIGN KEY (`EMP_ID`,`EMP_NAME`) REFERENCES `INSTRUCTOR` (`EMP_ID`, `EMP_NAME`);

--
-- Constraints for table `DIRECTOR_CLG`
--
ALTER TABLE `DIRECTOR_CLG`
  ADD CONSTRAINT `director_clg_ibfk_1` FOREIGN KEY (`EMP_ID`,`EMP_NAME`) REFERENCES `INSTRUCTOR` (`EMP_ID`, `EMP_NAME`),
  ADD CONSTRAINT `director_clg_ibfk_2` FOREIGN KEY (`CLG_CODE`) REFERENCES `COLLEGE` (`CLG_CODE`);

--
-- Constraints for table `ENROLL`
--
ALTER TABLE `ENROLL`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`CLASS_CODE`) REFERENCES `CLASS` (`CLASS_CODE`),
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`STU_ID`) REFERENCES `STUDENT` (`STU_ID`);

--
-- Constraints for table `HEAD_DEPARTMENT`
--
ALTER TABLE `HEAD_DEPARTMENT`
  ADD CONSTRAINT `head_department_ibfk_1` FOREIGN KEY (`EMP_ID`,`EMP_NAME`) REFERENCES `INSTRUCTOR` (`EMP_ID`, `EMP_NAME`),
  ADD CONSTRAINT `head_department_ibfk_2` FOREIGN KEY (`DEPT_CODE`) REFERENCES `DEPARTMENTS` (`DEPT_CODE`);

--
-- Constraints for table `INSTRUCTOR`
--
ALTER TABLE `INSTRUCTOR`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `DEPARTMENTS` (`DEPT_CODE`),
  ADD CONSTRAINT `instructor_ibfk_2` FOREIGN KEY (`COURSE_CODE`) REFERENCES `COURSE` (`COURSE_CODE`);

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `INSTRUCTOR` (`EMP_ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`DEPT_CODE`) REFERENCES `DEPARTMENTS` (`DEPT_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
