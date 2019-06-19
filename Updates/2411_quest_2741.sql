-- Fix Objectives text for quest 2741 (The Super Egg-O-Matic)
-- This closes #235
UPDATE quest_template SET Objectives='' WHERE entry=2741;
