-- Quest end script for Quest Voodoo Feathers  id 8425
DELETE FROM dbscripts_on_quest_end WHERE id = '8425';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(8425,0,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Remove Quest flag'),
(8425,0,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Set Active Object'),
(8425,0,2,15,25098,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Cast Transform Hero'),
(8425,2000,0,15,25101,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Cast Battleshout'),
(8425,4000,0,0,0,0,0,0,0,0,10893,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Say Text'),
(8425,5000,0,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - State Kneel'),
(8425,8000,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - State Stand'),
(8425,8000,1,15,25100,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Cast Untransform Hero'),
(8425,8000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Add Quest flag'),
(8425,8000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fallen Hero of the Horde - Remove Active Object');

UPDATE `quest_template` SET `CompleteScript`='8425' WHERE `entry`='8425';

