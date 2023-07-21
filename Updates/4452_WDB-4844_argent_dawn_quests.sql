-- These 2 Conditions are not needed anymore (condIDs reused later)
-- They are replaced with @COND5 (Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)
-- Old Condition 522 - (Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory) - (Quest ID 10903 Rewarded AND NOT (Quest ID 10935 Rewarded))
-- Old Condition 560 - (Quest ID 5405 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)

-- missing condition (condID:522 reused)
-- DELETE FROM conditions WHERE condition_entry = @COND1;
-- INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
-- (@COND1, 8, 5401, 0, 0, 0, 0, 'Quest ID 5401 Rewarded'); -- 106
-- (@COND2, 8, 5405, 0, 0, 0, 0, 'Quest ID 5405 Rewarded'), -- 109
-- (@COND3, 8, 5503, 0, 0, 0, 0, 'Quest ID 5503 Rewarded'); -- 110
-- 142	-2	110	141	0	0	0	(Quest ID 5503 Rewarded OR (Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded))
-- 143	-1	90	142	0	0	0	(Player Has Less Than 1 of Item ID 12846 in Inventory AND (Quest ID 5503 Rewarded OR (Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded)))

SET @COND0 = 90; -- Player Has Less Than 1 of Item ID 12846 in Inventory -> 90
SET @COND1 = 106; -- Quest ID 5401 Rewarded -> 106
SET @COND2 = 109; -- Quest ID 5405 Rewarded -> 109
SET @COND3 = 110; -- Quest ID 5503 Rewarded -> 110
SET @COND4 = 143; -- free condID -> reuse 143 as it has to be lower as 560.
SET @COND5 = 560; -- (Quest ID 5405 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory) - new

-- only 1 of these quests can be taken/completed (Argent Dawn Commission - Quests)
UPDATE quest_template SET ExclusiveGroup = 5401 WHERE entry IN (5401, 5405, 5503); -- already there with 5405 as exclusivegroup

-- new condition (condID:560 reused)
DELETE FROM conditions WHERE condition_entry = @COND4;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@COND4, -2, @COND1, @COND2, @COND3, 0, 0, '(Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded)');

-- if 1 of the 3 'Argent Dawn Commission' Quests completed, these 9 Quests will unlock (Scourgestone-Quests)
UPDATE quest_template SET RequiredCondition = @COND4 WHERE entry IN (5402, 5403, 5404, 5406, 5407, 5408, 5508, 5509, 5510);

-- new condition
DELETE FROM conditions WHERE condition_entry = @COND5;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@COND5, -1, @COND4, @COND0, 0, 0, 0, '(Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)');

-- update to new condition id for gossip: I need another Argent Dawn Commission.
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3421 AND id = 0; -- 143 (Argent Quartermaster Hasana)
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3441 AND id = 0; -- 143 (Argent Quartermaster Lightspark)
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3461 AND id = 0; -- 143 (Quartermaster Miranda Breechlock)

-- wowhead comment says 
-- https://www.wowhead.com/wotlk/npc=10840/argent-officer-pureheart#comments:id=745313:reply=154918
-- only Scourgestones quests? - https://www.wowhead.com/tbc/npc=10840/argent-officer-pureheart
UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (5401, 5402, 5403, 5404); -- both factions! (maybe not in classic)
UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (5405, 5406, 5407, 5408); -- both factions! (maybe not in classic)

UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (5503, 5508); -- both factions! - for classic. - does not change anything though.

