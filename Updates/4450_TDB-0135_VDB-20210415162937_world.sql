-- Add your query below.
-- https://github.com/vmangos/core/commit/9e504cfd8c3714363d53e87e335018a05ff1aa55

-- Shadowforge Commander shouldn't drop Blue Pearls (it was obviously an error since the Giant Clam gameobject has the
-- same entry as this NPC).
-- https://www.wowhead.com/classic/item=4611/blue-pearl#dropped-by
-- https://web.archive.org/web/20080421190913/http://wow.allakhazam.com:80/db/item.html?witem=4611
-- https://www.wowhead.com/classic/item=4611/blue-pearl#comments:id=3204131
-- Pretty much ignore the older posts. The clams "drop" one blue pearl each 100% plus some of the higher level clam meat. The murlocs DO NOT drop pearls. (Though I was not on any quest.)
DELETE FROM `creature_loot_template` WHERE `item` = 4611; -- AND `entry` = 2744; -- 2744	Giant Clam - all others might just be corrupted data too.

-- End of migration.

