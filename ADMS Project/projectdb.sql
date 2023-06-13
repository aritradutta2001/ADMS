-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230210.98cfc64667
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 04:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `aid` varchar(255) NOT NULL,
  `gen` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `msec` varchar(255) NOT NULL,
  `mhisec` varchar(255) NOT NULL,
  `mug` varchar(255) NOT NULL,
  `mpg` varchar(255) NOT NULL,
  `mphd` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `sp` varchar(255) NOT NULL,
  `yoe` varchar(255) NOT NULL,
  `yoecer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`aid`, `gen`, `phone_no`, `email`, `add`, `dob`, `msec`, `mhisec`, `mug`, `mpg`, `mphd`, `aadhaar`, `sp`, `yoe`, `yoecer`, `image`, `alias`, `designation`) VALUES
('admin123', 'Male', '8420222257', 'admincitmca@gmail.com', 'Kolkata', '1980-06-08', '', '', '', '', '', '', '', '10', '', '', 'Prof.', 'Assistant Professor');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `aid` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`aid`, `pwd`, `fname`, `lname`) VALUES
('admin123', '123', 'Krishnendu', 'Pramanik');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `tid` varchar(255) NOT NULL,
  `sessions` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `docs_pdf` varchar(255) NOT NULL,
  `deadline` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`tid`, `sessions`, `semester`, `sub`, `title`, `docs_pdf`, `deadline`) VALUES
('anirban1980', '2021-2023', 3, 'MCAN304B', 'Java Assignment', 'miniproject-151003131605-lva1-app6891.pdf', '2023-05-24 10:08:00'),
('bkd1990', '2021-2023', 1, 'MCAN101', 'Python Assignments', 'Assignment-1 ques.pdf', '2023-05-23 10:37:00'),
('subrata1980', '2021-2023', 3, 'MCAN302', 'AI Assignment', 'mca-3-sem-intelligent-systems-mca-303-2017.pdf', '2023-05-24 10:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('308', 4),
('307', 2),
('306', 3),
('305', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department`) VALUES
(1, 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `exam_ques_ans`
--

CREATE TABLE `exam_ques_ans` (
  `qid` int(11) NOT NULL,
  `ques` varchar(255) DEFAULT NULL,
  `op1` varchar(255) DEFAULT NULL,
  `op2` varchar(255) DEFAULT NULL,
  `op3` varchar(255) DEFAULT NULL,
  `op4` varchar(255) DEFAULT NULL,
  `correctans` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL,
  `sem_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sid` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `ratings` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sid`, `teacher`, `ratings`, `title`) VALUES
('amal123', 'anirban1980', 5, 'Very Good Teacher'),
('aritra123', 'anirban1980', 5, 'Very Good Teacher and very Helpfull'),
('writtik2000', 'anirban1980', 5, 'Very Helpful and Very Good Teacher'),
('aman2002', 'bkd1990', 5, 'Very Good Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `lession_plan`
--

CREATE TABLE `lession_plan` (
  `tid` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lession_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lession_plan`
--

INSERT INTO `lession_plan` (`tid`, `session`, `semester`, `subject`, `title`, `lession_pdf`) VALUES
('anirban1980', '2021-2023', 3, 'MCAN304B', 'Java Lession Plan', 'MCA Sylla.pdf'),
('subrata1980', '2021-2023', 1, 'MCAN103', 'Architecture Lession Plan', 'Makaut Syllabus  Sem1 MCA.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `marks` float DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `normal_notice_admin`
--

CREATE TABLE `normal_notice_admin` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normal_notice_admin`
--

INSERT INTO `normal_notice_admin` (`id`, `session`, `semester`, `title`, `notice_pdf`) VALUES
(17, '2021-2023', 2, 'Hello Students', 'SWTM-2088_Atlassian-Git-Cheatsheet.pdf'),
(18, '2021-2023', 2, 'Hello Students ', 'PROJECTDOCUMENTATION.pdf'),
(19, '2021-2023', 3, 'Hello Sem3 students', 'SWTM-2088_Atlassian-Git-Cheatsheet.pdf'),
(20, '2021-2023', 1, 'Hello Sem1 students', 'SWTM-2088_Atlassian-Git-Cheatsheet.pdf'),
(22, '2022-2024', 1, 'Hello Sem1', 'Time Management - Classroom session.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `note_upload`
--

CREATE TABLE `note_upload` (
  `tid` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notes_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note_upload`
--

INSERT INTO `note_upload` (`tid`, `session`, `semester`, `subject`, `title`, `notes_pdf`) VALUES
('anirban1980', '2021-2023', 3, 'MCAN304B', 'Java Notes', 'C ,java,python Program to Shutdown Computer.pdf'),
('anirban1980', '2021-2023', 1, 'MCAN102', 'C Pointers', 'C Pointers.pdf'),
('anirban1980', '2021-2023', 3, 'MCAN304B', 'Method Overloading And Overriding', 'METHOD overloading vs overriding.pdf'),
('subrata1980', '2021-2023', 3, 'MCAN302', 'AI Notes Unit1', 'AI Notes Unit1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `sem_id` int(11) NOT NULL,
  `sem_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`sem_id`, `sem_name`) VALUES
(1, 'sem1'),
(2, 'sem2'),
(3, 'sem3'),
(4, 'sem4\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `semester1`
--

CREATE TABLE `semester1` (
  `day` varchar(255) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `period4` varchar(255) NOT NULL,
  `period5` varchar(255) NOT NULL,
  `period6` varchar(255) NOT NULL,
  `period7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester1`
--

INSERT INTO `semester1` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`) VALUES
('Friday', 'MCANE105A', 'MCANE105A', 'MCANE105A', 'MCAN101', 'MCAN101', 'MCAN103', 'MCAN102'),
('Saturday', 'MCAN101', 'MCAN102', 'MCAN102', 'MCAN304B', 'MCANE105A', 'MCAN103', 'MCAN103'),
('Thursday', 'MCAN103', 'MCAN103', 'MCAN101', 'MCAN102', 'MCAN102', 'MCANE105A', 'MCANE105A'),
('Tuesday', 'MCAN101', 'MCAN101', 'MCAN102', 'MCAN103', 'MCAN103', 'MCANE105A', 'MCANE105A'),
('Wednesday', 'MCAN101', 'MCAN103', 'MCAN103', 'MCANE105A', 'MCANE105A', 'MCAN102', 'MCAN102');

-- --------------------------------------------------------

--
-- Table structure for table `semester2`
--

CREATE TABLE `semester2` (
  `day` varchar(255) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `period4` varchar(255) NOT NULL,
  `period5` varchar(255) NOT NULL,
  `period6` varchar(255) NOT NULL,
  `period7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `day` varchar(255) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `period4` varchar(255) NOT NULL,
  `period5` varchar(255) NOT NULL,
  `period6` varchar(255) NOT NULL,
  `period7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester4`
--

CREATE TABLE `semester4` (
  `day` varchar(255) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `period4` varchar(255) NOT NULL,
  `period5` varchar(255) NOT NULL,
  `period6` varchar(255) NOT NULL,
  `period7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `special_notice_admin`
--

CREATE TABLE `special_notice_admin` (
  `id` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice_pdf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `special_notice_admin`
--

INSERT INTO `special_notice_admin` (`id`, `sid`, `title`, `notice_pdf`) VALUES
(4, 'amal123', 'Hello Student', 'SWTM-2088_Atlassian-Git-Cheatsheet.pdf'),
(5, 'writtik2000', 'Hello Writtik', 'PROJECTDOCUMENTATION.pdf'),
(6, 'aman2002', 'Hello Aman', 'PROJECTDOCUMENTATION.pdf'),
(7, 'aritra123', 'Hii', 'PROJECTDOCUMENTATION.pdf'),
(8, 'aman2002', 'Hello Aman', 'Time Management - Classroom session.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `sid` varchar(255) NOT NULL,
  `gen` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `sem` int(11) NOT NULL,
  `msec` varchar(255) NOT NULL,
  `mhisec` varchar(255) NOT NULL,
  `mug` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`sid`, `gen`, `phone_no`, `email`, `add`, `dob`, `sem`, `msec`, `mhisec`, `mug`, `aadhaar`, `session`, `image`) VALUES
('aman2002', 'Male', '8520333365', 'amangupta@gmail.com', 'Kolkata', '2002-05-08', 1, '', '', '', '', '2022-2024', ''),
('writtik2000', 'Male', '8962354712', 'writtik@gmail.com', 'Kolkata', '2000-10-08', 3, '', '', '', '', '2021-2023', ''),
('amal123', 'Male', '8963214756', 'amalcit@gmail.com', 'Howrah', '2000-05-10', 1, '', '', '', '', '2021-2023', ''),
('aritra123', 'Male', '8420222247', 'placementaritra@gmail.com', 'Kolkata', '2001-04-08', 3, 'Madhyamik Result.pdf', 'Hs Result.pdf', 'Graduation Result.pdf', 'Aadhaar.pdf', '2021-2023', 'Aritra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `student_ans` varchar(255) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `sid` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`sid`, `pwd`, `fname`, `lname`) VALUES
('amal123', '123', 'Amal', 'Das'),
('aman2002', '123', 'Aman', 'Gupta'),
('aritra123', '123', 'Aritra', 'Dutta'),
('writtik2000', '123', 'Writtik', 'Bhattarya');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `course_type` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `isAlloted` int(1) NOT NULL,
  `allotedto` text NOT NULL,
  `allotedto2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `dept_id`, `isAlloted`, `allotedto`, `allotedto2`) VALUES
('MCAN101', 'Python', 'THEORY', 1, 1, 1, 'bkd1990', ''),
('MCAN102', 'C', 'THEORY', 1, 1, 1, 'anirban1980', ''),
('MCAN103', 'Computer Organization and Architecture ', 'THEORY', 1, 1, 1, 'subrata1980', ''),
('MCAN302', 'AI', 'THEORY', 3, 1, 1, 'subrata1980', ''),
('MCAN304B', 'Java', 'THEORY', 3, 1, 1, 'anirban1980', ''),
('MCANE105A', 'Python Lab', 'LAB', 1, 1, 1, 'bkd1990', 'debabrata1990');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `tid` varchar(255) NOT NULL,
  `gen` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `msec` varchar(255) NOT NULL,
  `mhisec` varchar(255) NOT NULL,
  `mug` varchar(255) NOT NULL,
  `mpg` varchar(255) NOT NULL,
  `mphd` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `sp` varchar(255) NOT NULL,
  `yoe` varchar(255) NOT NULL,
  `yoecer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`tid`, `gen`, `phone_no`, `email`, `add`, `dob`, `msec`, `mhisec`, `mug`, `mpg`, `mphd`, `aadhaar`, `sp`, `yoe`, `yoecer`, `image`, `alias`, `designation`) VALUES
('anirban1980', 'male', '9836088753', 'ascit@gmail.com', 'hoogly', '1980-05-04', '', '', '', '', '', '', '', '', '', '', 'Prof.', 'Assistant Professor'),
('subrata1980', 'male', '9836022578', 'sjcit@gmail.com', 'howrah', '1980-05-10', '', '', '', '', '', '', '', '', '', '', 'Prof.', 'Assistant Professor'),
('debabrata1990', 'male', '9836022569', 'djcit@gmail.com', 'Howrah', '1990-05-12', '', '', '', '', '', '', '', '', '', '', 'Prof.', 'Assistant Professor'),
('bkd1990', 'Male', '8420555569', 'bkd1970@gmail.com', 'Kolkata', '1970-04-06', '', '', '', '', '', '', '', '', '', '', 'Prof.', 'Assistant Professor');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `tid` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`tid`, `pwd`, `fname`, `lname`) VALUES
('anirban1980', '123456', 'Anirban ', 'Sinha'),
('bkd1990', '123', 'Biplab Kanti', 'Das'),
('debabrata1990', '123', 'Debabrata', 'Jana'),
('subrata1980', '123', 'Subrata', 'Jana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD KEY `semester` (`semester`),
  ADD KEY `sub` (`sub`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `exam_ques_ans`
--
ALTER TABLE `exam_ques_ans`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `sub_code` (`sub_code`),
  ADD KEY `sem_id` (`sem_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `teacher` (`teacher`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `lession_plan`
--
ALTER TABLE `lession_plan`
  ADD KEY `semester` (`semester`),
  ADD KEY `subject` (`subject`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD KEY `sid` (`sid`),
  ADD KEY `sub_code` (`sub_code`);

--
-- Indexes for table `normal_notice_admin`
--
ALTER TABLE `normal_notice_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `note_upload`
--
ALTER TABLE `note_upload`
  ADD KEY `semester` (`semester`),
  ADD KEY `subject` (`subject`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `sem`
--
ALTER TABLE `sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `semester1`
--
ALTER TABLE `semester1`
  ADD PRIMARY KEY (`day`),
  ADD KEY `period1` (`period1`),
  ADD KEY `period2` (`period2`),
  ADD KEY `period3` (`period3`),
  ADD KEY `period4` (`period4`),
  ADD KEY `period5` (`period5`),
  ADD KEY `period6` (`period6`),
  ADD KEY `period7` (`period7`);

--
-- Indexes for table `semester2`
--
ALTER TABLE `semester2`
  ADD PRIMARY KEY (`day`),
  ADD KEY `period1` (`period1`),
  ADD KEY `period2` (`period2`),
  ADD KEY `period3` (`period3`),
  ADD KEY `period4` (`period4`),
  ADD KEY `period5` (`period5`),
  ADD KEY `period6` (`period6`),
  ADD KEY `period7` (`period7`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`),
  ADD KEY `period1` (`period1`),
  ADD KEY `period2` (`period2`),
  ADD KEY `period3` (`period3`),
  ADD KEY `period4` (`period4`),
  ADD KEY `period5` (`period5`),
  ADD KEY `period6` (`period6`),
  ADD KEY `period7` (`period7`);

--
-- Indexes for table `semester4`
--
ALTER TABLE `semester4`
  ADD PRIMARY KEY (`day`),
  ADD KEY `period1` (`period1`),
  ADD KEY `period2` (`period2`),
  ADD KEY `period3` (`period3`),
  ADD KEY `period4` (`period4`),
  ADD KEY `period5` (`period5`),
  ADD KEY `period6` (`period6`),
  ADD KEY `period7` (`period7`);

--
-- Indexes for table `special_notice_admin`
--
ALTER TABLE `special_notice_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD KEY `sid` (`sid`),
  ADD KEY `sem` (`sem`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD KEY `qid` (`qid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`),
  ADD KEY `semester` (`semester`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `normal_notice_admin`
--
ALTER TABLE `normal_notice_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `special_notice_admin`
--
ALTER TABLE `special_notice_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD CONSTRAINT `admin_details_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `admin_login` (`aid`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `sem` (`sem_id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`sub`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`tid`) REFERENCES `teacher_login` (`tid`);

--
-- Constraints for table `exam_ques_ans`
--
ALTER TABLE `exam_ques_ans`
  ADD CONSTRAINT `exam_ques_ans_ibfk_1` FOREIGN KEY (`sub_code`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `exam_ques_ans_ibfk_2` FOREIGN KEY (`sem_id`) REFERENCES `sem` (`sem_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`teacher`) REFERENCES `teacher_login` (`tid`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student_login` (`sid`);

--
-- Constraints for table `lession_plan`
--
ALTER TABLE `lession_plan`
  ADD CONSTRAINT `lession_plan_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `sem` (`sem_id`),
  ADD CONSTRAINT `lession_plan_ibfk_2` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `lession_plan_ibfk_3` FOREIGN KEY (`tid`) REFERENCES `teacher_login` (`tid`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_login` (`sid`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`sub_code`) REFERENCES `subjects` (`subject_code`);

--
-- Constraints for table `normal_notice_admin`
--
ALTER TABLE `normal_notice_admin`
  ADD CONSTRAINT `normal_notice_admin_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `sem` (`sem_id`);

--
-- Constraints for table `note_upload`
--
ALTER TABLE `note_upload`
  ADD CONSTRAINT `note_upload_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `sem` (`sem_id`),
  ADD CONSTRAINT `note_upload_ibfk_2` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `note_upload_ibfk_3` FOREIGN KEY (`tid`) REFERENCES `teacher_login` (`tid`);

--
-- Constraints for table `semester1`
--
ALTER TABLE `semester1`
  ADD CONSTRAINT `semester1_ibfk_1` FOREIGN KEY (`period1`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_2` FOREIGN KEY (`period2`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_3` FOREIGN KEY (`period3`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_4` FOREIGN KEY (`period4`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_5` FOREIGN KEY (`period5`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_6` FOREIGN KEY (`period6`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester1_ibfk_7` FOREIGN KEY (`period7`) REFERENCES `subjects` (`subject_code`);

--
-- Constraints for table `semester2`
--
ALTER TABLE `semester2`
  ADD CONSTRAINT `semester2_ibfk_1` FOREIGN KEY (`period1`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_2` FOREIGN KEY (`period2`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_3` FOREIGN KEY (`period3`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_4` FOREIGN KEY (`period4`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_5` FOREIGN KEY (`period5`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_6` FOREIGN KEY (`period6`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester2_ibfk_7` FOREIGN KEY (`period7`) REFERENCES `subjects` (`subject_code`);

--
-- Constraints for table `semester3`
--
ALTER TABLE `semester3`
  ADD CONSTRAINT `semester3_ibfk_1` FOREIGN KEY (`period1`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_2` FOREIGN KEY (`period2`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_3` FOREIGN KEY (`period3`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_4` FOREIGN KEY (`period4`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_5` FOREIGN KEY (`period5`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_6` FOREIGN KEY (`period6`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester3_ibfk_7` FOREIGN KEY (`period7`) REFERENCES `subjects` (`subject_code`);

--
-- Constraints for table `semester4`
--
ALTER TABLE `semester4`
  ADD CONSTRAINT `semester4_ibfk_1` FOREIGN KEY (`period1`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_2` FOREIGN KEY (`period2`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_3` FOREIGN KEY (`period3`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_4` FOREIGN KEY (`period4`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_5` FOREIGN KEY (`period5`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_6` FOREIGN KEY (`period6`) REFERENCES `subjects` (`subject_code`),
  ADD CONSTRAINT `semester4_ibfk_7` FOREIGN KEY (`period7`) REFERENCES `subjects` (`subject_code`);

--
-- Constraints for table `special_notice_admin`
--
ALTER TABLE `special_notice_admin`
  ADD CONSTRAINT `special_notice_admin_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_login` (`sid`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_login` (`sid`),
  ADD CONSTRAINT `student_details_ibfk_2` FOREIGN KEY (`sem`) REFERENCES `sem` (`sem_id`);

--
-- Constraints for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD CONSTRAINT `student_exam_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `exam_ques_ans` (`qid`),
  ADD CONSTRAINT `student_exam_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student_login` (`sid`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `sem` (`sem_id`),
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD CONSTRAINT `teacher_details_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher_login` (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
