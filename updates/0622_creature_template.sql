
-- -----------------------
-- STATS
-- -----------------------

-- Kurinnaxx
UPDATE `creature_template` SET `HealthMultiplier`='50', `ManaMultiplier`='10', `MinLevelHealth`='333100', `MaxLevelHealth`='333100', `MinMeleeDmg`='1757', `MaxMeleeDmg`='2330' WHERE `Entry`='15348';

-- General Rajaxx
UPDATE `creature_template` SET `HealthMultiplier`='62.5', `MinLevelHealth`='416375', `MaxLevelHealth`='416375', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621' WHERE `Entry`='15341';

-- Buru the Gorger
UPDATE `creature_template` SET `HealthMultiplier`='125', `ManaMultiplier`='180', `MinLevelHealth`='666250', `MaxLevelHealth`='666250', `MinMeleeDmg`='767', `MaxMeleeDmg`='1015' WHERE `Entry`='15370';

-- Ayamiss the Hunter
UPDATE `creature_template` SET `HealthMultiplier`='50', `MinLevelHealth`='333100', `MaxLevelHealth`='333100', `MinMeleeDmg`='1318', `MaxMeleeDmg`='1747' WHERE `Entry`='15369';

-- Moam
UPDATE `creature_template` SET `HealthMultiplier`='65', `ManaMultiplier`='10', `MinLevelHealth`='346450', `MaxLevelHealth`='346450', `MinMeleeDmg`='1738', `MaxMeleeDmg`='2301' WHERE `Entry`='15340';

-- Ossirian the Unscarred
UPDATE `creature_template` SET `HealthMultiplier`='75', `ManaMultiplier`='50', `MinLevelHealth`='499650', `MaxLevelHealth`='499650', `MinMeleeDmg`='2372', `MaxMeleeDmg`='3145' WHERE `Entry`='15339';
UPDATE `creature_template` SET `ResistanceHoly`='0', `ResistanceArcane`='1000' WHERE `Entry`='15339';

-- Qiraji Warrior
UPDATE `creature_template` SET `HealthMultiplier`='5', `MinLevelHealth`='31440', `MaxLevelHealth`='31440', `MinMeleeDmg`='635', `MaxMeleeDmg`='842', `Armor`='4091' WHERE `Entry`='15387';

-- Swarmguard Needler
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='12576', `MaxLevelHealth`='12576', `MinMeleeDmg`='619', `MaxMeleeDmg`='821', `Armor`='4091' WHERE `Entry`='15344';

-- Captain Qeez
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15391';
UPDATE `creature_template` SET `Rank`='1' WHERE `Entry`='15391';

-- Captain Tuubid
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15392';

-- Captain Drenn
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15389';

-- Captain Xurrem
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15390';

-- Major Pakkon
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15388';

-- Major Yeggeth
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15386';

-- Colonel Zerran
UPDATE `creature_template` SET `HealthMultiplier`='8.5', `MinLevelHealth`='56627', `MaxLevelHealth`='56627', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621', `Armor`='4691' WHERE `Entry`='15385';

-- Buru Egg
UPDATE `creature_template` SET `HealthMultiplier`='10', `MinLevelHealth`='26140', `MaxLevelHealth`='26140', `MinMeleeDmg`='0', `MaxMeleeDmg`='0', `Armor`='3271' WHERE `Entry`='15514';

-- Hive'Zara Hatchling
UPDATE `creature_template` SET `HealthMultiplier`='2.5', `MinLevelHealth`='15260', `MaxLevelHealth`='15260', `MinMeleeDmg`='624', `MaxMeleeDmg`='827' WHERE `Entry`='15521';
UPDATE `creature_template` SET `MinLevel`='60' WHERE `Entry`='15521';

-- Hive'Zara Larva
UPDATE `creature_template` SET `HealthMultiplier`='0.5', `MinLevelHealth`='3052', `MaxLevelHealth`='3052', `MinMeleeDmg`='10', `MaxMeleeDmg`='14' WHERE `Entry`='15555';
UPDATE `creature_template` SET `MinLevel`='60', `Rank`='0' WHERE `Entry`='15555';

-- Hive'Zara Hornet
UPDATE `creature_template` SET `HealthMultiplier`='7.5', `MinMeleeDmg`='741', `MaxMeleeDmg`='982' WHERE `Entry`='15934';
UPDATE `creature_template` SET `Rank`='1' WHERE `Entry`='15934';

-- Hive'Zara Swarmer
UPDATE `creature_template` SET `HealthMultiplier`='0.05', `MinLevelHealth`='305', `MaxLevelHealth`='305', `MinMeleeDmg`='78', `MaxMeleeDmg`='103', `Armor`='3791' WHERE `Entry`='15546';
UPDATE `creature_template` SET `MinLevel`='60' WHERE `Entry`='15546';

-- Qiraji Swarmguard
UPDATE `creature_template` SET `HealthMultiplier`='4', `MinLevelHealth`='25152', `MaxLevelHealth`='25152', `MinMeleeDmg`='1587', `MaxMeleeDmg`='2105', `Armor`='4091' WHERE `Entry`='15343';

-- Qiraji Gladiator
UPDATE `creature_template` SET `HealthMultiplier`='8', `MinLevelHealth`='50304', `MaxLevelHealth`='50304', `MinMeleeDmg`='2540', `MaxMeleeDmg`='3367' WHERE `Entry`='15324';
UPDATE `creature_template` SET `Rank`='1' WHERE `Entry`='15324';

-- Hive'Zara Stinger
UPDATE `creature_template` SET `HealthMultiplier`='8', `MinLevelHealth`='50304', `MaxLevelHealth`='50304', `MinMeleeDmg`='529', `MaxMeleeDmg`='702' WHERE `Entry`='15327';

-- Hive'Zara Wasp
UPDATE `creature_template` SET `HealthMultiplier`='4', `MinLevelHealth`='25152', `MaxLevelHealth`='25152', `MinMeleeDmg`='1058', `MaxMeleeDmg`='1403' WHERE `Entry`='15325';

-- Vile Scarab
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='5228', `MaxLevelHealth`='5228', `MinMeleeDmg`='141', `MaxMeleeDmg`='187' WHERE `Entry`='15168';

-- Obsidian Destroyer
UPDATE `creature_template` SET `HealthMultiplier`='10', `ManaMultiplier`='5', `MinLevelHealth`='50300', `MaxLevelHealth`='50300', `MinMeleeDmg`='1379', `MaxMeleeDmg`='1825' WHERE `Entry`='15338';
UPDATE `creature_template` SET `Rank`='1' WHERE `Entry`='15338';

-- Shrieker Scarab
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='12208', `MaxLevelHealth`='12208', `MinMeleeDmg`='353', `MaxMeleeDmg`='469' WHERE `Entry`='15461';

-- Spitting Scarab
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='12204', `MaxLevelHealth`='12204', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='353', `MaxMeleeDmg`='469', `Armor`='3791' WHERE `Entry`='15462';

-- Flesh Hunter
UPDATE `creature_template` SET `HealthMultiplier`='8', `MinLevelHealth`='51792', `MaxLevelHealth`='51792', `MinMeleeDmg`='1079', `MaxMeleeDmg`='1431' WHERE `Entry`='15335';

-- Anuibisath Guardian
UPDATE `creature_template` SET `HealthMultiplier`='9.5', `MinLevelHealth`='61503', `MaxLevelHealth`='61503', `MinMeleeDmg`='1295', `MaxMeleeDmg`='1717' WHERE `Entry`='15355';

-- Silicate Feeder
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='5228', `MaxLevelHealth`='5228', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='141', `MaxMeleeDmg`='187', `Armor`='3271' WHERE `Entry`='15333';
UPDATE `creature_template` SET `Rank`='0' WHERE `Entry`='15333';

-- Hive'Zara Collector
UPDATE `creature_template` SET `HealthMultiplier`='4', `MinLevelHealth`='24416', `MaxLevelHealth`='24416', `MinMeleeDmg`='624', `MaxMeleeDmg`='827' WHERE `Entry`='15319';

-- Hive'Zara Drone
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth`='12208', `MaxLevelHealth`='12208', `MinMeleeDmg`='520', `MaxMeleeDmg`='689' WHERE `Entry`='15318';

-- Hive'Zara Tail Lasher
UPDATE `creature_template` SET `HealthMultiplier`='4.5', `MinLevelHealth`='28296', `MaxLevelHealth`='28296', `MinMeleeDmg`='847', `MaxMeleeDmg`='1122', `Armor`='4091' WHERE `Entry`='15336';

-- Hive'Zara Sandstalker
UPDATE `creature_template` SET `HealthMultiplier`='2.5', `MinLevelHealth`='15720', `MaxLevelHealth`='15720', `MinMeleeDmg`='296', `MaxMeleeDmg`='393' WHERE `Entry`='15323';

-- Hive'Zara Soldier
UPDATE `creature_template` SET `HealthMultiplier`='5', `MinLevelHealth`='31440', `MaxLevelHealth`='31440', `MinMeleeDmg`='847', `MaxMeleeDmg`='1122' WHERE `Entry`='15320';

-- Canal Frenzy
UPDATE `creature_template` SET `HealthMultiplier`='1.5', `MinLevelHealth`='9156', `MaxLevelHealth`='9156', `MinMeleeDmg`='249', `MaxMeleeDmg`='331' WHERE `Entry`='15505';

-- Beetle
UPDATE `creature_template` SET `HealthMultiplier`='0.2', `MinLevelHealth`='8.4', `MaxLevelHealth`='8.4', `Armor`='15' WHERE `Entry`='15475';

-- Roach
UPDATE `creature_template` SET `HealthMultiplier`='0.2', `MinLevelHealth`='8.4', `MaxLevelHealth`='8.4', `Armor`='15' WHERE `Entry`='4076';

-- Scorpion
UPDATE `creature_template` SET `HealthMultiplier`='0.2', `MinLevelHealth`='8.4', `MaxLevelHealth`='8.4', `Armor`='15' WHERE `Entry`='15476';

-- -----------------------
-- Unit Class
-- -----------------------

-- Kurinnaxx
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15348';

-- General Rajaxx
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15341';

-- Buru the Gorger
UPDATE `creature_template` SET `UnitClass`='2' WHERE `Entry`='15370';

-- Ayamiss the Hunter
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15369';

-- Moam
UPDATE `creature_template` SET `UnitClass`='2' WHERE `Entry`='15340';

-- Ossirian the Unscarred
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15339';

-- Qiraji Warrior
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15387';

-- Swarmguard Needler
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15344';

-- Captain Qeez
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15391';

-- Captain Tuubid
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15392';

-- Captain Drenn
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15389';

-- Captain Xurrem
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15390';

-- Major Pakkon
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15388';

-- Major Yeggeth
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15386';

-- Colonel Zerran
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15385';

-- Buru Egg
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15514';

-- Hive'Zara Hatchling
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15521';

-- Hive'Zara Larva
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15555';

-- Hive'Zara Hornet
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15934';

-- Hive'Zara Swarmer
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15546';

-- Qiraji Swarmguard
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15343';

-- Qiraji Gladiator
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15324';

-- Hive'Zara Stinger
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15327';

-- Hive'Zara Wasp
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15325';

-- Vile Scarab
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15168';

-- Obsidian Destroyer
UPDATE `creature_template` SET `UnitClass`='2' WHERE `Entry`='15338';

-- Shrieker Scarab
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15461';

-- Spitting Scarab
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15462';

-- Flesh Hunter
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15335';

-- Anuibisath Guardian
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15355';

-- Silicate Feeder
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15333';

-- Hive'Zara Collector
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15319';

-- Hive'Zara Drone
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15318';

-- Hive'Zara Tail Lasher
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15336';

-- Hive'Zara Sandstalker
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15323';

-- Hive'Zara Soldier
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15320';

-- Canal Frenzy
UPDATE `creature_template` SET `UnitClass`='1' WHERE `Entry`='15505';
