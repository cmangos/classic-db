-- Fixed stats of creature 8208 (Murderous Blisterpaw) in Tanaris
UPDATE `creature_template` SET `MinLevel` = 43, `MaxLevel` = 43, `MinLevelHealth` = 2059, `MaxLevelHealth` = 2059, `Armor` = 2414, `Rank` = 4,
`MinMeleeDmg` = 67, `MaxMeleeDmg` = 82, `MinRangedDmg` = 49.984, `MaxRangedDmg` = 68.728, `MeleeAttackPower` = 34 WHERE `Entry` = 8208;
