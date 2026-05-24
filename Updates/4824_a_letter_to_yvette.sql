DELETE FROM `creature_loot_template` WHERE (`entry` = '1530') and (`item` = '2839');
DELETE FROM `creature_loot_template` WHERE (`entry` = '1532') and (`item` = '2839');
DELETE FROM `creature_loot_template` WHERE (`entry` = '1537') and (`item` = '2839');
DELETE FROM `creature_loot_template` WHERE (`entry` = '1548') and (`item` = '2839');
DELETE FROM `creature_loot_template` WHERE (`entry` = '1664') and (`item` = '2839');
DELETE FROM `creature_loot_template` WHERE (`entry` = '1770') and (`item` = '2839');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '3' WHERE (`entry` = '1520') and (`item` = '2839');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '3' WHERE (`entry` = '1522') and (`item` = '2839');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '3' WHERE (`entry` = '1523') and (`item` = '2839');
