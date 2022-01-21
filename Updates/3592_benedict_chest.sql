-- Increase Safeguard Radius for o.2716,2717,2718 and Add safeguard for Benedict''s Chest 3239
UPDATE dbscripts_on_event SET datalong2=20 WHERE datalong2=16 AND id IN (416,415,417); -- Radius was too small, 498 does not have safeguard, key is consumed on opening chest
DELETE FROM dbscripts_on_event WHERE id=498 AND command=31;
UPDATE dbscripts_on_event SET comments='Benedict''s Key 4882 - Benedict''s Chest 3239 - Summon Kul Tiras Marine 3129' WHERE id=498 AND command=10;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(498, 0, 0, 31, 3129, 25, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Benedict''s Key 4882 - Benedict''s Chest 3239 - Terminate Script if 3129 is already spawned');
