/* Fix ridiculous drop rates for Simple Bands and Gypsy Cloak from Burning Blade mobs */
UPDATE creature_loot_template SET chanceorquestchance=0.359 WHERE entry=3197 AND item=9744;
UPDATE creature_loot_template SET chanceorquestchance=0.666 WHERE entry=3197 AND item=9745;

