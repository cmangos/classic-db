-- Add missing aura for NPC 15933 (Poison Cloud) in Temple of Ahn'Qiraj
DELETE FROM creature_template_addon WHERE entry=15933;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(15933, 0, 0, 1, 16, 0, 0, '25786');
