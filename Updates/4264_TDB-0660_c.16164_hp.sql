-- Correct HP for Shade of Naxxramas 16164 - already correct
-- Correct Damage for Shade of Naxxramas 16164 - based on tbcmangos value (mindmgmin 2329, mindmgmax 2628, minaveragedmg 2600 maxaveragedmg 2807, maxdmgmin 2931 maxdmgmax 3075)
-- https://www.wowhead.com/classic/npc=16164/shade-of-naxxramas - 56592 hp as in classicmangos, instead of 69954
UPDATE `creature_template` SET `DamageMultiplier`='40' WHERE `entry`='16164'; -- Shade of Naxxramas (was hitting for ~100-200)

