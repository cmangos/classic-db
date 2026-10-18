-- Remove i.4599,1710,4539,4601,4607,4544,1707 from wrong level mobs
-- ref https://github.com/cmangos/issues/issues/3940
-- Murloc Flesheater (entry 422, level 18-19) drops several items that are far
-- above its level range. Remove the out-of-range drops:
-- 4599 Cured Ham Steak (item req. level 35)
DELETE FROM `creature_loot_template` WHERE `item` = 4599 AND `entry` IN (
2950, -- Palemane Skinner	6	7
3662, -- Delmanis the Hated	17	17
422, -- Murloc Flesheater	18	19
6547, -- Suffering Victim	25	25
1046, -- Red Wyrmkin	58	59
7666); -- Archmage Allistarj	58	58

-- 1710 Greater Healing Potion (item req. level 21)
DELETE FROM `creature_loot_template` WHERE `item` = 1710 AND `entry` IN (
2950, -- Palemane Skinner	6	7
422, -- Murloc Flesheater	18	19
3715, -- Wrathtail Sea Witch	19	20
4096, -- Galak Windchaser	24	25
6547, -- Suffering Victim	25	25
4095, -- Galak Mauler	27	28
2374); -- Torn Fin Muckdweller	28	29

-- 4539 Goldenbark Apple (item req. level 25)
DELETE FROM `creature_loot_template` WHERE `item` = 4539 AND `entry` IN (
3662, -- Delmanis the Hated	17	17
422, -- Murloc Flesheater	18	19
3715, -- Wrathtail Sea Witch	19	20
6547, -- Suffering Victim	25	25
5846); -- Dark Iron Taskmaster	47	48

-- 4601 Soft Banana Bread (item req. level 35)
DELETE FROM `creature_loot_template` WHERE `item` = 4601 AND `entry` IN (
3662, -- Delmanis the Hated	17	17
3640, -- Evolving Ectoplasm	17	18
422, -- Murloc Flesheater	18	19
6547, -- Suffering Victim	25	25
7666, -- Archmage Allistarj	58	58
7665); -- Grol the Destroyer	58	58

-- 4607 Delicious Cave Mold (item req. level 25)
DELETE FROM `creature_loot_template` WHERE `item` = 4607 AND `entry` IN (
422, -- Murloc Flesheater	18	19
3715, -- Wrathtail Sea Witch	19	20
6547, -- Suffering Victim	25	25
4095, -- Galak Mauler	27	28
2374, -- Torn Fin Muckdweller	28	29
2375); -- Torn Fin Coastrunner	29	30

-- 4544 Mulgore Spice Bread (item req. level 25)
DELETE FROM `creature_loot_template` WHERE `item` = 4544 AND `entry` IN (
3662, -- Delmanis the Hated	17	17
422, -- Murloc Flesheater	18	19
3715, -- Wrathtail Sea Witch	19	20
6547); -- Suffering Victim	25	25

-- 1707 Stormwind Brie (item req. level 25)
DELETE FROM `creature_loot_template` WHERE `item` = 1707 AND `entry` IN (
3662, -- Delmanis the Hated	17	17
422, -- Murloc Flesheater	18	19
3715, -- Wrathtail Sea Witch	19	20
6547); -- Suffering Victim	25	25

