-- Theramore Practicing Guard 4951
UPDATE creature_template SET UnitFlags=32768 WHERE Entry IN (4951, 4952);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 4951);
DELETE FROM creature_template_addon WHERE entry = 4951;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(4951,0,1,1,0,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (14);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14,0,31,4952,5,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: search for buddy'),
(14,10,48,512,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: Remove UnitFlags'),
(14,100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: stand'),
(14,2000,26,0,0,0,4952,5,1,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: attack buddy'),
(14,34000,48,512,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: add UnitFlags'),
(14,35000,35,5,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: Send Event 5'),
(14,36000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Theramore Practicing Guard EAI: sit');
