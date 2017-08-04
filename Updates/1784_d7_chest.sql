
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='9039';

UPDATE `gameobject_loot_template` SET `item`='11920', `ChanceOrQuestChance`='0', `mincountOrRef`='1', `maxcount`='1' WHERE `entry`='12260' and`item`='12005';

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12260', '11923', '0', '1', '1', '1', '0'),
('12260', '11926', '0', '1', '1', '1', '0'),
('12260', '11929', '0', '1', '1', '1', '0'),
('12260', '11921', '0', '2', '1', '1', '0'),
('12260', '11922', '0', '2', '1', '1', '0'),
('12260', '11925', '0', '2', '1', '1', '0'),
('12260', '11927', '0', '2', '1', '1', '0');

DELETE FROM `reference_loot_template` WHERE `entry`='12005';

UPDATE `gameobject_template` SET `faction`='94' WHERE `entry`='169243';
