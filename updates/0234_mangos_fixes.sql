-- Removed duplicate and unused DB script string. See Classic DB revision 0168
DELETE FROM `db_script_string` WHERE `entry` = 2000005335;
-- Removed gossip menu options from gossip 2385 as they were related to warlock training and the creature using this gossip (Strahad Farsan) was not a trainer in Classic
-- source: http://wowpedia.org/index.php?title=Strahad_Farsan&oldid=337969
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2385;
-- Removed gameobject_loot_template tables used as placeholder for GO 180665, 180666, 180667 (Draconic for Dummies) and 169294 (Tablet of the Seven)
-- as their 'drop' are now handled by gossips like they should. See Classic DB revision 0233
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (2, 180665, 180666, 180667);
-- Removed no longer used gameobject_loot_template 2032. See Classic DB revision 0203
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2032;
-- Added missing conditions for gossip menu option 1047 id 1. See Classic DB revision 0233
DELETE FROM `conditions` WHERE `condition_entry` IN (461, 462, 671, 672);
INSERT INTO `conditions` VALUES
(461, 24, 14639, 1),
(462, 7, 202, 140),
(671, -1, 462, 35),
(672, -1, 461, 671);
