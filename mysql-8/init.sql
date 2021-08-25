update mysql.user set host = '%' where user = 'root' and host='localhost';
update mysql.user set plugin='mysql_native_password' where user='root';

alter user 'root'@'%'IDENTIFIED BY 'root';
flush privileges;
FLUSH PRIVILEGES;

CREATE DATABASE `demo`;

USE `demo`;

CREATE TABLE `user_tab` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
