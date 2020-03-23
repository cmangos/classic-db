UPDATE creature_template SET SpeedWalk=(4/2.5), SpeedRun=(6/7), UnitFlags=33554432, UnitClass=2, RegenerateStats=0, HealthMultiplier=2.4390243902439, PowerMultiplier=1.66666666666667, MinLevelMana=100, MaxLevelMana=100, MinLevelHealth=100, MaxLevelHealth=100 WHERE Entry=15328;
-- 33556480? with PetInCombat

DELETE FROM spell_script_target WHERE entry IN (24934,28000,25099,24938,25029,25032);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(24934, 0, 180524, 0),  -- Summon RC Tank
(28000, 1, 15328, 0),   -- Land Mine Trigger
(25099, 1, 15328, 0),   -- Detonation
(24938, 0, 180524, 0),  -- Close Control Console
(25029, 1, 15328, 0),   -- Flamethrower
(25032, 1, 15328, 0);   -- Machine Gun

DELETE FROM creature_template_spells WHERE entry=15328;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(15328, 2, 0, 0, 24933, 25003, 25024, 27746, 0);

-- spell6 is randomized between 4 possible spells:
-- 25026 Activate MG Turret
-- 25024 Drop Mine
-- 27759 Shield Generator
-- 25027 Flamethrower

-- fix data for Tonk Control Console
UPDATE gameobject_template SET data2=0 WHERE entry=180524;
UPDATE gameobject SET spawntimesecsmin=0, spawntimesecsmax=0 WHERE id=180524;
