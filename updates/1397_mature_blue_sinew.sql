-- Fixed drop chance of item 18704 (Mature Blue Dragon Sinew)
-- It was very low on elite mob and guaranteed on Azuregos
-- Thanks @Neotmiren for pointing and @Phatcat and @dagochen for researching
-- This closes #872
-- Sources: http://wowwiki.wikia.com/wiki/Mature_Blue_Dragon_Sinew?oldid=345177
-- http://web.archive.org/web/20060612224057/http://wow.allakhazam.com/db/item.html?witem=18704
-- http://wowwiki.wikia.com/wiki/Mature_Blue_Dragon_Sinew
UPDATE creature_loot_template SET ChanceOrQuestChance = 0.1 WHERE item = 18704;                     -- Elite blue dragons
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE item = 18704 AND entry = 6109;    -- Azuregos
