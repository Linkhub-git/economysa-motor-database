CREATE TABLE `tprom_mechanic_ranges` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `_mechanic` INT NOT NULL,
  `start_range` DOUBLE NOT NULL,
  `end_range` DOUBLE NOT NULL,
  `percentage_discount` DOUBLE NULL DEFAULT NULL,
  `_priority` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);