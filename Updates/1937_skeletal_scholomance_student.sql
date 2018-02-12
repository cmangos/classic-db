-- Fixed stats of NPC 11547 (Skeletal Scholomance Student) used in quest 4771
UPDATE creature_template SET MinLevel=58, MaxLevel=59, HealthMultiplier=6, PowerMultiplier=1, DamageMultiplier=3.6, ArmorMultiplier=1, MinLevelHealth=17226, MaxLevelHealth=17766, MinLevelMana=0, MaxLevelMana=0, MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=11547; -- Skeletal Scholomance Student

UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
