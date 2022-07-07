-- Well of Corruption.
DELETE FROM dbscripts_on_quest_end WHERE id = '4505';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(4505,0,0,31,1,10658,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Terminate Script when creature is not alive'),
(4505,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Set ActiveObject'),
(4505,0,2,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Remove QuestFlags'),
(4505,0,3,20,0,0,0,10658,20,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Move Idle'),
(4505,0,4,0,0,0,0,0,0,0,5945,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Say Text'),
(4505,0,5,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - SetRun'),
(4505,1000,0,37,0,0,1,10658,20,1,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Move to Kitten'),
(4505,3000,0,36,0,0,0,10658,20,1,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Turn to Winna\'s Kitten'),
(4505,4000,0,0,0,0,0,0,0,0,5946,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Say Text'),
(4505,7000,0,15,16510,0,0,10658,10,4,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Cast Spell Corrupted Saber Visual'),
(4505,8000,0,44,10657,0,0,10658,10,4,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Update Entry'),
(4505,8000,0,18,30000,0,0,10657,10,4,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Despawn in 30 seconds'),
(4505,9000,0,0,0,0,0,10657,10,0,5941,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Say Emoted Text'),
(4505,9000,1,1,34,0,0,10657,10,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Emote OneShotWoundCritical'),
(4505,9000,2,20,1,0,0,10657,10,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna\'s Kitten - Move Random'),
(4505,10000,0,0,0,0,0,0,0,0,5947,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Say Text'),
(4505,10000,1,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Emote OneShotLaugh'),
(4505,11000,0,3,0,0,0,0,0,0,0,0,0,0,0,5126.82,-325.127,358.926,4.99164,0,0,'Well of Corruption: Winna Hazzard - Move'),
(4505,14000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Remove ActiveObject'),
(4505,14000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - Add QuestFlags'),
(4505,14000,3,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Well of Corruption: Winna Hazzard - SetWalk');

UPDATE `quest_template` SET `CompleteScript`='4505' WHERE `entry`='4505'; 

-- Correct Text Emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='5946');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='5941');

-- Winna's Kitten has a 30 second respawn time.
UPDATE `creature` SET `spawntimesecsmin`=30, `spawntimesecsmax`=30 WHERE `guid`=39704;

-- Correct spawn position for Winna's Kitten.
UPDATE `creature` SET `position_x`=5126.26, `position_y`=-325.202, `position_z`=359.06, `orientation`=3.65588, `spawndist`=12, `MovementType`=1 WHERE `guid`=39704;

-- Correct scale for Winna's Kitten.
-- UPDATE `creature_template` SET `Scale`=1 WHERE `entry`=10658; -- scale 0 classicmangos

