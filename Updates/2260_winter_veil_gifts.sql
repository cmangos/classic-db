-- Ensure Smokywood Pastures Gift Pack always contains something
UPDATE item_loot_template SET ChanceOrQuestChance=0, groupid=1 WHERE entry=17727;
