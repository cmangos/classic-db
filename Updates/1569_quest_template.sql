-- Fix objectives for quest 1219
-- It was mentionng a NPC added in TBC. This closes #32
UPDATE quest_template SET Objectives='Bring the Spy\'s Report to a Theramore Lieutenant.' WHERE entry='1219';
