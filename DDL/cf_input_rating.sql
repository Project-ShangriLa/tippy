CREATE TABLE `prediction` (
	  `id` int(11) NOT NULL,
	  `product_id` int(11) NOT NULL,
	  `rate` double NOT NULL,
	  PRIMARY KEY (`id`,`product_id`),
	  KEY `prediction_id` (`id`),
	  KEY `prediction_product_id` (`product_id`),
	  KEY `prediction_rate` (`rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
