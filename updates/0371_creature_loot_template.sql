-- Fixed drop rate of item 6246 (Hatefury Claw) & 6247 (Hatefury Horn) in quest 1458 (Reagents for Reclaimers Inc. part 1)
-- Value guessed from comments. Still better that current 80% that are wrong
-- Source: http://www.wowhead.com/quest=1458#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 6246;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 6247;

-- Fixed drop rate of item 6248 (Scorpashi Venom) in quest 1459 (Reagents for Reclaimers Inc. part 2)
-- Value guessed from comments. Still better that current 80% that are wrong
-- Source: http://www.wowhead.com/quest=1459#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6248;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 6249;

-- Fixed drop rate of item 6067 (Centaur Ear) in quest 1387 (Centaur Bounty)
-- Value guessed from comments. Still better that current 80% that are wrong
-- Source: http://www.wowhead.com/quest=1387#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 6067;

-- Fixed drop rate of item 4435 (Mote of Myzrael) in quest The Princess Trapped
-- Value guessed from comments and wowhead. Still better that current 80% that are wrong
-- Source: http://www.wowhead.com/item=4435#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4435;
