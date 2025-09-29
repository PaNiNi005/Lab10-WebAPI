-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 08:30 AM
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
-- Database: `catshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `stock`, `description`, `created_at`) VALUES
(2, 'อาหารเปียกแมว รสไก่', 'อาหาร', 35.00, 100, 'อาหารเปียกแมว ซองรสไก่ 85g', '2025-09-29 06:12:26'),
(3, 'อาหารแมวเกรนฟรี', 'อาหาร', 450.00, 40, 'สูตรเกรนฟรี สำหรับแมวแพ้ง่าย', '2025-09-29 06:12:26'),
(4, 'ปลอกคอแมวลายการ์ตูน', 'อุปกรณ์', 120.00, 30, 'ปลอกคอแมวลายน่ารัก ปรับขนาดได้', '2025-09-29 06:12:26'),
(5, 'กรงพาแมวเดินทาง', 'อุปกรณ์', 890.00, 15, 'กรงพาแมวแบบพกพา', '2025-09-29 06:12:26'),
(6, 'ที่ลับเล็บแมว กระดาษลูกฟูก', 'อุปกรณ์', 199.00, 25, 'ที่ลับเล็บแมวทำจากกระดาษลูกฟูก', '2025-09-29 06:12:26'),
(7, 'ทรายแมวเก็บกลิ่น', 'สุขอนามัย', 180.00, 60, 'ทรายแมวดูดซับกลิ่น 5L', '2025-09-29 06:12:26'),
(8, 'แปรงขนแมว', 'อุปกรณ์', 95.00, 35, 'แปรงขนสำหรับแมวทุกสายพันธุ์', '2025-09-29 06:12:26'),
(9, 'ของเล่นแมว คันเบ็ดล่อ', 'ของเล่น', 65.00, 45, 'คันเบ็ดของเล่นแมว พร้อมขนนก', '2025-09-29 06:12:26'),
(10, 'ของเล่นแมว ลูกบอลกระดิ่ง', 'ของเล่น', 45.00, 70, 'ลูกบอลพลาสติก มีเสียงกระดิ่ง', '2025-09-29 06:12:26'),
(11, 'วิตามินแมว เสริมขนสวย', 'สุขภาพ', 350.00, 20, 'วิตามินสำหรับบำรุงขนและผิวหนัง', '2025-09-29 06:12:26'),
(12, 'ปลอกคอป้องกันหมัดแมว', 'สุขภาพ', 150.00, 25, 'ปลอกคอแมวป้องกันหมัดและเห็บ', '2025-09-29 06:12:26'),
(13, 'เปลญวนแมว', 'อุปกรณ์', 320.00, 10, 'เปลญวนแขวนสำหรับแมว', '2025-09-29 06:12:26'),
(14, 'อาหารแมวสูตรลูกแมว', 'อาหาร', 280.00, 55, 'อาหารเม็ดสำหรับลูกแมว 1-12 เดือน', '2025-09-29 06:12:26'),
(15, 'กรรไกรตัดเล็บแมว', 'อุปกรณ์', 110.00, 40, 'กรรไกรตัดเล็บแมวแบบปลอดภัย', '2025-09-29 06:12:26'),
(16, 'ผ้าคลุมอาบน้ำแมว', 'อุปกรณ์', 220.00, 15, 'ผ้าคลุมอาบน้ำสำหรับแมวกันข่วน', '2025-09-29 06:12:26'),
(17, 'วิตามินแมว เพิ่มภูมิคุ้มกัน', 'สุขภาพ', 400.00, 18, 'วิตามินแมวเสริมภูมิคุ้มกัน', '2025-09-29 06:12:26'),
(18, 'บ้านแมวไม้', 'อุปกรณ์', 1200.00, 8, 'บ้านแมวทำจากไม้ แข็งแรงทนทาน', '2025-09-29 06:12:26'),
(19, 'ของเล่นแมวอัตโนมัติ', 'ของเล่น', 650.00, 12, 'ของเล่นไฟฟ้า หมุนอัตโนมัติ', '2025-09-29 06:12:26'),
(20, 'อาหารเปียกแมว รสปลาแซลมอน', 'อาหาร', 39.00, 90, 'อาหารเปียกรสปลาแซลมอน 85g', '2025-09-29 06:12:26'),
(21, '', '', 0.00, 0, '', '2025-09-29 06:23:56'),
(22, 'ของเล่นแมวใหม่', 'ของเล่น', 99.00, 20, 'ของเล่นแมวสุดฮิต', '2025-09-29 06:24:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
