-- This was already corrected here
-- https://github.com/cmangos/classic-db/commit/c8e26d19dcdc594b6edfce891d067f71fa42fddf

-- Defias Pillager
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 589; -- 58901
-- INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
-- (589, 'Westfall - Defias Pillager', 0, 75);
DELETE FROM `creature_spell_list` WHERE `Id` = 589; -- 58901
-- INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- (589, 3, 20793, 2, 1, 0, 100, 0, '0','0','0','0', 'Defias Pillager - Fireball on Current');
UPDATE creature_template SET SpellList=58901 WHERE entry=589;

-- Bloodscalp Hunter
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 595; -- 59501
-- INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
-- (595, 'STV - Bloodscalp Hunter', 0, 75);
DELETE FROM `creature_spell_list` WHERE `Id` = 595; -- 59501
-- INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- (595, 3, 6533, 0, 1, 0, 100, 0, '1700','10700','18400','29800', 'Bloodscalp Hunter - Net on Current'),
-- (595, 4, 6660, 2, 1, 0, 100, 0, '0','0','2300','3900', 'Bloodscalp Hunter - Shoot on Current');
UPDATE creature_template SET SpellList=59501 WHERE entry=595;

-- sneaky
UPDATE `creature_spell_list` SET `TargetId` = 101, `Availability` = 100 WHERE `Id` = 1498701 AND `Position` = 0; -- https://github.com/cmangos/tbc-db/commit/65e13e12e79aaca21f97da8e993d24abc305128a#diff-473409b366c5c43511d5dcde4b0840de9647ade7474153a9c601f8189c3426dcR5

-- update comment to show its special
UPDATE `creature_spell_list` SET `Comments` = 'MODIFIED FOR CLASSIC - Bloodlord Mandokir - Intimidating Shout on None' WHERE `Id` = 1138201 AND `Position` = 4 AND `SpellId` = 19134;

