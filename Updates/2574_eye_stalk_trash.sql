-- Adjust respawn time for NPC 16236 (Eye Stalk) in Naxxramas
UPDATE creature SET spawntimesecsmin=46, spawntimesecsmax=46 WHERE id=16236;

-- Adjust speed and detection range for NPCs 16056 (Diseased Maggot), 16057 (Plagued Maggot) & 16236 (Eye Stalk)
UPDATE creature_template SET SpeedWalk=(2 / 2.5), SpeedRun=(4/7.0), Detection=3 WHERE Entry IN (16057, 16056);
UPDATE creature_template SET Detection=7 WHERE Entry=16236;
