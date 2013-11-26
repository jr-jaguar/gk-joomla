CREATE TABLE IF NOT EXISTS `#__student_list` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`asset_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`fio` VARCHAR(255)  NOT NULL ,
`student_info` TEXT NOT NULL ,
`birthday` DATE NOT NULL ,
`male` VARCHAR(255)  NOT NULL ,
`grup` VARCHAR(255)  NOT NULL ,
`bal` VARCHAR(255)  NOT NULL ,
`nom_zach` VARCHAR(255)  NOT NULL ,
`foto` VARCHAR(255)  NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT COLLATE=utf8_general_ci;

