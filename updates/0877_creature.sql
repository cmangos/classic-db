-- Added random movement to creature 1493 (Mok'Rash) near Booty Bay
-- Also fixed its respawn time to 2h instead of 30 min
-- Source: https://www.youtube.com/watch?v=Ne3WQssvEMM
-- http://www.wowwiki.com/Mok%27rash
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 10, `spawntimesecs` = 2 * 60 * 60 WHERE `id` = 1493;
