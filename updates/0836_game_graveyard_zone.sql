-- Fixed graveyard for Alliance in Ratchet. Thanks Metalica for pointing. This closes #624
DELETE FROM `game_graveyard_zone` WHERE `id` = 249 AND `ghost_zone` = 215;
UPDATE `game_graveyard_zone` SET `faction` = 0 WHERE `id` = 249 AND `ghost_zone` = 17;

-- Alliance players dying in Mulgore and Thunder Bluff are now ported to Bloodhoof Village graveyard
-- as they should instead of Ratchet
-- Source: http://www.wowwiki.com/Mulgore#Patch_changes
UPDATE `game_graveyard_zone` SET `faction` = 0 WHERE `id` = 89 AND `ghost_zone` = 215;
UPDATE `game_graveyard_zone` SET `id` = 89 WHERE `faction` = 469 AND `ghost_zone` = 1638;
