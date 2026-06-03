-- Improve Dropchance for Blood Red Key 13140
-- https://www.wowhead.com/classic/item=13140/blood-red-key#comments
-- https://www.wowhead.com/tbc/quest=5202/a-strange-red-key
DELETE FROM `conditions` WHERE `condition_entry` = 9046 AND `value1` = 5202;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9046, 22, 5202, 0, 0, 0, 0, 'Quest ID 5202 NOT Taken AND NOT Rewarded');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10, `condition_id` = 9046 WHERE `item` = 13140 AND `entry` IN (7118, 7120, 7114, 14522, 14523, 9862); -- up from 4%


