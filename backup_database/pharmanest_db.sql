-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 08:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmanest_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `role` varchar(100) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `role`, `avatar`) VALUES
(1, 'Rajib', 'Hossain', 'rajib@gmail.com', 'rajib', '01752477208', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_status`) VALUES
(15, 'Antibiotics', 1),
(26, 'Antivirals', 1),
(27, 'Antifungals', 1),
(28, 'Analgesics', 2),
(29, 'Antipyretics', 1),
(30, ' Bronchodilators', 1),
(31, 'Corticosteroids', 1),
(32, 'Diuretics', 1),
(33, 'Immunosuppressants', 1),
(34, 'Proton Pump Inhibitors', 1),
(35, 'Statins', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `home_address` varchar(255) NOT NULL,
  `identifier_name` varchar(255) DEFAULT NULL,
  `identifier_phone` varchar(15) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `phone`, `email`, `home_address`, `identifier_name`, `identifier_phone`, `status`) VALUES
(1, ' Rajib Hossain', '01752477208', 'rajib@gmail.com', '532 west shewrapa mirpur dhaka', 'Rakib Hossain', '01828896738', 1),
(2, 'Anonymous', 'none', 'none', 'none', 'none', 'none', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expired_medicines`
--

CREATE TABLE `expired_medicines` (
  `id` int(10) NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `medicine_id` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `supp_price` double(10,2) NOT NULL,
  `sell_invoice` double(10,2) NOT NULL,
  `expire_date` date NOT NULL,
  `purchase_invoice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `role`, `avatar`) VALUES
(1, 'Ruka', 'Akther', 'ruka@gmail.com', 'ruka', '01752477210', 'manager', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(10) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `shelf_no` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `m_type` varchar(50) NOT NULL,
  `genetic` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `medicine_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `m_name`, `shelf_no`, `manufacturer`, `m_type`, `genetic`, `supplier`, `status`, `medicine_image`) VALUES
(5, 'Napa', 'N', 'Beximco Pharmaceuticals Ltd.', 'Tablet', 'Paracetamol', ' Md Sipon Ali', 1, 'uploads/napa-300x300.png'),
(10, 'Montela', 'M', 'Beximco Pharmaceuticals Ltd.', 'Capsule', 'Montelukast', ' Ali ', 1, 'uploads/esoral.jpg'),
(11, 'Amodis', 'A', 'ACI Limited', 'Tablet', 'Amlodipine', ' Md Rajib', 1, 'uploads/esoral.jpg'),
(13, 'Azithrocin', 'A', 'Square Pharmaceuticals Ltd.', 'Tablet', 'Azithromycin', ' Md Rajib', 1, 'uploads/images.jpeg'),
(15, 'Neotack', 'N', 'Incepta Pharmaceuticals Ltd.', 'Tablet', 'Omeprazole + Domperidone', ' Ali ', 1, 'uploads/esoral.jpg'),
(16, 'Ibuspray', 'I', 'Square Pharmaceuticals Ltd.', 'Tablet', 'Ibuprofen', ' Md Sipon Ali', 1, 'uploads/esoral.jpg'),
(17, 'Sertral', 'S', 'Incepta Pharmaceuticals Ltd.', 'Tablet', 'Sertraline', ' Ali ', 1, 'uploads/sertal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_stock`
--

CREATE TABLE `medicine_stock` (
  `id` int(10) NOT NULL,
  `batch_no` varchar(25) DEFAULT NULL,
  `medicine_id` int(10) NOT NULL,
  `quantity` int(15) NOT NULL,
  `supp_price` double(10,2) NOT NULL,
  `sell_price` double(10,2) NOT NULL,
  `expire_date` date NOT NULL,
  `purchase_invoice` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_stock`
--

INSERT INTO `medicine_stock` (`id`, `batch_no`, `medicine_id`, `quantity`, `supp_price`, `sell_price`, `expire_date`, `purchase_invoice`) VALUES
(18, 'NAP323', 5, 180, 1.00, 3.00, '2027-11-27', 55661769),
(19, 'AME321', 10, 270, 12.00, 7.00, '2027-07-19', 42811653),
(20, 'AMO342', 11, 390, 5.00, 15.00, '2026-07-19', 42811653),
(21, 'AZI345', 13, 380, 15.00, 16.00, '2027-11-22', 45783436),
(22, 'ba234', 15, 0, 12.00, 15.00, '2028-11-26', 32077073);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_type`
--

CREATE TABLE `medicine_type` (
  `id` int(10) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_type`
--

INSERT INTO `medicine_type` (`id`, `type_name`, `type_status`) VALUES
(1, 'Tablet', '1'),
(2, 'Capsule', '1'),
(3, 'Syrup', '1'),
(4, 'Suspension', '1'),
(5, 'Injection', '1'),
(6, 'Ampoule', '2'),
(7, 'Vial', '1'),
(8, 'Ointment', '1'),
(9, 'Cream', '1'),
(10, 'Gel', '1'),
(11, 'Inhaler', '1'),
(12, 'Nebulizer Solution', '1'),
(13, 'Drops', '1'),
(14, 'Suppository', '1'),
(15, 'Lozenge', '1'),
(16, 'Powder', '2'),
(17, 'Granules', '1'),
(18, 'Spray', '1'),
(19, 'Liquid Bottle', '1'),
(20, 'Patch', '2');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(10) NOT NULL,
  `invoice` int(13) NOT NULL,
  `supp_name` int(11) NOT NULL,
  `purch_date` date NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `discount` int(5) DEFAULT NULL,
  `receive_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `invoice`, `supp_name`, `purch_date`, `total_amount`, `discount`, `receive_amount`, `due_amount`, `status`) VALUES
(18, 42811653, 6, '2025-01-19', 7600.00, 0, 7600.00, 0.00, 0),
(20, 45783436, 9, '2025-01-22', 4500.00, 0, 3000.00, 1500.00, 2),
(21, 32077073, 11, '2025-01-26', 4800.00, 0, 4800.00, 0.00, 0),
(22, 55661769, 10, '2025-01-27', 25.00, 0, 25.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_quantity`
--

CREATE TABLE `purchase_quantity` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `per_price` double(10,2) NOT NULL,
  `total_cost` double(10,2) NOT NULL,
  `purchase_invoice` int(15) NOT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `sell_price` double(10,2) DEFAULT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_quantity`
--

INSERT INTO `purchase_quantity` (`id`, `medicine_id`, `quantity`, `per_price`, `total_cost`, `purchase_invoice`, `batch_no`, `sell_price`, `expire_date`) VALUES
(16, 5, 300, 1.00, 300.00, 42811653, 'NAP323', 3.00, '2025-11-19'),
(17, 11, 400, 12.00, 4800.00, 42811653, 'AMO342', 15.00, '2026-07-19'),
(18, 10, 500, 5.00, 2500.00, 42811653, 'AME321', 7.00, '2027-07-19'),
(21, 13, 300, 15.00, 4500.00, 45783436, 'AZI3233', 16.00, '2027-11-22'),
(22, 15, 400, 12.00, 4800.00, 32077073, 'ba234', 15.00, '2028-11-26'),
(23, 5, 25, 1.00, 25.00, 55661769, 'NAP213', 3.00, '2027-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `return_invoice_details`
--

CREATE TABLE `return_invoice_details` (
  `id` int(10) NOT NULL,
  `invoice` int(15) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `sell_date` date NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `receive_amount` double(10,2) NOT NULL,
  `due_amount` double(10,2) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_invoice_details`
--

INSERT INTO `return_invoice_details` (`id`, `invoice`, `customer_name`, `sell_date`, `total_amount`, `discount`, `receive_amount`, `due_amount`, `status`) VALUES
(1, 80482110, '2', '2025-01-22', 0.00, 0.00, 15.00, 0.00, 0),
(2, 535976, '2', '2025-01-22', 0.00, 0.00, 70.00, 0.00, 0),
(4, 30795055, '2', '2025-01-27', 0.00, 0.00, 30.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `return_invoice_quantity`
--

CREATE TABLE `return_invoice_quantity` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_cost` double(10,2) NOT NULL,
  `sell_invoice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_invoice_quantity`
--

INSERT INTO `return_invoice_quantity` (`id`, `medicine_id`, `quantity`, `total_cost`, `sell_invoice`) VALUES
(1, 5, 5, 15.00, 80482110),
(2, 10, 10, 70.00, 535976),
(4, 5, 10, 30.00, 30795055);

-- --------------------------------------------------------

--
-- Table structure for table `sell_details`
--

CREATE TABLE `sell_details` (
  `id` int(10) NOT NULL,
  `invoice` int(15) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `sell_date` date NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `discount` int(10) NOT NULL,
  `receive_amount` double(10,2) NOT NULL,
  `due_amount` double(10,2) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell_details`
--

INSERT INTO `sell_details` (`id`, `invoice`, `customer_name`, `sell_date`, `total_amount`, `discount`, `receive_amount`, `due_amount`, `status`) VALUES
(21, 386690, '1', '2025-01-22', 250.00, 0, 250.00, 0.00, 0),
(22, 575380, '1', '2025-01-22', 610.00, 0, 610.00, 0.00, 0),
(25, 58595655, '2', '2025-01-22', 140.00, 0, 120.00, 20.00, 2),
(26, 28625803, '2', '2025-01-26', 6750.00, 0, 6750.00, 0.00, 0),
(27, 55505685, '2', '2025-01-26', 60.00, 0, 60.00, 0.00, 0),
(30, 20459921, '2', '2025-01-27', 150.00, 0, 150.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sell_quantity`
--

CREATE TABLE `sell_quantity` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_cost` double(10,2) NOT NULL,
  `sell_invoice` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell_quantity`
--

INSERT INTO `sell_quantity` (`id`, `medicine_id`, `quantity`, `total_cost`, `sell_invoice`) VALUES
(24, 5, 10, 30.00, 386690),
(25, 10, 10, 70.00, 386690),
(26, 11, 10, 150.00, 386690),
(27, 13, 10, 160.00, 575380),
(28, 11, 30, 450.00, 575380),
(31, 10, 20, 140.00, 58595655),
(32, 15, 450, 6750.00, 28625803),
(33, 5, 20, 60.00, 55505685),
(36, 11, 10, 150.00, 20459921);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_add`
--

CREATE TABLE `supplier_add` (
  `id` int(10) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `balance` double(10,2) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_add`
--

INSERT INTO `supplier_add` (`id`, `supplier_name`, `company`, `mobile`, `email`, `address`, `city`, `state`, `balance`, `status`) VALUES
(6, ' Md Rajib', 'Square', '01752477208', 'rajib@gmail.com', 'mirpur dhaka', 'dhaka', 'dhaka', NULL, 1),
(7, ' Ali ', 'Incepta', '0175247733', 'ali@gmail.com', 'Gazipur', 'Gazipur', 'Dhaka', NULL, 1),
(9, ' Mustafijur', 'Opsonin', '0175247711', 'mustafijur@gmail.com', '60 FEET', 'Dhaka', 'Dhaka', NULL, 1),
(10, ' Akbar Mia', 'Opsonin', '0175247711', 'akbar@gmail.com', 'Dhanmondi 29', 'Dhaka', 'Dhaka', NULL, 1),
(11, ' Ismail Hossain', 'ACI', '01828896738', 'ismail07.hossain@gmail.com', 'komisonar bhari Agargaon', 'Dhaka', 'Dhaka', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `total_purchase`
--

CREATE TABLE `total_purchase` (
  `id` int(10) NOT NULL,
  `total_cost` double(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `total_purchase`
--

INSERT INTO `total_purchase` (`id`, `total_cost`, `date`) VALUES
(1, 4800.00, '2025-01-26'),
(2, 25.00, '2025-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `total_sell`
--

CREATE TABLE `total_sell` (
  `id` int(10) NOT NULL,
  `total_sell` double(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `total_sell`
--

INSERT INTO `total_sell` (`id`, `total_sell`, `date`) VALUES
(1, 6750.00, '2025-01-26'),
(2, 60.00, '2025-01-26'),
(3, 15.00, '2025-01-27'),
(4, -15.00, '2025-01-27'),
(5, 60.00, '2025-01-27'),
(6, -30.00, '2025-01-27'),
(7, 150.00, '2025-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(10) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `unit_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_status`) VALUES
(2, 'Pack', '1'),
(4, 'Box', '1'),
(5, '1 strip = 10 pice', '1'),
(6, 'Pic', '2'),
(7, 'Bottle', '1'),
(8, 'Carton', '1'),
(9, 'Pallet', '1'),
(12, 'whole box', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expired_medicines`
--
ALTER TABLE `expired_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_type`
--
ALTER TABLE `medicine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_quantity`
--
ALTER TABLE `purchase_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_invoice_details`
--
ALTER TABLE `return_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_invoice_quantity`
--
ALTER TABLE `return_invoice_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_details`
--
ALTER TABLE `sell_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_quantity`
--
ALTER TABLE `sell_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_add`
--
ALTER TABLE `supplier_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_purchase`
--
ALTER TABLE `total_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_sell`
--
ALTER TABLE `total_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expired_medicines`
--
ALTER TABLE `expired_medicines`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `medicine_type`
--
ALTER TABLE `medicine_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchase_quantity`
--
ALTER TABLE `purchase_quantity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `return_invoice_details`
--
ALTER TABLE `return_invoice_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `return_invoice_quantity`
--
ALTER TABLE `return_invoice_quantity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sell_details`
--
ALTER TABLE `sell_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sell_quantity`
--
ALTER TABLE `sell_quantity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `supplier_add`
--
ALTER TABLE `supplier_add`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `total_purchase`
--
ALTER TABLE `total_purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `total_sell`
--
ALTER TABLE `total_sell`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
