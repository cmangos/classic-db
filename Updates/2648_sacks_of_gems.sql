-- Update loot for high value gems in sack of gems dropping from bosses: the high level gem of the same color as the sac should drop with a 100% chance
-- Remove item 6332 (Black Pearl Ring) from dropping as it is not a gem... 
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry=17962 AND item=12361; -- Blue Sack of Gems
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry=17964 AND item=12800; -- Gray Sack of Gems
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry=17965 AND item=12363; -- Yellow Sack of Gems
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry=17969 AND item=12799; -- Red Sack of Gems
DELETE FROM creature_loot_template WHERE entry=17969 AND item=6332; -- Red Sack of Gems
