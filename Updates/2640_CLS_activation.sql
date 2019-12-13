-- Activate Class Level System for all creatures that were not using it yet
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.MinLevelHealth=cs.BaseHealthExp0*ct.HealthMultiplier, ct.MinLevelMana=cs.BaseMana*ct.PowerMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MinLevel and ct.ArmorMultiplier<0;
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.MaxLevelHealth=cs.BaseHealthExp0*ct.HealthMultiplier, ct.MaxLevelMana=cs.BaseMana*ct.PowerMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier<0;
UPDATE creature_template SET ArmorMultiplier=1 WHERE ArmorMultiplier=-1;

-- Clean-up
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor*ct.ArmorMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier>0;
