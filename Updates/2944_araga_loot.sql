-- Rework loot of NPC 14222 (Araga)
-- Thanks @adellaci for reporting
-- Sources: https://web.archive.org/web/20070213211651/http://wow.allakhazam.com/db/mob.html?wmob=14222
-- https://classic.wowhead.com/npc=14222/araga
-- This closes https://github.com/cmangos/issues/issues/1946
DELETE FROM creature_loot_template WHERE entry=14222;
INSERT INTO creature_loot_template VALUES
(14222, 1686, 13.4615, 0, 1, 1, 0, 'Bristly Whisker'),
(14222, 1687, 7.6923, 0, 1, 1, 0, 'Retractable Claw'),
(14222, 4865, 73, 0, 1, 1, 0, 'Ruined Pelt'),
(14222, 5137, 26, 0, 1, 1, 0, 'Bright Eyeball'),
(14222, 5637, 1.9231, 0, 1, 1, 0, 'Large Fang'),
(14222, 8146, 1.36, 0, 1, 1, 0, 'Wicked Claw'),
(14222, 60154, 100, 0, -60154, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)'),
(14222, 60230, 0.05, 0, -60230, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)');
