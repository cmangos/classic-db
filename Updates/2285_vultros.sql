-- Fix scale for NPC 462 (Vultros) in Westfall
-- Closes https://github.com/cmangos/issues/issues/1779
UPDATE creature_template SET Scale=3 WHERE Entry=462;
