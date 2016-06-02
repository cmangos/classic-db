-- Fixed flags for quest 8945 (Dead Man's Plea) in Stratholme
-- The quest was auto-rewarding players on acceptance
-- and was using the wrong credit method
-- Also fixed faction and flags of NPCs involved in the event.
-- Thanks @evil-at-wow for the correct values

UPDATE quest_template SET QuestFlags = 8, SpecialFlags = 0, ReqCreatureOrGOId1 = 16031, ReqCreatureOrGOCount1 = 1, RequestItemsText = '' WHERE entry = 8945;

UPDATE creature_template SET FactionAlliance = 21, FactionHorde = 21 WHERE Entry = 10440;
UPDATE creature_template SET FactionAlliance = 794, FactionHorde = 794, UnitFlags = UnitFlags|131072 WHERE Entry = 16031;
