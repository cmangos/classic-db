-- Added missing Temple of Ahn'Qiraj graveyard linked to graveyard at AQ gates
-- Source: UDB
DELETE FROM `game_graveyard_zone` WHERE `id` = 913 AND `ghost_zone` = 3428;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
('913','3428','0');