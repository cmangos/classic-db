DELETE FROM dbscripts_on_relay WHERE id=25;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(25, 0, 1, 42, 0, 0, 0, 0, 0, 0, 2196, 0, 0, 0, 0, 0, 0, 0, 0, 'Cook Ghilm - Equip Main Hand Item'),
(25, 0, 2, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cook Ghilm - Start Waypoint');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (135501, 135502);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(135501, 2000, 1, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cook Ghilm - Reset Equipped Items'),
(135501, 2000, 2, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cook Ghilm - Play Point Emote'),
(135502, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cook Ghilm - Set Idle Movement');

DELETE FROM creature_movement_template WHERE Entry=1355;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(1355, 0, 1, -5664.75, -1566.57, 383.32922, 100, 7000, 135501, 'Cook Ghilm'),
(1355, 0, 2, -5666.222, -1565.625, 383.25745, 2.321287870407104492, 100, 135502, 'Cook Ghilm');

UPDATE creature SET MovementType=0 WHERE guid=4476 AND id=1355;
