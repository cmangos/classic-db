-- Fixed NPC 9198 (Spirestone Mystics) who were skinnable though being humanoids
-- @TheTrueAnimal for pointing and @Metalica for fixing. This closes #689 
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `Entry` = 9198;
DELETE FROM `skinning_loot_template` WHERE `entry` = 9198;
