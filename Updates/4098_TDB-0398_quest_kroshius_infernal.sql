-- Quest Kroshius Infernal Core
-- Correct positions of npc and trigger object required for spell, npc has a 3 minute respawn timer
UPDATE `creature` SET `position_x`='5780.3354', `position_y`='-964.8442', `position_z`='412.69403', `orientation`='3.5081117', `spawntimesecsmin`='180', `spawntimesecsmax`='180' WHERE guid = '39715' AND id = '14467';
UPDATE `gameobject` SET `position_x`='5780.3354', `position_y`='-964.8442', `position_z`='412.69403', `orientation`='3.5081117' WHERE guid = '99894' AND id = '179677';

-- Fel Fire spawn
DELETE FROM gameobject WHERE guid = '157008';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`) VALUES 
('157008', '179676', '1', '5780.566', '-964.9184', '409.91077', '6.003934', '-0.13917255', '0.9902682', '-6', '-6', '1');

-- corect scale
UPDATE `gameobject_template` SET `size`='2' WHERE (`entry`='179676');

-- Spell 'Igniting Kroshius' event
DELETE FROM `dbscripts_on_event` WHERE id = '8328';
INSERT INTO dbscripts_on_event(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(8328,0,0,45,8328,0,0,14467,50,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - start relay script');

DELETE FROM `dbscripts_on_relay` WHERE id = '8328';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(8328,0,0,9,157008,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Respawn gameobject'),
(8328,3000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Remove standstate'),
(8328,5000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Face Player'),
(8328,5000,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Emote Roar'),
(8328,5000,2,0,0,0,0,0,0,0,9633,0,0,0,0,0,0,0,0,0,0,'Kroshius - Say Text'),
(8328,10000,0,48,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Remove unit Flag'),
(8328,10000,1,22,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Change Faction'),
-- despawns 20 min when not killed 
(8328,1200000,0,18,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,'Kroshius - Despawn');

-- text is yelled
UPDATE `broadcast_text` SET `ChatTypeID`='1' WHERE (`Id`='9633');

-- npc has standstate only on respawn - handled via creature_ai
DELETE FROM `creature_template_addon` WHERE (`entry`='14467');

-- Correct positions from quest givers
UPDATE `creature` SET `position_x`='5408.4194', `position_y`='-747.0932', `position_z`='348.03143', `orientation`='2.67035365',  `spawndist`='5', `MovementType`='1' WHERE guid = '39105' AND id = '14470';
UPDATE `creature` SET `position_x`='5405.9204', `position_y`='-747.8695', `position_z`='348.28326', `orientation`='1.4835298',  `spawndist`='5', `MovementType`='1' WHERE guid = '39106' AND id = '14469';

-- End script for quest
DELETE FROM `dbscripts_on_quest_end` WHERE id = '7603';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(7603,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change MovementType'),
(7603,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Set Active'),
(7603,0,2,20,0,0,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Change MovementType'),
(7603,1000,0,3,0,0,1,14470,20,0,0,0,0,0,0,5408.4194,-747.0932,348.03143,2.67035365,0,0,'Impsy - Move'),
(7603,1000,1,29,2,0,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Remove questgiver flag'),
(7603,3000,0,3,0,0,1,0,0,0,0,0,0,0,0,5405.9204,-747.8695,348.28326,1.4835298,0,0,'Niby the Almighty - Move'),
(7603,3000,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Remove questgiver flag'),
(7603,6000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote Excalmation'),
(7603,6000,0,0,0,0,0,0,0,0,9634,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(7603,13000,0,15,23056,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Cast Spell'),
(7603,13000,1,0,0,0,0,0,0,0,9635,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(7603,16000,0,0,0,0,0,14470,20,0,9636,0,0,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(7603,19000,0,0,0,0,0,14470,20,0,9637,0,0,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(7603,26000,0,0,0,0,0,0,0,0,9638,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(7603,26000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Remove Active'),
(7603,26000,2,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Add questgiver flag'),
(7603,26000,3,29,2,1,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Add questgiver flag'),
(7603,27000,0,20,1,0,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Change MovementType'),
(7603,27000,1,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change MovementType');

UPDATE `quest_template` SET `CompleteScript`='7603' WHERE (`entry`='7603');

-- text is emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='9636');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='9618');

DELETE FROM `dbscripts_on_relay` WHERE id = '14469';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(14469,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change MovementType'),
(14469,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Set Active'),
(14469,0,2,20,0,0,0,14470,20,0,0,0,0,0,0,0,0,0,0,0,0,'Impsy - Change MovementType'),
(14469,1000,0,3,0,0,1,14470,20,0,0,0,0,0,0,5408.4194,-747.0932,348.03143,2.6703536,0,0,'Impsy - Move'),
(14469,1000,0,3,0,0,0,0,0,0,0,0,0,0,0,5405.9204,-747.8695,48.28326,1.483529,0,0,'Impsy - Move'),
(14469,3000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote'),
(14469,3000,1,0,0,0,0,0,0,0,9615,9616,9617,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,9000,0,1,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote SpellPreCast'),
(14469,9000,1,15,23053,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Cast Spell'),
(14469,13000,0,0,0,0,0,0,0,0,9618,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,13000,1,0,0,0,0,14470,20,0,9619,9620,9621,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(14469,18000,0,36,0,0,0,14470,20,1,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Face Impsy'),
(14469,18000,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Emote Exclamation'),
(14469,18000,2,0,0,0,0,0,0,0,9622,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Say Text'),
(14469,22000,0,20,2,0,0,14470,20,0,2,0,0,0,0,0,0,0,0,0,0,'Impsy - Change Movement'),
(14469,22000,1,0,0,0,0,14470,20,0,9623,0,0,0,0,0,0,0,0,0,0,'Impsy - Say Text'),
(14469,22000,2,20,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,'Niby the Almighty - Change Movement');

SET @PATH := 14469;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,5399.045,-741.66974,344.5832,100,0,0),
(@PATH,0,2,5407.8496,-736.40015,344.2397,100,0,0),
(@PATH,0,3,5421.0464,-746.3627,347.41315,100,0,0),
(@PATH,0,4,5406.57,-744.59186,346.52814,100,0,0),
(@PATH,0,5,5399.1206,-741.5274,344.55817,100,0,0),
(@PATH,0,6,5408.0786,-736.45056,344.27924,100,0,0),
(@PATH,0,7,5420.9062,-746.3676,347.43048,100,0,0),
(@PATH,0,8,5406.5693,-744.592,346.52814,100,0,0),
(@PATH,0,9,5399.135,-741.5012,344.55353,100,0,0),
(@PATH,0,10,5408.1875,-736.47455,344.2978,100,0,0),
(@PATH,0,11,5420.8193,-746.37067,347.2547,100,0,0),
(@PATH,0,12,5406.5693,-744.59204,346.52814,100,0,0),
(@PATH,0,13,5399.239,-741.3046,344.5185,100,0,0),
(@PATH,0,14,5408.2676,-736.4922,344.31183,100,0,0),
(@PATH,0,15,5420.7295,-746.37384,347.25543,100,0,0),
(@PATH,0,16,5406.5693,-744.59216,346.52814,100,100,2);

SET @PATH := 14470;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,5402.471,-735.21704,343.87384,100,0,0),
(@PATH,0,2,5417.239,-746.4965,347.4251,100,0,0),
(@PATH,0,3,5403.3696,-746.9918,347.3924,100,0,0),
(@PATH,0,4,5398.657,-742.40063,344.71198,100,0,0),
(@PATH,0,5,5413.895,-737.72064,344.55206,100,0,0),
(@PATH,0,6,5417.239,-746.4965,347.4251,100,0,0),
(@PATH,0,7,5403.3696,-746.9918,347.3924,100,0,0),
(@PATH,0,8,5398.657,-742.40063,344.71198,100,0,0),
(@PATH,0,9,5413.895,-737.72064,344.55206,100,0,0),
(@PATH,0,10,5417.239,-746.4965,347.4251,100,0,0),
(@PATH,0,11,5403.3696,-746.9918,347.3924,100,0,0),
(@PATH,0,12,5398.657,-742.40063,344.71198,100,0,0),
(@PATH,0,13,5413.895,-737.72064,344.55206,100,0,0),
(@PATH,0,14,5417.239,-746.4965,347.4251,100,0,0),
(@PATH,0,15,5403.3696,-746.9918,347.3924,100,0,0),
(@PATH,0,16,5398.657,-742.40063,344.71198,100,0,0),
(@PATH,0,17,5413.895,-737.72064,344.55206,100,0,0),
(@PATH,0,18,5408.09,-747.41797,348.01227,100,100,2);