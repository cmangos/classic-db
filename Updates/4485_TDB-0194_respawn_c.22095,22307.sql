-- Add creature_spell_targeting for cast x at 75% hp
DELETE FROM `creature_spell_targeting` WHERE `Id` IN (206,207) AND `Param1` = 25;
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES
(206, 2, 25, 1, 1, -1, 'Support - Missing 25% including self'),
(207, 2, 25, 1, 0, -1, 'Support - Missing 25% excluding self');

