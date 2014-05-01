-- Fixed rank of creatures 4475 (Blighted Zombie), 1794 (Soulless Ghoul) & 1795 (Searing Ghoul)
-- because they were wrongly stated as elite while they are normal
-- This closes #374 
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =  4475;      -- Blighted Zombie
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =  1794;      -- Soulless Ghoul 
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` =  1795;      -- Searing Ghoul
