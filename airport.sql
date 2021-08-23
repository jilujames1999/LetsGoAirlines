-- phpMyAdmin SQL 
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE 'city_details' (
  'ID' int(11) NOT NULL,
  'City Name' varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO 'city_details' ('ID', 'City Name') VALUES
(101, 'Chennai'),
(107, 'Banglore'),
(108, 'Mumbai'),
(109, 'Delhi'),
(110, 'Kolkata');



CREATE TABLE 'flight_details' (
  'Flight_ID' int(11) NOT NULL,
  'Source' varchar(250) NOT NULL,
  'Destination' varchar(250) NOT NULL,
  'Departure_time' time NOT NULL,
  'Arrival_time' time NOT NULL,
  'Ticket_Price' decimal(10,0) NOT NULL,
  'Seat_Availability' int(100) NOT NULL,
  'DOJ' date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO 'flight_details' ('Flight_ID', 'Source', 'Destination', 'Departure_time', 'Arrival_time', 'Ticket_Price', 'Seat_Availability', 'DOJ') VALUES
(101, 'Chennai', 'Delhi', '21:00:00', '23:10:00', '10000', 50, '2021-08-23'),
(102, 'Kolkata', 'Bangalore', '17:20:00', '22:55:00', '15000', 100, '2021-08-24');

-- --------------------------------------------------------


CREATE TABLE 'passenger_details' (
  'id' int(11) NOT NULL,
  'First_Name' varchar(200) NOT NULL,
  'Last_Name' varchar(200) NOT NULL,
  'Age' int(150) NOT NULL,
  'Gender' varchar(25) NOT NULL,
  'Nationality' varchar(150) NOT NULL,
  'Email' varchar(150) DEFAULT NULL,
  'Phone' varchar(200) DEFAULT NULL,
  'Flight_ID' int(11) NOT NULL,
  'Booking_ID' varchar(10) NOT NULL,
  'Passport_No' varchar(150) NOT NULL,
  'Travel_Docs' varchar(200) NOT NULL;
  


) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



ALTER TABLE 'city_details'
  ADD PRIMARY KEY ('ID');


ALTER TABLE 'flight_details'
  ADD PRIMARY KEY ('Flight_ID');


ALTER TABLE 'passenger_details'
  ADD PRIMARY KEY ('id');



ALTER TABLE 'city_details'
  MODIFY 'ID' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE 'flight_details'
  MODIFY 'Flight_ID' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE 'passenger_details'
  MODIFY 'id' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

