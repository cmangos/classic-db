DELETE FROM dbscripts_on_quest_end WHERE id='3182';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, data_flags, dataint, comments) VALUES 
('3182', '1000', '0', '21', '1', '0', '0', '0', '0', 'Proof of Deed: Curator Thorius - Set ActiveState'),
('3182', '1000', '0', '0', '0', '0', '0', '0', '4305', 'Proof of Deed: Curator Thorius - Say Tex'),
('3182', '1000', '1', '20', '2', '1', '0', '0', '0', 'Proof of Deed: Curator Thorius - Start Waypoint Path 1');

UPDATE quest_template SET CompleteScript=3182 WHERE entry=3182;

-- Add waypoints for Curator Thorius when quest Proof of Deed is turned in.
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(8256, 1, 1, -4652.279785, -1278.880005, 503.381989, 100.000000, 0, 0),
(8256, 1, 2, -4652.279785, -1278.880005, 503.381989, 5.375610, 1000,  0),
(8256, 1, 3, -4631.189941, -1278.020020, 503.381989, 100.000000, 0, 188704),
(8256, 1, 4, -4631.189941, -1278.020020, 503.381989, 5.480330, 22000, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id='188704';
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES 
('188704', '0', '0', '0', '0', '4306', 'Proof of Deed: Curator Thorius - Say Text'),
('188704', '2000', '1', '173', '0', '0', 'Proof of Deed: Curator Thorius - Emote State Work No Sheathe'),
('188704', '12000', '1', '0', '0', '0', 'Proof of Deed: Curator Thorius - Stop Emoting'),
('188704', '14000', '0', '0', '0', '4307', 'Proof of Deed: Curator Thorius - Say Text'),
('188704', '14000', '1', '4', '0', '4307', 'Proof of Deed: Curator Thorius - Emote Cheer'),
('188704', '14000', '9', '55459', '60', '0', 'Proof of Deed: Curator Thorius - Respawn GameObject'),
('188704', '14000', '21', '0', '0', '0', 'Proof of Deed: Curator Thorius - Remove ActiveState'),
('188704', '22000', '20', '2', '0', '0', 'Proof of Deed: Curator Thorius - Start Waypoint Path 0');

INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES (55459, 147136, 0, 1, -4629.5, -1279.51, 503.381, 2.32129, 0, 0, 0.91706, 0.39875, -60, -60, 255, 1);
