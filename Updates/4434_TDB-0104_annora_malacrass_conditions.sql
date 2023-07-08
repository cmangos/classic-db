-- Change conditions to match new core numbering scheme
-- https://github.com/cmangos/mangos-tbc/commit/b444581a00f83ee8e9d88707b63d312015d7541d
-- 12002	42	20000	1	1	0	0	Uldaman - Andora Spawn
-- 12001	42	72801	0	1	0	0	M'uru
-- 12000	42	10000	0	1	0	0	Malacrass - Spawn In
DELETE FROM `conditions` WHERE `condition_entry` = 12002;

-- 10000	ZA - first 4 bosses dead - spawn Malacrass
-- 20000	Uldaman - Andora Spawn
-- 72801	SWP - Muru - Alive
DELETE FROM `worldstate_name` WHERE `Id` = 20000; -- -> 700001	Uldaman - Spawn Annora

