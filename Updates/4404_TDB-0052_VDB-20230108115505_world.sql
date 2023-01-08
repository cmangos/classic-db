-- Add your query below.
-- https://github.com/vmangos/core/commit/eed23136b0715cc747178d061b6f6aa4f0210ddd

-- Remove wrong events from Scarlet Cleric.

-- REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES
-- (94490, 'Eastern Plaguelands - Scarlet Cleric'
-- 15587, 100, 1, 0, 0, 0, 6, 12, 5, 20, 0
-- 15586, 100, 15, 0, 0, 0, 10, 20, 20, 30, 0

-- Scarlet Cleric 9449 - creature_spell_list
-- ('944903','9449','14','0','100','1025','3000','40','25000','35000','0','0','11','15586','12','0','0','0','0','0','0','0','0','0','Scarlet Cleric - Cast Heal on Friendly Missing HP'),
-- ('944904','9449','9','0','100','1025','0','30','3400','4800','0','0','11','15587','1','256','0','0','0','0','0','0','0','0','Scarlet Cleric - Cast Mind Blast'),
UPDATE `creature_template` SET `SpellList` = 944901 WHERE `entry` = 9449;
REPLACE INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (944901, 'Eastern Plaguelands - Scarlet Cleric', 0, 75);
REPLACE INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(944901, 1, 15586, 0, -1, 201, 0, 100, 0, 10000, 20000, 20000, 30000, 'Scarlet Cleric - Heal on Missing 50% including self'),
(944901, 2, 15587, 2, -1, 1, 0, 100, 0, 6000, 12000, 5000, 20000, 'Scarlet Cleric - Mind Blast on Current');

UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = (6 / 7) WHERE `entry` IN (
1507, -- Scarlet Initiate
1535, -- Scarlet Warrior
1538 -- Scarlet Friar
);

UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = (8 / 7) WHERE `entry` IN (
1539, -- Scarlet Neophyte
1540, -- Scarlet Vanguard
1660, -- Scarlet Bodyguard
1827, -- Scarlet Sentinel
1832, -- Scarlet Magus
1834, -- Scarlet Paladin
1836, -- Scarlet Cavalier
1837, -- Scarlet Judge
1841, -- Scarlet Executioner
1883, -- Scarlet Worker
1885, -- Scarlet Smith
4494, -- Scarlet Spellbinder
9447, -- Scarlet Warder
9448, -- Scarlet Praetorian
9449, -- Scarlet Cleric
9450, -- Scarlet Curate
9451, -- Scarlet Archmage
9452, -- Scarlet Enchanter
10608, -- Scarlet Priest
11581, -- Scarlet Assassin
15162 -- Scarlet Inquisitor
);

-- End of migration.

