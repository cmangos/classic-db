-- Magrin Rivermane 6776
-- Magrin Rivermane is not a vendor
UPDATE creature_template SET NpcFlags = 2 WHERE entry = 6776;

-- Ghostpaw Runner trapped on the statue
UPDATE creature SET position_x = 2718.5, position_y = -106.26, position_z = 96.052, spawndist = 5, MovementType = 1 WHERE guid = 34977;
