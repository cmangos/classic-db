-- q.3088 'Encrypted Parchment'
-- Orc only
UPDATE quest_template SET RequiredRaces = 2 WHERE entry = 3088;

-- 0 	All Races
-- 1 	Human
-- 2 	Orc
-- 4 	Dwarf
-- 8 	Night Elf
-- 16 	Undead
-- 32 	Tauren
-- 64 	Gnome
-- 77 	Alliance Quest (Classic)
-- 128 	Troll
-- 178 	Horde Quest (Classic)
-- 256 	Goblin
-- 512 	Blood Elf
-- 690 	Horde Quest (Until Cata)
-- 1024 	Draenei
-- 1101 	Alliance Quest (Until Cata)
UPDATE quest_template SET RequiredRaces = 0 WHERE RequiredRaces = 255; -- 255 (all classic races, so makes no sense to set that.)

-- https://www.wowhead.com/classic/quest=26/a-lesson-to-learn - Night Elf
UPDATE quest_template SET RequiredRaces = 8 WHERE entry = 26;
UPDATE `creature_questrelation` SET `id` = 4217 WHERE `quest` = 26;
-- https://www.wowhead.com/classic/quest=27/a-lesson-to-learn - Tauren
UPDATE quest_template SET RequiredRaces = 32 WHERE entry = 27;
UPDATE `creature_questrelation` SET `id` = 3033 WHERE `quest` = 27;

-- alot more stuff - https://www.diffchecker.com/X9s2jZfI/