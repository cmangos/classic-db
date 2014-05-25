-- -------------------

SET @AYAM := 15369;
SET @DRON := 15318;
SET @COLL := 15319;
SET @TAIL := 15336;

DELETE FROM `creature_linking_template` WHERE `entry` IN (@DRON, @COLL, @TAIL);

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(@DRON, 509, @AYAM, 1024, 0),
(@COLL, 509, @AYAM, 1024, 0),
(@TAIL, 509, @AYAM, 1024, 0);
