REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1508301, 'ZG - Hazza''rah', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1508301, 0, 24684, 0, 100, 0, 100, 1, 4000, 10000,8000, 16000, 'Hazza''rah - Chain Burn on Random'),
(1508301, 1, 24664, 0, 100, 0, 100, 1, 10000, 18000,12000, 20000, 'Hazza''rah - Sleep on Random'),
(1508301, 2, 24685, 0, 1, 0, 100, 1, 7000, 14000,9000, 16000, 'Hazza''rah - Earth Shock on Current'),
(1508301, 3, 24728, 0, 1, 0, 100, 1, 10000, 18000,15000, 25000, 'Hazza''rah - Summon Illusion on Current');

UPDATE creature_template SET SpellList=1508301 WHERE entry IN(15083);
