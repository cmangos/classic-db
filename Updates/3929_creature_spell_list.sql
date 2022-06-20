-- Defias Pillager
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(589, 'Westfall - Defias Pillager', 0, 75);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(589, 3, 20793, 2, 1, 0, 100, 0, '0','0','0','0', 'Defias Pillager - Fireball on Current');
UPDATE creature_template SET SpellList=589 WHERE entry=589;

-- Bloodscalp Hunter
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(595, 'STV - Bloodscalp Hunter', 0, 75);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(595, 3, 6533, 0, 1, 0, 100, 0, '1700','10700','18400','29800', 'Bloodscalp Hunter - Net on Current'),
(595, 4, 6660, 2, 1, 0, 100, 0, '0','0','2300','3900', 'Bloodscalp Hunter - Shoot on Current');
UPDATE creature_template SET SpellList=595 WHERE entry=595;
