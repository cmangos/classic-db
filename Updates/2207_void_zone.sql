-- Fix NPC 16697 (Void Zone) not doing shadow damage
-- Remove SD2 script that is not needed in Classic (use dedicated spell instead)
UPDATE creature_template SET MinLevel=63, MaxLevel=63, HealthMultiplier=200, MinLevelHealth=666200, MaxLevelHealth=666200, UnitFlags=UnitFlags|32768, CreatureTypeFlags=1024, ArmorMultiplier=1, DamageMultiplier=1, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=76, MaxRangedDmg=112, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, ScriptName='' WHERE Entry=16697;

-- Add addon with periodic trigger aura 28874 (Consumption)
DELETE FROM creature_template_addon WHERE entry=16697;
INSERT INTO creature_template_addon VALUES (16697, 0, 0, 1, 16, 0, 0, '28874');
