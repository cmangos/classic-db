UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN(6149);

DELETE FROM waypoint_path WHERE PathId=10638;
INSERT INTO waypoint_path(PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
('10638', '1', '-4903.52', '-1368.34', '-52.611', '0', '5000', '0', 'SAY_KAN_START'),
('10638', '2', '-4906', '-1367.05', '-52.611', '0', '1000', '0', '');

ALTER TABLE db_version CHANGE COLUMN required_z2794_01_mangos_spawn_group_chanced_spawns required_z2795_01_mangos_waypoint_path_name bit;

DROP TABLE IF EXISTS waypoint_path_name;
CREATE TABLE waypoint_path_name(
  `PathId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Path ID for entry',
  `Name` VARCHAR(300) NOT NULL COMMENT 'Description of usage',
  PRIMARY KEY(`PathId`)
);

DELETE FROM waypoint_path_name WHERE PathId = 10638;
INSERT INTO waypoint_path_name(PathId, Name) VALUES
(10638, 'ThousandNeedles - Kanati Greycloud - Escort path');

