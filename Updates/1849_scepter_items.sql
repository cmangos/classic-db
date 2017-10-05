-- Added conditions for items involved in quest Nefarius's Corruption
SET @COND := 1395;

DELETE FROM conditions WHERE condition_entry IN (@COND, @COND + 1);
INSERT INTO conditions VALUES
(@COND, 9, 8730, 0, 'Has taken quest Nefarius Corruption'),
(@COND + 1, -1, @COND, 734, 'Has taken quest 8730 and event failed'),
(@COND + 2, -1, @COND, 735, 'Has taken quest 8730 and event succeed');

UPDATE creature_loot_template SET ChanceOrQuestChance=100, condition_id = @COND + 1 where item=21142;
UPDATE creature_loot_template SET ChanceOrQuestChance=100, condition_id = @COND + 2 where item=21138;
