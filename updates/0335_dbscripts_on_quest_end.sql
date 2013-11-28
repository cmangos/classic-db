-- Fixed creature 3301 (Morgan Ladimore) for completion script of quest 231 (A Daughter's Love) as it had wrong faction
-- was attackable and was missing its equipment
-- Sources: http://www.wowhead.com/quest=26797#
--          http://www.wowhead.com/npc=3301#screenshots:id=60853
UPDATE `creature_template` SET `minhealth` = 1342, `maxhealth` = 1342, `faction_A` = 35, `faction_H` = 35, `flags_extra` = 2, `equipment_id` = 2217 WHERE `entry` = 3301;

-- Added missing equipment for creature 3301 (Morgan Ladimore)
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2217;
INSERT INTO `creature_equip_template_raw` VALUES (2217, 20251, 0, 0, 33490946, 0, 0, 273, 0, 0);

SET @STRING1 := 2000000164;
SET @STRING2 := 2000000165;
-- Updated quest end script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 231 AND `delay` > 0;
INSERT INTO `dbscripts_on_quest_end` VALUES
(231, 5, 0, 0, 0, 3301, 10, 0, @STRING1, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore Speech 1'),
(231, 5, 1, 1, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(231, 11, 0, 0, 0, 3301, 10, 0, @STRING2, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore Speech 2'),
(231, 11, 1, 1, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(231, 17, 28, 8, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore kneel');

-- Added missing strings for quest end script
DELETE FROM `db_script_string` WHERE `entry` IN (@STRING1, @STRING2);
INSERT INTO `db_script_string` VALUES
(@STRING1, 'My sword Archeus served me well in life, but as at last my spirit may pass from the unhappy existence, I need it no longer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING2, 'I shall cling to the love of my daughter and hope that I will find forgiveness under the Light for my sins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
