-- Remove Distact Immunity from Dire Maul North Guards 14321,14323,14326
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8 WHERE entry IN (14321,14323,14326); -- Dire Maul North Guards

-- Remove Skinning Loot from Bloodpetal Pest
UPDATE creature_template SET SkinningLootId=0 WHERE entry=9157; -- 100004
-- 
-- Set groupid to 1 so groupid 2 is separated (item=8167)
UPDATE skinning_loot_template SET groupid=1 WHERE entry IN (4343,4323,4324,4328,4329,4331,4334,4339,4341,4342,4344,4345,4346,4347,4348,4352,4356,4357,4351,4355,4374,4388,4389,4390,4396,4397,4398,4399,4400,4425,4841);

UPDATE skinning_loot_template SET ChanceOrQuestChance=78 WHERE entry=4343 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4343 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=19 WHERE entry=4343 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=40 WHERE entry=4323 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4323 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4323 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4323 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4323 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=39 WHERE entry=4324 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4324 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=51 WHERE entry=4324 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4324 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4324 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=35 WHERE entry=4328 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4328 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4328 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4328 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4328 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=35 WHERE entry=4329 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4329 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4329 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4329 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4329 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=35 WHERE entry=4331 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4331 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4331 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4331 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4331 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=35 WHERE entry=4334 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4334 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4334 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4334 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4334 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=72 WHERE entry=4339 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=25 WHERE entry=4339 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4339 AND item=8165;
UPDATE skinning_loot_template SET ChanceOrQuestChance=1 WHERE entry=4339 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=43 WHERE entry=4341 AND item=2319;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4341 AND item=4232;
UPDATE skinning_loot_template SET ChanceOrQuestChance=51 WHERE entry=4341 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4341 AND item=4235;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4342 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4342 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4342 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=78 WHERE entry=4344 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4344 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4344 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4345 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4345 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=21 WHERE entry=4345 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=31 WHERE entry=4346 AND item=2319;
UPDATE skinning_loot_template SET ChanceOrQuestChance=6 WHERE entry=4346 AND item=4232;
UPDATE skinning_loot_template SET ChanceOrQuestChance=62 WHERE entry=4346 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=1 WHERE entry=4346 AND item=4235;

UPDATE skinning_loot_template SET ChanceOrQuestChance=74 WHERE entry=4347 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4347 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=21 WHERE entry=4347 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=78 WHERE entry=4348 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4348 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=19 WHERE entry=4348 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4352 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4352 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4352 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=78 WHERE entry=4356 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4356 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=19 WHERE entry=4356 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=78 WHERE entry=4357 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4357 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4357 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=44 WHERE entry=4351 AND item=2319;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4351 AND item=4232;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4351 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4351 AND item=4235;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4355 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4355 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4355 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=11 WHERE entry=4374 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=84 WHERE entry=4374 AND item=8170;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4374 AND item=8171;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4388 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4388 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4388 AND item=4304;

UPDATE skinning_loot_template SET ChanceOrQuestChance=43 WHERE entry=4389 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4389 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4389 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4389 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=39 WHERE entry=4390 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=5 WHERE entry=4390 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=54 WHERE entry=4390 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4390 AND item=8169;

UPDATE skinning_loot_template SET ChanceOrQuestChance=80 WHERE entry=4396 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4396 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=17 WHERE entry=4396 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=25, groupid=2 WHERE entry=4396 AND item=8167;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4397 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4397 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4397 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=25, groupid=2 WHERE entry=4397 AND item=8167;

UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=4398 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4398 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=4398 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=25, groupid=2 WHERE entry=4398 AND item=8167;

UPDATE skinning_loot_template SET ChanceOrQuestChance=40 WHERE entry=4399 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4399 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=52 WHERE entry=4399 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=6 WHERE entry=4399 AND item=8169;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50, groupid=2 WHERE entry=4399 AND item=8167;

UPDATE skinning_loot_template SET ChanceOrQuestChance=42 WHERE entry=4400 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4400 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=51 WHERE entry=4400 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=4400 AND item=8169;
UPDATE skinning_loot_template SET ChanceOrQuestChance=49, groupid=2 WHERE entry=4400 AND item=8167;

UPDATE skinning_loot_template SET ChanceOrQuestChance=44 WHERE entry=4841 AND item=4234;
UPDATE skinning_loot_template SET ChanceOrQuestChance=2 WHERE entry=4841 AND item=4235;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50 WHERE entry=4841 AND item=4304;
UPDATE skinning_loot_template SET ChanceOrQuestChance=4 WHERE entry=4841 AND item=8169;
