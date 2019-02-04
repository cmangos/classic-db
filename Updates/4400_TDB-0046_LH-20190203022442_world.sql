-- Add your query below.
-- https://github.com/lh-server/core/commit/b62df1b4abf9c76ccf81dbed8c8bae129cda446a
-- 203	7	333	1	0	0	0	Has Skill ID 333, Minimum Skill Value 1

-- Enchant pool 10% -> enchants = ~1.5% each (rather than 5%), Ruins run 5% and have lower dropchances.
-- 34045	Temple of Ahn'Qiraj (Boss Loot) - Patterns & Imperial Qiraji Armaments / Regalia
-- https://www.wowhead.com/classic/npc=15263/the-prophet-skeram - AQ40 - 34045
-- 34024	Ruins of Ahn'Qiraj (Boss Loot) - AQ Enchanting Formulas (group 1) & AQ20 Class Books (group 2)
-- https://www.wowhead.com/classic/npc=15348/kurinnaxx - AQ20 - 34024 - ~5%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `minCountOrRef` = -34045 AND `groupid` = 1; -- up from 5%, classic seems to have it at 10%
UPDATE `reference_loot_template`  SET `condition_id` = 203 WHERE `entry` = 34045 AND `groupid` = 1;
 -- https://www.wowhead.com/classic/item=21237/imperial-qiraji-regalia + https://www.wowhead.com/classic/item=21232/imperial-qiraji-armaments = 10%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `minCountOrRef` = -34045 AND `groupid` = 2; -- up from 5%, classic seems to have it at 10%
UPDATE `reference_loot_template_names` SET `name` = 'Temple of Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas (group 1) & Imperial Qiraji Armaments / Regalia (group 2)' WHERE `entry` = 34045;

-- Vek'nilash (15275) - https://www.wowhead.com/classic/npc=15275/emperor-veknilash
-- Enchant Gloves: Threat 10%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10, `condition_id` = 203 WHERE `item` = 20726 AND `entry` = 15275; -- condition Enchanting

-- Vek'lor (15276)
-- Enchant Cloak: Subtlety 10
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10, `condition_id` = 203 WHERE `item` = 20735 AND `entry` = 15276; -- condition Enchanting, checking different timestamps shows that the % is decreasing over time.

-- C'Thun (15727)
-- https://web.archive.org/web/20080420210451/http://wow.allakhazam.com:80/db/mob.html?wmob=15727
-- https://www.wowhead.com/wotlk/npc=15727/cthun
-- Vanquished Tentacle 15%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `item` = 21579 AND `entry` = 15727; -- down from 20%

-- End of migration.

