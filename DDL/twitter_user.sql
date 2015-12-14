CREATE TABLE `twitter_user` (
	  `id` int(11) NOT NULL,
	  `name` varchar(255) NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `twitter_user_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
