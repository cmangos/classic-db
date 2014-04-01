-- Removed all spawns of creatures 15962 (Vekniss Hatchling) and 15630 (Spawn of Fankriss)
-- because they are spawn during the encounter with Fankriss
-- This closes #163 
DELETE FROM `creature` WHERE `id` IN (15962, 15630);
