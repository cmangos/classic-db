-- Fixed drop table for GO 1701 (Fel Cone) in Teldrassil
-- This closes #857 
DELETE FROM gameobject_loot_template WHERE entry = 1701 AND ChanceOrQuestChance >= 0;
