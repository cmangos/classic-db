-- Fix quality of items involved in epic or legendary quests
-- though the status of the quest, the item are of normal quality
UPDATE item_template SET Quality=1 WHERE entry IN (
19017,  -- Essence of the Firelord
20383,  -- Head of the Broodlord Lashlayer
22733,  -- Staff Head of Atiesh
22734  -- Base of Atiesh
);

-- Fix negative drop chance of items: none of them is a quest item
-- Malachite, Jade, Plans: Golden Scale Shoulders, Pattern: Stylish Blue Shirt, Pattern: Stylish Green Shirt, Pattern: Heavy Earthen Gloves, Aquamarine
-- Pattern: Colorful Kilt, Formula: Enchant 2H Weapon - Lesser Spirit, Plans: Searing Golden Blade
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE ChanceOrQuestChance<0 AND item IN (774, 1529, 3871, 6390, 6391, 7364, 7909, 10316, 11038, 12261); 

-- Remove items from creature drops that belongs to item loot template: Combat Task Briefing I & Tactical Task Briefing X
DELETE FROM creature_loot_template WHERE item IN (20943, 21749);
