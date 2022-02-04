DELETE FROM creature_spell_targeting WHERE Id IN(4);
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
('4', '0', '0', '0', '0', 'Hardcoded - eligible friendly dispel not self');
