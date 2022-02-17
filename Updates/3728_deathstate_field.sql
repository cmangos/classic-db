-- Preparations for removal of DeathState field.
-- SELECT * FROM creature where deathstate > 0;

-- =======================
-- npc_redemption_targetAI
-- =======================
-- guid		entry	map
-- 6129		6177	0
-- 63139	17542	530
-- 63505	17768	530
-- 81163	6172	0
-- https://youtu.be/VKXoTRDmarY?t=10
-- https://youtu.be/KQgvQUeBKrA?t=1 - yell bct 14365 - tbc
UPDATE creature SET DeathState=0 WHERE id IN (6177,17542,17768,6172);
-- spell does not target "corpse" anymore
UPDATE spell_script_target SET type=1 WHERE entry IN (8593,31225); -- 6172,6177,17542,17768

UPDATE creature_template SET NpcFlags=0 WHERE entry IN (6172,6177); -- npc_redemption_target sets it 1sec after text, which is wrong, pending rewrite (text is wrong etc, dwarfs dont talk like that)

UPDATE creature_template SET UnitFlags=UnitFlags|4096 WHERE entry=6177; -- pre wotlk (UNIT_FLAG_PVP) - all others have it

-- this wouldve been a hack just for some visual
-- Else Questlog says: Narm Faulk / Henze Faulk slain: 0/1 -> Quest is completed by getting NpcFlags Set & ReqSpellCast1 8593
 -- this together with ReqSpellCast1=8593 should do the trick, ReqSpellCast1 is custom field though (like this it will still show the "killed xyz in combat log"
-- UPDATE quest_template SET Method=1, ReqCreatureOrGOID1=0, ReqCreatureOrGOCount1=0 WHERE entry=1783; -- 2, 6177	1
-- UPDATE quest_template SET Method=1, ReqCreatureOrGOID1=0, ReqCreatureOrGOCount1=0 WHERE entry=1786; -- 2, 6172	1

-- Tome of Divinity Quest must be repeatable, as if you take/autocomplete it
-- you get a quest item to start a quest, if you delete that item you can not proceed anymore as you cant get it back
UPDATE quest_template SET SpecialFlags=1, RequiredCondition=9014 WHERE entry=1641;
UPDATE quest_template SET SpecialFlags=1, RequiredCondition=9015 WHERE entry=1645;

-- Make Symbol of Life i.6866 retrievable until you dont have to speak to Henze Faulk 6172, Narm Faulk 6177 for followup quest - no wonder they changed this for the tbc versions
-- people can get stuck after rezzing if they dont complete the quest and abort it, they can not retake the item to rezz the npc again to take the quest from him
UPDATE quest_template SET RequiredCondition=9018, PrevQuestId=0 WHERE entry=1789; -- -1783, should be 1783 and 1784 as you can get stuck inbetween
UPDATE quest_template SET RequiredCondition=9021, PrevQuestId=0 WHERE entry=1790; -- -1786, should be 1786 and 1787 as you can get stuck inbetween

DELETE FROM conditions WHERE condition_entry BETWEEN 9014 AND 9021;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(9014, 22, 1642, 0, 0, 0, 0, 'Quest ID 1642 NOT Taken AND NOT Rewarded'),
(9015, 22, 1646, 0, 0, 0, 0, 'Quest ID 1642 NOT Taken AND NOT Rewarded'),

(9016, 9, 1783, 0, 0, 0, 0, 'Quest ID 1783 Taken'),
(9017, 9, 1784, 0, 0, 0, 0, 'Quest ID 1784 Taken'),
(9018, -2, 9016, 9017, 0, 0, 0, '(Quest ID 1783 Taken) OR (Quest ID 1784 Taken)'),

(9019, 9, 1786, 0, 0, 0, 0, 'Quest ID 1786 Taken'),
(9020, 9, 1787, 0, 0, 0, 0, 'Quest ID 1787 Taken'),
(9021, -2, 9019, 9020, 0, 0, 0, '(Quest ID 1786 Taken) OR (Quest ID 1787 Taken)');

-- 1 to ~5 kills some say over 9000...
UPDATE creature_loot_template SET ChanceOrQuestChance=-50 WHERE item=6846 AND entry=474; -- Defias Script not 100%
UPDATE creature_loot_template SET ChanceOrQuestChance=-50 WHERE item=6847 AND entry=6123; -- Dark Iron Script not 100%
