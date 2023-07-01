-- Remove Fel Creep i.11514 from nonfelwood gos
-- 142141	Arthas' Tears
-- 142145	Gromsblood
-- 176587	Plaguebloom
DELETE FROM `gameobject_loot_template` WHERE `entry` NOT IN (SELECT `data1` FROM gameobject_template WHERE `entry` IN (
176636, -- Sungrass
176637, -- Gromsblood
176638, -- Golden Sansam
176639, -- Dreamfoil
176640, -- Mountain Silversage
176641, -- Plaguebloom
176642)) -- Arthas' Tears 
AND `item` = 11514;

-- Correct Chance
-- https://www.wowhead.com/wotlk/item=11514/fel-creep#gathered-from-object
-- https://web.archive.org/web/20080507124815/http://wow.allakhazam.com/db/item.html?witem=11514
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 11514;

