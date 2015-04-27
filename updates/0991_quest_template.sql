-- Fixed quest 5525 (Free Knot!) and its repeatable follow up 7429 (Free Knot!) in Dire Maul North
-- This closes #746 and closes #113

DELETE FROM `gameobject` WHERE `guid` = 35831;

SET @STRING := 2000005776;
SET @GUID := 10154;
SET @CONDITION := 114;

UPDATE `quest_template` SET `OfferRewardText` = 'Oh, thank you for freeing me! You - ranked number one. Everyone else - ranked number two or lower.$B$BI knew my life was destined for more than just being an appetizer to some ogre!', `CompleteScript` = 5525 WHERE `entry` = 5525;
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1` = 350, `CompleteScript` = 5525 WHERE `entry` = 7429;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 5525;
INSERT INTO `dbscripts_on_quest_end` VALUES
(5525, 0, 0, 0, 0, 0, 0, 0, @STRING, 0, 0, 0, 0, 0, 0, 0, ''),
(5525, 0, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'remove flag'),
(5525, 1, 9, @GUID, 43200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn cache'),
(5525, 2, 13, 0, 0, 179511, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'remove ball and chains'),
(5525, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'run on'),
(5525, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500.42, 540.966, -25.3846, 2.72271, 'WP movement'),
(5525, 15, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `gameobject` WHERE `guid` = @GUID;
INSERT INTO `gameobject` VALUES
(@GUID, 179501, 429, 583.60, 523.44, -25.40, 3.1848, 0, 0, 0.861341, -0.508028, -43200, 100, 1);
UPDATE `gameobject` SET `spawntimesecs` = 43200 WHERE `id` = 179511;

DELETE FROM `db_script_string` WHERE `entry` = @STRING;
INSERT INTO `db_script_string` VALUES (@STRING, "$N, I'll make sure all my friends in the Cartel know that you've saved my life today. Here - I'm going to need to be able to travel light, so please help yourself to my cache of tailoring and leatherworking supplies! Thanks again - see ya!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, NULL);

DELETE FROM `gossip_menu` WHERE `entry` = 5668;
INSERT INTO `gossip_menu` VALUES
(5668, 6875, 0, 0);

DELETE FROM `gossip_menu_option` WHERE (`menu_id` = 5668) OR (`menu_id` = 5667 AND `id` = 0);
INSERT INTO `gossip_menu_option` VALUES
(5667, 0, 0, 'So, I found this shackle key...', 1, 1, 5668, 0, 0, 0, 0, '', @CONDITION),
(5668, 0, 0, 'I guess so!', 1, 1, -1, 0, 0, 0, 0, '', 0);

UPDATE `gossip_menu_option` SET `action_menu_id` = 5716 WHERE `menu_id` = 5667 AND `id` = 1;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 2, 18250, 1); -- Has gordok shackles key
