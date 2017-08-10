-- classic ONLY
-- https://www.wowhead.com/classic/npc=1515/executor-zygand#comments:id=3161707:reply=1363114
-- Fixed a mount model for Executor Zygand.
UPDATE `creature_addon` SET `mount` = 235 WHERE `guid` = 29797;

-- Fixed a mount model for Deathguard Lundmark.
UPDATE `creature_addon` SET `mount` = 235 WHERE `guid` = 32028;

-- Fixed Merissa Stilwell's model.
-- https://www.wowhead.com/classic/npc=11940/merissa-stilwell#screenshots:id=1017548
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 11898;

-- Added waypoints for Mabel Solaj from Darkshire Inn.
UPDATE `creature` SET `position_x` = -10531.8, `position_y` = -1155.08, `position_z` = 28.1039, `orientation` = 4.8442, `MovementType` = 2 WHERE `id` = 227;
DELETE FROM `creature_movement_template` WHERE `entry` = 227;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `waittime`, `scriptid`, `orientation`) VALUES
 ('227', '1', '-10531.8', '-1155.08', '28.1039', '25000', '0', '100'),
 ('227', '2', '-10531.1', '-1161.78', '28.1039', '5000', '0', '100'),
 ('227', '3', '-10529.6', '-1164.64', '28.1039', '0', '0', '100'),
 ('227', '4', '-10526.6', '-1165.65', '27.4763', '0', '0', '100'),
 ('227', '5', '-10523.9', '-1165.83', '27.4775', '0', '0', '100'),
 ('227', '6', '-10522.8', '-1171.44', '27.4775', '0', '0', '100'),
 ('227', '7', '-10518.9', '-1172.77', '27.9101', '0', '0', '100'),
 ('227', '8', '-10512.5', '-1172.22', '31.3067', '0', '0', '100'),
 ('227', '9', '-10510.6', '-1169.43', '31.324', '0', '0', '100'),
 ('227', '10', '-10512.8', '-1167.31', '31.3354', '0', '0', '100'),
 ('227', '11', '-10518.8', '-1167.65', '34.9576', '0', '0', '100'),
 ('227', '12', '-10520.9', '-1169.09', '34.9576', '0', '0', '100'),
 ('227', '13', '-10521.7', '-1173.81', '34.9576', '0', '0', '100'),
 ('227', '14', '-10523.8', '-1173.97', '34.9576', '25000', '0', '100'),
 ('227', '15', '-10521.7', '-1173.81', '34.9576', '0', '0', '100'),
 ('227', '16', '-10520.9', '-1169.09', '34.9576', '0', '0', '100'),
 ('227', '17', '-10518.8', '-1167.65', '34.9576', '0', '0', '100'),
 ('227', '18', '-10512.8', '-1167.31', '31.3354', '0', '0', '100'),
 ('227', '19', '-10510.6', '-1169.43', '31.324', '0', '0', '100'),
 ('227', '20', '-10512.5', '-1172.22', '31.3067', '0', '0', '100'),
 ('227', '21', '-10518.9', '-1172.77', '27.9101', '0', '0', '100'),
 ('227', '22', '-10522.8', '-1171.44', '27.4775', '0', '0', '100'),
 ('227', '23', '-10523.9', '-1165.83', '27.4775', '0', '0', '100'),
 ('227', '24', '-10526.6', '-1165.65', '27.4763', '0', '0', '100'),
 ('227', '25', '-10529.6', '-1164.64', '28.1039', '0', '0', '100'),
 ('227', '26', '-10531.1', '-1161.78', '28.1039', '0', '0', '100');

-- Fixed skinning loot for Bloodshot https://www.wowhead.com/classic/npc=11614/bloodshot - none
DELETE FROM `skinning_loot_template` WHERE `entry` = 10151;
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 11614;

-- Tirisfal Glades & Undercity -> Tirisfal Glades, Faol’s Rest as Alliance
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_loc`, `faction`) VALUES (429, 85, 469),(429, 1497, 469);
DELETE FROM `game_graveyard_zone` WHERE `id` = 429 AND `ghost_loc` = 2057; -- Scholomance linked to Tirisfal Glades, Faol’s Rest!? Also has id 629 "TEST for GM Client Only – Do Not Bug" for 2057, leave that for now)

-- Undercity -> Tirisfal Glades, Ruins of Lordaeron as Horde
UPDATE `game_graveyard_zone` SET `faction` = 67 WHERE `id` = 853 AND `ghost_loc` = 1497;

-- https://github.com/cmangos/tbc-db/commit/417f3b30a00172a811bdd37fe135072ecb2ffc03 - might need temp. active?
-- DB-SCRIPTS: Process table `dbscripts_on_relay` id 14, command 26 source can not attack (Attacker: Creature (Entry: 4951 Counter: 30654) DBGuid: 30654, Target: Creature (Entry: 4952 Counter: 30481) DBGuid: 30481)
-- [298] (46) UNIT_FIELD_FLAGS: (768) NotAttackbleByPlayerControlled, OnlyAttackableByPlayerControlled
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 4952; -- 768

