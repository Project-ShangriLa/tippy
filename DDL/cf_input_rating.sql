CREATE TABLE `cf_input_rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`,`product_id`),
  KEY `cf_input_rating_id` (`id`),
  KEY `cf_input_rating_product_id` (`product_id`),
  KEY `cf_input_rating_rate` (`rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;