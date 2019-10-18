-- Several fixes for Grand Widow Faerlina encounter in Naxxramas

-- NPC 16506 (Naxxramas Worshiper) should not be immune to Mind Control
UPDATE creature_template SET MechanicImmuneMask=0 WHERE Entry=16506;

-- Add missing spell 28732 (Widow's Embrace) to NPC 16506 (Naxxramas Worshiper)
DELETE FROM creature_template_spells WHERE entry=16506;
INSERT INTO creature_template_spells VALUES
(16506, 28732, 0, 0, 0, 0, 0, 0, 0);

-- Add missing linking in Grand Widow Faerlina encounter
DELETE FROM creature_linking_template WHERE entry=16505;
INSERT INTO creature_linking_template VALUES
(16505, 533, 15953, 7, 0);

-- Add script targets for spell 28732 (Widow's Embrace)
DELETE FROM spell_script_target WHERE entry=28732;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28732, 1, 15953, 6);
