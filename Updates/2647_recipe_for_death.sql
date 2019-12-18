-- Fix drop rate of items used in quest 451 (A Recipe For Death) in Silverpine Forest
UPDATE creature_loot_template SET ChanceOrQuestChance=-5 WHERE item=3258; -- Hardened Tumor
UPDATE creature_loot_template SET ChanceOrQuestChance=-60 WHERE item=3256; -- Lake Skulker Moss
UPDATE creature_loot_template SET ChanceOrQuestChance=-60 WHERE item=3257; -- Lake Creeper Moss
