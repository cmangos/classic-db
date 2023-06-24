-- add new CST from tbcmangos
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES
(110, 1, 4, 0, 3, -1, 'Attack - ATTACKING_TARGET_FARTHEST_AWAY - SELECT_FLAG_IN_LOS & SELECT_FLAG_PLAYER'),
(120, 1, 1, 0, 512, -1, 'Attack - ATTACKING_TARGET_TOPAGGRO - SELECT_FLAG_NOT_AURA'),
(121, 1, 0, 0, 512, -1, 'Attack - ATTACKING_TARGET_RANDOM - SELECT_FLAG_NOT_AURA');

