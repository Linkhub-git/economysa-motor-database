ALTER TABLE `tprom_mechanic` 
DROP COLUMN `range2`,
DROP COLUMN `range1`,
ADD COLUMN `catalog_description` VARCHAR(100) NOT NULL AFTER `provider_description`,
ADD COLUMN `start_time` TIME NULL DEFAULT NULL AFTER `end_date`,
ADD COLUMN `end_time` TIME NULL DEFAULT NULL AFTER `start_time`,
CHANGE COLUMN `_description` `provider_description` VARCHAR(100) NOT NULL ,
CHANGE COLUMN `start_date` `start_date` DATE NULL DEFAULT NULL ,
CHANGE COLUMN `end_date` `end_date` DATE NULL DEFAULT NULL ;