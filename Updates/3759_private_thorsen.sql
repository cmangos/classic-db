-- The faction changes and one talk were in the wrong place, so remove them
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (73802, 73806) AND `command`=22;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=73806 AND `command`=0;

-- Add previous faction changes and talk in the correct places, plus one missing talk
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=73801 AND `command`=22;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=73804 AND `command` IN (0, 22);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=73807 AND `command`=0 AND `delay`=0;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(73801, 0, 2, 22, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Change Faction to 42'),
(73804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text'),
(73804, 0, 0, 22, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Restore Original Faction'),
(73807, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 106, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Thorsen - Say Text');

UPDATE `creature_movement_template` SET `PositionX`=-11338.541, `PositionY`=-222.59853, `PositionZ`=75.17183 WHERE `Entry`=738 AND `Point`=6;
UPDATE `creature_movement_template` SET `WaitTime`=500 WHERE `Entry`=738 AND `Point`=9;
UPDATE `creature_movement_template` SET `WaitTime`=2000 WHERE `Entry`=738 AND `Point`=11;
UPDATE `creature_movement_template` SET `WaitTime`=100 WHERE `Entry`=738 AND `Point`=14;
UPDATE `creature_movement_template` SET `WaitTime`=3000 WHERE `Entry`=738 AND `Point`=30;
UPDATE `creature_movement_template` SET `WaitTime`=100 WHERE `Entry`=738 AND `Point`=32;

