-- Linked Obsidian Destroyer to Moam in Ruins of Ahn'Qiraj
DELETE FROM `creature_linking_template` WHERE `entry` = 15338 AND `map` = 509;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(15338, 509, 15340, 1024, 0);
