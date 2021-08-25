ALTER user 'root'@'%'IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root' @'%';

CREATE USER 'airdb'@'%' IDENTIFIED BY 'airdb';

GRANT ALL ON *.* TO 'airdb'@'localhost';
GRANT ALL ON *.* TO 'airdb'@'%';

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `test`;

USE `test`;

CREATE TABLE  IF NOT EXISTS `user_tab` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
