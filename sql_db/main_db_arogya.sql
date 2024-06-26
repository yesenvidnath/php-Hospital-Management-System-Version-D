-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 02:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_db_arogya`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `discharge_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `staff_id`, `room_id`, `appointment_date`, `appointment_time`, `discharge_date`) VALUES
(1, 5, 5, 1, '2023-05-01', '10:00:00', '2023-05-02'),
(2, 2, 4, 2, '2023-05-03', '12:00:00', '2023-05-05'),
(3, 3, 3, 3, '2023-05-04', '14:00:00', '2023-05-06'),
(4, 4, 2, 4, '2023-05-05', '16:00:00', '2023-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operating_rooms`
--

CREATE TABLE `operating_rooms` (
  `operating_room_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `operating_room_name` varchar(50) DEFAULT NULL,
  `max_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `medical_history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `first_name`, `last_name`, `date_of_birth`, `address`, `phone_number`, `email`, `medical_history`) VALUES
(1, 'John', 'Doe', '1980-01-01', '123 Main St, Anytown USA', '123-456-7890', 'john.doe@email.com', 'Patient has a history of allergies, including an allergy to penicillin. They have also been diagnosed with seasonal allergies and have a history of hay fever.'),
(2, 'Jane', 'Smith', '1985-03-15', '456 Park Ave, Anytown USA', '987-654-3210', 'jane.smith@email.com', 'Patient has a history of asthma and has been using an inhaler for several years. They have also been hospitalized for asthma-related issues in the past.'),
(3, 'Bob', 'Johnson', '1990-07-20', '789 Elm St, Anytown USA', '111-222-3333', 'bob.johnson@email.com', 'Patient has no known medical conditions or history of illnesses.'),
(4, 'Alice', 'Davis', '1995-11-05', '123 Maple St, Anytown USA', '222-333-4444', 'alice.davis@email.com', 'The patient has been diagnosed with Type 2 diabetes and has been managing it with medication and a healthy diet. They have also been hospitalized for diabetic ketoacidosis in the past.'),
(5, 'Mike', 'Brown', '2000-02-01', '456 Oak St, Anytown USA', '333-444-5555', 'mike.brown@email.com', 'Patient has a history of high blood pressure and has been prescribed medication to manage it. They have also been advised to make lifestyle changes, such as increasing physical activity and reducing salt intake.');

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `procedure_id` int(11) NOT NULL,
  `procedure_name` varchar(50) DEFAULT NULL,
  `procedure_desc` varchar(100) DEFAULT NULL,
  `procedure_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `max_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `room_type`, `max_capacity`) VALUES
(1, 'Room 1', 'Single', 2),
(2, 'Room 2', 'Double', 4),
(3, 'Room 3', 'Family', 6),
(4, 'Room 4', 'Deluxe', 8);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `job_title`, `phone_number`, `email`) VALUES
(0, 'John', 'Doe', 'Doctor', '123-456-7890', 'john.doe@arogya.com'),
(2, 'Jane', 'Smith', 'Nurse', '987-654-3210', 'jane.smith@arogya.com'),
(3, 'Bob', 'Johnson', 'Doctor', '111-222-3333', 'bob.johnson@arogya.com'),
(4, 'Alice', 'Davis', 'Nurse', '444-555-6666', 'alice.davis@arogya.com'),
(5, 'Mike', 'Brown', 'Doctor', '777-888-9999', 'mike.brown@arogya.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_type` enum('staff','patient','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_type`) VALUES
(1, 'admin_1', 'password1', 'admin'),
(2, 'nurse_1', 'password2', 'staff'),
(3, 'doctor_1', 'password3', 'staff'),
(4, 'patient_1', 'password4', 'patient'),
(5, 'admin_2', 'password5', 'admin'),
(6, 'nurse_2', 'password6', 'staff'),
(7, 'doctor_2', 'password7', 'staff'),
(8, 'patient_2', 'password8', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `operating_rooms`
--
ALTER TABLE `operating_rooms`
  ADD PRIMARY KEY (`operating_room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`procedure_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`);

--
-- Constraints for table `operating_rooms`
--
ALTER TABLE `operating_rooms`
  ADD CONSTRAINT `operating_rooms_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
