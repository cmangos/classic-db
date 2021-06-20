-- Various fixes for Aurius event in Stratholme
-- Fix kneel stand state (handled by script)
UPDATE creature_template_addon SET bytes1=0 WHERE entry=10917;

-- Add missing condition related to instance state and repeatable flags
-- The Medallion of Faith
UPDATE quest_template SET RequiredCondition=745, SpecialFlags=1 WHERE entry=5122;
-- Aurius' Reckoning
UPDATE quest_template SET RequiredCondition=733 WHERE entry=5125;

DELETE FROM conditions WHERE condition_entry=745;
INSERT INTO conditions VALUES 
(745, -3, 733, 0, 0, 0, 0, '');
