ALTER TABLE db_version CHANGE COLUMN required_z2684_01_mangos_creature_template required_z2685_01_mangos_event_linkedto BIT(1) NULL DEFAULT NULL;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

ALTER TABLE game_event ADD COLUMN linkedTo mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'This event starts only if defined LinkedTo event is started' AFTER holiday;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
