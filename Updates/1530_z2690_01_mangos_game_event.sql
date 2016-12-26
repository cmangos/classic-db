ALTER TABLE db_version CHANGE COLUMN required_z2689_01_mangos_item_extraflags required_z2690_01_mangos_game_event bit;

ALTER TABLE game_event MODIFY start_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute start date, the event will never start before', MODIFY end_time DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'Absolute end date, the event will never start after';
