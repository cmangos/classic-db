-- Remove TotemAI from Dire Maul Crystal Totem 13916
UPDATE `creature_template` SET AIName= '', `InhabitType` = 4, `MinLevel` = 1, `MaxLevel` = 1, `NpcFlags` = 0, `UnitFlags` = 33554688, `SpeedWalk` = 1 WHERE `entry` = 13916;
DELETE FROM `creature_template_spells` WHERE `entry` = 13916;

