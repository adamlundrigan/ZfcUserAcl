CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL COMMENT 'set 1 for guest/default role',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `weight` (`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user_role_linker` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

