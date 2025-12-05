-- Add your query below.
-- https://github.com/vmangos/core/commit/0229268846bc1e752b9a7468172bd7d0c290199f

-- Add missing spawn points for Jailor Borhuin.
UPDATE `creature` SET `spawndist`=1.5, `movementtype`=1 WHERE `guid`=17020;

DELETE FROM `creature` WHERE `guid` IN (17115,17171) AND `id` = 2431; -- https://www.wowhead.com/classic/npc=2431/jailor-borhuin#comments:id=5795208
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `movementtype`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(17115, 2431, 0, 680.027, -912.535, 171.72, 5.74213, 1.5, 1, 300, 300),
(17171, 2431, 0, 750.198, -972.267, 167.587, 4.56236, 1.5, 1, 300, 300);

DELETE FROM `spawn_group` WHERE id = 19061;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19061, 'Alterac Mountains (Strahnbrad) - Jailor Borhuin (2431)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19061;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19061, 17020, 0),
(19061, 17115, 1),
(19061, 17171, 2);

-- End of migration.

