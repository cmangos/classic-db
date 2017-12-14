-- Fixed UnitFlags, ExtraFlags and speed for NPC 11583 (Nefarian)
UPDATE creature_template SET Subname='', UnitFlags=33554496, ExtraFlags=4865, InhabitType=7, SpeedWalk=(2.5 / 2.5), SpeedRun=(15 / 7.0) WHERE Entry=11583;

-- Added auras on spawn
DELETE FROM creature_template_addon WHERE entry=11583;
INSERT INTO creature_template_addon VALUES
(11583, 0, 0, 1, 16, 0, 0, '19818 22992 25184');

-- Added missing target for spell 23362 (Raise Drakonids)
DELETE FROM spell_script_target WHERE entry IN (23362, 23361);
INSERT INTO spell_script_target VALUES (23361, 0, 179804, 0);
INSERT INTO spell_script_target VALUES (23362, 0, 179804, 0);

-- Nefarian waypoints on spawn (behold the flying arrival and landing)
DELETE FROM creature_movement_template WHERE entry=11583;
INSERT INTO creature_movement_template (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(11583, 0, 1, -7348.849, -1495.134, 552.5152, 0, 0, 100),
(11583, 0, 2, -7348.540, -1494.183, 552.5152, 0, 0, 100),
(11583, 0, 3, -7392.868, -1475.698, 544.6193, 0, 0, 100),
(11583, 0, 4, -7423.417, -1437.656, 535.3140, 0, 0, 100),
(11583, 0, 5, -7445.253, -1402.114, 523.8420, 0, 0, 100),
(11583, 0, 6, -7460.383, -1372.600, 513.0922, 0, 0, 100),
(11583, 0, 7, -7479.808, -1331.756, 498.7586, 0, 0, 100),
(11583, 0, 8, -7492.582, -1295.351, 488.0915, 0, 0, 100),
(11583, 0, 9, -7502.002, -1256.503, 476.7582, 0, 0, 100);
