
-- Demented Druid Spirit
UPDATE creature_template SET UnitClass=2, modelId2=15403, ModelId3=15341, ModelId4=15342, SpeedWalk=1, HealthMultiplier=1, PowerMultiplier=2, ArmorMultiplier=1, MinLevelHealth=2442, MaxLevelHealth=2442, MinLevelMana=4868, MaxLevelMana=4868, DamageMultiplier=1, MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=66, MaxRangedDmg=98, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15260;
-- Spirit Shade
UPDATE creature_template SET HealthMultiplier=0.15, MinLevelHealth=458, MaxLevelHealth=458, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15261;

-- Missing script target for spell Despawn Taerar Shades
DELETE FROM spell_script_target WHERE entry=24886;
INSERT INTO spell_script_target VALUES
(24886, 1, 15302, 0);

-- Fixed GO 180517 (Putrid Mushroom)
UPDATE gameobject_template SET data2=5, ExtraFlags=1, faction=14 WHERE entry=180517;

-- Fixed size of NPC 15302 (Shade of Taerar)
UPDATE creature_template SET scale=1 WHERE entry=15302;
