-- Correct Thrash s.3417 Aura for some npcs
UPDATE `creature_template_addon` SET `auras` = '3417' WHERE `entry` IN (
100, -- Gruff Swiftbite
449, -- Defias Knuckleduster
1205, -- Grawmug
1224, -- Young Threshadon
1693, -- Loch Crocolisk
2569, -- Boulderfist Mauler
3398, -- Gesharahan
3636, -- Deviate Ravager
6506, -- Ravasaur Runner
7665, -- Grol the Destroyer
8400, -- Obsidion
8520, -- Plague Ravager
9176, -- Gor'tesh
11387, -- Sandfury Speaker
11782, -- Ambershard Destroyer
11921); -- Besseleth

REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES
(712, 1, '3417'), -- Redridge Thrasher
(1119, 1, '3417'), -- Hammerspine
(2522, 1, '3417 7939 22766'), -- Jaguero Stalker
(3722, 1, '3417'), -- Mystlash Flayer
(13279, 1, '21336 16563'), -- Discordant Surge 13279
(8546, 1, '3417'), -- Dark Adept (s.8734 depends on npc really and this aura should not be placed in _addon) - all use creature_spawn_entry anyways
(10942, 1, '3417'), -- Nessy
(10953, 1, '3417'); -- Servant of Horgus

