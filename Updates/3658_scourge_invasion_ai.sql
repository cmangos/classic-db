-- Add some Scourge Invasion AI
-- Source: https://github.com/vmangos/core/commit/0c2ee9921731ea4b5a710fc77001db233df80709#
UPDATE creature_template SET SpellList=4543 WHERE entry=4543; -- Bloodmage Thalnos
UPDATE creature_template SET SpellList=14682 WHERE entry=14682; -- Sever
UPDATE creature_template SET SpellList=14686 WHERE entry=14686; -- Lady Falther'ess
UPDATE creature_template SET SpellList=16141 WHERE entry=16141; -- Ghoul Berserker
UPDATE creature_template SET SpellList=16299 WHERE entry=16299; -- Skeletal Shocktrooper
UPDATE creature_template SET SpellList=16298 WHERE entry=16298; -- Spectral Soldier
UPDATE creature_template SET SpellList=14697 WHERE entry=14697; -- Lumbering Horror
UPDATE creature_template SET SpellList=16380 WHERE entry=16380; -- Bone Witch
UPDATE creature_template SET SpellList=16379 WHERE entry=16379; -- Spirit of the Damned
UPDATE creature_template SET SpellList=16438 WHERE entry=16438; -- Skeletal Trooper

DELETE FROM creature_spell_list WHERE Id IN (4543,14682,14686,16141,16299,16298,14697,16380,16379,16438);
INSERT INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(4543, 0, 8814, 0, 100, 0, 100, 0, 0, 8, 8, 16, 'Scarlet Monastery - Bloodmage Thalnos - Flame Spike'),
(4543, 1, 12470, 0, 0, 0, 100, 0, 0, 9, 9, 12, 'Scarlet Monastery - Bloodmage Thalnos - Fire Nova'),
(4543, 2, 8053, 0, 1, 0, 100, 0, 0, 16, 16, 60, 'Scarlet Monastery - Bloodmage Thalnos - Flame Shock (Rank 3)'),
(4543, 3, 9613, 2, 1, 0, 100, 0, 0, 3, 3, 5, 'Scarlet Monastery - Bloodmage Thalnos - Shadow Bolt'),

(14682, 0, 16508, 0, 1, 0, 100, 0, 5, 20, 30, 60, 'Shadowfang Keep - Sever - Intimidating Roar'),
(14682, 1, 17745, 0, 1, 0, 100, 0, 5, 8, 8, 16, 'Shadowfang Keep - Sever - Diseased Spit'),

(14686, 0, 16838, 0, 1, 0, 100, 0, 0, 20, 20, 20, 'Razorfen Downs - Lady Falther''ess - Banshee Shriek'),
(14686, 1, 17105, 0, 1, 0, 100, 0, 0, 30, 12, 30, 'Razorfen Downs - Lady Falther''ess - Banshee Curse'),
(14686, 2, 22743, 0, 1, 0, 100, 0, 0, 25, 5, 25, 'Razorfen Downs - Lady Falther''ess - Ribbon of Souls'),
(14686, 3, 7645, 0, 100, 0, 100, 0, 10, 30, 30, 60, 'Razorfen Downs - Lady Falther''ess - Dominate Mind'),

(16141, 0, 7367, 0, 1, 0, 100, 50, 6, 12, 6, 12, 'Scourge Invasion - Ghoul Berserker - Infected Bite'),

(16299, 0, 17014, 0, 0, 0, 100, 0, 0, 16, 16, 16, 'Scourge Invasion - Skeletal Shocktrooper - Bone Shards'),

(16298, 0, 16244, 0, 0, 0, 100, 50, 0, 20, 20, 20, 'Scourge Invasion - Spectral Soldier - Demoralizing Shout'),
(16298, 1, 21081, 0, 1, 0, 100, 50, 6, 12, 6, 12, 'Scourge Invasion - Spectral Soldier - Sunder Armor'),

(14697, 0, 16790, 0, 1, 0, 100, 0, 0, 17, 17, 17, 'Scourge Invasion - Lumbering Horror - Knockdown'),
(14697, 1, 5568, 0, 0, 0, 100, 0, 5, 10, 5, 10, 'Scourge Invasion - Lumbering Horror - Trample'),

(16380, 0, 17014, 0, 0, 0, 100, 50, 1, 8, 8, 19, 'Scourge Invasion - Bone Witch - Bone Shards'),
(16380, 1, 20720, 2, 1, 0, 100, 0, 1, 3, 3, 3, 'Scourge Invasion - Bone Witch - Arcane Bolt'),

(16379, 0, 22884, 0, 0, 0, 100, 0, 1, 12, 6, 12, 'Scourge Invasion - Spirit of the Damned - Psychic Scream'),
(16379, 1, 16243, 2, 1, 0, 100, 0, 1, 6, 3, 6, 'Scourge Invasion - Spirit of the Damned - Ribbon of Souls'),

(16438, 0, 589, 0, 1, 0, 100, 0, 1, 9, 9, 18, 'Scourge Invasion - Skeletal Trooper - Shadow Word: Pain (Rank 1)');

INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES 
(17, 0, 12355, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12356, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12357, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12358, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12359, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12360, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12361, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(17, 0, 12362, 0, 'Horde Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12366, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12367, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12368, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12369, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12370, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12371, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12372, 0, 'Alliance Scourge Invasion Random OOC LOS Texts'),
(18, 0, 12373, 0, 'Alliance Scourge Invasion Random OOC LOS Texts');
