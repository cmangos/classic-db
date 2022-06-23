-- all expansions
UPDATE creature_template SET SpellList=622701 WHERE entry=6227;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(622701, 'Gnomeregan - Mechano-Frostwalker', 0, 0);

INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('622701', '0', '10737', '0', '104', '0', '100', '1', '0','10000','26700','30700', 'Mechano-Frostwalker - Hail Storm on Any triggered aoe'),
('622701', '1', '11264', '0', '103', '0', '100', '1', '17100','17100','21100','34600', 'Mechano-Frostwalker - Ice Blast on Any aoe');

INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
('104', '1', '0', '0', 0x40000, 'Attack - AOE eligible target for triggered spell exists - not passed to cast'),
('103', '1', '0', '0', 0x2000, 'Attack - AOE eligible target exists - not passed to cast');


