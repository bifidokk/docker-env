CREATE DATABASE IF NOT EXISTS `test_db` COLLATE 'utf8_general_ci';
GRANT ALL ON `test_db`.* TO 'danil'@'%' ;

FLUSH PRIVILEGES ;
