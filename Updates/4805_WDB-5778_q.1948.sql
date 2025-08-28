-- q.1948 'Items of Power'
-- Witherbark Totem Bundle TRAP 103661
-- data taken from TDB
UPDATE gameobject_template SET faction = 114, data2 = 10 WHERE entry = 103661;
-- aura fix
DELETE FROM dbscripts_on_go_template_use WHERE id IN (174764,103661,103662);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(103661,0,9,15219,600,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object');
-- Spell: 9055 'Create Witherbark Totem Bundle'
-- summon position corrected
UPDATE spell_target_position SET target_position_x = -1350.83, target_position_y = -2740.16, target_position_z = 61.5, target_orientation = 6.1817 WHERE id = 9055;
