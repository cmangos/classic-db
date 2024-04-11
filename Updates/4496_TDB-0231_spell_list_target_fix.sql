-- https://github.com/cmangos/tbc-db/commit/624b3757677024e50c85a6cf69b06d31513cb49b
-- New creature_spell_target 
DELETE FROM creature_spell_targeting WHERE Id IN (106, 107, 206, 207);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES 
-- taken from cmangos-wotlk
('106', '1', '0', '1', '6', '-1', 'Attack - random player non tank mana user'),
-- new one - including tank 
('107', '1', '0', '0', '6', '-1', 'Attack - random player mana user'),
('206', '2', '75', '1', '1', '-1', 'Support - missing 75% including self'),
('207', '2', '75', '1', '0', '-1', 'Support - missing 75% excluding self');

-- Fix Attack - random player mana user, only used SELECT_FLAG_PLAYER     
-- Attack - random player non tank mana user
-- introduced in https://github.com/cmangos/tbc-db/commit/cf42c2c8c5bea9f2f505077a235638ffd2f83582         
UPDATE creature_spell_targeting SET Param3 = 6 WHERE Id = 105;
UPDATE creature_spell_targeting SET Param3 = 6 WHERE Id = 106;

-- Reinsert Attack - random player not in melee
-- Deletet in https://github.com/cmangos/tbc-db/commit/624b3757677024e50c85a6cf69b06d31513cb49b
DELETE FROM creature_spell_targeting WHERE Id IN(107);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('107', '1', '0', '0', '130', '-1', 'Attack - random player not in melee');


-- Reinser Missing 25% including self and Missing 25% excluding self
-- Deletet in https://github.com/cmangos/tbc-db/commit/624b3757677024e50c85a6cf69b06d31513cb49b
DELETE FROM `creature_spell_targeting` WHERE `Id` IN (206,207,208,209);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES
(206, 2, 25, 1, 1, -1, 'Support - Missing 25% including self'),
(207, 2, 25, 1, 0, -1, 'Support - Missing 25% excluding self'),
(208, 2, 75, 1, 1, -1, 'Support - missing 75% including self'),
(209, 2, 75, 1, 0, -1, 'Support - missing 75% excluding self');

-- Now also fix spell_list that used the wrong spell_list_target
-- Baroness Dorothea Millstipe - Mana Burn - Random Mana User
UPDATE creature_spell_list SET TargetId = '105' WHERE Id = '1987501' AND Position = '0' AND SpellId = '29405';

-- Lady Catriona Von'Indi - Greater Heal - missing 75% including self
UPDATE creature_spell_list SET TargetId = '208' WHERE Id = '1987201' AND Position = '1' AND SpellId = '29564';

-- more missing.
DELETE FROM creature_spell_targeting WHERE Id IN (105,111);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES
(105, 1, 0, 0, 6, -1, 'Attack - random player mana user'),
(111, 1, 4, 0, 3, -1, 'Attack - ATTACKING_TARGET_FARTHEST_AWAY - SELECT_FLAG_IN_LOS & SELECT_FLAG_PLAYER');

