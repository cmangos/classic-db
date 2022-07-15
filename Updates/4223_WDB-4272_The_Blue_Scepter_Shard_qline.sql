-- The Blue Scepter Shard - questline

-- q.8575 'Azuregos's Magical Ledger' - fine
-- q.8576 'Translating the Ledger' - fine

-- from now we have 3 chains that can be done in any order you wish
-- 1st:
-- q.8577 'Stewvul, Ex-B.F.F.' - fine
-- q.8578 'Scrying Goggles? No Problem!' - fixed
-- side note: 3.x.x droprate for quest item was incressed to 100% 'Narain's Scrying Goggles'
UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry = 8578;
-- starts from:
-- o.180642 'Inconspicuous Crate'
DELETE FROM gameobject_questrelation WHERE id=180642 AND quest=8578; -- already got this
INSERT INTO gameobject_questrelation (id, quest) VALUES
(180642, 8578);
-- wrong data removed:
DELETE FROM creature_questrelation WHERE quest=8578 AND id=11811; -- already got this
-- 2nd:
-- q.8584 'Never Ask Me About My Business' - fine
-- q.8585 'The Isle of Dread!' - fine
-- q.8586 'Dirge's Kickin' Chimaerok Chops' - fine
-- q.8587 'Return to Narain' - fixed
UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry = 8587;
-- 3rd:
-- OPTIONAL: for players who wants buff: - fine
-- q.8597 'Draconic for Dummies' - fine
-- q.8598 'rAnS0m' - fine
-- q.8606 'Decoy!' - fine
-- q.8620 'The Only Prescription' - fixed
UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry = 8620;
UPDATE creature_loot_template SET condition_id = 97 WHERE item BETWEEN 21103 AND 21110; -- q.8620 'The Only Prescription' taken
-- Add missing Draconic for Dummies for Lady Hederine 10201 - source: wotlkmangos
-- https://www.wowhead.com/classic/item=21105/draconic-for-dummies#dropped-by
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (10201, 21105, 6, 0, 1, 1, 97, 'Draconic for Dummies');

-- After you've done these three you can continue here:
-- q.8728 'The Good News and The Bad News'
-- player must finish 3 chains first
UPDATE quest_template SET RewMailTemplateId=123, RewMailDelaySecs=0, RequiredCondition=3815 WHERE entry=8728;
DELETE FROM conditions WHERE condition_entry BETWEEN 3812 AND 3815;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(3812, 8, 8578, 0, 0, 0, 0, 'Quest ID 8578 Rewarded'), -- q.8578 'Scrying Goggles? No Problem!'
(3813, 8, 8587, 0, 0, 0, 0, 'Quest ID 8587 Rewarded'), -- q.8586 'Return to Narain'
(3814, 8, 8620, 0, 0, 0, 0, 'Quest ID 8620 Rewarded'), -- q.8620 'The Only Prescription'
(3815, -1, 3814, 3813, 3812, 0, 0,'3 quests rewarded');
-- q.8729 'The Wrath of Neptulon' - fine

-- Final part of CHAIN
-- q.8742 'The Might of Kalimdor'
-- req 3 quests completed
UPDATE quest_template SET RequiredCondition=3819 WHERE entry=8742;
DELETE FROM conditions WHERE condition_entry BETWEEN 3816 AND 3819;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(3816, 8, 8730, 0, 0, 0, 0, 'Quest ID 8730 Rewarded'), -- q.8730 'Nefarius's Corruption' -- The Red Scepter Shard questline
(3817, 8, 8741, 0, 0, 0, 0, 'Quest ID 8741 Rewarded'), -- q.8741 'The Champion Returns' -- The Green Scepter Shard quesline
(3818, 8, 8729, 0, 0, 0, 0, 'Quest ID 8729 Rewarded'), -- q.8729 'The Wrath of Neptulon' -- The Blue Scepter Shard quesline
(3819, -1, 3818, 3817, 3816, 0, 0,'3 quests rewarded');
UPDATE quest_template SET RequiredCondition=3819 WHERE entry = 8742;
