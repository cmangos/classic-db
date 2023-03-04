-- ============================================================================
-- Various cleanup and data correction queries
-- ============================================================================
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor*ct.ArmorMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier>0;

