-- Fixed stats of boss NPCs in Blackrock Depths

-- Lord Roccor
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `PowerMultiplier`='2', `DamageMultiplier`='3.6', `ArmorMultiplier`='1.5', `MinMeleeDmg`='86.3', `MaxMeleeDmg`='114.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='210', `RangedAttackPower`='20', `MeleeBaseAttackTime`='2000', `ResistanceFire`='153', `ResistanceNature`='153', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='9025';

-- Houndmaster Grebmar
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `PowerMultiplier`='2', `DamageMultiplier`='3.7', `MinMeleeDmg`='88.3', `MaxMeleeDmg`='117.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='214', `RangedAttackPower`='14', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9319';

-- High Interrogator Gerstahn
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `DamageMultiplier`='3.3', `MinMeleeDmg`='82.2', `MaxMeleeDmg`='108.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='202', `RangedAttackPower`='19', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9018';

-- High Justice Grimstone
UPDATE `creature_template` SET `UnitFlags`='832', `DynamicFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='3.7', `MinMeleeDmg`='88.3', `MaxMeleeDmg`='117.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3108', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='10096';

-- Anub'shiah [UNKNOWN SWINGTIMER]

-- Eviscerator [UNKNOWN SWINGTIMER]

-- Gorosh the Dervish [UNKNOWN SWINGTIMER]

-- Grizzle [UNKNOWN SWINGTIMER]

-- Hedrum the Creeper
UPDATE `creature_template` SET `MinLevel`='53', `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `PowerMultiplier`='2', `DamageMultiplier`='5.5', `ArmorMultiplier`='1', `MinLevelHealth`='20851', `MaxLevelHealth`='20851', `MinMeleeDmg`='108.0', `MaxMeleeDmg`='143.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3163', `MeleeAttackPower`='218', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9032';

-- Ok'thor the Breaker
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1.6', `HealthMultiplier`='8', `PowerMultiplier`='8', `DamageMultiplier`='4.25', `ArmorMultiplier`='1', `MinLevelHealth`='15696', `MaxLevelHealth`='15696', `MinLevelMana`='15856', `MaxLevelMana`='15856', `MinMeleeDmg`='83.8', `MaxMeleeDmg`='111.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2544', `MeleeAttackPower`='206', `RangedAttackPower`='20', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9030';

-- Pyromancer Loregrain

-- Warder Stilgiss
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `HealthMultiplier`='4', `PowerMultiplier`='5', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='8636', `MaxLevelHealth`='8636', `MinLevelMana`='10815', `MaxLevelMana`='10815', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `Armor`='2699', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9041';

-- Verek
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='4', `PowerMultiplier`='2', `DamageMultiplier`='4.5', `ArmorMultiplier`='1', `MinLevelHealth`='10456', `MaxLevelHealth`='10456', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='124.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3327', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9042';

-- Watchman Doomgrip
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='5', `PowerMultiplier`='2', `DamageMultiplier`='5', `ArmorMultiplier`='1', `MinLevelHealth`='10455', `MaxLevelHealth`='10455', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9476';

-- Dark Keeper Bethek
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9437';

-- Dark Keeper Ofgut
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9438';

-- Dark Keeper Pelver
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9441';

-- Dark Keeper Uggel
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9442';

-- Dark Keeper Vorfalk
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9443';

-- Dark Keeper Zimrel
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='3', `PowerMultiplier`='2', `DamageMultiplier`='3.5', `ArmorMultiplier`='1', `MinLevelHealth`='6273', `MaxLevelHealth`='6273', `MinLevelMana`='4234', `MaxLevelMana`='4234', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2654', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9439';

-- Fineous Darkvire 

-- Lord Incendius
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55', `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='6.5', `PowerMultiplier`='5', `DamageMultiplier`='5', `ArmorMultiplier`='1', `MinLevelHealth`='16991', `MaxLevelHealth`='16991', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='124.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3244', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='9017';

-- Bael'Gar
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='10', `PowerMultiplier`='2', `DamageMultiplier`='6', `ArmorMultiplier`='1', `MinLevelHealth`='25330', `MaxLevelHealth`='25330', `MinMeleeDmg`='110.5', `MaxMeleeDmg`='146.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3216', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9016';

-- General Angerforge
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='8', `PowerMultiplier`='2', `DamageMultiplier`='6.5', `ArmorMultiplier`='1', `MinLevelHealth`='22272', `MaxLevelHealth`='22272', `MinMeleeDmg`='88.1', `MaxMeleeDmg`='116.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3326', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='9033';

-- Golem Lord Argelmach
UPDATE `creature_template` SET `HealthMultiplier`='6', `PowerMultiplier`='8', `DamageMultiplier`='6.25', `ArmorMultiplier`='1', `MinLevelHealth`='13362', `MaxLevelHealth`='13362', `MinLevelMana`='17928', `MaxLevelMana`='17928', `MinMeleeDmg`='91.1', `MaxMeleeDmg`='120.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2744', `MeleeAttackPower`='224', `RangedAttackPower`='22', `MeleeBaseAttackTime`='2000' WHERE `Entry`='8983';

-- Ribbly Screwspigot

-- Hurley Blackbreath [NO DAMAGE CALC - MISSING IN BESTIARY]
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `UnitFlags`='33088', `CreatureTypeFlags`='72', `HealthMultiplier`='5', `PowerMultiplier`='2', `ArmorMultiplier`='1', `MinLevelHealth`='13070', `MaxLevelHealth`='13070', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3271', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9537';

-- Phalanx
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `PowerMultiplier`='2', `DamageMultiplier`='7', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='124.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MovementType`='1' WHERE `Entry`='9502';

-- Plugger Spazzring [NO DAMAGE CALC - UNKNOWN VARIANCE FORMULAR]
	
-- Ambassador Flamelash
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='10', `PowerMultiplier`='2', `DamageMultiplier`='5', `ArmorMultiplier`='1', `MinLevelHealth`='27840', `MaxLevelHealth`='27840', `MinMeleeDmg`='97.9', `MaxMeleeDmg`='129.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3380', `MeleeAttackPower`='283', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9156';

-- Panzor the Invincible
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `NpcFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='5', `PowerMultiplier`='2', `DamageMultiplier`='6', `ArmorMultiplier`='1.5', `MinMeleeDmg`='95.9', `MaxMeleeDmg`='127.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='8923';

-- Doom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `DamageMultiplier`='3.7', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2699', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9039';

-- Dope'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `UnitClass`='1', `PowerMultiplier`='2', `DamageMultiplier`='4', `ArmorMultiplier`='0.5', `MinMeleeDmg`='95.9', `MaxMeleeDmg`='127.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9040';

-- Gloom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `PowerMultiplier`='2', `DamageMultiplier`='5.6', `MinMeleeDmg`='95.9', `MaxMeleeDmg`='127.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='234', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9037';

-- Anger'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `PowerMultiplier`='2', `DamageMultiplier`='4', `MinMeleeDmg`='94.0', `MaxMeleeDmg`='124.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9035';

-- Hate'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `DamageMultiplier`='4', `MinMeleeDmg`='87.5', `MaxMeleeDmg`='115.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='214', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9034';

-- Vile'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `DamageMultiplier`='3.6', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9036';

-- Seeth'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `DamageMultiplier`='3.6', `MinMeleeDmg`='89.3', `MaxMeleeDmg`='118.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2699', `MeleeAttackPower`='220', `RangedAttackPower`='21', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9038';

-- Magmus [ALREADY DONE]

-- Emperor Dagran Thaurissan
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `HealthMultiplier`='9', `PowerMultiplier`='2', `DamageMultiplier`='7.25', `ArmorMultiplier`='1', `MinLevelHealth`='26649', `MaxLevelHealth`='26649', `MinMeleeDmg`='101.8', `MaxMeleeDmg`='135.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3489', `MeleeAttackPower`='248', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9019';

-- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59', `FactionAlliance`='54', `FactionHorde`='54', `Scale`='0', `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `PowerMultiplier`='2', `DamageMultiplier`='7.25', `MinLevelHealth`='26649', `MaxLevelHealth`='26649', `MinMeleeDmg`='101.8', `MaxMeleeDmg`='135.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3489', `MeleeAttackPower`='248', `RangedAttackPower`='25' WHERE `Entry`='15775';

-- Princess Moira Bronzebeard
UPDATE `creature_template` SET `HealthMultiplier`='6.5', `PowerMultiplier`='3', `DamageMultiplier`='4.5', `ArmorMultiplier`='1', `MinLevelHealth`='14931', `MaxLevelHealth`='14931', `MinLevelMana`='6867', `MaxLevelMana`='6867', `MinMeleeDmg`='92.9', `MaxMeleeDmg`='123.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2788', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000' WHERE `Entry`='8929';

-- High Priestess of Thaurissan
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='6.5', `PowerMultiplier`='3', `DamageMultiplier`='4.5', `ArmorMultiplier`='1', `MinLevelHealth`='14931', `MaxLevelHealth`='14931', `MinLevelMana`='6867', `MaxLevelMana`='6867', `MinMeleeDmg`='92.9', `MaxMeleeDmg`='123', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2788', `MeleeAttackPower`='228', `RangedAttackPower`='23', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='10076';

-- Theldren [UNKNOWN SWINGTIMER]

-- Lefty [UNKNOWN SWINGTIMER]

-- Rotfang [UNKNOWN SWINGTIMER]

-- Malgen Longspear [UNKNOWN SWINGTIMER]

-- Gnashjaw [UNKNOWN SWINGTIMER]

-- Va'jashni [UNKNOWN SWINGTIMER]

-- Volida [UNKNOWN SWINGTIMER]

-- Snokh Blackspine [UNKNOWN SWINGTIMER]

-- Korv [UNKNOWN SWINGTIMER]

-- Rezznik [UNKNOWN SWINGTIMER]
