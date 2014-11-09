-- Fixed loot table of bosses in Zul'Farrak. Thanks Patman for reporting.
-- This closes #173
UPDATE creature_loot_template SET ChanceOrQuestChance = 40 WHERE entry = 7271 AND item = 18083;
UPDATE creature_loot_template SET ChanceOrQuestChance = 20 WHERE entry = 7271 AND item = 18082;
DELETE FROM `creature_loot_template` WHERE `entry` = 7271 AND `item` IN (24036, 24041, 24043, 24045);
INSERT INTO `creature_loot_template` VALUES
(7271, 24036, 10, 0, -24036, 1, 0), -- grey items
(7271, 24041, 10, 1, -24041, 1, 0), -- green items
(7271, 24043, 10, 1, -24043, 1, 0), -- green items
(7271, 24045, 10, 1, -24045, 1, 0); -- green items

DELETE FROM `creature_loot_template` WHERE `entry` = 7275 AND `item` IN (24036, 24041, 24043, 24045);
INSERT INTO `creature_loot_template` VALUES
(7275, 24036, 10, 0, -24036, 1, 0), -- grey items
(7275, 24041, 10, 1, -24041, 1, 0), -- green items
(7275, 24045, 10, 1, -24045, 1, 0); -- green items

UPDATE `creature_loot_template` SET `maxcount` = 4 WHERE `item` IN (4338, 4306) AND `entry` IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 5 WHERE `item` = 9523 AND `entry` IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);
