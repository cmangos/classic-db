-- SPELL_ATTR_EX_EXCLUDE_CASTER reveals these spells are handled/cast wrongly currently.

-- Event 264503 Action 1 uses SpellID 9657 that must not target caster (target is 0). Resetting to TARGET_T_NONE. - Attribute was removed in TBC.dbc so not excluding self, but changing way it is casted
-- ('264503','2645','0','0','100','1025','4000','9000','15000','21000','0','0','11','9657','0','0','0','0','0','0','0','0','0','0','Vilebranch Shadow Hunter - Cast Shadow Shell'),

-- Event 466703 Action 1 uses SpellID 9657 that must not target caster (target is 0). Resetting to TARGET_T_NONE. - Attribute was removed in TBC.dbc so not excluding self, but changing way it is casted
-- ('466703','4667','0','0','100','1025','5000','12000','18000','26000','0','0','11','9657','0','0','0','0','0','0','0','0','0','0','Burning Blade Shadowmage - Cast Shadow Shell'),

-- Event 1611806 Action 1 uses SpellID 27689 that must not target caster (target is 0). Resetting to TARGET_T_NONE.
-- ('1611806','16118','0','0','100','1025','20000','25000','25000','30000','0','0','11','27689','0','0','0','0','0','0','0','0','0','0','Kormok - Cast Bloodlust'),
UPDATE creature_template SET SpellList=1611801 WHERE entry=16118;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1611801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (1611801, 'Scholomance - Kormok', 0, 0);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1611801, 0, 27689, 0, 6, 0, 100, 1, 20000, 25000, 25000, 30000, 'Kormok - Bloodlust on Friendly Missing Buff no self'); -- Hardcoded - eligible friendly missing buff - skip self

-- Event 1615003 Action 1 uses SpellID 27995 that must not target caster (target is 0). Resetting to TARGET_T_NONE.
-- ('1615003','16150','2','0','100','1029','20','0','24000','27000','0','0','11','27995','0','0','0','0','0','0','0','0','0','0','Spectral Rider - Cast Unholy Frenzy at 20% HP'),
UPDATE creature_template SET SpellList=1615001 WHERE entry=16150;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1615001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (1615001, 'Naxxramas - Spectral Rider', 0, 0);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1615001, 0, 27995, 0, 6, 0, 100, 1, 20000, 20000, 6000, 8000, 'Spectral Rider - Unholy Frenzy on Friendly Missing Buff no self'); -- Hardcoded - eligible friendly missing buff - skip self

-- Event 865801 Action 2 uses SpellID 11770 that must not target caster (target is 0). Resetting to TARGET_T_NONE.

-- Event 1432705 Action 1 uses SpellID 22710 that must not target caster (target is 0). Resetting to TARGET_T_NONE.

