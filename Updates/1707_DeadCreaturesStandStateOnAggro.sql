-- Update AI of creatures that have bytes1 animation as dead so that they have standing animation in combat
-- Set AI to EventAI
UPDATE
	`creature_template`
SET
	`AIName` = 'EventAI'
WHERE
	`Entry` IN (2097, 3920, 4510, 5908, 6391, 7643, 12418, 14757);
DELETE
FROM
	`creature_ai_scripts`
WHERE
	`creature_id` IN (2097, 3920, 4510, 5908, 6391, 7643, 12418, 14757);
-- Add on aggro event
INSERT INTO
	`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_chance`, `action1_type`, `comment`)
VALUES
	(209701, 2097, 4, 100, 47, 'Harlo Barnaby: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(392001, 3920, 4, 100, 47, 'Anilia: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(451001, 4510, 4, 100, 47, 'Heralath Fallowbrook: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(590801, 5908, 4, 100, 47, 'Grunt Dogran: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(639101, 6391, 4, 100, 47, 'Holdout Warrior: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(764301, 7643, 4, 100, 47, 'Bengor: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(1241801, 12418, 4, 100, 47, 'Gordok Hyena: set UnitStandStateType to UNIT_STAND_STATE_STAND'),
	(1475701, 14757, 4, 100, 47, 'Elder Torntusk: set UnitStandStateType to UNIT_STAND_STATE_STAND');
-- Add previous scripts
INSERT INTO
	`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `comment`)
VALUES
	(392002, 3920, 2, 100, 0, 15, 0, 0, 0, 25, 0, 0, 0, 1, -47, 'Anilia: flee at 15% HP'),
	(639102, 6391, 9, 100, 1, 0, 5, 7000, 10000, 11, 11976, 1, 0, 0, 0, 'Holdout Warrior: cast Strike'),
	(639103, 6391, 13, 100, 1, 11000, 15000, 0, 0, 11, 12555, 1, 1, 0, 0, 'Holdout Warrior: cast Pummel on Target Spell Casting'),
	(639104, 6391, 8, 100, 0, 9798, -1, 0, 0, 1, -31, 0, 0, 0, 0, 'Holdout Warrior: emote on Radiation Spellhit'),
	(639105, 6391, 2, 100, 0, 15, 0, 0, 0, 25, 0, 0, 0, 1, -47, 'Holdout Warrior: flee at 15% HP'),
	(1241802, 12418, 9, 100, 1, 0, 5, 17000, 21000, 11, 13445, 1, 0, 0, 0, 'Gordok Hyena: cast Rend');
