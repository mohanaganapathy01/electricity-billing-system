CREATE SCHEMA `billing_system`;

CREATE TABLE `billing_system`.`electricty` (
  `admin_id` int,
  `customer_id` int,
  `employee_id` int,
  `electricty_bill` int
);

CREATE TABLE `billing_system`.`customer` (
  `customer_id` int,
  `customer_name` varchar(255),
  `customer_communication` varchar(255),
  `customer_address` varchar(255),
  `customer_payment` int,
  `customer_feedback` varchar(255)
);

CREATE TABLE `billing_system`.`admin` (
  `admin_id` int,
  `admin_email` varchar(255),
  `admin_contactNO` varchar(255),
  `admin_login_credentials` varchar(255)
);

CREATE TABLE `billing_system`.`employee` (
  `employee_id` int,
  `employee_name` varchar(255),
  `employee_customer_data` varchar(255)
);

CREATE TABLE `billing_system`.`electricty_bill` (
  `electricty_bill` int,
  `electricty_bill_domestic` varchar(255),
  `electricty_bill_commercial` varchar(255)
);

ALTER TABLE `billing_system`.`admin` ADD FOREIGN KEY (`admin_id`) REFERENCES `billing_system`.`electricty` (`admin_id`);

ALTER TABLE `billing_system`.`employee` ADD FOREIGN KEY (`employee_id`) REFERENCES `billing_system`.`electricty` (`employee_id`);

ALTER TABLE `billing_system`.`customer` ADD FOREIGN KEY (`customer_id`) REFERENCES `billing_system`.`electricty` (`customer_id`);
