CREATE TABLE Employee_Info(
  Employee_ID int PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DElIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1))
);
/* 2023-11-28 00:48:47 [74 ms] */ 
CREATE TABLE restaurant.EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 01:16:24 [86 ms] */ 
ALTER TABLE Employee_Info
ADD PositionID INT;
/* 2023-11-28 01:29:34 [17 ms] */ 
USE restaurant;
/* 2023-11-28 01:29:37 [65 ms] */ 
DROP TABLE IF EXISTS Employee_Info;
/* 2023-11-28 01:29:40 [84 ms] */ 
DROP TABLE IF EXISTS EmployeePosition;
/* 2023-11-28 01:35:55 [58 ms] */ 
CREATE TABLE EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 01:36:03 [219 ms] */ 
CREATE TABLE Employee_Info (
  Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  PositionID INT,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DELIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1)),
  FOREIGN KEY (PositionID) REFERENCES EmployeePosition(PositionID)
);
/* 2023-11-28 02:25:24 [36 ms] */ 
USE restaurant;
/* 2023-11-28 02:25:27 [69 ms] */ 
DROP TABLE IF EXISTS Employee_Info;
/* 2023-11-28 02:25:29 [24 ms] */ 
DROP TABLE IF EXISTS EmployeePosition;
/* 2023-11-28 02:25:38 [121 ms] */ 
CREATE TABLE EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 02:25:43 [254 ms] */ 
CREATE TABLE Employee_Info (
  Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  PositionID INT,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DELIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1)),
  FOREIGN KEY (PositionID) REFERENCES EmployeePosition(PositionID)
);
/* 2023-11-28 02:26:10 [54 ms] */ 
CREATE TABLE CHEF (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Chef_ExperienceYears TINYINT,
  Chef_Certification VARCHAR(50)
);
/* 2023-11-28 02:26:17 [81 ms] */ 
CREATE TABLE FRONT_HOUSE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Front_House_ExperienceYears INT,
  Front_House_LanguagesSpoken VARCHAR(100)
);
/* 2023-11-28 02:27:02 [73 ms] */ 
CREATE TABLE MANAGERS (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Manager_Duties VARCHAR(255),
  Manager_ExperienceYears TINYINT,
  Manager_Certification VARCHAR(50)
);
/* 2023-11-28 02:27:12 [71 ms] */ 
CREATE TABLE CUSTOMER_SERVICE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Customer_Service_ExperienceYears INT,
  Customer_Service_LanguagesSpoken VARCHAR(100)
);
/* 2023-11-28 02:27:32 [56 ms] */ 
CREATE TABLE MAINTENANCE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Maintenance_ExperienceYears TINYINT
);
/* 2023-11-28 02:27:41 [85 ms] */ 
CREATE TABLE DELIVERIES (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Meintenance_Certification VARCHAR(40)
);
/* 2023-11-28 02:41:42 [166 ms] */ 
CREATE TABLE restaurant.Salary (
    SalaryID INT PRIMARY KEY,
    Employee_ID INT,
    BasicSalary DECIMAL(13, 2),
    OvertimePay DECIMAL(13, 2),
    Bonuses DECIMAL(13,2),
    EmployeeStatus CHAR(1),
    NetSalary DECIMAL(13, 2),
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID)
);
/* 2023-11-28 02:42:27 [139 ms] */ 
CREATE TABLE EmployeeAccount(
  Employee_Username VARCHAR(20) PRIMARY KEY,
  Employee_Password VARCHAR(8),
  Employee_ID INT,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID)
);
/* 2023-12-19 16:27:59 [83 ms] */ 
USE restaurant;
/* 2023-12-19 18:10:40 [91 ms] */ 
drop database test;
/* 2023-12-19 18:11:08 [404 ms] */ 
drop database phpmyadmin;
/* 2023-12-19 18:13:50 [29 ms] */ 
create database understand;
/* 2023-12-19 18:18:07 [58 ms] */ 
create table understand.Students(
  Student_ID INT PRIMARY KEY,
  Student_Name VARCHAR(50),
  Student_Age INT NOT NULL
);
/* 2023-12-19 18:19:29 [36 ms] */ 
INSERT INTO understand.Students (Student_ID, Student_Name, Student_Age)
VALUES
  (1, 'John Doe', 20),
  (2, 'Jane Smith', 22),
  (3, 'Bob Johnson', 21),
  (4, 'Alice Williams', 23),
  (5, 'Charlie Brown', 19),
  (6, 'Eva Davis', 20),
  (7, 'Frank Miller', 22),
  (8, 'Grace Wilson', 21),
  (9, 'Henry Lee', 24),
  (10, 'Isabel Taylor', 20);
/* 2023-12-19 19:01:59 [45 ms] */ 
drop table students;
/* 2023-12-19 19:05:54 [27 ms] */ 
CREATE TABLE t_employee (
  Employee_ID INT PRIMARY KEY,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50),
  Salary DECIMAL(10, 2) DEFAULT 50000.00,
  Hire_Date DATE,
  CONSTRAINT chk_salary CHECK (Salary >= 0)
);
/* 2023-12-19 19:10:55 [9 ms] */ 
INSERT INTO t_employee
  ( Employee_ID,First_Name ,Last_Name,Salary,Hire_Date)
VALUES(
    1, 'John', 'Doe', 60000.00, '2023-01-01'),
  (2, 'Jane', 'Smith', 55000.00, '2023-02-15'),
  (3, 'Bob', 'Johnson', 50000.00, '2023-03-10'),
  (4, 'Alice', 'Williams', 65000.00, '2023-04-05'),
  (5, 'Charlie', 'Brown', 70000.00, '2023-05-20'),
  (6, 'Eva', 'Davis', 52000.00, '2023-06-15'),
  (7, 'Frank', 'Miller', 48000.00, '2023-07-01'  
);
/* 2023-12-19 19:17:24 [15 ms] */ 
INSERT INTO t_employee( Employee_ID,First_Name ,Last_Name,Salary,Hire_Date)
VALUES(8,"Bakari","Mahaba",60034,"2023-4-12");
/* 2023-12-19 19:24:29 [14 ms] */ 
INSERT INTO t_employee( Employee_ID,First_Name ,Last_Name,Hire_Date)
VALUES(9,"Bakari","Mahaba","2023-4-12");
/* 2023-12-19 19:34:09 [12 ms] */ 
SHOW TABLE STATUS LIKE 't_employee';
/* 2023-12-25 09:48:44 [99 ms] */ 
create database EMPLOYEE;
/* 2023-12-25 09:49:18 [101 ms] */ 
drop database EMPLOYEE;
/* 2023-12-25 09:49:53 [11 ms] */ 
create database half_London;
/* 2023-12-25 10:39:15 [12 ms] */ 
DROP TABLE IF EXISTS POSITION;
/* 2023-12-25 10:40:12 [59 ms] */ 
CREATE TABLE half_london.POSITION (
  POSITION_ID INT PRIMARY KEY,
  chargePerHour DECIMAL(5,2)
);
/* 2023-12-25 10:40:17 [15 ms] */ 
DROP TABLE IF EXISTS EMPLOYEE;
/* 2023-12-25 10:50:30 [58 ms] */ 
DROP TABLE IF EXISTS POSITION;
/* 2023-12-25 10:50:57 [64 ms] */ 
CREATE TABLE half_london.POSITIONS (
  POSITION_ID INT PRIMARY KEY,
  chargePerHour DECIMAL(5,2)
);
/* 2023-12-25 10:51:27 [115 ms] */ 
CREATE TABLE half_london.EMPLOYEE (
  EMPLOYEE_ID INT PRIMARY KEY,
  POSITION_ID INT,
  Employee_Name VARCHAR(50) NOT NULL,
  Employee_Gender CHAR(2) NOT NULL CHECK(Employee_Gender IN ('F', 'M')),
  Employee_Address VARCHAR(100),
  Employee_email VARCHAR(100),
  Employee_Number VARCHAR(20) NOT NULL,
  EMployee_EmergencyContact VARCHAR(20),
  EMployee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(10),
  Employee_IsActive VARCHAR(3) CHECK(Employee_IsActive IN ('YES', 'NO')),
  FOREIGN KEY (POSITION_ID) REFERENCES half_london.POSITIONS(POSITION_ID)
);

USE restaurant;
/* 2023-11-28 00:47:03 [95 ms] */ 
CREATE TABLE Employee_Info(
  Employee_ID int PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DElIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1))
);
/* 2023-11-28 00:48:47 [74 ms] */ 
CREATE TABLE restaurant.EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 01:16:24 [86 ms] */ 
ALTER TABLE Employee_Info
ADD PositionID INT;
/* 2023-11-28 01:29:34 [17 ms] */ 
USE restaurant;
/* 2023-11-28 01:29:37 [65 ms] */ 
DROP TABLE IF EXISTS Employee_Info;
/* 2023-11-28 01:29:40 [84 ms] */ 
DROP TABLE IF EXISTS EmployeePosition;
/* 2023-11-28 01:35:55 [58 ms] */ 
CREATE TABLE EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 01:36:03 [219 ms] */ 
CREATE TABLE Employee_Info (
  Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  PositionID INT,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DELIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1)),
  FOREIGN KEY (PositionID) REFERENCES EmployeePosition(PositionID)
);
/* 2023-11-28 02:25:24 [36 ms] */ 
USE restaurant;
/* 2023-11-28 02:25:27 [69 ms] */ 
DROP TABLE IF EXISTS Employee_Info;
/* 2023-11-28 02:25:29 [24 ms] */ 
DROP TABLE IF EXISTS EmployeePosition;
/* 2023-11-28 02:25:38 [121 ms] */ 
CREATE TABLE EmployeePosition (
  PositionID INT PRIMARY KEY,
  PositionName VARCHAR(50),
  ChargePerHour DECIMAL(13, 2)
);
/* 2023-11-28 02:25:43 [254 ms] */ 
CREATE TABLE Employee_Info (
  Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(200) NOT NULL,
  Employee_Gender CHAR(1) NOT NULL,
  Employee_Tel_No VARCHAR(15),
  Employee_Address VARCHAR(40),
  Employee_email VARCHAR(90),
  Employee_EmergencyContact VARCHAR(15),
  Employee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(40),
  Employee_IsActive BOOLEAN,
  PositionID INT,
  CONSTRAINT chk_Gender CHECK (Employee_Gender IN ('M', 'F')),
  CONSTRAINT chk_Employee_Type CHECK (
    Employee_Type IN (
      'CHEF',
      'FRONT HOUSE',
      'MANAGERS',
      'CUSTOMER SERVICE',
      'MAINTENANCE',
      'DELIVERIES'
    )
  ),
  CONSTRAINT chk_IsActive CHECK (Employee_IsActive IN (0, 1)),
  FOREIGN KEY (PositionID) REFERENCES EmployeePosition(PositionID)
);
/* 2023-11-28 02:26:10 [54 ms] */ 
CREATE TABLE CHEF (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Chef_ExperienceYears TINYINT,
  Chef_Certification VARCHAR(50)
);
/* 2023-11-28 02:26:17 [81 ms] */ 
CREATE TABLE FRONT_HOUSE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Front_House_ExperienceYears INT,
  Front_House_LanguagesSpoken VARCHAR(100)
);
/* 2023-11-28 02:27:02 [73 ms] */ 
CREATE TABLE MANAGERS (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Manager_Duties VARCHAR(255),
  Manager_ExperienceYears TINYINT,
  Manager_Certification VARCHAR(50)
);
/* 2023-11-28 02:27:12 [71 ms] */ 
CREATE TABLE CUSTOMER_SERVICE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Customer_Service_ExperienceYears INT,
  Customer_Service_LanguagesSpoken VARCHAR(100)
);
/* 2023-11-28 02:27:32 [56 ms] */ 
CREATE TABLE MAINTENANCE (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Maintenance_ExperienceYears TINYINT
);
/* 2023-11-28 02:27:41 [85 ms] */ 
CREATE TABLE DELIVERIES (
  Employee_ID INT PRIMARY KEY,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID),
  Meintenance_Certification VARCHAR(40)
);
/* 2023-11-28 02:41:42 [166 ms] */ 
CREATE TABLE restaurant.Salary (
    SalaryID INT PRIMARY KEY,
    Employee_ID INT,
    BasicSalary DECIMAL(13, 2),
    OvertimePay DECIMAL(13, 2),
    Bonuses DECIMAL(13,2),
    EmployeeStatus CHAR(1),
    NetSalary DECIMAL(13, 2),
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID)
);
/* 2023-11-28 02:42:27 [139 ms] */ 
CREATE TABLE EmployeeAccount(
  Employee_Username VARCHAR(20) PRIMARY KEY,
  Employee_Password VARCHAR(8),
  Employee_ID INT,
  FOREIGN KEY (Employee_ID) REFERENCES Employee_Info(Employee_ID)
);
/* 2023-12-19 16:27:59 [83 ms] */ 
USE restaurant;
/* 2023-12-19 18:10:40 [91 ms] */ 
drop database test;
/* 2023-12-19 18:11:08 [404 ms] */ 
drop database phpmyadmin;
/* 2023-12-19 18:13:50 [29 ms] */ 
create database understand;
/* 2023-12-19 18:18:07 [58 ms] */ 
create table understand.Students(
  Student_ID INT PRIMARY KEY,
  Student_Name VARCHAR(50),
  Student_Age INT NOT NULL
);
/* 2023-12-19 18:19:29 [36 ms] */ 
INSERT INTO understand.Students (Student_ID, Student_Name, Student_Age)
VALUES
  (1, 'John Doe', 20),
  (2, 'Jane Smith', 22),
  (3, 'Bob Johnson', 21),
  (4, 'Alice Williams', 23),
  (5, 'Charlie Brown', 19),
  (6, 'Eva Davis', 20),
  (7, 'Frank Miller', 22),
  (8, 'Grace Wilson', 21),
  (9, 'Henry Lee', 24),
  (10, 'Isabel Taylor', 20);
/* 2023-12-19 19:01:59 [45 ms] */ 
drop table students;
/* 2023-12-19 19:05:54 [27 ms] */ 
CREATE TABLE t_employee (
  Employee_ID INT PRIMARY KEY,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50),
  Salary DECIMAL(10, 2) DEFAULT 50000.00,
  Hire_Date DATE,
  CONSTRAINT chk_salary CHECK (Salary >= 0)
);
/* 2023-12-19 19:10:55 [9 ms] */ 
INSERT INTO t_employee
  ( Employee_ID,First_Name ,Last_Name,Salary,Hire_Date)
VALUES(
    1, 'John', 'Doe', 60000.00, '2023-01-01'),
  (2, 'Jane', 'Smith', 55000.00, '2023-02-15'),
  (3, 'Bob', 'Johnson', 50000.00, '2023-03-10'),
  (4, 'Alice', 'Williams', 65000.00, '2023-04-05'),
  (5, 'Charlie', 'Brown', 70000.00, '2023-05-20'),
  (6, 'Eva', 'Davis', 52000.00, '2023-06-15'),
  (7, 'Frank', 'Miller', 48000.00, '2023-07-01'  
);
/* 2023-12-19 19:17:24 [15 ms] */ 
INSERT INTO t_employee( Employee_ID,First_Name ,Last_Name,Salary,Hire_Date)
VALUES(8,"Bakari","Mahaba",60034,"2023-4-12");
/* 2023-12-19 19:24:29 [14 ms] */ 
INSERT INTO t_employee( Employee_ID,First_Name ,Last_Name,Hire_Date)
VALUES(9,"Bakari","Mahaba","2023-4-12");
/* 2023-12-19 19:34:09 [12 ms] */ 
SHOW TABLE STATUS LIKE 't_employee';
/* 2023-12-25 09:48:44 [99 ms] */ 
create database EMPLOYEE;
/* 2023-12-25 09:49:18 [101 ms] */ 
drop database EMPLOYEE;
/* 2023-12-25 09:49:53 [11 ms] */ 
create database half_London;
/* 2023-12-25 10:39:15 [12 ms] */ 
DROP TABLE IF EXISTS POSITION;
/* 2023-12-25 10:40:12 [59 ms] */ 
CREATE TABLE half_london.POSITION (
  POSITION_ID INT PRIMARY KEY,
  chargePerHour DECIMAL(5,2)
);
/* 2023-12-25 10:40:17 [15 ms] */ 
DROP TABLE IF EXISTS EMPLOYEE;
/* 2023-12-25 10:50:30 [58 ms] */ 
DROP TABLE IF EXISTS POSITION;
/* 2023-12-25 10:50:57 [64 ms] */ 
CREATE TABLE half_london.POSITIONS (
  POSITION_ID INT PRIMARY KEY,
  chargePerHour DECIMAL(5,2)
);
/* 2023-12-25 10:51:27 [115 ms] */ 
CREATE TABLE half_london.EMPLOYEE (
  EMPLOYEE_ID INT PRIMARY KEY,
  POSITION_ID INT,
  Employee_Name VARCHAR(50) NOT NULL,
  Employee_Gender CHAR(2) NOT NULL CHECK(Employee_Gender IN ('F', 'M')),
  Employee_Address VARCHAR(100),
  Employee_email VARCHAR(100),
  Employee_Number VARCHAR(20) NOT NULL,
  EMployee_EmergencyContact VARCHAR(20),
  EMployee_EmergencyContactName VARCHAR(50),
  Employee_HireDate DATE,
  Employee_TerminationDate DATE,
  Employee_Type VARCHAR(10),
  Employee_IsActive VARCHAR(3) CHECK(Employee_IsActive IN ('YES', 'NO')),
  FOREIGN KEY (POSITION_ID) REFERENCES half_london.POSITIONS(POSITION_ID)
);
CREATE DATABASE half_london;