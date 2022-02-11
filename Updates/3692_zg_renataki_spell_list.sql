REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1508401, 'ZG - Renataki', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1508401, 0, 24649, 0, 1, 0, 100, 1, 4000, 8000,7000, 12000, 'Renataki - Thousand Blades on Current'),
(1508401, 1, 24699, 0, 0, 0, 100, 1, 25000, 30000,25000, 40000, 'Renataki - Vanish on None'),
(1508401, 2, 24698, 0, 0, 0, 100, 1, 15000, 25000,7000, 20000, 'Renataki - Gouge on None'),
(1508401, 3, 3391, 0, 1, 0, 100, 1, 10000, 15000,10000, 15000, 'Renataki - Thrash on Current');

UPDATE creature_template SET SpellList=1508401 WHERE entry IN(15084);
