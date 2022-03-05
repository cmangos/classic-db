DELETE FROM `dbscripts_on_relay` WHERE `id` IN (19, 20);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(19, 0, 0, 31, 177784, 40, 0, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Terminate script if GO Giant Softshell Clam not found'),
(19, 100, 0, 37, 0, 0, 1, 177784, 40, 1025, 2, 20, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Move To GO Giant Softshell Clam'),
(20, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Set Idle'),
(20, 5000, 0, 1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Emote'),
(20, 5000, 0, 40, 0, 0, 0, 177784, 5, 1025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Despawn GO Giant Softshell Clam'),
(20, 6000, 0, 20, 1, 20, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Reef Crawler - Set Random Move');

UPDATE `creature` SET `position_x`=-514.64355, `position_y`=2714.4226, `position_z`=-26.252693 WHERE `guid`=27742;
UPDATE `creature` SET `spawndist`=20, `MovementType`=1 WHERE `guid` IN (27734, 27736, 27742);

