-- Added missing startScript for Quest 8305 (Long Forgotten Memories)
-- Source: UDB
UPDATE `quest_template` SET `StartScript` = 8305 WHERE `entry` = 8305;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 8305;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(8305, 5, 15, 25201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Updated faction and flags of creatures involved in quest 8519 (A Pawn on the Eternal Board)
-- 370 (Armies of C’Thun) and 635 (Cenarion Circle)
UPDATE `creature_template` SET `faction_A` = 635, `faction_H` = 635, `InhabitType` = 3, `unit_flags` = 33024 WHERE `entry` IN (15378, 15379, 15380);    -- Merithra of the Dream, Caelestrasz, Arygos
UPDATE `creature_template` SET `faction_A` = 635, `faction_H` = 635 WHERE `entry` = 15382;                                                              -- Fandral Staghelm
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` = 15381;                                                                                  -- Anachronos
UPDATE `creature_template` SET `faction_A` = 1608, `faction_H` = 1608, `unit_flags` = 32773, `equipment_id` = 814 WHERE `entry` = 15423;                -- Kaldorei Infantry
UPDATE `creature_template` SET `faction_A` = 370, `faction_H` = 370, `unit_flags` = 32773 WHERE `entry` IN (15414, 15421, 15422, 15424);                -- Qiraji Wasp, Qiraji Drone, Qiraji Tank, Anubisath Conqueror
