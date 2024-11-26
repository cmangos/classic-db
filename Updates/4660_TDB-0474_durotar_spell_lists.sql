-- Dire Mottled Boar
DELETE FROM `creature_template_spells` WHERE `entry` = 3099;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 309901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(309901, 'Dire Mottled Boar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 309901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(309901, 1, 3385, 0, -1, 2, 0, 100, 0, 0, 10000, 10000, 20000, 'Dire Mottled Boar - Boar Charge - self');

UPDATE `creature_template` SET `SpellList` = 309901 WHERE `entry` = 3099;

-- Elder Mottled Boar
DELETE FROM `creature_template_spells` WHERE `entry` = 3100;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 310001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(310001, 'Elder Mottled Boar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 310001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(310001, 1, 3385, 0, -1, 2, 0, 100, 0, 0, 10000, 10000, 20000, 'Elder Mottled Boar - Boar Charge - self');

UPDATE `creature_template` SET `SpellList` = 310001 WHERE `entry` = 3100;

-- Makrura Snapclaw
DELETE FROM `creature_template_spells` WHERE `entry` = 3105;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 310501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(310501, 'Makrura Snapclaw', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 310501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(310501, 1, 5424, 0, -1, 1, 0, 100, 0, 5000, 15000, 15000, 21000, 'Makrura Snapclaw - Claw Grasp - current');

UPDATE `creature_template` SET `SpellList` = 310501 WHERE `entry` = 3105;

-- Encrusted Surf Crawler
DELETE FROM `creature_template_spells` WHERE `entry` = 3108;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 310801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(310801, 'Encrusted Surf Crawler', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 310801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(310801, 1, 5426, 0, -1, 2, 0, 100, 0, 9000, 16000, 30000, 40000, 'Encrusted Surf Crawler - Quick Sidestep - self');

UPDATE `creature_template` SET `SpellList` = 310801 WHERE `entry` = 3108;

-- Dreadmaw Crocolisk
DELETE FROM `creature_template_spells` WHERE `entry` = 3110;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311001, 'Dreadmaw Crocolisk', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311001, 1, 12166, 0, -1, 1, 0, 100, 0, 5000, 14000, 12000, 16000, 'Dreadmaw Crocolisk - Muscle Tear - current');

UPDATE `creature_template` SET `SpellList` = 311001 WHERE `entry` = 3110;

-- Razormane Quilboar
DELETE FROM `creature_template_spells` WHERE `entry` = 3111;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311101, 'Razormane Quilboar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311101, 1, 5280, 0, -1, 2, 0, 100, 0, 1000, 10000, 45000, 50000, 'Razormane Quilboar - Razor Mane - self');

UPDATE `creature_template` SET `SpellList` = 311101 WHERE `entry` = 3111;

-- Razormane Scout
DELETE FROM `creature_template_spells` WHERE `entry` = 3112;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311201, 'Razormane Scout', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 311201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311201, 1, 6660, 2, -1, 1, 0, 100, 0, 0, 2200, 2000, 4000, 'Razormane Scout - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 311201 WHERE `entry` = 3112;

-- Razormane Dustrunner
-- Confirmed from Classic PTR that they use rejuv already after loosing 10%
DELETE FROM creature_spell_targeting WHERE Id = 130;
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES ('130', '1', '1', '0', '512', 'Attack - top aggro aura not present');

DELETE FROM `creature_template_spells` WHERE `entry` = 3113;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311301, 'Razormane Dustrunner', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311301, 1, 6950, 0, -1, 130, 0, 100, 0, 1000, 10000, 30000, 35000, 'Razormane Dustrunner - Faerie Fire - top aggro aura not present'),
(311301, 2, 774, 0, -1, 200, 0, 100, 0, 3000, 7000, 14000, 21000, 'Razormane Dustrunner - Rejuvenation - friendly missing 10% including self');

UPDATE `creature_template` SET `SpellList` = 311301 WHERE `entry` = 3113;

-- Razormane Battleguard
DELETE FROM `creature_template_spells` WHERE `entry` = 3114;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311401, 'Razormane Battleguard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311401, 1, 3248, 0, -1, 2, 0, 100, 0, 2000, 10000, 11000, 19000, 'Razormane Battleguard - Improved Blocking - self');

UPDATE `creature_template` SET `SpellList` = 311401 WHERE `entry` = 3114;

-- Dustwind Pillager
DELETE FROM `creature_template_spells` WHERE `entry` = 3116;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311601, 'Dustwind Pillager', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311601, 1, 3147, 0, -1, 1, 0, 100, 0, 2000, 13000, 18000, 24000, 'Dustwind Pillager - Rend Flesh - current');

UPDATE `creature_template` SET `SpellList` = 311601 WHERE `entry` = 3116;

-- Dustwind Storm Witch
DELETE FROM `creature_template_spells` WHERE `entry` = 3118;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311801, 'Dustwind Storm Witch', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 311801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311801, 1, 9532, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Dustwind Storm Witch - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 311801 WHERE `entry` = 3118;

-- Kolkar Drudge
DELETE FROM `creature_template_spells` WHERE `entry` = 3119;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 311901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(311901, 'Kolkar Drudge', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 311901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(311901, 1, 7272, 0, -1, 2, 0, 100, 0, 6000, 11000, 21000, 29000, 'Kolkar Drudge - Dust Cloud - self');

UPDATE `creature_template` SET `SpellList` = 311901 WHERE `entry` = 3119;

-- Kolkar Outrunner
DELETE FROM `creature_template_spells` WHERE `entry` = 3120;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312001, 'Kolkar Outrunner', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 312001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312001, 1, 6660, 2, -1, 1, 0, 100, 0, 0, 2200, 2000, 4000, 'Kolkar Outrunner - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 312001 WHERE `entry` = 3120;

-- Bloodtalon Taillasher
DELETE FROM `creature_template_spells` WHERE `entry` = 3122;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312201, 'Bloodtalon Taillasher', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 312201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312201, 1, 6268, 0, -1, 2, 0, 100, 0, 0, 5000, 7000, 9000, 'Bloodtalon Taillasher - Rushing Charge - self');

UPDATE `creature_template` SET `SpellList` = 312201 WHERE `entry` = 3122;

-- Bloodtalon Scythemaw
DELETE FROM `creature_template_spells` WHERE `entry` = 3123;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312301, 'Bloodtalon Scythemaw', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 312301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312301, 1, 6268, 0, -1, 2, 0, 100, 0, 0, 5000, 7000, 9000, 'Bloodtalon Scythemaw - Rushing Charge - self');

UPDATE `creature_template` SET `SpellList` = 312301 WHERE `entry` = 3123;

-- Venomtail Scorpid
DELETE FROM `creature_template_spells` WHERE `entry` = 3127;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312701, 'Venomtail Scorpid', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 312701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312701, 1, 5416, 0, -1, 130, 0, 100, 0, 1000, 15000, 15000, 25000, 'Venomtail Scorpid - Venom Sting - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 312701 WHERE `entry` = 3127;

-- Kul Tiras Sailor
DELETE FROM `creature_template_spells` WHERE `entry` = 3128;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312801, 'Kul Tiras Sailor', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 312801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312801, 1, 6268, 0, -1, 2, 0, 100, 0, 0, 6000, 7000, 9000, 'Kul Tiras Sailor - Rushing Charge - self');

UPDATE `creature_template` SET `SpellList` = 312801 WHERE `entry` = 3128;

-- Kul Tiras Marine
DELETE FROM `creature_template_spells` WHERE `entry` = 3129;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 312901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(312901, 'Kul Tiras Marine', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 312901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312901, 1, 11972, 0, -1, 122, 0, 100, 0, 1000, 6000, 16000, 32000, 'Kul Tiras Marine - Shield Bash - random player casting');

UPDATE `creature_template` SET `SpellList` = 312901 WHERE `entry` = 3129;

-- Thunder Lizard
DELETE FROM `creature_template_spells` WHERE `entry` = 3130;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 313001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(313001, 'Thunder Lizard', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 313001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(313001, 1, 5401, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Thunder Lizard - Lizard Bolt - current');

UPDATE `creature_template` SET `SpellList` = 313001 WHERE `entry` = 3130;

-- Lightning Hide
DELETE FROM `creature_template_spells` WHERE `entry` = 3131;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 313101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(313101, 'Lightning Hide', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 313101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(313101, 1, 5401, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Lightning Hide - Lizard Bolt - current');

UPDATE `creature_template` SET `SpellList` = 313101 WHERE `entry` = 3131;

-- Makrura Elder
DELETE FROM `creature_template_spells` WHERE `entry` = 3141;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 314101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(314101, 'Makrura Elder', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 314101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(314101, 1, 5424, 0, -1, 1, 0, 100, 0, 1000, 10000, 15000, 23000, 'Makrura Elder - Claw Grasp - current');

UPDATE `creature_template` SET `SpellList` = 314101 WHERE `entry` = 3141;

-- Yarrog Baneshadow
DELETE FROM `creature_template_spells` WHERE `entry` = 3183;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 318301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(318301, 'Yarrog Baneshadow', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 318301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(318301, 1, 172, 0, -1, 1, 0, 100, 0, 0, 6000, 14000, 25000, 'Yarrog Baneshadow - Corruption - current'),
(318301, 2, 348, 0, -1, 1, 0, 100, 0, 0, 8000, 17000, 28000, 'Yarrog Baneshadow - Immolate - current');

UPDATE `creature_template` SET `SpellList` = 318301 WHERE `entry` = 3183;

-- Lieutenant Benedict
-- can cast shield bash even without target is casting
DELETE FROM `creature_template_spells` WHERE `entry` = 3192;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 319201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(319201, 'Lieutenant Benedict', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 319201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(319201, 1, 72, 0, -1, 1, 0, 100, 0, 1000, 6000, 16000, 32000, 'Lieutenant Benedict - Shield Bash - current'),
(319201, 2, 3248, 0, -1, 2, 0, 100, 0, 2000, 8000, 8000, 14000, 'Lieutenant Benedict - Improved Blocking - self');

UPDATE `creature_template` SET `SpellList` = 319201 WHERE `entry` = 3192;

-- Burning Blade Neophyte
DELETE FROM `creature_template_spells` WHERE `entry` = 3196;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 319601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(319601, 'Burning Blade Neophyte', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 319601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(319601, 1, 348, 0, -1, 130, 0, 100, 0, 0, 10000, 5000, 15000, 'Burning Blade Neophyte - Immolate - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 319601 WHERE `entry` = 3196;

-- Burning Blade Fanatic
DELETE FROM `creature_template_spells` WHERE `entry` = 3197;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 319701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(319701, 'Burning Blade Fanatic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 319701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(319701, 1, 5262, 0, -1, 2, 0, 100, 0, 0, 11000, 16000, 22000, 'Burning Blade Fanatic - Fanatic Blade - self');

UPDATE `creature_template` SET `SpellList` = 319601 WHERE `entry` = 3197;

-- Burning Blade Apprentice
DELETE FROM `creature_template_spells` WHERE `entry` = 3198;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 319801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(319801, 'Burning Blade Apprentice', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 319801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(319801, 1, 20791, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Burning Blade Apprentice - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 319801 WHERE `entry` = 3198;

-- Burning Blade Cultist
DELETE FROM `creature_template_spells` WHERE `entry` = 3199;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 319901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(319901, 'Burning Blade Cultist', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 319901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(319901, 1, 11962, 0, -1, 130, 0, 100, 0, 0, 6000, 6000, 13000, 'Burning Blade Cultist - Immolate - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 319901 WHERE `entry` = 3199;

-- Fizzle Darkstorm
DELETE FROM `creature_template_spells` WHERE `entry` = 3203;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 320301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(320301, 'Fizzle Darkstorm', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 320301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(320301, 1, 7290, 0, -1, 1, 0, 100, 0, 2000, 10000, 5000, 15000, 'Fizzle Darkstorm - Soul Siphon - current'),
(320301, 2, 20791, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Fizzle Darkstorm - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 320301 WHERE `entry` = 3203;

-- Gazz''uz
DELETE FROM `creature_template_spells` WHERE `entry` = 3204;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 320401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(320401, 'Gazz''uz', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 320401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(320401, 1, 172, 0, -1, 130, 0, 100, 0, 2000, 10000, 5000, 15000, 'Gazz''uz - Corruption - top aggro aura not present'),
(320401, 2, 20791, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Gazz''uz - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 320401 WHERE `entry` = 3204;

-- Zalazane
DELETE FROM `creature_template_spells` WHERE `entry` = 3205;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 320501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(320501, 'Zalazane', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 320501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(320501, 1, 332, 0, -1, 201, 0, 100, 0, 2000, 8000, 8000, 14000, 'Zalazane - Healing Wave - 50% including self'),
(320501, 2, 7289, 0, -1, 130, 0, 100, 0, 1000, 7000, 5000, 12000, 'Zalazane - Shrink - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 320501 WHERE `entry` = 3205;


-- Voodoo Troll
DELETE FROM `creature_template_spells` WHERE `entry` = 3206;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 320601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(320601, 'Voodoo Troll', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 320601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(320601, 1, 332, 0, -1, 201, 0, 100, 0, 2000, 8000, 8000, 14000, 'Voodoo Troll - Healing Wave - 50% including self');

UPDATE `creature_template` SET `SpellList` = 320601 WHERE `entry` = 3206;


-- Hexed Troll
DELETE FROM `creature_template_spells` WHERE `entry` = 3207;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 320701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(320701, 'Hexed Troll', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 320701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(320701, 1, 11962, 0, -1, 130, 0, 100, 0, 3000, 8000, 13000, 24000, 'Hexed Troll - Immolate - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 320701 WHERE `entry` = 3207;

-- Corrupted Mottled Boar 
DELETE FROM `creature_template_spells` WHERE `entry` = 3225;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 322501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(322501, 'Corrupted Mottled Boar ', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 322501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(322501, 1, 3385, 0, -1, 2, 0, 100, 0, 0, 10000, 10000, 20000, 'Corrupted Mottled Boar - Boar Charge - self'),
(322501, 2, 6818, 0, -1, 130, 0, 100, 0, 0, 10000, 10000, 25000, 'Corrupted Mottled Boar - Corrupted Intellect - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 322501 WHERE `entry` = 3225;

-- Corrupted Scorpid
DELETE FROM `creature_template_spells` WHERE `entry` = 3226;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 322601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(322601, 'Corrupted Scorpid', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 322601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(322601, 1, 5413, 0, -1, 130, 0, 100, 0, 0, 10000, 10000, 25000, 'Corrupted Scorpid - Noxious Catalyst - top aggro aura not present'),
(322601, 2, 11918, 0, -1, 130, 0, 100, 0, 0, 10000, 10000, 25000, 'Corrupted Scorpid - Poison - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 322601 WHERE `entry` = 3226;

-- Corrupted Bloodtalon Scythemaw
DELETE FROM `creature_template_spells` WHERE `entry` = 3227;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 322701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(322701, 'Corrupted Bloodtalon Scythemaw', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 322701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(322701, 1, 6268, 0, -1, 2, 0, 100, 0, 0, 5000, 7000, 9000, 'Corrupted Bloodtalon Scythemaw - Rushing Charge - self');

UPDATE `creature_template` SET `SpellList` = 322701 WHERE `entry` = 3227;

-- Corrupted Surf Crawler
DELETE FROM `creature_template_spells` WHERE `entry` = 3228;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 322801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(322801, 'Corrupted Surf Crawler', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 322801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(322801, 1, 6951, 0, -1, 130, 0, 100, 0, 5000, 12000, 7000, 21000, 'Corrupted Surf Crawler - Decayed Strength - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 322801 WHERE `entry` = 3228;

-- Corrupted Dreadmaw Crocolisk
DELETE FROM `creature_template_spells` WHERE `entry` = 3231;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 323101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(323101, 'Corrupted Dreadmaw Crocolisk', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 323101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(323101, 1, 7901, 0, -1, 130, 0, 100, 0, 5000, 12000, 7000, 21000, 'Corrupted Dreadmaw Crocolisk - Decayed Agility - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 323101 WHERE `entry` = 3231;

-- Sarkoth
-- ServerToClient: SMSG_AURA_UPDATE (0x2C22) Length: 52 ConnIdx: 17 Time: 09/23/2019 15:58:46.109 Number: 13773
-- [0] CastID: Full: 0xBC460400200BA3C7000010000008CE97 Cast/7 R4481/S16 Map: 1 Entry: 11919 Low: 577175
-- [0] SpellID: 11919 (11919)
UPDATE creature_template_addon SET auras = '11919' WHERE entry = '3281';


-- Warlord Kolkanis
DELETE FROM `creature_template_spells` WHERE `entry` = 5808;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 580801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(580801, 'Warlord Kolkanis', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 580801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(580801, 1, 12555, 0, -1, 122, 0, 100, 0, 8000, 12000, 8000, 20000, 'Warlord Kolkanis - Pummel - target casting'),
(580801, 2, 8078, 0, -1, 1, 0, 100, 0, 5000, 25000, 21000, 44000, 'Warlord Kolkanis - Thunderclap - current');

UPDATE `creature_template` SET `SpellList` = 580801 WHERE `entry` = 5808;

-- Watch Commander Zalaphil
DELETE FROM `creature_template_spells` WHERE `entry` = 5809;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 580901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(580901, 'Watch Commander Zalaphil', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 580901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(580901, 1, 11972, 0, -1, 122, 0, 100, 0, 0, 8000, 8000, 21000, 'Watch Commander Zalaphil - Shield Bash - target casting');

UPDATE `creature_template` SET `SpellList` = 580901 WHERE `entry` = 5809;

-- Felweaver Scornn
DELETE FROM `creature_template_spells` WHERE `entry` = 5822;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 582201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(582201, 'Felweaver Scornn', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` = 582201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(582201, 1, 9613, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Felweaver Scornn - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 582201 WHERE `entry` = 5822;

-- Death Flayer
DELETE FROM `creature_template_spells` WHERE `entry` = 5823;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 582301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(582301, 'Death Flayer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 582301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(582301, 1, 5416, 0, -1, 130, 0, 100, 0, 0, 9000, 9000, 18000, 'Death Flayer - Venom Sting - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 582301 WHERE `entry` = 5823;

-- Captain Flat Tusk
DELETE FROM `creature_template_spells` WHERE `entry` = 5824;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 582401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(582401, 'Captain Flat Tusk', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 582401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(582401, 1, 25710, 0, -1, 1, 0, 100, 0, 1000, 7000, 7000, 12000, 'Captain Flat Tusk - Heroic Strike - current');

UPDATE `creature_template` SET `SpellList` = 582401 WHERE `entry` = 5824;

-- Geolord Mottle
DELETE FROM `creature_template_spells` WHERE `entry` = 5826;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 582601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(582601, 'Geolord Mottle', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 582601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(582601, 1, 547, 0, -1, 208, 0, 100, 0, 2000, 8000, 16000, 21000, 'Geolord Mottle - Healing Wave - missing 75% incl self');

UPDATE `creature_template` SET `SpellList` = 582601 WHERE `entry` = 5826;
