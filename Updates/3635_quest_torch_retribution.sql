DELETE FROM dbscripts_on_quest_start WHERE id='3453';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, x, y, z, o, comments) VALUES 
('3453', '0','21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Set ActiveObject'),
('3453', '0','1', '69', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Set Emote State to STATE_USESTANDING'),
('3453', '0','29', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Remove NPC Flags QUEST_GIVER and GOSSIP'),
('3453', '0','0', '0', '0', '0', '0', '3442', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Say Text'),
('3453', '9000','1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Set Emote State to ONESHOT_NONE'),
('3453', '12000','15', '12511', '0', '0', '4', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Cast Spell Torch Combine'),
('3453', '16000','0', '0', '0', '0', '0', '4448', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Say Text'),
('3453', '19000','9', '16762', '21', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Torch of Retribution - Respawn GameObject'),
('3453', '21000','9', '24166', '19', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Light of Retribution - Respawn GameObject'),
('3453', '22000','1', '16', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Emote OneShotKneel'),
('3453', '22000','0', '0', '0', '0', '0', '4449', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Say Text'),
('3453', '27000','21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Set ActiveObject'),
('3453', '27000','29', '3', '1', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Add NPC Flags QUEST_GIVER and GOSSIP'),
('3453', '27000','0', '0', '0', '0', '0', '4450', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Say Text'),
('3453', '27000','7', '3453', '0', '0', '0', '0', '0', '0', '0', '0', 'The Torch of Retribution: Kalaran Windblade - Player - Complete Ques');

UPDATE quest_template SET StartScript=3453 WHERE entry=3453;

-- Correct spawn position of Torch of Retribution.
UPDATE gameobject SET position_x=-6681.14, position_y=-1194.52, position_z=241.825, orientation=4.67748, rotation0=0, rotation1=0, rotation2=-0.719339, rotation3=0.694659, spawntimesecsmin=-21, spawntimesecsmax=-21 WHERE guid=16762;
-- Correct spawn position of Light of Retribution.
UPDATE gameobject SET position_x=-6681.09, position_y=-1194.03, position_z=239.471, orientation=1.53589, rotation0=0, rotation1=0, rotation2=0.694658, rotation3=0.71934, spawntimesecsmin=-19, spawntimesecsmax=-19 WHERE guid=24166;

-- Broadcast Texts update to emotes
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='3442');
UPDATE broadcast_text SET ChatTypeID='2' WHERE (Id='4449');
