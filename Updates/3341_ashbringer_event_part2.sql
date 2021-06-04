-- 16062 real boss
-- 28688 Mograine Cometh DND - transforms to 16440
UPDATE creature_template SET Name='Highlord Mograine', EquipmentTemplateId=0, MinLevel=63, MaxLevel=63, HealthMultiplier=160, MinLevelHealth=532960, MaxLevelHealth=532960, UnitFlags=768, Faction=35, MovementType=2 WHERE entry=16440;

DELETE FROM creature_movement_template WHERE entry=16440 AND pathId=1;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(16440, 1, 1, 1084.703857, 1399.461548, 30.30381, 100, 1000, 0, 'Highlord Mograine'),
(16440, 1, 2, 1103.323486, 1399.347778, 30.306072, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 3, 1137.175415, 1399.250854, 30.307892, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 4, 1145.000122, 1399.300293, 31.820765, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 5, 1148.536377, 1398.986938, 31.972290, 100, 1000, 1644001, 'Highlord Mograine');

DELETE FROM dbscript_string WHERE entry IN (2000005980,2000005981,2000005982,2000005983,2000005984,2000005985);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000005980, 'You hold my father''s blade, $n. My soldiers are yours to control, my $g Lord:Lady;. Take them... Lead them... The impure must be purged. They must be cleansed of their taint.', 0, 0, 0, 1, 'Scarlet Commander Mograine - Ashbringer Event Say 1'),
(2000005981, 'Renault...', 0, 0, 0, 25, 'Highlord Mograine - Ashbringer Event Say 1'),
(2000005982, 'Father... But... How?', 0, 0, 0, 6, 'Scarlet Commander Mograine - Ashbringer Event Say 2'),
(2000005983, 'Did you think that your betrayal would be forgotten? Lost in the carefully planned cover up of my death? Blood of my blood, the blade felt your cruelty long after my heart had stopped beating. And in death, I knew what you had done. But now, the chains of Kel''Thuzad hold me no more. I come to serve justice. I AM ASHBRINGER.', 0, 0, 0, 6, 'Highlord Mograine - Ashbringer Event Say 2'),
(2000005984, 'Forgive me, father! Please...', 0, 0, 0, 20, 'Scarlet Commander Mograine - Ashbringer Event Say 3'),
(2000005985, 'You are forgiven...', 0, 0, 0, 0, 'Highlord Mograine - Ashbringer Event Say 3');

-- Scarlet Commander Mograine
DELETE FROM dbscripts_on_relay WHERE id=9001; -- ToDo: Move to lower ID when exporting
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('9001', '0', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Stand'),
('9001', '0', '36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Set Facing to Player'),
('9001', '2000', '0', '0', '0', '0', '0', '0', '0', '2000005980', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Say 1'),
('9001', '3000', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Kneel'),
('9001', '5000', '10', '16440', '60000', '1', '0', '0', '8', '0', '0', '0', '0', '1065.130737', '1399.350586', '30.763723', '6.282961', 'Summon Highlord Mograine');
