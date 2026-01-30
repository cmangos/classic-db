-- Add custom combat_condition for: GetVictim() IS_ATTACKING_ME & !IN_MELEE_RANGE
-- Id Rule: unitcondition * 100 + 1-99 as combat_condition, can add 99 variants for one unitcondition with this, should be enough.
-- Description: Increases the caster's movement speed by 60% for 3 seconds. and causes it to inflict an additional 10 damage on its first attack.
-- Description: Increases the Physical damage dealt by the caster by 1 and its movement speed by 60% for 4 seconds.
-- https://github.com/cmangos/tbc-db/commit/0e36a24851bd83ea4244e784894ec6c0ad020e5c
-- ('312201','3122','9','0','100','1025','10','60','7000','9000','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Bloodtalon Taillasher - Cast Rushing Charge'),
-- https://github.com/cmangos/issues/issues/3826
INSERT INTO `combat_condition` (`Id`, `TargetConditionId`) VALUES (-4501, 45); -- GetVictim() IS_ATTACKING_ME (in combat with me) & !IN_MELEE_RANGE
UPDATE `creature_spell_list` SET `CombatCondition` = -4501 WHERE `Position` = 1 AND `Id` IN (
312201, -- Bloodtalon Taillasher - Rushing Charge - self
312301, -- Bloodtalon Scythemaw - Rushing Charge - self
312801, -- Kul Tiras Sailor - Rushing Charge - self
322701, -- Corrupted Bloodtalon Scythemaw - Rushing Charge - self
309901, -- Dire Mottled Boar - Boar Charge - self
310001 -- Elder Mottled Boar - Boar Charge - self
);
UPDATE `creature_spell_list` SET `CombatCondition` = -4501 WHERE `SpellId` = 3385 AND `Id` = 322501; -- Corrupted Mottled Boar - Boar Charge - self

UPDATE `creature_spell_list` SET `TargetId` = 103, `Comments` = 'Kolkar Drudge - Dust Cloud - AOE eligible target exists' WHERE `Position` = 1 AND `Id` = 311901;

