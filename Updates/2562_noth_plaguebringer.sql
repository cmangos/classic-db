-- Noth
-- Targets for spell 30228 (Despawn Summons)
DELETE FROM spell_script_target WHERE entry=30228;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30228, 1, 16981, 0),
(30228, 1, 16982, 0),
(30228, 1, 16983, 0),
(30228, 1, 16984, 0);

-- Missing positions for spells used in last waves
DELETE FROM spell_target_position WHERE id IN (29240, 29269);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(29240, 533, 2722.03, -3514.3, 262.354, 2.84269),
(29269, 533, 2684.95, -3457.55, 262.578, 4.62159);	
