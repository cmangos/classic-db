-- Add entries for rare mob drops
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('616 ', '65020', '100', '0', '-65020', '1', '0', 'NPC LOOT (Rare NPC Loot) - Chatter - Special Items');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('1911', '65049', '100', '0', '-65049', '1', '0', 'NPC LOOT (Rare NPC Loot) - Deeb - Special Items');
-- Move unique items to reference_loot_template
DELETE FROM `creature_loot_template` WHERE `entry`='8503' and`item`='10554';
DELETE FROM `creature_loot_template` WHERE `entry`='8503' and`item`='10553';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('8503', '65172', '100', '0', '-65172', '1', '0', 'NPC LOOT (Rare NPC Loot) - Gibblewilt - Special Items');
