-- Fixed graveyard for Alliance players in Orgrimmar. They will now be ported to Durotar (Razor Hill)
-- instead of Ashenvale. Thanks Tobschinski for pointing. This closes #270 
UPDATE `game_graveyard_zone` SET `id` = 32 WHERE `id` = 512 AND `ghost_zone` = 1637;

-- Added missing graveyard for all players when dying in Ruins of Ahn'Qiraj
-- They will now respawn in the graveyard near the Gates of Ahn'Qiraj instead of respawning where they died
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 3429;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (913, 3429, 0);
