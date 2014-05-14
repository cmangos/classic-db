-- Linked Qiraji Swarmguard respawn to Kurinaxx in Ruins of Ahn'Qiraj
DELETE FROM `creature_linking_template` WHERE `entry` = 15343;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES (15343, 509, 15348, 1024, 0);
