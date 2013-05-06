-- Fixes required race for paladin quests 1641 (Tome of Divinity - Human) and 1645 (Tome of Divinity - Dwarf)
-- as they were previously available for both races while next quests were not.
-- Set race to human only for human quest line
UPDATE `quest_template` SET `RequiredRaces` = 1 WHERE `entry` = 1641;
-- Set race to dwarf only for dwarf quest line
UPDATE `quest_template` SET `RequiredRaces` = 4 WHERE `entry` = 1645;