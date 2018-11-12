-- Summon Enraged Felbat 14252, Summon Enraged Wyvern 14307, Summon Enraged Gryphon 14313, Summon Enraged Hippogryph 14329
UPDATE creature_template SET SpeedRun=(30 / 7), SpeedWalk=(2.5 / 2.5), `Rank`=1, HealthMultiplier=3, PowerMultiplier=3, DamageMultiplier=2, ArmorMultiplier=1, MinLevelHealth=7842, MaxLevelHealth=7842, MinMeleeDmg=94, MaxMeleeDmg=125, MinRangedDmg=65, MaxRangedDmg=95, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, MovementType=0
WHERE entry IN (
9297, -- Enraged Wyvern
9521, -- Enraged Felbat
9526, -- Enraged Gryphon
9527); -- Enraged Hippogryph

-- Unfettered Spirit
UPDATE creature_template SET MinLevelHealth=1006, MaxLevelHealth=1057 WHERE Entry=4308;

-- Stats clean-up of spawned NPCs
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor*ct.ArmorMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier>0;
