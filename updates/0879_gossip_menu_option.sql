-- Fixed missing gossip_menu_option in Gnomeragan for engineers
-- Now Schematic: Discombobulator Ray will be available for
-- Players with the right engineering level and the right access card
-- Thanks at Neotmiren for pointing and researching. This closes #140
-- Source: http://www.wowwiki.com/Schematic:_Discombobulator_Ray

SET @CONDITION := 64;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1050 AND `id` = 1;
INSERT INTO `gossip_menu_option` VALUES
(1050, 1, 0, 'Use engineering to access hidden shematics!', 1, 1, -1, 0, 105002, 0, 0, NULL, @CONDITION + 2);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 105002;
INSERT INTO `dbscripts_on_gossip` VALUES
(105002, 0, 15, 11595, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Learn - Schematic: Discombobulator Ray');

DELETE FROM `conditions` WHERE `condition_entry` IN (@CONDITION, @CONDITION + 1, @CONDITION + 2);
INSERT INTO `conditions` VALUES
(@CONDITION, 17, 3959, 1), -- does not already knows Discombobulator Ray
-- (1104, 2, 9327, 1),	   -- must have Security DELTA Data Access Card
-- (1105, 7, 202, 160),	   -- Engineering 160
(@CONDITION + 1, -1, @CONDITION, 1104),
(@CONDITION + 2, -1, @CONDITION + 1, 1105);
