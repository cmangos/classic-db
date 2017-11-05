-- Add your query below.
-- https://github.com/lh-server/core/commit/1559335172ced8839f4e7ab1386dd0a696f930fb
-- https://www.wowhead.com/tbc/object=2849/battered-chest
-- https://www.wowhead.com/tbc/object=2850/solid-chest
-- https://www.wowhead.com/tbc/object=2852/solid-chest
-- https://www.wowhead.com/tbc/object=2855/solid-chest
DELETE FROM `gameobject_loot_template` WHERE `item` IN (2156,2158,2159,2160,3591,3592) AND `entry` IN (2280,2281,2282,2283);
-- End of migration.

