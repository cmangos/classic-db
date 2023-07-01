DELETE FROM creature_spell_targeting WHERE Id IN(109,110);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('109', '1', '0', '0', '66', '-1', 'Attack - random player in melee'),
('110', '1', '0', '1', '66', '-1', 'Attack - random player non tank in melee');

