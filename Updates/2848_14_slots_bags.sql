-- Correct Dropchance for Troll-hide Bag 1685 & Journeyman's Backpack 3914 (They maybe should be different groupids for whichever bag they can drop)
DELETE FROM creature_loot_template WHERE entry IN (7432,7434) AND item=3914; -- Also have 60445
UPDATE creature_loot_template SET ChanceOrQuestChance=0.10 WHERE item=60445;
