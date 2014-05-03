-- Synchronised mana of spawns with creature_template value for Qiraji Slayer (creature 15250)
UPDATE `creature` SET `curmana` = 2486 WHERE `id` = 15250;

-- Removed addon of previously delete duplicate spawns of Midsummer Celebrant
DELETE FROM `creature_addon` WHERE `guid` IN (94711, 94655, 94656, 94653, 94604, 94553,
94735, 94734, 94701, 94582, 94726, 94696, 94724, 94575, 94697, 94580, 94579, 94557, 94605, 94556,
94704, 94739, 94554, 94555, 94586);
-- Deleted remaining duplicate spawns of Midsummer Celebrant
DELETE FROM `creature` WHERE `guid` IN (94554, 94555, 94586);

-- Removed waypoints movement of two paired creatures in Molten Core as they are static
DELETE FROM `creature_movement` WHERE `id` = 27 + 56802;
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 2 WHERE `guid` IN (27+56802, 56789);
-- Moved the waypoints of one of this creature to the nearby Lava Surger who should be wandering in their stead
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0, `position_x` = 711.78, `position_y` = -894.31, `position_z` = -196.66 WHERE `guid` = 56666;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56666;
UPDATE `creature_movement` SET `id` = 56666 WHERE `id` = 56789;

-- Fixed promotional items for the iCoke event 
UPDATE `item_template` SET `BagFamily` = 0, `spellid_2` = 0, `spelltrigger_2` = 0, `spellid_1` = 23530, `spellcharges_1` = 0, `spellcooldown_1` = 0 WHERE `entry` = 19054;
UPDATE `item_template` SET `BagFamily` = 0, `spellid_2` = 0, `spelltrigger_2` = 0, `spellid_1` = 23531, `spellcharges_1` = 0, `spellcooldown_1` = 0 WHERE `entry` = 19055;
UPDATE `creature_template` SET `Scale` = 0 WHERE `Entry` IN (14756, 14755);
