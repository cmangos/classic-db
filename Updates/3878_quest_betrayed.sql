UPDATE creature_template SET MovementType=0 WHERE Entry IN (8581, 8608);

DELETE FROM dbscripts_on_event WHERE id=3241;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(3241, 0, 1, 31, 8581, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Focusing Crystal - Terminate script if Blood Elf Defender is within 50 yards'),
(3241, 0, 2, 31, 8578, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Focusing Crystal - Terminate script if Magus Rimtori is within 50 yards'),
(3241, 0, 3, 31, 8608, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Focusing Crystal - Terminate script if Angered Infernal is within 50 yards'),
(3241, 0, 4, 45, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Focusing Crystal - Start Random Script'),
(3241, 12500, 1, 40, 63, 0, 0, 150140, 20, 1537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Focusing Crystal - Despawn self and nearby Arcane Focusing Crystals');

DELETE FROM dbscript_random_templates WHERE id=20;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20, 1, 21, 50, 'Arcane Focusing Crystal - Summon Blood Elf Defender'),
(20, 1, 22, 50, 'Arcane Focusing Crystal - Summon Angered Infernal');

DELETE FROM dbscripts_on_relay WHERE id IN (21, 22, 23, 24);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(21, 0, 0, 10, 8581, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 4279.1016, -6295.3853, 95.65978, 3.159045934677124023, 0, 'Arcane Focusing Crystal - Summon Blood Elf Defender'),
(22, 0, 0, 10, 8608, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 4279.1016, -6295.3853, 95.65978, 3.159045934677124023, 0, 'Arcane Focusing Crystal - Summon Angered Infernal'),
(23, 0, 0, 10, 8578, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 4280.26, -6295.296, 95.65978, 0.209439516067504882, 0, 'Blood Elf Defender - Summon Magus Rimtori'),
(23, 2900, 0, 0, 0, 0, 0, 0, 0, 0, 4492, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Defender - Say'),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4495, 0, 0, 0, 0, 0, 0, 0, 0, 'Magus Rimtori - Say');

DELETE FROM creature_template_addon WHERE entry=8581;
INSERT INTO creature_template_addon (entry, b2_0_sheath, auras) VALUES
(8581, 1, "5301");

UPDATE broadcast_text SET Text1='You dare! Now feel my wrath!' WHERE Id=4495;
