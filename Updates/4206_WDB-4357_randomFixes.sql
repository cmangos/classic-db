-- Based on https://github.com/cmangos/tbc-db/blob/9987f0823f9337ccfabc7d93f312afe3b707303e/Updates/0533_WDB-4357_randomFixes.sql
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE entry = 9223; -- Superior Armaments of Battle - Honored Amongst the Dawn	0


-- q.9232 'The Only Song I Know...'
-- q.9229 'The Fate of Ramaladni'
UPDATE quest_template SET PrevQuestId = 9033 WHERE entry IN (9229,9232);

