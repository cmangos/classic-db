-- Made creatures 15355 (Anubisath Guardian), 15338 (Obsidian Destroyer), 15264 (Anubisath Sentinel)
-- spawn small obsidian chunk on death
-- Made creatures 15340 (Moam), 15338 (Obsidian Destroyer), 15277 (Anubisath Defender)
-- spawn large obsidian chunk on death
-- Sources:
-- http://wowhead.com/object=181069#comments
-- http://wowhead.com/object=181068#comments
DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (15355, 15338, 15264, 15340, 15277);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Small obsidian chunks
(15355, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'), -- Anubisath Guardian
(15338, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'), -- Obsidian Destroyer
(15264, 1, 15, 27627, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops small obsidian chunk'), -- Anubisath Sentinel
-- Large obsidian chunks
(15340, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk'), -- Moam
(15277, 1, 15, 27630, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'drops large obsidian chunk'); -- Anubisath Defender

-- Removed remaining gameobject spawns (small and large chunks)
DELETE FROM `gameobject` WHERE `id` IN (181068, 181069);
