#update mysql.user set host = '%' where user = 'root' and host='localhost';
#update mysql.user set plugin='mysql_native_password' where user='root';
#ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
#CREATE USER 'airdb'@'%' IDENTIFIED BY 'airdb';
#GRANT ALL ON *.* TO 'airdb'@'%';
#
#FLUSH PRIVILEGES;

#CREATE DATABASE IF NOT EXISTS `test`;

#USE `test`;
#
#CREATE TABLE  IF NOT EXISTS `user_tab` (
#  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
#  `user` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
#  PRIMARY KEY (`id`)
#) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



select host, user from mysql.user;
