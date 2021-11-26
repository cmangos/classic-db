-- Reinsert Half-Buried Bottle 2560 (+28 spawns), Add Pooling & Further Improve Loot Table
SET @GUID := 170291;
DELETE FROM gameobject WHERE id=2560;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- (Stranglethorn Vale) Area: 43 (Wild Shore)
(@GUID := @GUID + 0, 2560, 0, -14473.447265625, 64.72260284423828125, -0.96794402599334716, -0.69813191890716552, 0, 0, 0.342020213603973388, -0.93969261646270751, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14434.8505859375, 54.3836822509765625, 0.178829997777938842, -1.74532687664031982, 0, 0, -0.76604366302490234, 0.642788589000701904, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14307.3056640625, 32.82291793823242187, 0.141596004366874694, 0.069813162088394165, 0, 0, 0.034899495542049407, 0.999390840530395507, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14170.59765625, -93.0607681274414062, -0.45957198739051818, -2.35619473457336425, 0, 0, 0.923879563808441162, -0.3826833963394165, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14400.1552734375, 58.31494140625, 0.486712008714675903, 1.65806281566619873, 0, 0, 0.737277328968048095, 0.675590217113494873, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14331.06640625, 60.69097137451171875, 0.171187996864318847, 2.234021425247192382, 0, 0, 0.898794054985046386, 0.438371151685714721, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14270.0634765625, -17.1996536254882812, 0.675433993339538574, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14483.568359375, 104.4371719360351562, 1.572831034660339355, -0.17453211545944213, 0, 0, -0.08715534210205078, 0.996194720268249511, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14358.390625, 66.97043609619140625, 0.586006999015808105, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14274.146484375, 12.35845279693603515, 0.687386989593505859, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14279.017578125, 56.4061431884765625, 0.707728028297424316, -2.42600250244140625, 0, 0, -0.93667125701904296, 0.350209832191467285, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14456.267578125, 37.46300125122070312, 0.395052999258041381, -0.54105061292648315, 0, 0, -0.26723766326904296, 0.96363067626953125, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14217.486328125, -54.140625, 0.399392008781433105, -3.07176613807678222, 0, 0, -0.9993906021118164, 0.034906134009361267, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14237.6, -32.9948, 2.50111, 1.11701, 0, 0, 0.529919, 0.848048, 900, 900, 100, 1), -- classic_combined_sniff_db
-- (Stranglethorn Vale) Area: 297 (Jaguero Isle)
(@GUID := @GUID + 1, 2560, 0, -14592.0849609375, -83.6837539672851562, 0.8, -3.01941967010498046, 0, 0, 0.998134791851043701, -0.061048474162817, 900, 900, 100, 1), -- z=0.382618993520736694
(@GUID := @GUID + 1, 2560, 0, -14462.361328125, -314.703125, 1.220939040184020996, 0.139626353979110717, 0, 0, 0.069756470620632171, 0.997564077377319335, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14448.06640625, -112.28125, -1.23729205131530761, -1.30899691581726074, 0, 0, 0.608761429786682128, -0.79335331916809082, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14439.646484375, -190.588546752929687, -0.70320802927017211, -2.14675498008728027, 0, 0, 0.878817141056060791, -0.47715872526168823, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14532.646484375, -100.203132629394531, -0.20425699651241302, 1.710422515869140625, 0, 0, 0.754709541797637939, 0.656059026718139648, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14504.5908203125, -102.795143127441406, -0.33047398924827575, 2.617993831634521484, 0, 0, 0.965925812721252441, 0.258819073438644409, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14454.6669921875, -140.164932250976562, 0.197871997952461242, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14476.396484375, -105.1875, -0.44590300321578979, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14503.5595703125, -316.2413330078125, 0.920786976814270019, -0.68067866563796997, 0, 0, -0.33380699157714843, 0.942641437053680419, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14453, -225.788, 0.648879, 0.191985, 0, 0, 0.0958452, 0.995396, 900, 900, 100, 1), -- classic_combined_sniff_db
(@GUID := @GUID + 1, 2560, 0, -14427.1, -422.26, 1.23802, 1.22173, 0, 0, 0.573576, 0.819152, 900, 900, 100, 1), -- classic_combined_sniff_db
-- (Stranglethorn Vale) Area: 302 (The Crystal Shore)
(@GUID := @GUID + 1, 2560, 0, -13912.5556640625, -166.436141967773437, 2.5, -0.29670602083206176, 0, 0, 0.147809430956840515, -0.98901587724685668, 900, 900, 100, 1), -- z=0.534211993217468261
(@GUID := @GUID + 1, 2560, 0, -13870.6669921875, -211.541671752929687, -1.20754802227020263, -2.28638124465942382, 0, 0, 0.909961283206939697, -0.41469323635101318, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14048.232421875, -144.146926879882812, -0.19740000367164611, -0.92502385377883911, 0, 0, -0.446197509765625, 0.894934535026550292, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13822.4169921875, -232.072158813476562, 0.3, -1.74532687664031982, 0, 0, -0.76604366302490234, 0.642788589000701904, 900, 900, 100, 1), -- z=0.012512000277638435
(@GUID := @GUID + 1, 2560, 0, -14138.6533203125, -94.5868072509765625, -0.14489799737930297, 1.85004889965057373, 0, 0, 0.798635482788085937, 0.60181504487991333, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14078.486328125, -152.603958129882812, 0.542116999626159667, -2.51327395439147949, 0, 0, -0.95105648040771484, 0.309017121791839599, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13893.4384765625, -184.902786254882812, 1.19648897647857666, -1.58824872970581054, 0, 0, -0.71325016021728515, 0.700909554958343505, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13845.8134765625, -225.890625, -0.89712399244308471, -0.40142488479614257, 0, 0, -0.19936752319335937, 0.979924798011779785, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13780.6318359375, -250.821182250976562, -0.05370999872684478, -1.88495302200317382, 0, 0, -0.80901622772216796, 0.587786316871643066, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -14005.3095703125, -136.916763305664062, 0.248771995306015014, 1.221729278564453125, 0, 0, 0.573575973510742187, 0.819152355194091796, 900, 900, 100, 1),
-- Zone: 33 (Stranglethorn Vale) Area: 311 (Ruins of Aboraz)
(@GUID := @GUID + 1, 2560, 0, -13734.783203125, -255.342697143554687, 0.3, 0.523597955703735351, 0, 0, 0.258818626403808593, 0.965925931930541992, 900, 900, 100, 1), -- z=0.004720000084489583
(@GUID := @GUID + 1, 2560, 0, -13729.6220703125, -342.87152099609375, 0.453314989805221557, -2.35619473457336425, 0, 0, 0.923879563808441162, -0.3826833963394165, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13722.708984375, -295.261688232421875, 0.379433989524841308, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207, 900, 900, 100, 1),
(@GUID := @GUID + 1, 2560, 0, -13760.7001953125, -259.574737548828125, 1.5, 0.837757408618927001, 0, 0, 0.406736373901367187, 0.913545548915863037, 900, 900, 100, 1), -- z=0.052544999867677688
(@GUID := @GUID + 1, 2560, 0, -13704.9306640625, -327.592010498046875, -0.07900399714708328, -3.07176613807678222, 0, 0, -0.9993906021118164, 0.034906134009361267, 900, 900, 100, 1);

UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=300 WHERE id=2560;

DELETE FROM pool_template WHERE entry BETWEEN 1825 AND 1829;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1825, 5, 'Stranglethorn Vale - Master Half-Buried Bottle (2560) Pool'),
(1826, 3, 'Stranglethorn Vale (Wild Shore) - Half-Buried Bottle (2560)'),
(1827, 2, 'Stranglethorn Vale (Jaguero Isle) - Half-Buried Bottle (2560)'),
(1828, 2, 'Stranglethorn Vale (The Crystal Shore) - Half-Buried Bottle (2560)'),
(1829, 1, 'Stranglethorn Vale (Ruins of Aboraz) - Half-Buried Bottle (2560)');

DELETE FROM pool_pool WHERE pool_id BETWEEN 1825 AND 1829;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(1826, 1825, 0, 'Stranglethorn Vale (Wild Shore) - Half-Buried Bottle (2560)'),
(1827, 1825, 0, 'Stranglethorn Vale (Jaguero Isle) - Half-Buried Bottle (2560)'),
(1828, 1825, 0, 'Stranglethorn Vale (The Crystal Shore) - Half-Buried Bottle (2560)'),
(1829, 1825, 0, 'Stranglethorn Vale (Ruins of Aboraz) - Half-Buried Bottle (2560)');

DELETE FROM pool_gameobject WHERE pool_entry BETWEEN 1825 AND 1829;
INSERT INTO pool_gameobject (guid, pool_entry, description) SELECT guid AS guid, 1826, 'Stranglethorn Vale (Wild Shore) - Half-Buried Bottle (2560)' FROM gameobject WHERE guid BETWEEN 170291 AND 170304;
INSERT INTO pool_gameobject (guid, pool_entry, description) SELECT guid AS guid, 1827, 'Stranglethorn Vale (Jaguero Isle) - Half-Buried Bottle (2560)' FROM gameobject WHERE guid BETWEEN 170305 AND 170315;
INSERT INTO pool_gameobject (guid, pool_entry, description) SELECT guid AS guid, 1828, 'Stranglethorn Vale (The Crystal Shore) - Half-Buried Bottle (2560)' FROM gameobject WHERE guid BETWEEN 170316 AND 170325;
INSERT INTO pool_gameobject (guid, pool_entry, description) SELECT guid AS guid, 1829, 'Stranglethorn Vale (Ruins of Aboraz) - Half-Buried Bottle (2560)' FROM gameobject WHERE guid BETWEEN 170326 AND 170330;

-- LOOT
-- Half-Buried Bottle 2560
-- https://tbc.wowhead.com/object=2560/half-buried-bottle#contains
UPDATE gameobject_loot_template SET ChanceOrQuestChance=13 WHERE entry=2032 AND item=50601; -- Scroll of X II (5% befor)

-- Quest Start Item only loot when not already taken/completed, make q item more likely as chances dont add up (refloots dont count to groupids % for 100% sum)
UPDATE gameobject_loot_template SET ChanceOrQuestChance=0, groupid=1 WHERE entry=2032 AND item IN (4100,4101,4102); -- Crumpled, Ripped, Torn Note
UPDATE gameobject_loot_template SET ChanceOrQuestChance=50, groupid=1, condition_id=9012 WHERE entry=2032 AND item=4098; -- Carfully Folded Note
DELETE FROM conditions WHERE condition_entry=9012;
INSERT INTO conditions VALUES (9012, 22, 594, 0, 0, 0, 0, 'Quest ID 594 NOT Taken AND NOT Rewarded');

-- Add more deleted patterns (patterns had itemlevel 25 to 47 befor, so adding the ones from world loot to this refloot)
DELETE FROM gameobject_loot_template WHERE entry=2032 AND item IN (7992,8029,10312,10604,21944,50505); -- patterns
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2032, 50505, 10, 0, -50505, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 19-52)');

-- Port missing Sovik	Engineering Supplies (3413) Vendor Items from wotlk-db
DELETE FROM npc_vendor WHERE entry=3413 AND item IN (4361,4363,4371,4382,4389,18647);
INSERT INTO npc_vendor (entry, item,  maxcount, incrtime, condition_id, comments) VALUES
(3413, 4361, 2, 9000, 0, 'Copper Tube'),
(3413, 4363, 2, 9000, 0, 'Copper Modulator'),
(3413, 4371, 2, 9000, 0, 'Bronze Tube'),
(3413, 4382, 1, 9000, 0, 'Bronze Framework'),
(3413, 4389, 1, 9000, 0, 'Gyrochronatom'),
(3413, 18647, 1, 9000, 0, 'Schematic: Red Firework'); -- popped up as item for the refloot, it was missing from npc_vendor

-- Readd removed patterns and add more potential ones
-- SELECT * FROM item_template where class=9 and itemlevel between 25 and 47 and allowableclass=-1 and buyprice > 0 and material=-1 AND entry NOT IN (
-- -- bonding 1 and special q / bounding 0 and special q / special npc drop (not world loot) / thaught by teacher, pattern never used (6376)
-- 7983,7984,7985,11827,11828,21724,21725,21726,21727,21728,21729,21730,21731,21732,34413,21738,10713,10644,9367,7982,7981,7980,7979,7978,4624,11206,11205,11203,11166,11152,11151,11150,9294,8399,8398,8397,8395,7192,6672,5775,5773,4413,4411,6376)
-- AND entry NOT IN (SELECT item from npc_vendor_template) AND entry NOT IN (SELECT item from npc_vendor) order by entry;
-- 50502	NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)
-- should be split up more, good enough for now
DELETE FROM reference_loot_template_names WHERE entry=50505;
INSERT INTO reference_loot_template_names (entry, name) VALUES (50505, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 19-52)');
DELETE FROM reference_loot_template WHERE entry=50505;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(50505, 2407, 0, 1, 1, 1, 0, 'Pattern: White Leather Jerkin'),
(50505, 2882, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Shoulders'),
(50505, 2883, 0, 1, 1, 1, 0, 'Plans: Deadly Bronze Poniard'),
(50505, 3396, 0, 1, 1, 1, 0, 'Recipe: Elixir of Lesser Agility'),
(50505, 3608, 0, 1, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
(50505, 3611, 0, 1, 1, 1, 0, 'Plans: Green Iron Boots'),
(50505, 3612, 0, 1, 1, 1, 0, 'Plans: Green Iron Gauntlets'),
(50505, 3830, 0, 1, 1, 1, 0, 'Recipe: Elixir of Fortitude'),
(50505, 3831, 0, 1, 1, 1, 0, 'Recipe: Mighty Troll''s Blood Potion'),
(50505, 3832, 0, 1, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
(50505, 3866, 0, 1, 1, 1, 0, 'Plans: Jade Serpentblade'),
(50505, 3867, 0, 1, 1, 1, 0, 'Plans: Golden Iron Destroyer'),
(50505, 3868, 0, 1, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(50505, 3869, 0, 1, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(50505, 3870, 0, 1, 1, 1, 0, 'Plans: Green Iron Shoulders'),
(50505, 3871, 0, 1, 1, 1, 0, 'Plans: Golden Scale Shoulders'),
(50505, 3872, 0, 1, 1, 1, 0, 'Plans: Golden Scale Leggings'),
(50505, 3873, 0, 1, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(50505, 3874, 0, 1, 1, 1, 0, 'Plans: Polished Steel Boots'),
(50505, 3875, 0, 1, 1, 1, 0, 'Plans: Golden Scale Boots'),
(50505, 4296, 0, 1, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(50505, 4297, 0, 1, 1, 1, 0, 'Pattern: Barbaric Gloves'),
(50505, 4298, 0, 1, 1, 1, 0, 'Pattern: Guardian Belt'),
(50505, 4299, 0, 1, 1, 1, 0, 'Pattern: Guardian Armor'),
(50505, 4300, 0, 1, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(50505, 4301, 0, 1, 1, 1, 0, 'Pattern: Barbaric Belt'),
(50505, 4348, 0, 1, 1, 1, 0, 'Pattern: Phoenix Gloves'),
(50505, 4349, 0, 1, 1, 1, 0, 'Pattern: Phoenix Pants'),
(50505, 4350, 0, 1, 1, 1, 0, 'Pattern: Spider Silk Slippers'),
(50505, 4351, 0, 1, 1, 1, 0, 'Pattern: Shadow Hood'),
(50505, 4352, 0, 1, 1, 1, 0, 'Pattern: Boots of the Enchanter'),
(50505, 4353, 0, 1, 1, 1, 0, 'Pattern: Spider Belt'),
(50505, 4354, 0, 1, 1, 1, 0, 'Pattern: Rich Purple Silk Shirt'),
(50505, 4356, 0, 1, 1, 1, 0, 'Pattern: Star Belt'),
(50505, 4412, 0, 1, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(50505, 4414, 0, 1, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(50505, 4415, 0, 1, 1, 1, 0, 'Schematic: Craftsman''s Monocle'),
(50505, 4416, 0, 1, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(50505, 4417, 0, 1, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(50505, 5543, 0, 1, 1, 1, 0, 'Plans: Iridescent Hammer'),
(50505, 5578, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'),
(50505, 5774, 0, 1, 1, 1, 0, 'Pattern: Green Silk Pack'),
(50505, 5974, 0, 1, 1, 1, 0, 'Pattern: Guardian Cloak'),
(50505, 6044, 0, 1, 1, 1, 0, 'Plans: Iron Shield Spike'),
(50505, 6045, 0, 1, 1, 1, 0, 'Plans: Iron Counterweight'),
(50505, 6046, 0, 1, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(50505, 6211, 0, 1, 1, 1, 0, 'Recipe: Elixir of Ogre''s Strength'),
(50505, 6454, 0, 1, 1, 1, 0, 'Manual: Strong Anti-Venom'),
(50505, 7084, 0, 1, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),
(50505, 7085, 0, 1, 1, 1, 0, 'Pattern: Azure Shoulders'),
(50505, 7086, 0, 1, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(50505, 7090, 0, 1, 1, 1, 0, 'Pattern: Green Silk Armor'),
(50505, 7091, 0, 1, 1, 1, 0, 'Pattern: Truefaith Gloves'),
(50505, 7092, 0, 1, 1, 1, 0, 'Pattern: Hands of Darkness'),
(50505, 7360, 0, 1, 1, 1, 0, 'Pattern: Dark Leather Gloves'),
(50505, 7363, 0, 1, 1, 1, 0, 'Pattern: Pilferer''s Gloves'),
(50505, 7364, 0, 1, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'),
(50505, 7449, 0, 1, 1, 1, 0, 'Pattern: Dusky Leather Leggings'),
(50505, 7450, 0, 1, 1, 1, 0, 'Pattern: Green Whelp Armor'),
(50505, 7452, 0, 1, 1, 1, 0, 'Pattern: Dusky Boots'),
(50505, 7453, 0, 1, 1, 1, 0, 'Pattern: Swift Boots'),
(50505, 7975, 0, 1, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(50505, 7976, 0, 1, 1, 1, 0, 'Plans: Mithril Shield Spike'),
(50505, 7989, 0, 1, 1, 1, 0, 'Plans: Mithril Spurs'),
(50505, 7991, 0, 1, 1, 1, 0, 'Plans: Mithril Scale Shoulders'),
(50505, 7992, 0, 1, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(50505, 8029, 0, 1, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(50505, 8384, 0, 1, 1, 1, 0, 'Pattern: Comfortable Leather Hat'),
(50505, 8386, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Robe'),
(50505, 8387, 0, 1, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(50505, 9293, 0, 1, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(50505, 9295, 0, 1, 1, 1, 0, 'Recipe: Invisibility Potion'),
(50505, 10300, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(50505, 10301, 0, 1, 1, 1, 0, 'Pattern: White Bandit Mask'),
(50505, 10302, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(50505, 10312, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(50505, 10315, 0, 1, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(50505, 10424, 0, 1, 1, 1, 0, 'Plans: Silvered Bronze Leggings'),
(50505, 10601, 0, 1, 1, 1, 0, 'Schematic: Bright-Eye Goggles'),
(50505, 10603, 0, 1, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(50505, 10604, 0, 1, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(50505, 10605, 0, 1, 1, 1, 0, 'Schematic: Spellpower Goggles Xtreme'),
(50505, 10606, 0, 1, 1, 1, 0, 'Schematic: Parachute Cloak'),
(50505, 11098, 0, 1, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
(50505, 11164, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer'),
(50505, 11165, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Elemental Slayer'),
(50505, 11167, 0, 1, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
(50505, 11168, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Lesser Block'),
(50505, 11202, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(50505, 11204, 0, 1, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(50505, 11208, 0, 1, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(50505, 11224, 0, 1, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(50505, 12261, 0, 1, 1, 1, 0, 'Plans: Searing Golden Blade');
