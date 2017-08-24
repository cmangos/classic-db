-- Relic Coffer Door & Relic Coffer
-- Using key on Relic Coffer Door not always triggered correct Coffer - fixed
-- Relic Coffer - should despawn after loot taken
UPDATE gameobject_template SET data2 = 0 WHERE entry BETWEEN 174554 AND 174564;
UPDATE gameobject_template SET data2 = 0 WHERE entry = 174566;
-- Script corrected
DELETE FROM dbscripts_on_go_template_use WHERE id BETWEEN 174554 AND 174564;
DELETE FROM dbscripts_on_go_template_use WHERE id = 174566;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(174554,0,27,8,0,0,160836,43120,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174555,0,27,8,0,0,160836,43136,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174556,0,27,8,0,0,160836,43129,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174557,0,27,8,0,0,160836,43124,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174558,0,27,8,0,0,160836,43125,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174559,0,27,8,0,0,160836,43123,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174560,0,27,8,0,0,160836,43135,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174561,0,27,8,0,0,160836,43128,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174562,0,27,8,0,0,160836,43127,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174563,0,27,8,0,0,160836,43126,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174564,0,27,8,0,0,160836,43121,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer'),
(174566,0,27,8,0,0,160836,43122,0x10,0,0,0,0,0,0,0,0,'Relic Coffer Door - Access: Relic Coffer');

-- Relic Coffer
UPDATE gameobject SET spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 160836;
