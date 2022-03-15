-- Add some missing creature_spell_list in Naxxramas

-- Source: Vmangos
-- https://docs.google.com/spreadsheets/d/1e9pMuP2fw9OsAUHjWeFy6-Xpaytrb7Jv4jl2-Uan0xA/edit#gid=1824799916

-- Unholy Axe 16194
UPDATE creature_template SET SpellList = 1619401 WHERE entry = 16194; -- Sweeping Strikes
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1619401, 'Naxxramas - Unholy Axe', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1619401, 0, 15708, 0, 1, 0, 100, 1, 4000, 12000, 7000, 8000, 'Naxxramas - Unholy Axe - Mortal Strike on Current'),
(1619401, 1, 24236, 0, 0, 0, 100, 1, 3000, 9000, 15000, 15000, 'Naxxramas - Unholy Axe - Whirlwind');

-- Unholy Staff 16215
UPDATE creature_template SET SpellList = 1621501 WHERE entry = 16215;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1621501, 'Naxxramas - Unholy Staff', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1621501, 0, 29848, 0, 101, 0, 100, 1, 8000, 8000, 15000, 15000, 'Naxxramas - Unholy Staff - Polymorph on Random non tank'), -- "They also sheep a random member of the raid (possibly the closest non tanking target.)"
(1621501, 1, 29849, 0, 0, 0, 100, 1, 12000, 12000, 15000, 15000, 'Naxxramas - Unholy Staff - Frost Nova'),
(1621501, 2, 28450, 0, 0, 0, 100, 1, 4000, 4000, 15000, 15000, 'Naxxramas - Unholy Staff - Arcane Explosion');

-- Unholy Swords 16216
UPDATE creature_template SET SpellList = 1621601 WHERE entry = 16216;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1621601, 'Naxxramas - Unholy Swords', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1621601, 0, 3391, 0, 0, 0, 100, 1, 4000, 4000, 8000, 8000, 'Naxxramas - Unholy Swords - Thrash'), -- no aura passive in "new" sniffs, wotlk uses s.12787
(1621601, 1, 19632, 0, 1, 0, 100, 1, 2000, 2000, 8000, 8000, 'Naxxramas - Unholy Swords - Cleave on Current');

-- Plagued Guardian 16981
UPDATE creature_template SET SpellList = 1698101 WHERE entry = 16981; -- Blink?
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1698101, 'Naxxramas - Plagued Guardian', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1698101, 0, 15453, 0, 0, 0, 100, 1, 3000, 3000, 8000, 10000, 'Naxxramas - Plagued Guardian - Arcane Explosion');

-- Plagued Construct 16982
UPDATE creature_template SET SpellList = 1698201 WHERE entry = 16982; -- Sweeping Slam?
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1698201, 'Naxxramas - Plagued Construct', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1698201, 0, 17547, 0, 1, 0, 100, 1, 1000, 4000, 6000, 7000, 'Naxxramas - Plagued Construct - Mortal Strike on Current');

-- Plagued Champion 16983
UPDATE creature_template SET SpellList = 1698301 WHERE entry = 16983;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1698301, 'Naxxramas - Plagued Champion', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1698301, 0, 30138, 0, 0, 0, 100, 1, 1000, 4000, 8000, 8000, 'Naxxramas - Plagued Champion - Shadow Shock'),
(1698301, 1, 13737, 0, 1, 0, 100, 1, 0, 1000, 4000, 5000, 'Naxxramas - Plagued Champion - Mortal Strike on Current');

-- Plagued Warrior 16984
UPDATE creature_template SET SpellList = 1698401 WHERE entry = 16984; -- Strike?
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1698401, 'Naxxramas - Plagued Warrior', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1698401, 0, 15496, 0, 1, 0, 100, 1, 1000, 4000, 7000, 8000, 'Naxxramas - Plagued Warrior - Cleave on Current');
