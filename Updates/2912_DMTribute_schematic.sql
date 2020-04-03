-- Add missing Schematic: Major Recombobulator 18655
-- https://classic.wowhead.com/item=18655/schematic-major-recombobulator#contained-in-object
DELETE FROM gameobject_loot_template WHERE entry=16577 AND item=18655;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(16577, 18655, 5, 0, 1, 1, 0, 'Schematic: Major Recombobulator');
