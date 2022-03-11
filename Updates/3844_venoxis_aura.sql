INSERT INTO creature_movement_template (entry, pathId, point, PositionX, PositionY, PositionZ, orientation, waittime, ScriptId) VALUES
(14507, 0, 1, -12029.8, -1707.93, 39.413, 3.71755, 1000, 1450701); -- High Priest Venoxis

UPDATE creature_template_addon SET auras='' WHERE entry=14507;
UPDATE creature SET MovementType=2 WHERE id=14507;

INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1450701, 1000, 15, 21157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Priest Venoxis - Cast Dark Channeling');
