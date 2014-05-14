-- Linked respawn of Anubisath Guardian in Ruins of Ahn'Qiraj to Ossirian
DELETE FROM `creature_linking_template` WHERE `entry` = 15355 AND `map` = 509;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(15355, 509, 15339, 1024, 0);
