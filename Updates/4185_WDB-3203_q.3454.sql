-- q.3454 'The Torch of Retribution'
-- Player should be able to get new object spawn in case of prev despawned.
-- unnused gossip option assigned
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 132303, condition_id = 20224 WHERE menu_id = 1323 AND id = 3; -- Kalaran, please enchant the torch.
DELETE FROM conditions WHERE condition_entry = 20224;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20224, 9, 3454, 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 132303;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(132303,0,15,12512,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Kalaran Conjures Torch'),
(132303,2000,9,24166,180,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(132303,3000,9,16762,178,0,0,0,0,0,0,0,0,0,0,0,0,'resp object');

