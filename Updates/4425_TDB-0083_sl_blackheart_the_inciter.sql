DELETE FROM creature_spell_targeting WHERE Id IN(107,108);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('107', '1', '0', '0', '130', '-1', 'Attack - random player not in melee'),
('108', '1', '0', '1', '130', '-1', 'Attack - random player non tank not in melee');

