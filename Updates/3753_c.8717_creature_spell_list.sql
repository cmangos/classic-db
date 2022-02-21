-- Add creature_spell_list for strong Demons that are currently not immune to Enslave

-- Felguard Elite 8717
UPDATE creature_template SET SpellList=871701 WHERE entry=8717;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(871701, 'Blasted Lands - Felguard Elite', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(871701, 0, 16046, 0, 0, 0, 100, 1, 8800, 15300, 10800, 29200, 'Blasted Lands - Felguard Elite - Blast Wave'),
(871701, 1, 13737, 0, 1, 0, 100, 1, 4400, 20700, 8600, 24500, 'Blasted Lands - Felguard Elite - Cleave on Current'),
(871701, 2, 15284, 0, 1, 0, 100, 1, 3200, 5800, 8200, 21700, 'Blasted Lands - Felguard Elite - Mortal Strike on Current');

-- Grol the Destroyer
UPDATE creature_template SET SpellList=766501 WHERE entry=7665;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(766501, 'Blasted Lands - Grol the Destroyer', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(766501, 0, 12734, 0, 0, 0, 100, 1, 7800, 13400, 16800, 23200, 'Blasted Lands - Grol the Destroyer - Ground Smash'),
(766501, 1, 10101, 0, 1, 0, 100, 1, 19600, 29800, 32500, 46700, 'Blasted Lands - Grol the Destroyer - Knock Away on Current');

-- after looking some more into it, most are immune to enslave anyways, so going with this instead of rewriting data for nothing.
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
7461, -- Hederine Initiate
7665, -- https://tbc.wowhead.com/npc=7665/grol-the-destroyer#comments:id=2838054:reply=1200445
-- https://tbc.wowhead.com/npc=7665/grol-the-destroyer#comments:id=251999:reply=35084
8716, -- Dreadlord
8718, -- Manahound
8717, -- Felguard Elite - https://mega.nz/file/H6JUXDqK#c9r5_hhbIhZ-h713ohiuaejqAhl1iEvrWlB7X5J6kxw
12396, -- Doomguard Commander
14452, -- Enslaved Doomguard Commander
7664, -- Razelikh the Defiler
14101, -- https://classic.wowhead.com/npc=14101/enraged-felguard#comments:id=2915775
14530, -- Solenor the Slayer (only CoR "exploit")
14534, -- Klinfran the Crazed
14535, -- Artorius the Doombringer
15146, -- Mad Voidwalker (ZG) - https://mega.nz/file/CqRWFL5K#MKplEpSPa-sq5C9U9sncnLthO-oFgaD16h9peGt6JP4
14502  -- Xorothian Dreadsteed (Dire Maul Boss)
);

-- Remaining High Damage Output (damagemultiplier > 5) Enslaveable Demons:
-- 14389	Netherwalker - legit
-- 14483	Dread Guard - legit
-- 15623	Xandivious - legit


-- Netherwalker
UPDATE creature_template SET SpellList=1438901 WHERE entry=14389;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1438901, 'Dire Maul - Netherwalker', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1438901, 0, 22878, 0, 1, 0, 100, 1, 4000, 8000, 7300, 14200, 'Dire Maul - Netherwalker - Shadow Bolt Volley on Current');

-- Dread Guard
UPDATE creature_template SET SpellList=1448301 WHERE entry=14483;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1448301, 'Dire Maul - Dread Guard', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1448301, 0, 18663, 0, 1, 0, 100, 1, 9000, 12000, 7000, 12000, 'Dire Maul - Dread Guard - Shadow Shock on Current'),
(1448301, 1, 15284, 0, 1, 0, 100, 1, 6000, 10000, 9000, 12000, 'Dire Maul - Dread Guard - Cleave on Current');

-- Mad Voidwalker
UPDATE creature_template SET SpellList=1514601 WHERE entry=15146;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1514601, 'Zul''Gurub - Mad Voidwalker', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1514601, 0, 24614, 0, 0, 0, 100, 1, 3000, 5000, 18000, 20000, 'Zul''Gurub - Mad Voidwalker - Consuming Shadows'),
(1514601, 1, 24616, 0, 1, 0, 100, 1, 1000, 2000, 5000, 8000, 'Zul''Gurub - Mad Voidwalker - Shadow Shock on Current');

-- Xandivious
UPDATE creature_template SET SpellList=1562301 WHERE entry=15623;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1562301, 'Winterspring - Xandivious', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1562301, 0, 11980, 0, 0, 0, 100, 1, 3000, 3500, 15000, 15000, 'Winterspring - Xandivious - Curse of Weakness on Current'),
(1562301, 1, 11639, 0, 1, 0, 100, 1, 5000, 8000, 12000, 16000, 'Winterspring - Xandivious - Shadow Word: Pain on Current'),
(1562301, 2, 16046, 0, 1, 0, 100, 1, 3000, 6000, 9000, 13000, 'Winterspring - Xandivious - Blast Wave on Current');
