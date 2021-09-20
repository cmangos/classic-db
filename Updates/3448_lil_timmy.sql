-- Correct Respawntime and Linking for for White Kitten 7386 -> Lil Timmy 8666
-- wrath spawn/despawn point: .go zonexy 47 56 (path changed or needs to be reordered)
-- https://www.wowhead.com/npc=8666/lil-timmy#comments:id=524140
UPDATE creature SET spawntimesecsmin=5400, spawntimesecsmax=10800 WHERE id IN (7386,8666);
-- Add FLAG_DESPAWN_ON_DEATH | FLAG_CANT_SPAWN_IF_BOSS_DEAD
UPDATE creature_linking_template SET flag=flag|16|1024 WHERE master_entry=8666;
