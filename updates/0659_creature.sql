-- Fixed NPC 11488 (Illyanna Ravenoak) who is spawned twice. This closes #513
-- http://www.wowhead.com/npc=14308
-- https://web.archive.org/web/20060708184924/http://wow.allakhazam.com/db/mob.html?wmob=11488 (comments)
DELETE FROM `creature` WHERE `id` = 11488;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(138114, 11488, 429, 0, 0, -84.3469, 543.958, 28.6151, 0.838618, 7200, 0, 0, 17342, 7302, 0, 0);
