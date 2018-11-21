-- Fix class quest books in Dire Maul: drop redundance, inconsistant drop chance also missing loot for a handful of bosses.
-- Thanks @saltgurka for noticing.

-- Add name for the already existing reference template
DELETE FROM reference_loot_template_names WHERE entry=35016;
INSERT INTO reference_loot_template_names (entry,name) VALUES
(35016,'Dire Maul: Class Quest Books');

-- item 18401 has lower drop chance than other items in the table
UPDATE reference_loot_template SET ChanceOrQuestChance=5 WHERE item=18401;

-- Remove local loots
DELETE FROM `creature_loot_template` WHERE `item` BETWEEN 18356 AND 18364 OR `item` = 18401;
-- Clean up calls for reference template (some NPCs had two calls)
UPDATE creature_loot_template SET groupid=0, item=35016 WHERE entry IN (14327, 14349) AND mincountorref=-35016;
DELETE FROM creature_loot_template WHERE groupid=2 AND mincountorref=-35016;
UPDATE creature_loot_template SET groupid=0, item=35016, ChanceOrQuestChance=4 WHERE mincountorref=-35016;

DELETE FROM creature_loot_template WHERE mincountOrRef=-35016 AND entry IN (11467, 11486, 14326, 14322);
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(11467, 35016, 4, 0, -35016, 1, 0), -- Tsu'zee
(11486, 35016, 4, 0, -35016, 1, 0), -- Prince Tortheldrin
(14326, 35016, 4, 0, -35016, 1, 0), -- Guard Mol'dar
(14322, 35016, 4, 0, -35016, 1, 0); -- Stomper Kreeg
