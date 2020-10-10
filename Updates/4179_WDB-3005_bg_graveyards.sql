-- *** Battleground graveyards ***

-- -- Eye of the Storm
-- DELETE FROM game_graveyard_zone WHERE id IN (1103,1104,1105,1106,1107,1108);
-- INSERT INTO game_graveyard_zone VALUES
-- (1103, 3820, 0, 469),
-- (1104, 3820, 0, 67),
-- (1105, 3820, 0, 0),
-- (1106, 3820, 0, 0),
-- (1107, 3820, 0, 0),
-- (1108, 3820, 0, 0);

-- Warsong Gulch
DELETE FROM game_graveyard_zone WHERE id IN (769,770,771,772);
INSERT INTO `game_graveyard_zone` (`id`, `ghost_loc`, `link_kind`, `faction`) VALUES
(769, 3277, 0, 0),
(770, 3277, 0, 0),
(771, 3277, 0, 469),
(772, 3277, 0, 67);

-- Arathi Basin
DELETE FROM game_graveyard_zone WHERE id IN (895,894,893,897,896,898,899);
INSERT INTO `game_graveyard_zone` (`id`, `ghost_loc`, `link_kind`, `faction`) VALUES
(893, 3358, 0, 0),
(894, 3358, 0, 0),
(895, 3358, 0, 0),
(896, 3358, 0, 0),
(897, 3358, 0, 0),
(898, 3358, 0, 469),
(899, 3358, 0, 67);

-- Alterac Valley
DELETE FROM game_graveyard_zone WHERE id IN (751,689,729,169,749,690,750,611,610);
INSERT INTO `game_graveyard_zone` (`id`, `ghost_loc`, `link_kind`, `faction`) VALUES
(169, 2597, 0, 0),
(610, 2597, 0, 67),
(611, 2597, 0, 469),
(689, 2597, 0, 0),
(690, 2597, 0, 0),
(729, 2597, 0, 0),
(749, 2597, 0, 0),
(750, 2597, 0, 0),
(751, 2597, 0, 0);

