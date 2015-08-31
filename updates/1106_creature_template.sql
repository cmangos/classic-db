-- Fixed stats of "trash" NPCs in Blackrock Depths
-- Anvilrage Overseer 8889
UPDATE creature_template SET MinLevel = 48, HealthMultiplier = 3, DamageMultiplier = 2.9, MeleeAttackPower = 200, RangedAttackPower=19, MinMeleeDmg=80, MaxMeleeDmg=110, MeleeBaseAttackTime = 2000 WHERE Entry = 8889;
-- Anvilrage Warden 8890
UPDATE creature_template SET DamageMultiplier = 3, MeleeAttackPower = 206, RangedAttackPower=20, MinMeleeDmg=83, MaxMeleeDmg=112, MeleeBaseAttackTime = 2000 WHERE Entry = 8890;
-- Anvilrage Guardsman 8891
UPDATE creature_template SET DamageMultiplier = 3.1, MeleeAttackPower = 210, RangedAttackPower=20, MinMeleeDmg=85, MaxMeleeDmg=114, MeleeBaseAttackTime = 2000 WHERE Entry = 8891;
-- Anvilrage Footman 8892
UPDATE creature_template SET MinLevelHealth=6876, MaxLevelHealth=7113, HealthMultiplier = 3, DamageMultiplier = 3.6, MeleeAttackPower = 214, RangedAttackPower=21, MinMeleeDmg=86, MaxMeleeDmg=117, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8892;
-- Anvilrage Soldier 8893
UPDATE creature_template SET MinLevelHealth=7113, MaxLevelHealth=7359, HealthMultiplier = 3, DamageMultiplier = 3.30, MeleeAttackPower = 218, RangedAttackPower=22, MinMeleeDmg=88, MaxMeleeDmg=119, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8893;
-- Anvilrage Medic 8894
UPDATE creature_template SET MinLevel=52, MinLevelHealth=4980, MaxLevelHealth=5151, MinLevelMana=9300, MaxLevelMana=9530, HealthMultiplier = 3, PowerMultiplier=2, DamageMultiplier = 4, MeleeAttackPower = 97, RangedAttackPower=23, MinMeleeDmg=63, MaxMeleeDmg=89, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8894;
-- Anvilrage Officer 8895
UPDATE creature_template SET MinLevelHealth=5886, MaxLevelHealth=6078, MinLevelMana=3964, MaxLevelMana=4082, HealthMultiplier = 3, PowerMultiplier=2, DamageMultiplier = 3.4, MeleeAttackPower = 210, RangedAttackPower=20, MinMeleeDmg=84, MaxMeleeDmg=114, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8895;
-- Anvilrage Marshal 8898
UPDATE creature_template SET MinLevelHealth=6078, MaxLevelHealth=6273, MinLevelMana=4082, MaxLevelMana=4234, HealthMultiplier = 3, PowerMultiplier=2, DamageMultiplier = 3.5, MeleeAttackPower = 214, RangedAttackPower=21, MinMeleeDmg=84, MaxMeleeDmg=114, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8898;
-- Anvilrage Reservist 8901
UPDATE creature_template SET MinLevel=54,MinLevelHealth=760, MaxLevelHealth=784, HealthMultiplier = 0.3, DamageMultiplier = 1, MeleeAttackPower = 228, RangedAttackPower=23, MinMeleeDmg=92, MaxMeleeDmg=125, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8901;
-- Anvilrage Captain 8903
UPDATE creature_template SET MinLevel=55, MinLevelHealth=7842, MaxLevelHealth=8097, HealthMultiplier = 3, DamageMultiplier = 3.6, MeleeAttackPower = 234, RangedAttackPower=23, MinMeleeDmg=94, MaxMeleeDmg=127, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8903;

-- Reginald Windsor
UPDATE creature_template SET MinLevelHealth = 8536, MaxLevelHealth = 8536, HealthMultiplier = 3.6, PowerMultiplier = 2, DamageMultiplier = 3.5, MinMeleeDmg = 54, MaxMeleeDmg = 72, MeleeAttackPower = 214, ArmorMultiplier = 1 WHERE Entry = 9023;
-- Marshal Reginald Windsor
UPDATE creature_template SET MinLevelHealth = 8536, MaxLevelHealth = 8536,  HealthMultiplier = 3.6, PowerMultiplier = 2, DamageMultiplier = 7.5, MinMeleeDmg = 54, MaxMeleeDmg = 72, MeleeAttackPower = 214, ArmorMultiplier = 1 WHERE Entry = 9682;

-- Doomforge Arcanasmith 8900
UPDATE creature_template SET MaxLevelHealth = 2379, MaxLevelMana = 5013, HealthMultiplier = 1.3, DamageMultiplier = 1.75, MinMeleeDmg = 65, MaxMeleeDmg = 93, MeleeAttackPower = 101, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8900;
-- Ragereaver Golem 8906
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 7842, MinLevelMana=0, MaxLevelMana=0, HealthMultiplier = 3, DamageMultiplier = 3.6, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8906;
-- Wrath Hammer Construct 8907
UPDATE creature_template SET MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, DamageMultiplier = 3.6, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8907;
-- Weapon Technician 8920
UPDATE creature_template SET MinLevelHealth = 2614, MaxLevelHealth = 2699, HealthMultiplier = 1.0, DamageMultiplier = 1.75, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8920;

-- Ribbly Screwspigot 9543
UPDATE creature_template SET MinLevel=53, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.3, MinMeleeDmg = 90, MaxMeleeDmg = 119, MeleeAttackPower = 218, RangedAttackPower=22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9543;
-- Ribbly's Crony 10043
UPDATE creature_template SET MinLevel=48, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.2, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 10043;

-- Fireguard Destroyer 8911
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 8097, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.6, MinMeleeDmg = 92, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8911;
-- Blazing Fireguard 8910
UPDATE creature_template SET MaxLevelHealth = 6078, MaxLevelMana=4082, DamageMultiplier = 3.40, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower=20, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8910;
-- Fireguard 8909
UPDATE creature_template SET MinLevelHealth = 5316, MaxLevelHealth = 5691, MinLevelMana=3614, MaxLevelMana=3846, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.20, MinMeleeDmg = 79, MaxMeleeDmg = 109, MeleeAttackPower = 202, RangedAttackPower=19, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, ResistanceFrost= -52 WHERE Entry = 8909;

-- Doomforge Craftsman 8897
UPDATE creature_template SET MinLevelHealth = 3082, MaxLevelHealth = 3293, HealthMultiplier = 1.3, PowerMultiplier = 1, DamageMultiplier = 1.7, MinMeleeDmg = 88, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower=22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8897;
-- Doomforge Dragoon 8899
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 7842, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier=3.5, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8899;

-- Shadowforge Citizen 8902
UPDATE creature_template SET MinLevelHealth = 2026, MaxLevelHealth = 2159, MinLevelMana=2041, MaxLevelMana=2163, HealthMultiplier = 1.0, PowerMultiplier = 1, DamageMultiplier = 1.8, MinMeleeDmg = 86, MaxMeleeDmg = 118, MeleeAttackPower = 220, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8902;
-- Shadowforge Flame Keeper 9956
UPDATE creature_template SET MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower=23, MeleeBaseAttackTime = 2000 WHERE Entry = 9956;
-- Shadowforge Senator 8904
UPDATE creature_template SET MinLevel=55, MinLevelHealth = 2471, MaxLevelHealth = 2550, MinLevelMana=5013, MaxLevelMana=5206, HealthMultiplier = 1.35, PowerMultiplier = 1, DamageMultiplier = 1.75, MinMeleeDmg = 67, MaxMeleeDmg = 94, MeleeAttackPower = 104, RangedAttackPower=24, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8904;
-- Shadowforge Peasant 8896
UPDATE creature_template SET MinLevelHealth = 2466, MaxLevelHealth = 2634, MinLevelMana=1923, MaxLevelMana=2041, HealthMultiplier = 1.3, PowerMultiplier = 1, DamageMultiplier = 1.7, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower=20, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8896;

-- Molten War Golem 8908
UPDATE creature_template SET MaxLevelHealth = 11874, MaxLevelMana=4326, DamageMultiplier = 5.5, MinMeleeDmg = 87, MaxMeleeDmg = 118, MeleeAttackPower = 220, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8908;
-- Warbringer Construct 8905
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier=3, DamageMultiplier = 3.6, MinMeleeDmg = 90, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower=22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8905;

-- Blackbreath Crony 9541
UPDATE creature_template SET DamageMultiplier = 3.3, MinMeleeDmg = 90, MaxMeleeDmg = 119, MeleeAttackPower = 218, RangedAttackPower=22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9541;
-- Hurley Blackbreath 9537
UPDATE creature_template SET MinLevelHealth = 13070, MaxLevelHealth = 13070, HealthMultiplier=5, PowerMultiplier = 2, DamageMultiplier = 7.5, MinMeleeDmg = 94, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, UnitFlags=33088 WHERE Entry = 9537;

-- Hammered Patron 9554
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 7113, HealthMultiplier=3, PowerMultiplier = 2, DamageMultiplier = 3.5, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9554;
-- Grim Patron 9545
UPDATE creature_template SET DamageMultiplier = 1.6, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000 WHERE Entry = 9545;
-- Guzzling Patron 9547
UPDATE creature_template SET DamageMultiplier = 1.85, MinMeleeDmg = 57, MaxMeleeDmg = 87, MeleeAttackPower = 95, RangedAttackPower=22, MeleeBaseAttackTime = 2000 WHERE Entry = 9547;

-- Twilight's Hammer Torturer 8912
UPDATE creature_template SET DamageMultiplier = 3.1, MinMeleeDmg = 77, MaxMeleeDmg = 106, MeleeAttackPower = 198, RangedAttackPower=19, MeleeBaseAttackTime = 2000 WHERE Entry = 8912;
-- Twilight Emissary 8913
UPDATE creature_template SET MinLevelHealth = 4980, MaxLevelHealth = 5151, MinLevelMana=9300, MaxLevelMana=9530, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.3, MinMeleeDmg = 63, MaxMeleeDmg = 89, MeleeAttackPower = 97, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 8913;
-- Twilight Bodyguard 8914
UPDATE creature_template SET MinLevelHealth = 5886, MaxLevelHealth = 6078, MinLevelMana=3964, MaxLevelMana=4082, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.4, MinMeleeDmg = 84, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower=20, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 8914;
-- Twilight's Hammer Ambassador 8915
UPDATE creature_template SET DamageMultiplier = 1.75, MinMeleeDmg = 86, MaxMeleeDmg = 116, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000 WHERE Entry = 8915;
-- Twilight's Hammer Executioner 9398
UPDATE creature_template SET MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 4, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 9398;

-- Dark Guard 9445
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.4, MinMeleeDmg = 90, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower=22, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 9445;

-- Bloodhound 8921
 UPDATE creature_template SET DamageMultiplier = 3, MinMeleeDmg = 83, MaxMeleeDmg = 112, MeleeAttackPower = 206, RangedAttackPower=20, MeleeBaseAttackTime = 2000 WHERE Entry = 8921;
-- Bloodhound Mastiff 8922
UPDATE creature_template SET MinLevelHealth = 3293, MaxLevelHealth = 3398, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower=23, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 8922;

-- Dredge Worm 8925
UPDATE creature_template SET MaxLevelHealth = 4268, HealthMultiplier = 1.8, PowerMultiplier = 1, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 2 WHERE Entry = 8925;
-- Deep Stinger 8926
UPDATE creature_template SET MaxLevelHealth = 7113, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8926;
-- Dark Screecher 8927
UPDATE creature_template SET MaxLevelHealth = 2371, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 1.6 WHERE Entry = 8927;
-- Burrowing Thundersnout 8928
UPDATE creature_template SET MinLevelHealth = 5538, MaxLevelHealth = 5928, HealthMultiplier = 2.5, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8928;
-- Borer Beetle 8932
UPDATE creature_template SET MinLevelHealth = 2215, MaxLevelHealth = 2371, HealthMultiplier = 1, PowerMultiplier = 1, DamageMultiplier = 1.6, MinMeleeDmg = 85, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1 WHERE Entry = 8932;
-- Cave Creeper 8933
UPDATE creature_template SET MinLevel=50, MinLevelHealth = 5538, MaxLevelHealth = 5928, HealthMultiplier = 2.5, PowerMultiplier = 1, MeleeAttackPower = 214, RangedAttackPower=21, MeleeBaseAttackTime = 2000, ArmorMultiplier=1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8933;

-- Arena Spectator 8916
UPDATE creature_template SET MinLevelHealth = 2561, MaxLevelHealth = 2735, HealthMultiplier = 1.35, ArmorMultiplier=1, DamageMultiplier = 1.7, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower=20, MeleeBaseAttackTime = 2000 WHERE Entry = 8916;

-- Stats cleanup
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;
