-- Fixed respawn time of herbs in Dire Maul. Set respawn time to 40 min instead of 3
-- Thanks @scotty0100 for pointing and researching. This closes #765  
UPDATE `gameobject` SET `spawntimesecs` = 40 * 60 WHERE `map` = 429 AND `id` IN (176584, 142145, 142144);
