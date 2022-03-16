-- Revamp Kolkar Wrangler 3272 to use creature_spell_list

-- Kolkar Wrangler 3272
UPDATE creature_template SET SpellList=327201 WHERE entry=3272;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(327201, 'The Barrens - Kolkar Wrangler', 0, 75);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(327201, 3, 12024, 0, 1, 0, 100, 0, 4000, 12000, 25000, 35000, 'The Barrens - Kolkar Wrangler - Net on Current'),
(327201, 4, 6660, 2, 1, 0, 100, 0, 0, 0, 2000, 3000, 'The Barrens - Kolkar Wrangler - Shoot on Current');

-- Moonkins should not be skinnable.
UPDATE creature_template SET SkinningLootId=0 WHERE entry IN (2927, 2928, 2929, 8210, 10157, 10158, 10159, 10160, 7808);

-- Remove Mulgore Spice Bread from Riverpaw Gnoll.
DELETE FROM creature_loot_template WHERE item=4544 && entry=117;

-- Correct Rep and XP for old version of Crown of the Earth.
-- https://tbc.wowhead.com/quest=934/crown-of-the-earth#comments:id=104684
UPDATE quest_template SET RewRepValue1=75 WHERE entry=934; -- 75 in classic, we had 250 befor

-- Correct drop chance of Thresher Eye.
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=5412 && entry=2185; -- -80
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=5412 && entry=2187; -- -80

-- Add second Onu is meditating quest to Onu. - quest was removed in tbc
-- INSERT INTO creature_questrelation (id, quest) VALUES (3616, 960);
-- INSERT INTO creature_involvedrelation (id, quest) VALUES (3616, 960);
-- INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES (949, 8, 949, 0, 0, 0, 1);
-- UPDATE quest_template SET SpecialFlags=1, RequiredCondition=949, PrevQuestId=944, OfferRewardText='I am meditating on your task, $N.  Meditating on reasons why the Twilight\'s Hammer and naga are here.$B$BWhen you are ready, use the phial of scrying to create a scrying bowl.  Then, contact me through the bowl.$B$BIf you have lost your phial of scrying, then here is another.' WHERE entry=960;

-- Quest Proof of Demise should require At War With The Scarlet Crusade Part 1.
UPDATE quest_template SET PrevQuestId=427 WHERE entry=374; -- https://tbc.wowhead.com/quest=374/proof-of-demise#comments:id=2770147

-- npc_professor_phizzlethorpeAI waypoint 21 completes the quest
UPDATE quest_template SET SpecialFlags=2 WHERE entry=665; -- 0, else autocomplete on taking quest

-- Lady Vespia should drop Ring of Zoram. - https://classic.wowhead.com/quest=1009/ruuzel
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES (10559, 5445, -100, 0, 1, 1, 0, 'Ring of Zoram');

-- Correct drop chance for Pridewing Venom Sac. - https://classic.wowhead.com/item=5808/pridewing-venom-sac#dropped-by ~-80 befor
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=5808 AND entry IN (4011,4012,4013,4014,4015,5928);

UPDATE creature_template SET skinninglootid=0 WHERE entry=6141; -- unitflags 33555200

-- Correct drop chance for Highborne Relic. - https://tbc.wowhead.com/item=5360/highborne-relic
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=5360; -- -80

-- Correct drop chance for Fine Crab Chunks. - https://tbc.wowhead.com/item=12237/fine-crab-chunks
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=12237; -- -80

-- Correct drop chance for Worn Parchment. - https://tbc.wowhead.com/item=5348/worn-parchment
UPDATE creature_loot_template SET ChanceOrQuestChance=-45 WHERE item=5348; -- -80

-- Correct drop chance for Top of Gelkak's Key. - https://tbc.wowhead.com/item=7498/top-of-gelkaks-key
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=7498; -- -100

-- Correct drop chance for Middle of Gelkak's Key. - https://tbc.wowhead.com/item=7499/middle-of-gelkaks-key
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item=7499 && entry IN (2208, 2207); -- -100
UPDATE creature_loot_template SET ChanceOrQuestChance=-1 WHERE item=7499 && entry NOT IN (2208, 2207); -- -100

-- Correct drop chance for Bottom of Gelkak's Key. -- https://tbc.wowhead.com/item=7500/bottom-of-gelkaks-key
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=7500 && entry=2236; -- -100
UPDATE creature_loot_template SET ChanceOrQuestChance=-5 WHERE item=7500 && entry=2233; -- -100

-- Correct drop chance for Fine Moonstalker Pelt. - https://tbc.wowhead.com/item=5386/fine-moonstalker-pelt
UPDATE creature_loot_template SET ChanceOrQuestChance=-40 WHERE item=5386; -- -80
