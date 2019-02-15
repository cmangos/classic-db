-- Add DB support for quest 8519 (A Pawn on the Eternal Board) SD2 fixes
-- Fix faction of involved NPCs according to sniff data
UPDATE creature_template SET Faction=35 WHERE Entry=15382;
UPDATE creature_template SET Faction=250 WHERE Entry=15423;
UPDATE creature_template SET Faction=310 WHERE Entry IN (15414, 15421, 15422, 15424);

-- Fix stats of NPCs involved in the fight
UPDATE creature_template SET HealthMultiplier=1.7, MinLevelHealth=5188, MaxLevelHealth=5188, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (15414, 15421, 15422); -- Qiraji Tank, Qiraji Drone, Qiraji Wasp
UPDATE creature_template SET HealthMultiplier=5.5, PowerMultiplier=2, MinLevelHealth=15790, MaxLevelHealth=16786, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=100, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15423; -- Kaldorei Infantry
UPDATE creature_template SET DamageMultiplier=7, MinMeleeDmg=106, MaxMeleeDmg=140, MinRangedDmg=73, MaxRangedDmg=107, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15424; -- Anubisath Conqueror

-- Add missing spell targets for spell dummy effects
DELETE FROM spell_script_target WHERE entry IN (25145, 25149, 25150, 25158);
INSERT INTO spell_script_target VALUES
(25145, 1, 15414, 0),   -- Merithra's Wake
(25145, 1, 15421, 0),
(25145, 1, 15422, 0),
(25145, 1, 15424, 0),
(25149, 1, 15414, 0),   -- Arygos's Vengeance
(25149, 1, 15421, 0),
(25149, 1, 15422, 0),
(25149, 1, 15424, 0),
(25150, 1, 15414, 0),   -- Molten Rain
(25150, 1, 15421, 0),
(25150, 1, 15422, 0),
(25150, 1, 15424, 0),
(25158, 1, 15414, 0),   -- Time Stop
(25158, 1, 15421, 0),
(25158, 1, 15422, 0),
(25158, 1, 15423, 0),
(25158, 1, 15424, 0);

-- Add missing visual GO 180604 (Merithra's Wake) - positionning is guesswork based on videos
DELETE FROM gameobject WHERE id=180604;
INSERT INTO gameobject VALUES
(160194, 180604, 1, -8092.12, 1508.32, 2.94, 0.0, 0, 0, 0.526873, -0.849944, -60, -60, 100, 1),
(160195, 180604, 1, -8096.54, 1525.84, 2.83, 0.0, 0, 0, 0.526873, -0.849944, -60, -60, 100, 1),
(160196, 180604, 1, -8091.38, 1482.97, 2.61018, 2.33021, 0, 0, 0.91883, 0.394655, -60, -60, 100, 1),
(160197, 180604, 1, -8089.73, 1488.92, 2.60938, 3.33552, 0, 0, 0.995303, -0.0968115, -60, -60, 100, 1),
(160198, 180604, 1, -8091.48, 1552.49, 3.1409, 2.77317, 0, 0, 0.983081, 0.183172, -60, -60, 100, 1),
(160199, 180604, 1, -8080.87, 1519.04, 2.63121, 3.22084, 0, 0, 0.999215, -0.039614, -60, -60, 100, 1),
(160200, 180604, 1, -8074.98, 1535.81, 2.60987, 0.102805, 0, 0, 0.0513798, 0.998679, -60, -60, 100, 1),
(160201, 180604, 1, -8100, 1541.79, 3.22296, 3.08496, 0, 0, 0.999599, 0.0283121, -60, -60, 100, 1);
