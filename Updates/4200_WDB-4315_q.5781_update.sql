-- q.5781 'Of Forgotten Memories' - Update
DELETE FROM dbscripts_on_event WHERE id = 5759;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(5759,1,31,11886,100,0,0,0,8,0,0,0,0,0,0,0,0,'search for 11886 - terminate if alive'),
(5759,100,10,11886,600000,0,0,0,0,0,0,0,0,1571.651,-3257.456,86.85172,4.380776,''),
(5759,101,10,11887,600000,0,0,0,0,0,0,0,0,1570.57,-3254.727,86.71412,4.502949,''),
(5759,102,10,11887,600000,0,0,0,0,0,0,0,0,1573.961,-3256.981,86.79195,4.031711,''),
(5759,103,10,11887,600000,0,0,0,0,0,0,0,0,1573.052,-3253.933,86.7212,4.34587,'');
UPDATE creature_template SET MovementType = 2 WHERE entry = 11886;
DELETE FROM `creature_movement_template` WHERE entry IN (11886);
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(11886,1,1568.343,-3263.964,87.08144,100,0,0),
(11886,2,1562.12,-3274.806,87.43697,100,100,3);
DELETE FROM `creature_linking_template` WHERE `master_entry` = 11886;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(11887, 0, 11886, 1+2+512, 100);

