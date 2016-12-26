ALTER TABLE db_version CHANGE COLUMN required_z2684_01_mangos_creature_template required_z2685_01_mangos_event_linkedto BIT(1) NULL DEFAULT NULL;

UPDATE game_event SET start_time = '1970-01-01 00:00:01', end_time = '1970-01-01 00:00:01' WHERE entry IN (13, 17, 22);

ALTER TABLE game_event MODIFY start_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before', MODIFY end_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after';

ALTER TABLE game_event ADD COLUMN linkedTo mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'This event starts only if defined LinkedTo event is started' AFTER holiday;
