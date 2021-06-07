-- Improve Loottable for Rocklance 5841
-- https://classic.wowhead.com/npc=5841/rocklance#drops ~70% green
-- https://web.archive.org/web/20080610102445/http://wow.allakhazam.com/db/mob.html?wmob=5841 ~80% green
-- https://web.archive.org/web/20080220233322/http://wow.allakhazam.com/db/mob.html?wmob=5841 ~100% green
DELETE FROM creature_loot_template WHERE entry=5841 AND item IN (
765, -- Silverleaf
818, -- Tigerseye
1206, -- Moss Agate
1210, -- Shadowgem
2450 -- Briarthorn
-- Pattern: Dark Leather Tunic 2409
-- Recipe: Minor Magic Resistance Potion 3393
-- Pattern: Green Woolen Bag 4292
-- Pattern: Red Woolen Boots 4345
-- Pattern: Reinforced Woolen Shoulders 4347
-- Schematic: Small Seaforium Charge 4409
-- Pattern: Fine Leather Pants 5972
-- Schematic: EZ-Thro Dynamite 6716
);

UPDATE creature_loot_template SET ChanceOrQuestChance=1.5 WHERE entry=5841 AND item=858; -- Lesser Healing Potion
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=5841 AND item=1179; -- Ice Cold Milk
UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE entry=5841 AND item=2287; -- Haunch of Meat
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE entry=5841 AND item=2455; -- Minor Mana Potion
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE entry=5841 AND item=6661; -- Recipe: Savory Deviate Delight
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE entry=5841 AND item=6663; -- Recipe: Elixir of Giant Growth
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry=5841 AND item=60118; -- NPC LOOT (Green World Drop) - (Item Levels: 16-20) - (NPC Levels: 17)

-- Remove Aggro Linking from Rocklance and Adds, they should just patrol together not be hard linked
-- https://web.archive.org/web/20121123192827if_/http://www.wowhead.com/npc=5841#comments:id=291548
UPDATE creature_linking SET flag=flag&~(1+2) WHERE master_guid=(SELECT guid from creature where id=5841); -- 9859
