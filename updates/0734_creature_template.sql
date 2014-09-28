-- Fixed stats of NPC 1511, 1514 and 1516 summoned in quest 349 (stranglethorn fever)
-- They were previously overpowered even for a four men group of right level
-- Source: WoW Bestiary and TBC-DB
-- Enraged Silverback Gorilla (1511)
UPDATE `creature_template` SET `Rank` = 0, `MinLevelHealth` = '1902', `MaxLevelHealth` = '1981', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '59', `MaxMeleeDmg` = '83', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `MeleeAttackPower` = 32, `Armor` = 2246 WHERE `entry` = '1511';
-- Mokk the Savage (1514)
UPDATE `creature_template` SET `MinLevelHealth` = '2138', `MaxLevelHealth` = '2138', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '72', `MaxMeleeDmg` = '96', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `MeleeAttackPower` = 38, `Armor` = 2557  WHERE `entry` = '1514';
-- Konda (1516)
UPDATE `creature_template` SET `MinLevelHealth` = '2059', `MaxLevelHealth` = '2059', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '67', `MaxMeleeDmg` = '82', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `MeleeAttackPower` = 32, `Armor` = 2397  WHERE `entry` = '1516';
