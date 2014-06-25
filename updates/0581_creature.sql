-- Increased roaming of creature 573 (Foe Reaper 4000) in Westfall
-- This closes #486
UPDATE `creature` SET `spawndist` = 7, `MovementType` = 1 WHERE `id` = 573;
