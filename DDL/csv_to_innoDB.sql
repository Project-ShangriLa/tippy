FLUSH TABLES prediction_csv
ALTER TABLE prediction_csv ENGINE InnoDB;
ALTER TABLE prediction_csv ADD INDEX prediction_id_index(id);
