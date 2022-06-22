DELETE FROM dbscripts_on_quest_start WHERE id='1680';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1680,0,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Muren Stormpike (6114) - Face Player'),
(1680,0,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Muren Stormpike (6114) - Emote Wave'),
(1680,0,2,0,0,0,0,0,0,0,2302,0,0,0,0,0,0,0,0,0,0,'Muren Stormpike (6114) - Text'),
(1680,4000,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.8377,0,0,'Muren Stormpike (6114) - Set Orientation'); -- best guess on delay

UPDATE quest_template SET StartScript='1680' WHERE entry='1680';
