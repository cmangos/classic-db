-- Updating Spell focus GOs template based on sniff
-- Backported from https://github.com/cmangos/tbc-db/commit/c14185d8cde57d6722f9fef6e587c6befc65023f with https://github.com/TrinityCore/TrinityCore/commit/8ff8f3034ed80d53cbe263576fdda78f4ca288e7 as original source

REPLACE INTO gameobject_template (entry, type, displayId, name, size, data0, data1, data2, data3) VALUES
(2705, 8, 244, 'Shards of Myzrael', 3.47, 5, 20, 0, 1),
(3825, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3826, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3827, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3828, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3829, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3830, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3831, 8, 349, 'Burning Embers', 1, 4, 10, 0, 0),
(3858, 8, 349, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3859, 8, 349, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3860, 8, 349, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3861, 8, 349, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3863, 8, 349, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3952, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3953, 8, 350, 'Mighty Blaze', 1, 4, 10, 0, 0),
(3954, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3955, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3956, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3957, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3958, 8, 351, 'Fierce Blaze', 1, 0, 10, 0, 0),
(3959, 8, 350, 'Mighty Blaze', 1, 4, 10, 0, 0),
(3961, 8, 349, 'Burning Embers', 1, 4, 10, 2061, 0),
(3965, 8, 408, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(3966, 8, 408, 'Fierce Blaze', 1, 4, 10, 2061, 0),
(21270, 8, 273, 'Anvil', 1, 1, 10, 0, 0),
(21271, 8, 233, 'Forge', 1, 3, 10, 0, 0),
(21752, 8, 307, 'Firepit of Death', 1, 4, 8, 0, 0),
(20919, 8, 327, 'Tuber Node', 1, 23, 50, 0, 1),
(32575, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32576, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32577, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32586, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32587, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32588, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(32589, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(56817, 8, 192, 'Campfire', 1, 4, 10, 2061, 0),
(60967, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(60968, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(60969, 8, 199, 'Dwarven Fire', 1, 4, 8, 2061, 0),
(60970, 8, 199, 'Dwarven Fire', 1, 4, 8, 2061, 0),
(60971, 8, 199, 'Dwarven Fire', 1, 4, 8, 2061, 0),
(102414, 8, 327, 'Mirror Lake Waterfall Spell Focus', 4.02, 123, 12, 0, 1),
(103629, 8, 327, 'Xavian Waterfall Spell Focus', 3, 163, 6, 0, 1),
(103660, 8, 327, 'Stone of Outer Binding Spell Focus', 2.18, 164, 3, 0, 1),
(103708, 8, 327, 'Mana Rift Disturbance', 1, 183, 50, 0, 1),
(103819, 8, 362, 'Stone of Shy-Rotam', 3, 783, 10, 0, 1),
(107044, 8, 299, 'Shaman Holy Lake', 1, 225, 5, 0, 1),
(107045, 8, 299, 'Spring Well', 1, 226, 5, 0, 1),
(107046, 8, 299, 'Quilboar Watering Hole', 1, 224, 25, 0, 1),
(107047, 8, 299, 'Ruins of Stardust Fountain', 1, 223, 5, 0, 1),
(142171, 8, 0, 'Transpolyporter TRBB', 1, 0, 10, 142172, 1),
(142180, 8, 327, 'Jintha''Alor Alter', 1, 263, 6, 0, 1),
(142700, 8, 327, 'Witherbark Village Spell Focus 02', 3.22, 303, 25, 0, 1),
(142716, 8, 327, 'Shadra''Alor Altar', 2.31, 304, 7, 0, 1),
(143381, 8, 679, 'Stove', 1, 4, 10, 0, 0),
(144013, 8, 327, 'Equinex Monolith Spell Focus (DND)', 1, 283, 20, 0, 1),
(144051, 8, 2150, 'Sorrowhold Watch Water Hole', 1, 323, 25, 0, 1),
(144052, 8, 2150, 'Sandsorrow Watch Water Hole', 1, 323, 25, 0, 1),
(144056, 8, 216, 'Cauldron', 0.862069, 4, 10, 0, 0),
(144569, 8, 327, 'Edana Hatetalon Spell Focus (DND)', 1, 343, 20, 0, 1),
(146087, 8, 200, 'Bonfire', 0.789005, 4, 10, 0, 0),
(147278, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147280, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147281, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147524, 8, 327, 'Echeyakee''s Lair', 2.87, 363, 40, 0, 1),
(147538, 8, 327, 'The Dead Tree', 13.59, 383, 50, 0, 1),
(147784, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147785, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147788, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147789, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147790, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147791, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147794, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147795, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147796, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147797, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147798, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147799, 8, 166, 'Anvil', 1, 1, 10, 0, 0),
(147816, 8, 199, 'Cozy Fire', 0.842734, 4, 8, 2061, 0),
(147817, 8, 199, 'Cozy Fire', 0.841472, 4, 8, 2061, 0),
(148422, 8, 327, 'Evil God Spell Focus (DND)', 1, 424, 40, 0, 1),
(148501, 8, 327, 'Corrupted Moonwell Spell Focus (DND)', 1, 644, 25, 0, 1),
(152598, 8, 299, 'the First Tide Pool', 1, 443, 20, 0, 1),
(152604, 8, 299, 'the Second Tide Pool', 1, 444, 15, 0, 1),
(152605, 8, 299, 'the Third Tide Pool', 1, 445, 13, 0, 1),
(152606, 8, 299, 'the Fourth Tide Pool', 1, 446, 20, 0, 1),
(160464, 8, 2770, 'Mystical Portal', 1, 0, 0, 160462, 1),
(161483, 8, 200, 'Bonfire', 1, 4, 10, 2066, 0),
(161484, 8, 200, 'Bonfire', 1, 4, 10, 2066, 0),
(161519, 8, 200, 'Bonfire', 1, 4, 10, 2066, 0),
(161520, 8, 200, 'Bonfire', 1, 4, 10, 2066, 0),
(164724, 8, 2770, 'Aquementas Spell Focus', 1, 423, 10, 0, 1),
(164738, 8, 2770, 'Miblon''s Spell Focus (DND)', 1, 483, 20, 0, 1),
(164799, 8, 2770, 'Videre Elixir Spell Focus (DND)', 1, 503, 20, 0, 1),
(164892, 8, 2150, 'Gorishi Hive Hatchery Focus (DND)', 1, 463, 13, 0, 1),
(165678, 8, 327, 'Golakka Crater', 3.43, 563, 17, 0, 1),
(165760, 8, 2770, 'Arei Spell Focus', 1, 523, 20, 0, 1),
(166807, 8, 327, 'Spell Focus: Tomb of the Seven (DND)', 1, 583, 50, 0, 1),
(172619, 8, 299, 'Un''Goro Flat Rock', 2, 603, 10, 0, 1),
(174824, 8, 233, 'Black Forge', 1, 543, 10, 0, 0),
(174825, 8, 273, 'Black Anvil', 1, 623, 10, 0, 0),
(174952, 8, 349, 'Doodad_SmallFirePit01', 1, 0, 10, 0, 0),
(175295, 8, 373, 'Doodad_MediumBrazierNoOmni68', 1, 0, 10, 0, 0),
(175296, 8, 474, 'Doodad_MediumBrazierPurple14', 1, 0, 10, 0, 0),
(175297, 8, 475, 'Brazier', 1, 0, 10, 0, 0),
(175299, 8, 474, 'Brazier', 1, 0, 10, 0, 0),
(175301, 8, 474, 'Brazier', 1, 0, 10, 0, 0),
(175309, 8, 474, 'Brazier', 1.14, 0, 10, 0, 0),
(175333, 8, 2770, 'Vaelan Spawn Node', 0.5, 0, 10, 175328, 0),
(175337, 8, 299, 'Auberdine Moonwell', 1, 703, 10, 0, 1),
(175338, 8, 299, 'Blackwood Furbolg North Bonfire', 1, 704, 20, 0, 1),
(175371, 8, 299, 'Cliffspring River Waterfall', 1, 705, 15, 0, 1),
(175585, 8, 327, 'Spirestone Perch', 1, 743, 8, 0, 1),
(176088, 8, 299, 'Scarlet Crusade Forward Camp', 1, 804, 15, 0, 1),
(176094, 8, 299, 'Andorhal Tower One', 1, 805, 15, 0, 1),
(176095, 8, 299, 'Andorhal Tower Two', 1, 805, 15, 0, 1),
(176096, 8, 299, 'Andorhal Tower Three', 1, 805, 15, 0, 1),
(176097, 8, 299, 'Andorhal Tower Four', 1, 805, 15, 0, 1),
(176111, 8, 327, 'Scholomance Viewing Room Spell Focus (DND)', 1, 823, 35, 0, 1),
(176118, 8, 654, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176119, 8, 654, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176120, 8, 201, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176121, 8, 201, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176122, 8, 201, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176123, 8, 201, 'Mighty Blaze', 0.819672, 0, 10, 0, 0),
(176124, 8, 201, 'Mighty Blaze', 0.819672, 0, 10, 0, 0),
(176125, 8, 201, 'Doodad_SmallBrazier06', 0.819672, 0, 10, 0, 0),
(176126, 8, 201, 'Doodad_SmallBrazier07', 0.819672, 0, 10, 0, 0),
(176127, 8, 201, 'Doodad_SmallBrazier08', 0.819672, 0, 10, 0, 0),
(176128, 8, 201, 'Doodad_SmallBrazier09', 0.819672, 0, 10, 0, 0),
(176129, 8, 201, 'Doodad_SmallBrazier10', 0.819672, 0, 10, 0, 0),
(176130, 8, 201, 'Doodad_SmallBrazier11', 0.819672, 0, 10, 0, 0),
(176131, 8, 201, 'Doodad_SmallBrazier12', 1, 0, 10, 0, 0),
(176132, 8, 201, 'Doodad_SmallBrazier13', 0.819672, 0, 10, 0, 0),
(176133, 8, 201, 'Doodad_SmallBrazier14', 0.819672, 0, 10, 0, 0),
(176134, 8, 408, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176135, 8, 408, 'Doodad_SmallFirePit02', 1, 0, 10, 0, 0),
(176136, 8, 408, 'Doodad_SmallFirePit03', 1, 0, 10, 0, 0),
(176137, 8, 408, 'Doodad_SmallFirePit04', 1, 0, 10, 0, 0),
(176138, 8, 408, 'Doodad_SmallFirePit05', 1, 0, 10, 0, 0),
(176139, 8, 408, 'Doodad_SmallFirePit06', 1, 0, 10, 0, 0),
(176140, 8, 408, 'Doodad_SmallFirePit07', 1, 0, 10, 0, 0),
(176141, 8, 408, 'Mighty Blaze', 1, 0, 10, 0, 0),
(176193, 8, 327, 'Umi Friend Spell Focus (DND)', 1, 863, 10, 0, 1),
(176453, 8, 409, 'Meat Rack', 1, 4, 10, 0, 0),
(176512, 8, 4391, 'Test Lab', 1, 663, 10, 0, 0),
(176563, 8, 373, 'Mighty Blaze', 1.27, 4, 10, 2061, 0),
(176564, 8, 375, 'Mighty Blaze', 1, 4, 10, 2061, 0),
(176565, 8, 375, 'Mighty Blaze', 1, 4, 10, 2061, 0),
(177232, 8, 4691, 'Moonwell', 0.3, 883, 10, 0, 0),
(177306, 8, 299, 'Fire Plume Ridge Lava Lake', 1, 903, 29, 0, 1),
(177344, 8, 166, 'Doodad_Anvil24', 1, 0, 10, 0, 0),
(177492, 8, 335, 'Northridge Lumber Mill Crate', 0.1, 923, 10, 0, 1),
(177528, 8, 327, 'Darrowshire Town Square spell focus (DND)', 1, 944, 20, 0, 1),
(177584, 8, 2770, 'Light Beam Spell Focus (DND)', 1, 963, 7, 0, 1),
(177666, 8, 2770, 'Moonwell Spell Focus', 1, 883, 12, 0, 1),
(177744, 8, 299, 'Cliffspring Falls Cave Mouth', 1, 1003, 10, 0, 1),
(177745, 8, 299, 'Dreadmist Peak Pool', 1, 1004, 10, 0, 1),
(177748, 8, 327, 'Ghost Magnet Spell Focus (DND)', 1, 1023, 30, 0, 1),
(177788, 8, 299, 'Shrine of Remulos', 1, 1043, 20, 0, 1),
(178206, 8, 327, 'Foulweald Totem Mound', 1, 1063, 7, 0, 1),
(178405, 8, 0, 'Maraudon Spell Focus', 1, 1103, 5, 0, 1),
(178439, 8, 5265, 'Globe of Scrying', 1, 1123, 3, 0, 0),
(178546, 8, 0, 'Guse''s Beacon Spell Focus', 1, 1143, 15, 0, 1),
(178548, 8, 0, 'Jeztor''s Beacon Spell Focus', 1, 1144, 15, 0, 1),
(178550, 8, 0, 'Mulverick''s Beacon Spell Focus', 1, 1145, 15, 0, 1),
(178604, 8, 5265, 'Globe of Scrying', 1, 1163, 3, 0, 0),
(178606, 8, 0, 'Ryson''s Beacon Spell Focus', 1, 1164, 10, 0, 1),
(178608, 8, 0, 'Ryson''s Beacon Spell Focus', 1, 1165, 10, 0, 1),
(178672, 8, 5752, 'Consuming Flames', 1.2, 0, 20, 178673, 0),
(178704, 8, 192, 'Campfire', 1.12, 0, 10, 0, 0),
(178706, 8, 192, 'Campfire', 1.12, 0, 10, 0, 0),
(178708, 8, 192, 'Campfire', 1.12, 0, 10, 0, 0),
(178709, 8, 192, 'Campfire', 1.12, 0, 10, 0, 0),
(178710, 8, 409, 'Smoked Meat Rack', 0.628931, 0, 10, 0, 0),
(178712, 8, 192, 'Campfire', 1.12, 0, 10, 0, 0),
(178713, 8, 409, 'Smoked Meat Rack', 1, 0, 10, 0, 0),
(178727, 8, 0, 'Vipore''s Beacon Spell Focus', 1, 1185, 15, 0, 1),
(178728, 8, 0, 'Slidore''s Beacon Spell Focus', 1, 1184, 15, 0, 1),
(178729, 8, 0, 'Ichman''s Beacon Spell Focus', 1, 1183, 15, 0, 1),
(178907, 8, 2770, 'Maraudon Orange Pool Spell Focus', 1, 1203, 20, 0, 1),
(179145, 8, 192, 'Campfire', 1, 4, 10, 2061, 0),
(179146, 8, 192, 'Campfire', 1, 4, 10, 2061, 0),
(179165, 8, 199, 'Doodad_FirewoodPile01', 1, 0, 10, 0, 0),
(179166, 8, 199, 'Doodad_FirewoodPile05', 1, 0, 10, 0, 0),
(179167, 8, 199, 'Doodad_FirewoodPile11', 1, 0, 10, 0, 0),
(179398, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179399, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179400, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179401, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179402, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179403, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179404, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179417, 8, 166, 'Anvil', 1, 0, 10, 0, 0),
(179675, 8, 327, 'Warlock Mount Quest Portal Spell Focus', 4, 1264, 20, 0, 1),
(179677, 8, 0, 'Kroshius'' Remains', 1, 1243, 15, 0, 1),
(179701, 8, 327, 'Circle Loc (spell focus)', 1, 1263, 20, 0, 1),
(179746, 8, 299, 'The Great Ossuary', 1, 1283, 15, 0, 1),
(180204, 8, 299, 'Uther''s Tomb Statue', 1, 1323, 10, 0, 1),
(180205, 8, 299, 'Grom''s Monument', 1, 1324, 10, 0, 1),
(180343, 8, 327, 'Pagle Pointe Spell Focus', 1, 0, 10, 0, 1),
(180375, 8, 299, 'Altar of Zanza Spell Focus', 1, 1344, 5, 0, 1),
(180504, 8, 299, 'Southshore Spell Focus', 1, 1345, 50, 0, 1),
(180505, 8, 0, 'Bones of Grakkarond Spell Focus', 1, 1346, 35, 0, 1),
(180506, 8, 216, 'Cauldron', 1.5, 4, 10, 2061, 0),
(180659, 8, 0, 'Drop-Off Point', 1, 1348, 10, 0, 1),
(180673, 8, 299, 'High Chief Winterfall Cave Mouth Spell Focus', 1, 1350, 10, 0, 1),
(180867, 8, 327, 'Greater Moonlight Spell Focus', 1, 1353, 4, 0, 1),
(181046, 8, 2770, 'Mor Grayhoof Brazier Spell Focus', 1, 1354, 10, 0, 1),
(181047, 8, 2770, 'Isalien Brazier Spell Focus', 1, 1355, 40, 0, 1),
(181048, 8, 2770, 'Jarien and Sothos Brazier Spell Focus', 1, 1356, 20, 0, 1),
(181049, 8, 2770, 'Kormok Brazier Spell Focus', 1, 1357, 40, 0, 1),
(181050, 8, 2770, 'Lord Valthalak Brazier Spell Focus', 1, 1358, 20, 0, 1),
(181052, 8, 327, 'Brazier of Invocation Spell Focus 10 yd', 1, 1359, 10, 0, 1),
(181059, 8, 2770, 'Blackrock Depths Arena Thelrin Focus', 1, 1360, 20, 0, 1),
(181094, 8, 327, 'Brazier of Invocation Spell Focus 40 yd', 1, 1359, 40, 0, 1),
(181096, 8, 327, 'Brazier of Invocation Spell Focus 20 yd', 1, 1359, 20, 0, 1),
(181113, 8, 2770, 'Crystal Corpse', 1, 1361, 10, 0, 0),
(181371, 8, 0, 'Midsummer Bonfire Spell Focus', 1, 1365, 10, 181375, 1),
(181377, 8, 0, 'Midsummer Bonfire Campfire Spell Focus', 1, 4, 10, 181376, 1);

-- Update spawns GO to match new template entry
UPDATE gameobject SET id=20919 WHERE id=300011; -- Tuber Node
UPDATE gameobject SET id=103660 WHERE id=300012; -- Stone of Outer Binding Spell Focus
UPDATE gameobject SET id=103708 WHERE id=300013; -- Mana Rift Disturbance
UPDATE gameobject SET id=107044 WHERE id=300014; -- Shaman Holy Lake
UPDATE gameobject SET id=142716 WHERE id=300017; -- Shadra'Alor Altar
UPDATE gameobject SET id=144569 WHERE id=300018; -- Edana Hatetalon Spell Focus (DND)
UPDATE gameobject SET id=148422 WHERE id=300019; -- Evil God Spell Focus (DND)
UPDATE gameobject SET id=164738 WHERE id=300020; -- Miblon's Spell Focus (DND)
UPDATE gameobject SET id=164799 WHERE id=300021; -- Videre Elixir Spell Focus (DND)
UPDATE gameobject SET id=165760 WHERE id=300022; -- Arei Spell Focus
UPDATE gameobject SET id=165678 WHERE id=300023; -- Golakka Crater
UPDATE gameobject SET id=166807 WHERE id=300024; -- Spell Focus: Tomb of the Seven (DND)
UPDATE gameobject SET id=148501 WHERE id=300025; -- Corrupted Moonwell Spell Focus (DND)
UPDATE gameobject SET id=175338 WHERE id=300026; -- Blackwood Furbolg North Bonfire
UPDATE gameobject SET id=103819 WHERE id=300027; -- Stone of Shy-Rotam
UPDATE gameobject SET id=176088 WHERE id=300029; -- Scarlet Crusade Forward Camp
UPDATE gameobject SET id=176095 WHERE id=300030; -- Andorhal Tower
UPDATE gameobject SET id=176111 WHERE id=300031; -- Scholomance Viewing Room Spell Focus (DND)
UPDATE gameobject SET id=176193 WHERE id=300032; -- Umi Friend Spell Focus (DND)
UPDATE gameobject SET id=177492 WHERE id=300033; -- Northridge Lumber Mill Crate
UPDATE gameobject SET id=177528 WHERE id=300034; -- Darrowshire Town Square spell focus (DND)
UPDATE gameobject SET id=177584 WHERE id=300035; -- Light Beam Spell Focus (DND)
UPDATE gameobject SET id=177748 WHERE id=300036; -- Ghost Magnet Spell Focus (DND)
UPDATE gameobject SET id=178400 WHERE id=300037; -- Maraudon Portal
UPDATE gameobject SET id=178439 WHERE id=300038; -- Globe of Scrying
UPDATE gameobject SET id=178546 WHERE id=300039; -- Guse's Beacon Spell Focus
UPDATE gameobject SET id=178548 WHERE id=300040; -- Jeztor's Beacon Spell Focus
UPDATE gameobject SET id=178550 WHERE id=300041; -- Mulverick's Beacon Spell Focus
UPDATE gameobject SET id=178604 WHERE id=300042; -- Globe of Scrying
UPDATE gameobject SET id=178606 WHERE id=300043; -- Ryson's Beacon Spell Focus
UPDATE gameobject SET id=178608 WHERE id=300044; -- Ryson's Beacon Spell Focus
UPDATE gameobject SET id=178729 WHERE id=300045; -- Ichman's Beacon Spell Focus
UPDATE gameobject SET id=178728 WHERE id=300046; -- Slidore's Beacon Spell Focus
UPDATE gameobject SET id=178727 WHERE id=300047; -- Vipore's Beacon Spell Focus
UPDATE gameobject SET id=178907 WHERE id=300048; -- Maraudon Orange Pool Spell Focus
UPDATE gameobject SET id=179701 WHERE id=300050; -- Circle Loc (spell focus)
UPDATE gameobject SET id=179675 WHERE id=300051; -- Warlock Mount Quest Portal Spell Focus
UPDATE gameobject SET id=180375 WHERE id=300053; -- Altar of Zanza Spell Focus
UPDATE gameobject SET id=180505 WHERE id=300055; -- Bones of Grakkarond Spell Focus
UPDATE gameobject SET id=180669 WHERE id=300057; -- Swirling Maelstrom
UPDATE gameobject SET id=180867 WHERE id=300058; -- Greater Moonlight Spell Focus
UPDATE gameobject SET id=181046 WHERE id=300059; -- Mor Grayhoof Brazier Spell Focus
UPDATE gameobject SET id=181047 WHERE id=300060; -- Isalien Brazier Spell Focus
UPDATE gameobject SET id=181048 WHERE id=300061; -- Jarien and Sothos Brazier Spell Focus
UPDATE gameobject SET id=181049 WHERE id=300062; -- Kormok Brazier Spell Focus
UPDATE gameobject SET id=181050 WHERE id=300063; -- Lord Valthalak Brazier Spell Focus
UPDATE gameobject SET id=181059 WHERE id=300065; -- Blackrock Depths Arena Thelrin Focus
UPDATE gameobject SET id=181113 WHERE id=300066; -- Crystal Corpse
UPDATE gameobject SET id=181371 WHERE id=300068; -- Midsummer Bonfire Spell Focus
UPDATE gameobject SET id=172619 WHERE id=300119; -- Un'Goro Flat Rock
UPDATE gameobject SET id=175371 WHERE id=300132; -- Cliffspring River Waterfall
UPDATE gameobject SET id=152598 WHERE id=300133; -- the First Tide Pool
UPDATE gameobject SET id=152604 WHERE id=300134; -- the Second Tide Pool
UPDATE gameobject SET id=152605 WHERE id=300135; -- the Third Tide Pool
UPDATE gameobject SET id=152606 WHERE id=300136; -- the Fourth Tide Pool
UPDATE gameobject SET id=142180 WHERE id=300137; -- Jintha'Alor Alter
UPDATE gameobject SET id=144013 WHERE id=300138; -- Equinex Monolith Spell Focus (DND)
UPDATE gameobject SET id=2705 WHERE id=300139; -- Shards of Myzrael
UPDATE gameobject SET id=180205 WHERE id=300140; -- Grom's Monument
UPDATE gameobject SET id=180673 WHERE id=300141; -- High Chief Winterfall Cave Mouth Spell Focus
UPDATE gameobject SET id=179746 WHERE id=300144; -- The Great Ossuary
UPDATE gameobject SET id=107046 WHERE id=300146; -- Quilboar Watering Hole
UPDATE gameobject SET id=107045 WHERE id=300147; -- Spring Well
UPDATE gameobject SET id=107047 WHERE id=300148; -- Ruins of Stardust Fountain

-- Clean-up of duplicates (entry with placeholder ID kept while entry with valid ID also exists)
DELETE FROM gameobject_template WHERE entry IN (300054, 300037, 300012, 300013, 300014, 300017, 300018, 300019, 300020, 300021, 300022, 300023, 300024, 300025, 300026, 300027, 300029, 300030, 300031, 300032, 300033, 300034, 300035, 300036, 300038, 300039, 300040, 300041, 300042, 300043, 300044, 300045, 300046, 300047, 300048, 300050, 300051, 300053, 300055, 300057, 300058, 300059, 300060, 300061, 300062, 300063, 300065, 300066, 300068, 300078, 300119, 300132, 300133, 300134, 300135, 300136, 300137, 300138, 300139, 300141, 300143, 300144, 300146, 300147, 300148, 300149, 300150, 300151, 300153);

-- Delete spawned gameobjects that were introduced in TBC (most of them are from Dustwallow Marsh revamp)
DELETE FROM gameobject WHERE id IN (300078, 300143, 300149, 300150, 300151, 300153);

-- Update spell scripts using GOs with their entry updated
UPDATE spell_script_target SET targetEntry=180867 WHERE entry=26373; -- Greater Moonlight Spell Focus

-- Update DB scripts using GOs with their entry updated
UPDATE dbscripts_on_go_template_use SET id=180867 WHERE id=300058;
