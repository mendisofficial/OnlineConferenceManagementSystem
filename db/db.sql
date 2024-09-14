-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
                          `event_id` int(11) NOT NULL AUTO_INCREMENT,
                          `title` varchar(100) NOT NULL,
                          `organizers` text NOT NULL,
                          `event_date` date NOT NULL,
                          `event_category` varchar(20) NOT NULL,
                          PRIMARY KEY (`event_id`),
                          KEY `event_category_id` (`event_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `genders`;
CREATE TABLE `genders` (
                           `gender_id` int(11) NOT NULL AUTO_INCREMENT,
                           `name` varchar(20) NOT NULL,
                           PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `genders` (`gender_id`, `name`) VALUES
                                                (1,	'Male'),
                                                (2,	'Female');

DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
                                `participant_id` int(11) NOT NULL AUTO_INCREMENT,
                                `full_name` varchar(100) NOT NULL,
                                `email` varchar(100) NOT NULL,
                                `contact_number` varchar(10) NOT NULL,
                                `gender_id` int(11) NOT NULL,
                                `participant_type` varchar(20) NOT NULL,
                                PRIMARY KEY (`participant_id`),
                                KEY `gender_id` (`gender_id`),
                                KEY `participant_type_id` (`participant_type`),
                                CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
                                `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
                                `participant_id` int(11) NOT NULL,
                                `event_id` int(11) NOT NULL,
                                `reservation_date` date NOT NULL,
                                `expiration_date` date NOT NULL,
                                PRIMARY KEY (`reservation_id`),
                                KEY `participant_id` (`participant_id`),
                                KEY `event_id` (`event_id`),
                                CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`participant_id`),
                                CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2024-09-14 04:14:55