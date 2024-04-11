-- Add your query below.
-- Improve drop chances for Essence of the Elements
-- https://www.wowhead.com/tbc/npc=8281/scald - missing in bestiary, having all school resistanes/immunities has to be wrong.
UPDATE `creature_template` SET `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 8281; -- Scald
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -33 WHERE `item` = 11129; -- down from 80, amounts seem correct.

-- End of migration.

