-- q.790 'Sarkoth' - Script removed
-- q.804 'Sarkoth' - Script updated
-- Script belongs to another q.804 'Sarkoth'
DELETE FROM dbscripts_on_quest_start WHERE id = 790;
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
-- Script updated
DELETE FROM dbscripts_on_quest_start WHERE id = 804;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(804,1000,28,8,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'STATE_KNEEL'),
(804,3000,0,0,0,0,0,0,0,2000005089,0,0,0,0,0,0,0,''),
(804,7000,28,7,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'STATE_DEATH');

-- Sarkoth 3281
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid = 12263;
