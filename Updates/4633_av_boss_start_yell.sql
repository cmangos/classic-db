-- Add AV Boss Start Yells
-- 7295	Vanndar is here.  Come on, hordelings!  Show me what you got!
-- 7294	I'm here!  Come and get me you alliance pansies!
-- 9057	The Stormpike Graveyard was taken by the Alliance!
-- 9067	The Frostwolf Graveyard was taken by the Horde!

UPDATE `broadcast_text` SET `ChatTypeId` = 6 WHERE `Id` IN (7294,7295,9057,9067);

-- Alterac Yeti 13959
UPDATE `creature_template` SET `Faction` = 16, `Detection` = 24, `SpeedWalk` = (2.5 / 2.5), `MovementType` = 0, `DamageMultiplier` = 2, `MechanicImmuneMask` = `MechanicImmuneMask`|545472081 WHERE `entry` IN (13959,22604);
-- UPDATE `creature_template` SET `Expansion` = 0 WHERE `entry` = 13959; -- tbc+
-- UPDATE `creature_template` SET `Expansion` = 1 WHERE `entry` = 22604; -- missing loot.

-- Instance File
DELETE FROM `pool_template` WHERE `entry` = 1801;
DELETE FROM `pool_gameobject_template` WHERE `pool_entry` = 1801; -- other id in classic

