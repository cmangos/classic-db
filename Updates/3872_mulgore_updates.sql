-- Correct EmoteState for c.guid.26593
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature where id=2989) AND emote=233;
DELETE FROM creature_addon WHERE guid=26593; -- didnt have emote
DELETE FROM creature_template_addon WHERE entry=2989;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(2989, 0, 0, 1, 16, 233, 0, NULL);

-- Bael''dun Appraiser 2990
UPDATE creature_template SET SpellList=299001 WHERE entry=2990;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(299001, 'Mulgore - Bael''dun Appraiser', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(299001, 0, 2052, 0, 201, 0, 100, 1, 4000, 12000, 12000, 17000, 'Mulgore - Bael''dun Appraiser - Lesser Heal on Friendly Missing 50% including self');

-- Add some missing White Items to White World Drop Refloots
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 4565,  0, 1, 1, 1, 0, 'Simple Dagger'
FROM reference_loot_template_names WHERE entry IN (
60401, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 5-6)
60402, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 6)
60403, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
60404, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
60405, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
60406, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
60407, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
60408, -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
60409, -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
60410, -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
60411 -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
);

DELETE FROM creature_loot_template WHERE item=8179; -- Cadet's Bow
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 8179,  0, 1, 1, 1, 0, 'Cadet''s Bow'
FROM reference_loot_template_names WHERE entry IN (
60401, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 5-6)
60402, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 6)
60403, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
60404, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
60405, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
60406, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
60407, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
60408, -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
60409, -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
60410, -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
60411 -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
);

REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 4560,  0, 1, 1, 1, 0, 'Fine Scimitar'
FROM reference_loot_template_names WHERE entry IN (
60401, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 5-6)
60402, -- NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 6)
60403, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)
60404, -- NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)
60405, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)
60406, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)
60407, -- NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)
60408, -- NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)
60409, -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
60410, -- NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)
60411 -- NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)
);

-- Remove White World Drop Items from direct creature_loot_template, should all be in refloots except for unique items like i.23553
DELETE FROM creature_loot_template WHERE item IN (766,767,768,8182,8177,3190,3189,8181,4563,1438,2959,2960,2963,2964,2967,2968,3200,3213,3214,3279,3280,3281,3284,3285,
3286,3289,3290,3303,3312,3641,3642,3644,3649,3650,4560,4565,4658,4659,4662,4663,4665,4666,4668,4669,4671,4672,4674,4675,4677,4680,4683,4684,4686,4689,4690,4692,6506,6507,
6508,6509,6510,6513,6514,6515,6517,6518,6519,6520,6521,7109,7350,7351,8179,9742,9743,9744,9745,9746,9750,9751,9752,9754,9755,9758,9759,9760,9761,9762,14086,14087,14088,
14089,14093,14095,14098,14099,14102,14110,15003,15004,15005,15006,15007,15008,15015,15297,15299,15301,15302,15472,15473,15474,15475,15476,15478,15480,15481,15482,15483,15484,15895,
2971,2972,2975,2979,3207,3304,3311,3643,4678,4681,4687,4693,4694,4698,4700,5110,5319,6549,6555,6566,6579,6588,10405,10407,14115,14116,14126,14157,14169,14170,14368,14728,15013,15019,15300,15313,15490,15496,15505
);

-- Correct Level for Thistle Cub 6789
UPDATE creature_template SET MinLevel=9, MaxLevel=10 WHERE entry=6789; -- 11	12

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60403,  5, 0, -60403, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)'
FROM creature_template WHERE entry IN (
1126, -- Large Crag Boar	6	7
1138, -- Snow Tracker Wolf	6	7
1553, -- Greater Duskbat	6	7
2956, -- Adult Plainstrider	6	7
3099  -- Dire Mottled Boar	6	7
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60405,  5, 0, -60405, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)'
FROM creature_template WHERE entry IN (
1127, -- Elder Crag Boar	7	8
1131, -- Winter Wolf	7	8
1201, -- Snow Leopard	7	8
1548, -- Cursed Darkhound	7	8
1922, -- Gray Forest Wolf	7	8
1996, -- Strigid Screecher	7	8
1999, -- Webwood Venomfang	7	8
2043, -- Nightsaber Stalker	7	8
2972, -- Kodo Calf	7	8
3035, -- Flatland Cougar	7	8
3107, -- Surf Crawler	7	8
3126, -- Armored Scorpid	7	8
3122  -- Bloodtalon Taillasher	6	8
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60407,  5, 0, -60407, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)'
FROM creature_template WHERE entry IN (
2970, -- Swoop	7	9
1997, -- Strigid Hunter	8	9
3100, -- Elder Mottled Boar	8	9
2000, -- Webwood Silkspinner	8	9
2033  -- Elder Nightsaber	8	9
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60409,  5, 0, -60409, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)'
FROM creature_template WHERE entry IN (
2971, -- Taloned Swoop	8	10
3108, -- Encrusted Surf Crawler	9	10
3127, -- Venomtail Scorpid	9	10
6789  -- Thistle Cub	9	10
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60411,  5, 0, -60411, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)'
FROM creature_template WHERE entry IN (
3118, -- Dustwind Storm Witch	10	11
3199, -- Burning Blade Cultist	10	11
3110, -- Dreadmaw Crocolisk	9	11
2234, -- Young Reef Crawler	10	11
2973, -- Kodo Bull	10	11
3225, -- Corrupted Mottled Boar	10	11
3226, -- Corrupted Scorpid	10	11
3227, -- Corrupted Bloodtalon Scythemaw	10	11
3228  -- Corrupted Surf Crawler	10	11
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60412,  5, 0, -60412, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'
FROM creature_template WHERE entry IN (
3058 -- Arra'chea	11	11
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60413,  5, 0, -60413, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)'
FROM creature_template WHERE entry IN (
2974, -- Kodo Matriarch	11	12
3231 -- Corrupted Dreadmaw Crocolisk	11	12
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60414,  5, 0, -60414, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)'
FROM creature_template WHERE entry IN (
7319 -- Lady Sathrah	12	12
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60415,  5, 0, -60415, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)'
FROM creature_template WHERE entry IN (
3243 -- Savannah Highmane	12	13
);	

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60417,  5, 0, -60417, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)'
FROM creature_template WHERE entry IN (
15811  -- Faltering Silithid Flayer	11	14
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60418,  5, 0, -60418, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)'
FROM creature_template WHERE entry IN (
4263 -- Deepmoss Hatchling	14	14
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60419,  5, 0, -60419, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)'
FROM creature_template WHERE entry IN (
2173, -- Reef Frenzy	14	15
3234, -- Lost Barrens Kodo	14	15
3425, -- Savannah Prowler	14	15
8236  -- Muck Frenzy	14	15
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60421,  5, 0, -60421, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 14-19) - (NPC Levels: 15-16)'
FROM creature_template WHERE entry IN (
2174, -- Coastal Frenzy	14	16
2322, -- Foreststrider	14	16
3241, -- Savannah Patriarch	15	16
3248, -- Barrens Giraffe	15	16
3630, -- Deviate Coiler	15	16
3634, -- Deviate Stalker	15	16
4127, -- Hecklefang Hyena	15	16
6033  -- Lake Frenzy	15	16

);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60422,  5, 0, -60422, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'
FROM creature_template WHERE entry IN (
3475 -- Echeyakee	16	16
);

REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 60423,  5, 0, -60423, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15-21) - (NPC Levels: 16-17)'
FROM creature_template WHERE entry IN (
2165, -- Grizzled Thistle Bear	16	17
3245, -- Ornery Plainstrider	16	17
3631, -- Deviate Stinglash	16	17
3633, -- Deviate Slayer	16	17
4005, -- Deepmoss Creeper	16	17
4008  -- Cliff Stormer	15	17
);

-- a little too many are spawned at once, should be more fought over.
UPDATE pool_template SET max_limit=7 WHERE entry=1822; -- 10 (14max) - The Barrens (The Forgotten Pools) - Laden Mushroom (3640)
UPDATE pool_template SET max_limit=9 WHERE entry=1821; -- 12 (18max) - The Barrens (Lushwater Oasis) - Laden Mushroom (3640)
UPDATE pool_template SET max_limit=7 WHERE entry=1820; -- 9 (13max) - The Barrens (The Stagnant Oasis) - Laden Mushroom (3640)

-- https://tbc.wowhead.com/npc=3276/witchwing-harpy
-- https://tbc.wowhead.com/npc=3277/witchwing-roguefeather
UPDATE broadcast_text SET ChatTypeID=0 WHERE Id=2231; -- 1 "You will be easy prey, $C."

-- https://tbc.wowhead.com/npc=3471/tinkerer-sniggles#comments:id=2820493:reply=1325085
UPDATE creature SET spawntimesecsmin=510, spawntimesecsmax=510 WHERE id=3471;

-- Correct some stats & improve default position for Sludge Beast 3295
UPDATE creature_template SET ExtraFlags=ExtraFlags|32768, SpeedWalk=1, DamageMultiplier=1.7 WHERE entry=3295; -- 0 1.49 4
UPDATE creature SET position_x=1060.19, position_y=-3125.16, position_z=71.8638, spawndist=20, MovementType=1 WHERE id=3295;

-- Improve Damage for Elder Mystic Razorsnout 3270
UPDATE creature_template SET DamageMultiplier=1.7 WHERE entry=3270; -- 3

-- Improve Dropchance for Cats Eye Emerald 5097
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item=5097; -- -100
