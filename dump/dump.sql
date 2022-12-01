SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

DROP DATABASE IF EXISTS soap_database;
CREATE DATABASE IF NOT EXISTS soap_database;
USE soap_database;

CREATE TABLE IF NOT EXISTS `Logging` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `IP` varchar(128) NOT NULL,
  `endpoint` varchar(256) NOT NULL,
  `requested_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Logging` (`description`, `IP`, `endpoint`, `requested_at`) VALUES
('ini testing saja','192.168.0.1','localhost','2022-11-27 21:00:00'),
('ini testing saja','192.168.0.1','localhost','2022-11-27 21:00:00');

CREATE TABLE IF NOT EXISTS `Subscription` (
  `creator_id` int NOT NULL,
  `subscriber_id` int NOT NULL,
  `status` enum('PENDING','ACCEPTED','REJECTED') NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`creator_id`,`subscriber_id`)
);

INSERT INTO `Subscription` VALUES
(2,2,'PENDING'),
(3,2,'ACCEPTED'),
(4,2,'REJECTED');

COMMIT;