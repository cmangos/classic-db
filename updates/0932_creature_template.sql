-- Fixed stats of NPC 2887 (Prismatic Exile) in Arathi Highlands
-- They will now be able to cast their spells
UPDATE `creature_template` SET `UnitClass`= 2, `HealthMultiplier` = 1.25, `MinLevelHealth` = 1651, `MaxLevelHealth` = 1716, `MinLevelMana` = 1381, `MaxLevelMana` = 1432, `ArmorMultiplier` = 1 WHERE `Entry` = 2887;
