
-- Alzzin the Wildshaper [58]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('10.0' / '7.0'), `DamageMultiplier`='5.5', `MinMeleeDmg`='60.4', `MaxMeleeDmg`='80.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='1300', `RangedBaseAttackTime`='1300' WHERE `Entry`='11492';

-- Alzzin's Minion [56]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('15' / '7.0'), `DamageMultiplier`='0.5', `MinMeleeDmg`='38.4', `MaxMeleeDmg`='50.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='800', `RangedBaseAttackTime`='800' WHERE `Entry`='11460';

-- Death Lash [57-58]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='6', `MinMeleeDmg`='97.9', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3435', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='13285';

-- Fel Lash [56]
UPDATE `creature_template` SET `MinLevel`='56', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='6', `PowerMultiplier`='2', `DamageMultiplier`='6', `ArmorMultiplier`='1', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='13197';

-- Hydroling [57]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `SpeedWalk`=('2.5' / '2.5'), `MinMeleeDmg`='20', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `DamageSchool`='4' WHERE `Entry`='14350';

-- Hydrospawn [57]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('9.02778' / '7.0'), `DamageMultiplier`='6.5', `MinMeleeDmg`='91.1', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='13280';

-- Ironbark the Redeemed [58] [NOBESTIARY]
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='14241';

-- Isalien [60] [NOSNIFF]
	-- TO DO

-- Isalien Trigger [60] [NOBESTIARY]
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `FactionAlliance`='114', `FactionHorde`='114', `HealthMultiplier`='1.35', `MinLevelHealth`='4496', `MaxLevelHealth`='4496', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `RangedBaseAttackTime`='2000' WHERE `Entry`='16045';

-- Lethtendris [57]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='6', `MinMeleeDmg`='91.1', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='14327';

-- Old Ironbark [58] [NOBESTIARY]
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='1.25', `ArmorMultiplier`='1', `MinLevelHealth`='3589', `MaxLevelHealth`='3589', `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3435', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11491';

-- Phase Lasher [54-55]
UPDATE `creature_template` SET `MinLevel`='54', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='6', `PowerMultiplier`='2', `DamageMultiplier`='6', `ArmorMultiplier`='1', `MinMeleeDmg`='92.1', `MaxMeleeDmg`='127.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3271', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='13196';

-- Pimgib [56]
UPDATE `creature_template` SET `MinLevel`='56', `MaxLevel`='56', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='3', `PowerMultiplier`='3', `DamageMultiplier`='4', `ArmorMultiplier`='1', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='14349';

-- Pusillin [57]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('18' / '7.0'), `DamageMultiplier`='4', `MinMeleeDmg`='91.1', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2744', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='14354';

-- Warpwood Crusher [56]
UPDATE `creature_template` SET `MinLevel`='56', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.77778' / '2.5'), `HealthMultiplier`='6', `PowerMultiplier`='1.5', `DamageMultiplier`='6', `ArmorMultiplier`='1', `MinMeleeDmg`='119.9', `MaxMeleeDmg`='145.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='13021';

-- Warpwood Guardian [57-58]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='3.8', `ArmorMultiplier`='1.5', `MinMeleeDmg`='91.1', `MaxMeleeDmg`='123.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4141', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`='-58' WHERE `Entry`='11461';

-- Warpwood Stomper [57-58]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='3.8', `ArmorMultiplier`='1.25',`MinMeleeDmg`='122.4', `MaxMeleeDmg`='164.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4275', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500', `ResistanceFire`='-58' WHERE `Entry`='11465';

-- Warpwood Tangler [55-56]
UPDATE `creature_template` SET `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='3.6', `ArmorMultiplier`='1.25', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3354', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`='-56' WHERE `Entry`='11464';

-- Warpwood Treant [54-55]
UPDATE `creature_template` SET `MinLevel`='54', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='3', `PowerMultiplier`='1.5', `DamageMultiplier`='3.5', `ArmorMultiplier`='1.25', `MinMeleeDmg`='92.1', `MaxMeleeDmg`='124.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4071', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceFire`='-55' WHERE `Entry`='11462';

-- Whip Lasher [54]
UPDATE `creature_template` SET `MinLevel`='54', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='0.75', `DamageMultiplier`='0.75', `ArmorMultiplier`='1', `MinMeleeDmg`='92.1', `MaxMeleeDmg`='122.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='224', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='13022';

-- Wildspawn Betrayer [55-56]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='129.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3327', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11454';

-- Wildspawn Felsworn [55-56] [NODMGMULT]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `MinMeleeDmg`='292', `MaxMeleeDmg`='393', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='1686', `MeleeAttackPower`='104', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11455';

-- Wildspawn Hellcaller [56-57]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='3.7', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2744', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11457';

-- Wildspawn Imp [56]
UPDATE `creature_template` SET `MinLevel`='56', `FactionAlliance`='16', `FactionHorde`='16', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `ArmorMultiplier`='1', `MinMeleeDmg`='95.9', `MaxMeleeDmg`='127.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='13276';

-- Wildspawn Rogue [56-57]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='3.7', `MinMeleeDmg`='71.9', `MaxMeleeDmg`='97.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3380', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `Entry`='11452';

-- Wildspawn Satyr [55-56]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `ArmorMultiplier`='1.25', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='127.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4141', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11451';

-- Wildspawn Shadowstalker [56]
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `MinMeleeDmg`='71.9', `MaxMeleeDmg`='95.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `Entry`='11456';

-- Wildspawn Trickster [56-57]
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='3.7', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2744', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11453';

-- Zevrim Thornhoof [57]
UPDATE `creature_template` SET `MinLevel`='57', `CreatureTypeFlags`='72', `SpeedWalk`=('2.5' / '2.5'), `HealthMultiplier`='8', `DamageMultiplier`='6.5', `ArmorMultiplier`='1', `MinMeleeDmg`='97.9', `MaxMeleeDmg`='129.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='11490';
