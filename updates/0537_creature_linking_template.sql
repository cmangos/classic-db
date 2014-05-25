SET @MOAM := 15340;

DELETE FROM `creature_linking_template` WHERE `entry` IN (15461, 15462);
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(15461, 509, @MOAM, 1024, 0),
(15462, 509, @MOAM, 1024, 0);
