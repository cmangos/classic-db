-- Correct Teldrassil Graveyards
-- Closes https://github.com/cmangos/issues/issues/2338
-- Counterintuitive as ghost_loc should be befor id. "if you die in map/area xy, get ported to WorldSafeLocs.dbc ID"
-- if duplicate ghost_loc are set it goes by proximity to the graveyard (see general 141 teldrassil dying location)
-- https://us.forums.blizzard.com/en/wow/t/beta-graveyard-hopping/221094/3 - fresh confirm of Dolanaar
-- https://redmine.rising-gods.de/issues/1889 - https://xpoff.com/threads/how-do-i-get-to-teldrassil-on-horde-char.4850/ - confirms Twilight Vale
-- An Alliance-only graveyard has been added at the eastern end of Darnassus. Alliance characters dying in Darnassus will use this new graveyard.
-- Horde characters dying on Teldrassil will still only be able to use the graveyard at Dolanaar.
DELETE FROM `game_graveyard_zone` WHERE `ghost_loc` IN (141,186,258,259,260,261,262,263,736,1657) AND `id` = 91;
INSERT INTO `game_graveyard_zone` (`ghost_loc`, `id`, `faction`) VALUES
(141, 91, 0), -- teldrassil death ports horde to Dolanaar, alliance only if proximiy matches
(186, 91, 469),
(258, 91, 469),
(259, 91, 469),
(260, 91, 469),
(261, 91, 469),
(262, 91, 469),
(263, 91, 469),
(736, 91, 469),
(1657, 91, 67); -- darnassus is not 141, so needs another insert for this
DELETE FROM `game_graveyard_zone` WHERE `ghost_loc` IN (141,188,256,257) AND `id` = 93;
INSERT INTO `game_graveyard_zone` (`ghost_loc`, `id`, `faction`) VALUES
(141, 93, 469),
(188, 93, 469),
(256, 93, 469),
(257, 93, 469);
DELETE FROM `game_graveyard_zone` WHERE `ghost_loc` IN (141,264,265,266,478,1657) AND `id` = 90;
INSERT INTO `game_graveyard_zone` (`ghost_loc`, `id`, `faction`) VALUES
(141, 90, 469),
(264, 90, 469),
(265, 90, 469),
(266, 90, 469),
(478, 90, 469),
(1657, 90, 469);
DELETE FROM `game_graveyard_zone` WHERE `ghost_loc` IN (141,702,2322) AND `id` = 129;
INSERT INTO `game_graveyard_zone` (`ghost_loc`, `id`, `faction`) VALUES
(141, 129, 469),
(702, 129, 469),
(2322, 129, 469);
DELETE FROM `game_graveyard_zone` WHERE `ghost_loc` IN (141,186,188,256,257,258,259,260,261,262,263,264,265,266,478,702,736,2322,1657) AND `id` = 469 AND `faction` = 67;
INSERT INTO `game_graveyard_zone` (`ghost_loc`, `id`, `faction`) VALUES
(702, 469, 67);

/*
AreaTable.dbc with AreaID 141 - Zone: 141 (Teldrassil)
141 	Teldrassil 	1 	0
186 	Dolanaar 	1 	141
188 	Shadowglen 	1 	141
256 	Aldrassil 	1 	141
257 	Shadowthread Cave 	1 	141
258 	Fel Rock 	1 	141
259 	Lake Al’Ameth 	1 	141
260 	Starbreeze Village 	1 	141
261 	Gnarlpine Hold 	1 	141
262 	Ban’ethil Barrow Den 	1 	141
263 	The Cleft 	1 	141
264 	The Oracle Glade 	1 	141
265 	Wellspring River 	1 	141
266 	Wellspring Lake 	1 	141
478 	Pools of Arlithrien 	1 	141
702 	Rut’theran Village 	1 	141
736 	Ban’ethil Hollow 	1 	141
2322 	The Veiled Sea 	1 	141
1657 	Darnassus 	1 	0

WorldSafeLocs.dbc matching Graveyards near Main Zone: 141 (Teldrassil) + potential far other faction graveyard
90 	1 	10054.3 	2117.12 	1329.63 	Teldrassil, Darnassus
91 	1 	9701.25 	945.62 	1291.35 	Teldrassil, Dolanaar
93 	1 	10384.8 	811.531 	1317.54 	Teldrassil, Aldrassil
129 	1 	8706.0 	965.0 	13.27 	Teldrassil, Rut’theran Village
469 	1 	4291.28 	96.9557 	43.0753 	Darkshore, Twilight Vale

0 – Any team’s accepted
469 – ALLIANCE team accepted only
67 – HORDE team accepted only
*/

