-- Fixes for bug #370 (https://github.com/classicdb/database/issues/370) --
-- Written by Swater96 --
-- Deletes the Wanted! signs that gave now deleted quests --
DELETE from `gameobject` where `id` IN (179437,179438);
-- Deletes Winterax spawns from the AV graveyard, and Frostwolf/Stormpike Explosives Expert -- 
DELETE from `creature` where `id` IN (12156,10984,12158,13956,13958,12157,10983,13957,11679,13597,13598);
-- Removes quests that were removed in 1.10 from questrelation --
DELETE from `creature_questrelation` where `quest` IN (7424,7402,7428,7366,7365,7367,7364,7401,7427,7362,7368,7361,7363);
DELETE from `creature_involvedrelation` where `quest` IN (7424,7402,7428,7366,7365,7367,7364,7401,7427,7362,7368,7361,7363);
