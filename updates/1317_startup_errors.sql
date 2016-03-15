-- Removed spell script target for TBC target
DELETE FROM `spell_script_target` WHERE `targetEntry` = 16592;

-- Synced spawned NPC stats with their template
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;

-- Fixed spawn distance of two idle NPCs in Jaednar
UPDATE `creature` SET `spawndist` = 0 WHERE `guid` IN (40659, 40665);
-- Fixed the Z-axis for those NPCs
UPDATE `creature` SET `position_z` = 287.33 WHERE `guid` IN (40659, 40665);

-- Fixed spawn distance of idle NPCs in Deadmines
UPDATE `creature` SET `spawndist` = 0 WHERE `id` = 598;

-- Fixed two addon auras
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (17048, 17049);

-- Deleted a few lingering creature addons from removed NPCs
DELETE FROM `creature_addon` WHERE `guid` IN (29117, 29119, 43126, 48962);

-- Fixed spawn distance of few NPCs in Gnomeregan
UPDATE `creature` SET `spawndist` = 0 WHERE `guid` IN (30122, 30130, 30206, 30251, 30257, 30309, 30332, 31982, 33432, 33495);

-- Removed loots for NPC 15773 (Christmas Cannon Master Willey): this is NPC is only use for visual
DELETE FROM `creature_loot_template` WHERE `entry` = 15773;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 15773;
UPDATE `creature_template` SET `LootId` = 0, `PickpocketLootId` = 0 WHERE `Entry` = 15773;



