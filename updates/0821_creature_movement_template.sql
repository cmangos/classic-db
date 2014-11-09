-- Fixed a few issues in Zul'Farrak. Thanks Nekoi for reporting.
-- This closes #175 and #174

-- Added missing loot entry for creature 8876 (Sandfury Acolyte)
DELETE FROM `creature_loot_template` WHERE `entry` = 8876;
INSERT INTO `creature_loot_template` VALUES (8876, 24041, 1, 1, -24041, 1, 0);
UPDATE `creature_template` SET `LootId` = 8876 WHERE `Entry` = 8876;

-- Fixed quest Divino-matic rod
UPDATE `gossip_menu_option` SET `action_script_id` = 94101, `condition_id` = @CONDITION + 1 WHERE `menu_id` = 941 AND `id` = 0;
SET @CONDITION := 408;
DELETE FROM `conditions` WHERE `condition_entry` IN (@CONDITION, @CONDITION + 1);
INSERT INTO `conditions` VALUES
(@CONDITION, 9, 2768, 0),
(@CONDITION + 1, -1, @CONDITION, 384);

-- Added waypoint movement to creature 7795 (Hydromancer Velratha) in Zul'Farrak.
-- She will now move around the sacred pool.
-- Source: YTDB
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 7795;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 7795;
DELETE FROM `creature_movement_template` WHERE `entry` = 7795;
INSERT INTO `creature_movement_template` VALUES
(7795, 1, 1704.96, 1202.13, 9.24427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7795, 2, 1684.78, 1225.34, 8.87707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7795, 3, 1706.28, 1200.92, 9.22012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7795, 4, 1681.82, 1180.19, 8.89546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Fixed walk speed for creature 7273 (Gahz'rilla) in Zul'Farrak because it was moving way to quickly
UPDATE `creature_template` SET `SpeedWalk` = 1.14286 WHERE `Entry` = 7273;

-- Fixed addon for creature 5648 (Sandfury Shadowcaster) because they were using an aura addon and an EventAI
-- script to add the same spell 20798 (Demon Skin) resulting in the spell being self canceled
DELETE FROM `creature_addon` WHERE `auras` = '20798' AND `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 5648);
