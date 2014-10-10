-- Fixed respawn time of creature 15963 (The Master's Eye) which was respawning
-- too fast (should not respawn for the instance duration).
-- Thanks @Metalica for pointing. This closes #606 
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `id` = 15963;
