--Removing Bolts of Cloth from Creature Loot Templates
--Bolts of cloth weren't dropped by creatures

--Bolt of Linen Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 2996;
--Bolt of Woolen Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 2997;
--Bolt of Silk Cloth
DELETE FROM `creature_loot_template` WHERE `item` = 4305;
--Bolt of Mageweave
DELETE FROM `creature_loot_template` WHERE `item` = 4339;
--Bolt of Runecloth
DELETE FROM `creature_loot_template` WHERE `item` = 14048;