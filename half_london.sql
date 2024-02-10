-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 06:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `half_london`
--

-- --------------------------------------------------------

--
-- Table structure for table `bought_item`
--

CREATE TABLE `bought_item` (
  `RECEIPT_NO` int(11) NOT NULL,
  `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL DEFAULT NULL,
  `TIME_Created` datetime NOT NULL,
  `Cashier_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bought_item`
--

INSERT INTO `bought_item` (`RECEIPT_NO`, `CUSTOMER_ID`, `TIME_Created`, `Cashier_ID`) VALUES
(1, 0001, '2024-02-07 10:00:00', 1),
(2, 0002, '2024-02-07 11:30:00', 2),
(3, 0003, '2024-02-07 14:15:00', 3),
(4, 0004, '2024-02-08 09:45:00', 1),
(5, 0005, '2024-02-08 12:30:00', 2),
(6, 0006, '2024-02-09 15:00:00', 3),
(7, 0007, '2024-02-10 16:45:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `CASHIER_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`CASHIER_ID`, `EMPLOYEE_ID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `Employee_ID` int(11) NOT NULL,
  `ExperienceYears` tinyint(4) DEFAULT NULL,
  `Certification` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`Employee_ID`, `ExperienceYears`, `Certification`) VALUES
(1, 5, 'Culinary Arts Degree'),
(2, 8, 'Food Safety Certification'),
(3, 3, 'Professional Chef Certification'),
(4, 6, 'Advanced Cooking Techniques Course'),
(5, 4, 'Culinary Competition Winner');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `Customer_Name` varchar(100) NOT NULL,
  `Customer_No` int(4) UNSIGNED ZEROFILL DEFAULT NULL,
  `Customer_Address` varchar(100) DEFAULT NULL,
  `Customer_RegDate` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUSTOMER_ID`, `Customer_Name`, `Customer_No`, `Customer_Address`, `Customer_RegDate`) VALUES
(0001, 'John Doe', 0001, '123 Main St', '2024-02-07'),
(0002, 'Jane Smith', 0002, '456 Elm St', '2024-02-07'),
(0003, 'Michael Johnson', 0003, '789 Oak St', '2024-02-07'),
(0004, 'Emily Davis', 0004, '321 Pine St', '2024-02-07'),
(0005, 'David Wilson', 0005, '654 Maple St', '2024-02-07'),
(0006, 'Sarah Thompson', 0006, '987 Cedar St', '2024-02-07'),
(0007, 'Robert Anderson', 0007, '135 Birch St', '2024-02-07'),
(0008, 'Jennifer Brown', 0008, '864 Walnut St', '2024-02-07'),
(0009, 'Christopher Lee', 0009, '579 Spruce St', '2024-02-07'),
(0010, 'Jessica Taylor', 0010, '318 Cherry St', '2024-02-07'),
(0011, 'Daniel Martinez', 0011, '753 Willow St', '2024-02-07'),
(0012, 'Lisa Jackson', 0012, '296 Ash St', '2024-02-07'),
(0013, 'Matthew White', 0013, '531 Poplar St', '2024-02-07'),
(0014, 'Amanda Harris', 0014, '972 Sycamore St', '2024-02-07'),
(0015, 'Andrew Clark', 0015, '215 Fir St', '2024-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `CUSTOMER_USERNAME` varchar(100) NOT NULL,
  `Customer_email` varchar(100) NOT NULL,
  `Customer_Password` varchar(20) DEFAULT NULL
) ;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`CUSTOMER_ID`, `CUSTOMER_USERNAME`, `Customer_email`, `Customer_Password`) VALUES
(0001, 'john123', 'john123@gmail.com', 'Abc12345'),
(0002, 'jane456', 'jane456@gmail.com', 'Xyz45678'),
(0003, 'michael789', 'michael789@gmail.com', 'Pwd78901'),
(0004, 'emily321', 'emily321@gmail.com', 'Pass3123'),
(0005, 'david654', 'david654@gmail.com', 'Secue654'),
(0006, 'sarah987', 'sarah987@gmail.com', 'ecret987'),
(0007, 'robert135', 'robert135@gmail.com', 'P@ssw0rd'),
(0008, 'jennifer864', 'jennifer864@gmail.com', 'Qwerty86'),
(0009, 'christopher579', 'christopher579@gmail.com', 'Abcd5794'),
(0010, 'jessica318', 'jessica318@gmail.com', 'Passw0rd'),
(0011, 'daniel753', 'daniel753@gmail.com', 'Secure53'),
(0012, 'lisa296', 'lisa296@gmail.com', 'Secret29'),
(0013, 'matthew531', 'matthew531@gmail.com', 'P@ssword'),
(0014, 'amanda972', 'amanda972@gmail.com', 'Qwerty97'),
(0015, 'andrew215', 'andrew215@gmail.com', 'Abcdy215');

-- --------------------------------------------------------

--
-- Table structure for table `customer_service`
--

CREATE TABLE `customer_service` (
  `Employee_ID` int(11) NOT NULL,
  `ExperienceYears` tinyint(4) DEFAULT NULL,
  `LanguagesSpoken` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_service`
--

INSERT INTO `customer_service` (`Employee_ID`, `ExperienceYears`, `LanguagesSpoken`) VALUES
(1, 4, 'English, Spanish'),
(2, 3, 'English, French'),
(3, 5, 'English, Mandarin'),
(4, 6, 'English, Italian'),
(5, 2, 'English, German');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `Employee_ID` int(11) NOT NULL,
  `Certification` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`Employee_ID`, `Certification`) VALUES
(1, 'Driver License'),
(2, 'Commercial Driving License'),
(3, 'Forklift Operator Certification'),
(4, 'Delivery Safety Training'),
(5, 'Transportation Compliance Certification');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_order`
--

CREATE TABLE `delivery_order` (
  `DELIVERY_ID` int(11) NOT NULL,
  `Delivery_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_order`
--

INSERT INTO `delivery_order` (`DELIVERY_ID`, `Delivery_Address`) VALUES
(1, '123 Main Street'),
(2, '456 Elm Avenue'),
(3, '789 Oak Lane'),
(4, '321 Pine Court'),
(5, '654 Maple Road'),
(6, '987 Cedar Drive');

-- --------------------------------------------------------

--
-- Table structure for table `dine_order`
--

CREATE TABLE `dine_order` (
  `DINE_IN_ID` int(11) NOT NULL,
  `Table_No` int(11) NOT NULL,
  `No_People` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dine_order`
--

INSERT INTO `dine_order` (`DINE_IN_ID`, `Table_No`, `No_People`) VALUES
(1, 5, 2),
(2, 3, 4),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `POSITION_ID` int(11) DEFAULT NULL,
  `Employee_Name` varchar(100) NOT NULL,
  `Employee_Gender` varchar(2) NOT NULL CHECK (`Employee_Gender` in ('F','M')),
  `Employee_Address` varchar(100) NOT NULL,
  `Employee_email` varchar(100) DEFAULT NULL,
  `Employee_Number` varchar(15) NOT NULL,
  `EMployee_EmergencyContact` varchar(15) NOT NULL,
  `EMployee_EmergencyContactName` varchar(50) NOT NULL,
  `Employee_HireDate` date DEFAULT curdate(),
  `Employee_TerminationDate` date DEFAULT NULL,
  `Employee_Type` varchar(20) NOT NULL,
  `Employee_IsActive` varchar(3) DEFAULT NULL CHECK (`Employee_IsActive` in ('YES','NO'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `POSITION_ID`, `Employee_Name`, `Employee_Gender`, `Employee_Address`, `Employee_email`, `Employee_Number`, `EMployee_EmergencyContact`, `EMployee_EmergencyContactName`, `Employee_HireDate`, `Employee_TerminationDate`, `Employee_Type`, `Employee_IsActive`) VALUES
(1, 1, 'John Doe', 'M', '123 Main Street, London', 'johndoe@mahaba.com', '01123456789', '01987654321', 'Jane Doe', '2024-02-07', NULL, 'CHEF', 'YES'),
(2, 2, 'Jane Smith', 'F', '456 Elm Street, London', 'janesmith@mahaba.com', '01234567890', '01876543210', 'John Smith', '2024-02-07', NULL, 'FRONT_HOUSE', 'YES'),
(3, 3, 'Michael Johnson', 'M', '789 Oak Avenue, London', 'michaeljohnson@mahaba.com', '02345678901', '01765432109', 'Emily Johnson', '2024-02-07', NULL, 'MANAGERS', 'YES'),
(4, 4, 'Emily Brown', 'F', '321 Pine Road, London', 'emilybrown@mahaba.com', '03456789012', '01654321098', 'Daniel Brown', '2024-02-07', NULL, 'CUSTOMER_SERVICE', 'YES'),
(5, 5, 'David Lee', 'M', '987 Cedar Lane, London', 'davidlee@mahaba.com', '04567890123', '01543210987', 'Sarah Lee', '2024-02-07', NULL, 'MAINTENANCE', 'YES'),
(6, 6, 'Sophia Wilson', 'F', '654 Birch Street, London', 'sophiawilson@mahaba.com', '05678901234', '01432109876', 'James Wilson', '2024-02-07', NULL, 'DELIVERIES', 'YES'),
(7, 2, 'Sebastian', 'M', '123 Main Street, London', 'sebastian@mahaba.com', '01123456789', '01987654321', 'Jane Sebastian', '2024-02-07', NULL, 'CHEF', 'NO'),
(8, 2, 'Daniel', 'M', '456 Elm Street, London', 'daniel@mahaba.com', '01234567890', '01876543210', 'John Daniel', '2024-02-07', NULL, 'FRONT_HOUSE', 'NO'),
(9, 6, 'Jack', 'M', '789 Oak Avenue, London', 'jack@mahaba.com', '02345678901', '01765432109', 'Emily Jack', '2024-02-07', NULL, 'MANAGERS', 'NO'),
(10, 5, 'Michael', 'M', '321 Pine Road, London', 'michael@mahaba.com', '03456789012', '01654321098', 'Daniel Michael', '2024-02-07', NULL, 'CUSTOMER_SERVICE', 'NO'),
(11, 5, 'Alexander', 'M', '987 Cedar Lane, London', 'alexander@mahaba.com', '04567890123', '01543210987', 'Sarah Alexander', '2024-02-07', NULL, 'MAINTENANCE', 'NO'),
(12, 6, 'Owen', 'M', '654 Birch Street, London', 'owen@mahaba.com', '05678901234', '01432109876', 'James Owen', '2024-02-07', NULL, 'DELIVERIES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `employee_acc`
--

CREATE TABLE `employee_acc` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `Employee_Username` varchar(20) DEFAULT NULL,
  `Employee_Password` varchar(20) DEFAULT NULL
) ;

--
-- Dumping data for table `employee_acc`
--

INSERT INTO `employee_acc` (`EMPLOYEE_ID`, `Employee_Username`, `Employee_Password`) VALUES
(1, 'john_doe', 'pass@123'),
(2, 'jane_smith', 'abcd1234'),
(3, 'michael_johnson', 'p@ssword'),
(4, 'emily_brown', 'secure12'),
(5, 'david_lee', '12345678'),
(6, 'sophia_wilson', 'wertyy12'),
(7, 'sebastian', 'passwod!'),
(8, 'daniel', 'pass1234'),
(9, 'jack', 'secur!23'),
(10, 'alexander', 'pasord12'),
(11, 'owen', 'qwerty!2'),
(12, 'asher', 'pass!wor');

-- --------------------------------------------------------

--
-- Table structure for table `front_house`
--

CREATE TABLE `front_house` (
  `Employee_ID` int(11) NOT NULL,
  `ExperienceYears` tinyint(4) DEFAULT NULL,
  `LanguagesSpoken` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `front_house`
--

INSERT INTO `front_house` (`Employee_ID`, `ExperienceYears`, `LanguagesSpoken`) VALUES
(1, 3, 'English, Spanish'),
(2, 5, 'English, French'),
(3, 4, 'English, Mandarin'),
(4, 6, 'English, Italian'),
(5, 2, 'English, German');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `INVOICE_ID` int(11) NOT NULL,
  `Invoice_No` varchar(9) DEFAULT NULL,
  `Invoice_Date` date DEFAULT curdate(),
  `Invoice_Amount` decimal(8,2) DEFAULT NULL,
  `Invoice_SignDate` date DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `Employee_ID` int(11) NOT NULL,
  `ExperienceYears` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`Employee_ID`, `ExperienceYears`) VALUES
(1, 3),
(2, 5),
(3, 4),
(4, 6),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `Employee_ID` int(11) NOT NULL,
  `Duties` varchar(200) DEFAULT NULL,
  `ExperienceYears` tinyint(4) DEFAULT NULL,
  `Certification` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`Employee_ID`, `Duties`, `ExperienceYears`, `Certification`) VALUES
(1, 'Overseeing operations and staff management', 7, 'Management Certification'),
(2, 'Scheduling and budget management', 8, 'Business Administration Degree'),
(3, 'Customer service and complaint resolution', 6, 'Leadership Training Program'),
(4, 'Inventory management and ordering supplies', 5, 'Retail Management Certification'),
(5, 'Training and development of new employees', 9, 'Human Resources Management Degree');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MENU_ID` int(11) NOT NULL,
  `Dish_Name` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MENU_ID`, `Dish_Name`, `Description`, `Category`) VALUES
(1, 'Nasi Goreng', 'Sliced cucumbers, tomatoes, jasmine rice, ayam and eggs', 'SEASONAL'),
(2, 'Lasagne', 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', NULL),
(3, 'Char Kway Teow', 'Noodles, prawns, bean sprouts and Chinese sausage', NULL),
(4, 'Tokusen Wagyu', 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices.', 'NEW'),
(5, 'Olivas Rellenas', 'Avocados with crab meat, red onion, crab salad stuffed red bell pepper and green bell pepper.', NULL),
(6, 'Opu Fish', 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORDER_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `Order_Number` int(11) NOT NULL,
  `Item_Ordered` varchar(255) NOT NULL,
  `Time_Placed` datetime NOT NULL,
  `Special_Request` text DEFAULT NULL,
  `Total_Amount` decimal(10,2) NOT NULL,
  `Order_Status` varchar(255) DEFAULT NULL,
  `Customer_ID` int(4) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORDER_ID`, `MENU_ID`, `Order_Number`, `Item_Ordered`, `Time_Placed`, `Special_Request`, `Total_Amount`, `Order_Status`, `Customer_ID`) VALUES
(1, 1, 123456, 'Nasi Goreng', '2024-02-07 10:00:00', 'Extra spicy', 30.50, 'Pending', 0001),
(2, 2, 123457, 'Lasagne', '2024-02-07 11:30:00', NULL, 40.00, 'Completed', 0002),
(3, 3, 123458, 'Char Kway Teow', '2024-02-07 14:15:00', 'No bean sprouts', 27.00, 'Pending', 0003),
(4, 4, 123459, 'Tokusen Wagyu', '2024-02-08 09:45:00', 'Medium-rare', 39.00, 'Completed', 0004),
(5, 5, 123460, 'Olivas Rellenas', '2024-02-08 12:30:00', NULL, 25.00, 'Pending', 0005),
(6, 6, 123461, 'Opu Fish', '2024-02-09 15:00:00', 'No tomato sauce', 49.00, 'Completed', 0006),
(7, 1, 123462, 'Nasi Goreng', '2024-02-10 16:45:00', 'Extra vegetables', 30.50, 'Pending', 0007),
(8, 2, 123463, 'Lasagne', '2024-02-10 18:00:00', NULL, 40.00, 'Completed', 0008),
(9, 3, 123464, 'Char Kway Teow', '2024-02-11 10:30:00', 'Less spicy', 27.00, 'Pending', 0009),
(10, 4, 123465, 'Tokusen Wagyu', '2024-02-11 13:15:00', 'Well-done', 39.00, 'Completed', 0010);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PAYMENT_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL DEFAULT NULL,
  `Cash` decimal(10,2) DEFAULT NULL,
  `Card_Type` varchar(255) DEFAULT NULL,
  `Bank_Account_Name` varchar(255) DEFAULT NULL,
  `Bank_Acc_NO` varchar(255) DEFAULT NULL,
  `E_Wallet_Type` varchar(255) DEFAULT NULL,
  `E_Wallet_Transid` varchar(255) DEFAULT NULL,
  `PAY_METHOD_ID` int(11) DEFAULT NULL,
  `ORDER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PAYMENT_ID`, `CUSTOMER_ID`, `Cash`, `Card_Type`, `Bank_Account_Name`, `Bank_Acc_NO`, `E_Wallet_Type`, `E_Wallet_Transid`, `PAY_METHOD_ID`, `ORDER_ID`) VALUES
(0001, 0001, 50.00, 'Visa', NULL, NULL, NULL, NULL, 1, 1),
(0002, 0002, NULL, 'Mastercard', NULL, NULL, NULL, NULL, 2, 2),
(0003, 0003, 25.00, NULL, 'John Doe', '1234567890', NULL, NULL, 3, 3),
(0004, 0004, NULL, NULL, NULL, NULL, 'PayPal', 'ABC123', 4, 4),
(0005, 0005, 40.00, 'Visa', NULL, NULL, NULL, NULL, 1, 5),
(0006, 0006, NULL, 'Mastercard', NULL, NULL, NULL, NULL, 2, 6),
(0007, 0007, 35.00, NULL, 'Jane Smith', '0987654321', NULL, NULL, 3, 7),
(0008, 0008, NULL, NULL, NULL, NULL, 'Google Pay', 'DEF456', 4, 8),
(0009, 0009, 60.00, 'Visa', NULL, NULL, NULL, NULL, 1, 9),
(0010, 0010, NULL, 'Mastercard', NULL, NULL, NULL, NULL, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `PAY_METHOD_ID` int(11) NOT NULL,
  `PAY_METHOD_DESC` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`PAY_METHOD_ID`, `PAY_METHOD_DESC`) VALUES
(1, 'Credit Card'),
(2, 'Debit Card'),
(3, 'PayPal'),
(4, 'Bank Transfer'),
(5, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `POSITION_ID` int(11) NOT NULL,
  `chargePerHour` decimal(5,2) DEFAULT NULL,
  `Position_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`POSITION_ID`, `chargePerHour`, `Position_Name`) VALUES
(1, 20.50, 'CHEF'),
(2, 15.75, 'FRONT_HOUSE'),
(3, 18.25, 'MANAGERS'),
(4, 12.95, 'CUSTOMER_SERVICE'),
(5, 14.50, 'MAINTENANCE'),
(6, 13.75, 'DELIVERIES');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `Product_Quantity` int(11) NOT NULL,
  `Product_Price` decimal(6,2) NOT NULL,
  `Product_Status` varchar(10) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `Product_Name`, `Product_Quantity`, `Product_Price`, `Product_Status`, `CATEGORY_ID`) VALUES
(1, 'Vegetable Oil', 20, 9.99, 'Active', 1),
(2, 'Fresh Vegetables', 50, 5.99, 'Active', 2),
(3, 'Chicken Breast', 30, 12.99, 'Active', 3),
(4, 'Beef Steak', 25, 15.99, 'Active', 3),
(5, 'Spices', 100, 2.99, 'Active', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `Category_Type` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`CATEGORY_ID`, `Category_Type`) VALUES
(1, 'C'),
(2, 'A'),
(3, 'B'),
(4, 'A'),
(5, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice`
--

CREATE TABLE `product_invoice` (
  `PRODUCT_ID` int(11) NOT NULL,
  `INVOICE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier`
--

CREATE TABLE `product_supplier` (
  `PRODUCT_ID` int(11) NOT NULL,
  `SUPPLIER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `ORDER_ID` int(4) NOT NULL,
  `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `PAY_METHOD_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`ORDER_ID`, `CUSTOMER_ID`, `EMPLOYEE_ID`, `PAY_METHOD_ID`) VALUES
(21, 0001, 1, 1),
(22, 0002, 2, 2),
(23, 0003, 1, 3),
(24, 0004, 3, 4),
(25, 0005, 2, 5),
(26, 0006, 3, 5),
(27, 0007, 1, 3),
(28, 0008, 2, 2),
(29, 0009, 3, 1),
(30, 0010, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `person` varchar(20) NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_time` varchar(10) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `person`, `reservation_date`, `reservation_time`, `message`, `created_at`) VALUES
(1, 'Ahmad bin Abdullah', '1234567890', '2', '2024-02-07', '18:00', 'Meja untuk dua orang', '2024-02-07 15:04:55'),
(2, 'Tan Li Wei', '9876543210', '4', '2024-02-08', '19:30', 'Acara istimewa', '2024-02-07 15:04:55'),
(3, 'Muhammad bin Ismail', '5555555555', '3', '2024-02-09', '20:15', 'Tidak ada batasan diet', '2024-02-07 15:04:55'),
(4, 'Wong Mei Ling', '1111111111', '2', '2024-02-10', '18:45', 'Tempat duduk di dekat jendela', '2024-02-07 15:04:55'),
(5, 'Lee Jia Hui', '9999999999', '5', '2024-02-11', '21:00', NULL, '2024-02-07 15:04:55'),
(6, 'mahaba', '1231', 'asdasasd', '0000-00-00', '', 'asdasd', '2024-02-08 13:24:02'),
(7, 'Ugyen', '21312093123', '3', '0001-02-12', '14:34', 'dasjdjkaskldjakls', '2024-02-08 13:28:25'),
(8, 'jux karanja', '+601114896733', '5', '2024-02-15', '15:29', 'add more curry', '2024-02-08 15:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SALARY_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `BasicSalary` decimal(10,2) DEFAULT NULL,
  `OvertimePay` decimal(10,2) DEFAULT NULL,
  `Bonuses` decimal(10,2) DEFAULT NULL,
  `EmployeeStatus` varchar(3) DEFAULT NULL CHECK (`EmployeeStatus` in ('YES','NO')),
  `NetSalary` decimal(10,2) GENERATED ALWAYS AS (`BasicSalary` + `OvertimePay` + `Bonuses`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`SALARY_ID`, `EMPLOYEE_ID`, `BasicSalary`, `OvertimePay`, `Bonuses`, `EmployeeStatus`) VALUES
(1, 1, 3000.00, 200.00, 500.00, 'YES'),
(2, 2, 3200.00, 150.00, 400.00, 'YES'),
(3, 3, 3500.00, 250.00, 600.00, 'YES'),
(4, 4, 3100.00, 180.00, 550.00, 'YES'),
(5, 5, 2900.00, 220.00, 450.00, 'YES'),
(6, 6, 3300.00, 210.00, 500.00, 'YES'),
(7, 7, 3200.00, 190.00, 480.00, 'YES'),
(8, 8, 3400.00, 240.00, 520.00, 'YES'),
(9, 9, 3100.00, 230.00, 490.00, 'YES'),
(10, 10, 3000.00, 200.00, 550.00, 'YES'),
(11, 11, 3300.00, 220.00, 500.00, 'YES'),
(12, 12, 3200.00, 210.00, 480.00, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `SUPPLIER_NAME` varchar(200) NOT NULL,
  `SUPPLIER_ADDRESS` varchar(150) NOT NULL,
  `SUPPLIER_CONTACT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `SUPPLIER_NAME`, `SUPPLIER_ADDRESS`, `SUPPLIER_CONTACT`) VALUES
(1, 'Supplier A', '123 Main Street', '123-456-7890'),
(2, 'Supplier B', '456 Elm Avenue', '987-654-3210'),
(3, 'Supplier C', '789 Oak Lane', '555-555-5555'),
(4, 'Supplier D', '321 Pine Court', '111-222-3333'),
(5, 'Supplier E', '654 Maple Road', '444-444-4444');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bought_item`
--
ALTER TABLE `bought_item`
  ADD PRIMARY KEY (`RECEIPT_NO`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `Cashier_ID` (`Cashier_ID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`CASHIER_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `Customer_No` (`Customer_No`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`CUSTOMER_ID`,`CUSTOMER_USERNAME`);

--
-- Indexes for table `customer_service`
--
ALTER TABLE `customer_service`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `delivery_order`
--
ALTER TABLE `delivery_order`
  ADD PRIMARY KEY (`DELIVERY_ID`);

--
-- Indexes for table `dine_order`
--
ALTER TABLE `dine_order`
  ADD PRIMARY KEY (`DINE_IN_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `POSITION_ID` (`POSITION_ID`);

--
-- Indexes for table `employee_acc`
--
ALTER TABLE `employee_acc`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `Employee_Username` (`Employee_Username`);

--
-- Indexes for table `front_house`
--
ALTER TABLE `front_house`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MENU_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `MENU_ID` (`MENU_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `PAY_METHOD_ID` (`PAY_METHOD_ID`),
  ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`PAY_METHOD_ID`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`POSITION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `product_invoice`
--
ALTER TABLE `product_invoice`
  ADD PRIMARY KEY (`PRODUCT_ID`,`INVOICE_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`);

--
-- Indexes for table `product_supplier`
--
ALTER TABLE `product_supplier`
  ADD PRIMARY KEY (`PRODUCT_ID`,`SUPPLIER_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`ORDER_ID`,`CUSTOMER_ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD KEY `PAY_METHOD_ID` (`PAY_METHOD_ID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`SALARY_ID`,`EMPLOYEE_ID`),
  ADD KEY `fk_salary_employee` (`EMPLOYEE_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_account`
--
ALTER TABLE `customer_account`
  MODIFY `CUSTOMER_ID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_service`
--
ALTER TABLE `customer_service`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `front_house`
--
ALTER TABLE `front_house`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `PAYMENT_ID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `PAY_METHOD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `POSITION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `ORDER_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `SALARY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bought_item`
--
ALTER TABLE `bought_item`
  ADD CONSTRAINT `bought_item_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`),
  ADD CONSTRAINT `bought_item_ibfk_2` FOREIGN KEY (`Cashier_ID`) REFERENCES `cashier` (`CASHIER_ID`);

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `chef_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD CONSTRAINT `customer_account_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`);

--
-- Constraints for table `customer_service`
--
ALTER TABLE `customer_service`
  ADD CONSTRAINT `customer_service_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`POSITION_ID`) REFERENCES `positions` (`POSITION_ID`);

--
-- Constraints for table `employee_acc`
--
ALTER TABLE `employee_acc`
  ADD CONSTRAINT `employee_acc_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `front_house`
--
ALTER TABLE `front_house`
  ADD CONSTRAINT `front_house_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`MENU_ID`) REFERENCES `menu` (`MENU_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`CUSTOMER_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`PAY_METHOD_ID`) REFERENCES `payment_method` (`PAY_METHOD_ID`),
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `product_category` (`CATEGORY_ID`);

--
-- Constraints for table `product_invoice`
--
ALTER TABLE `product_invoice`
  ADD CONSTRAINT `product_invoice_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `product_invoice_ibfk_2` FOREIGN KEY (`INVOICE_ID`) REFERENCES `invoice` (`INVOICE_ID`);

--
-- Constraints for table `product_supplier`
--
ALTER TABLE `product_supplier`
  ADD CONSTRAINT `product_supplier_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `product_supplier_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`PAY_METHOD_ID`) REFERENCES `payment_method` (`PAY_METHOD_ID`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_salary_employee` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
