-- creature pet versions
UPDATE `creature_template` SET `ExtraFlags`='64', `LootId`='0' WHERE `entry`='416'; -- Imp
DELETE FROM `creature_loot_template` WHERE `entry` = 416;
UPDATE `creature_template` SET `LootId`='0' WHERE `entry`='417'; -- Felhunter
DELETE FROM `creature_loot_template` WHERE `entry` = 417;
UPDATE `creature_template` SET `HealthMultiplier`='0.45' WHERE `entry`='1964'; -- Treant (1H)
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50', `Faction`='90' WHERE `entry`='17252'; -- Felguard

