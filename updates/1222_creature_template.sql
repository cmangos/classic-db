
-- The Prophet Skeram
UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='102.2', `MaxMeleeDmg`='135.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='27' WHERE `Entry`='15263';

-- Lord Kri
UPDATE `creature_template` SET `DamageMultiplier`='25', `MinMeleeDmg`='137.3', `MaxMeleeDmg`='182.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15511';
	-- Vem
	UPDATE `creature_template` SET `SpeedWalk`=('6' / '2.5'), `DamageMultiplier`='18', `MinMeleeDmg`='137.3', `MaxMeleeDmg`='182.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15544';
	-- Princess Yauj
	UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15543';
		-- Yauj Brood [NOBESTIARY][RECHECK]
		UPDATE `creature_template` SET `HealthMultiplier`='3', `DamageMultiplier`='2.5', `ArmorMultiplier`='1', `MinLevelHealth`='9156', `MaxLevelHealth`='9156', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15621';

-- Battleguard Sartura
UPDATE `creature_template` SET `PowerMultiplier`='150', `DamageMultiplier`='30', `MinMeleeDmg`='65.9', `MaxMeleeDmg`='87.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15516';
	-- Sartura's Royal Guard
	UPDATE `creature_template` SET `SpeedWalk`=('7' / '2.5'), `DamageMultiplier`='18', `MinMeleeDmg`='84.7', `MaxMeleeDmg`='112.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15984';

-- Fankriss
UPDATE `creature_template` SET `PowerMultiplier`='180', `DamageMultiplier`='20', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15510';
	-- Brood of Fankriss
	UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('12' / '7'), `PowerMultiplier`='50', `DamageMultiplier`='26', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15630';
	-- Vekniss Hatchling [NOBESTIARY]
	UPDATE `creature_template` SET `HealthMultiplier`='3', `DamageMultiplier`='9', `ArmorMultiplier`='1', `MinLevelHealth`='9156', `MaxLevelHealth`='9156', `MinLevelMana`='0', `MaxLevelMana`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15962';

-- Viscidus
UPDATE `creature_template` SET `DamageMultiplier`='33', `MinMeleeDmg`='71.4', `MaxMeleeDmg`='94.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15299';
	-- Glob of Viscidus [NOBESTIARY]
	UPDATE `creature_template` SET `ModelId1`='12349', `HealthMultiplier`='3', `ArmorMultiplier`='1', `MinLevelHealth`='9156', `MaxLevelHealth`='9156', `MinLevelMana`='0', `MaxLevelMana`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15667';
	-- Viscidus Trigger [NOSNIFF][NOBESTIARY]
		-- TO DO!

-- Princess Huhuran
UPDATE `creature_template` SET `PowerMultiplier`='150', `DamageMultiplier`='25', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15509';

-- Emperor Vek'lor
UPDATE `creature_template` SET `DamageMultiplier`='30', `ArmorMultiplier`='1.2', `MinMeleeDmg`='102.2', `MaxMeleeDmg`='135.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='27' WHERE `Entry`='15276';
	-- Emperor Vek'nilash
	UPDATE `creature_template` SET `PowerMultiplier`='180', `DamageMultiplier`='30', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15275';
	-- The Master's Eye [NOBESTIARY]
	UPDATE `creature_template` SET `SpeedRun`=('8' / '7'), `ArmorMultiplier`='1', `MinLevelHealth`='3331', `MaxLevelHealth`='3331', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MaxRangedDmg`='0', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15963';
	-- Qiraji Scarab
	UPDATE `creature_template` SET `ArmorMultiplier`='1', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15316';
	-- Qiraji Scorpion
	UPDATE `creature_template` SET `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15317';

-- Ouro
UPDATE `creature_template` SET `DamageMultiplier`='35', `MinMeleeDmg`='148.3', `MaxMeleeDmg`='196.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15517';
	-- Ouro Trigger [NOSNIFF][NOBESTIARY]
		-- TO DO!
	-- Ouro Scarab [NOBESTIARY]
	UPDATE `creature_template` SET `HealthMultiplier`='3', `DamageMultiplier`='1', `ArmorMultiplier`='1', `MinLevelHealth`='9156', `MaxLevelHealth`='9156', `MinMeleeDmg`='52.0', `MaxMeleeDmg`='68.9', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15718';
	-- Ouro Spawner [NOBESTIARY]
	UPDATE `creature_template` SET `Scale`='0', `UnitFlags`='33554432', `ExtraFlags`='0', `MinLevelHealth`='3052', `MaxLevelHealth`='3052', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15957';
	-- Dirt Mound [NOBESTIARY]
	UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `SpeedWalk`=('12' / '2.5'), `SpeedRun`=('12' / '7'), `ArmorMultiplier`='1', `MinLevelHealth`='3052', `MaxLevelHealth`='3052', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15712';

-- C'Thun
UPDATE `creature_template` SET `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15727';
	-- Eye of C'Thun [NOBESTIARY]
	UPDATE `creature_template` SET `NpcFlags`='0', `HealthMultiplier`='400', `PowerMultiplier`='150', `ArmorMultiplier`='1', `MinLevelHealth`='1332400', `MaxLevelHealth`='1332400', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='137.3', `MaxMeleeDmg`='182.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15589';
	-- C'Thun Transformation Visual [NOSNIFF][NOBESTIARY]
		-- TO DO!
	-- C'Thun Portal [NOBESTIARY]
	UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63', `NpcFlags`='0', `HealthMultiplier`='400', `ArmorMultiplier`='1', `MinLevelHealth`='1332400', `MaxLevelHealth`='1332400', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15896';
	-- Tentacle Portal [NOBESTIARY]
	UPDATE `creature_template` SET `HealthMultiplier`='400', `ArmorMultiplier`='1', `MinLevelHealth`='1332400', `MaxLevelHealth`='1332400', `MaxMeleeDmg`='109.8', `MinRangedDmg`='145.6', `MaxRangedDmg`='0', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15904';
	-- Giant Tentacle Portal [NOBESTIARY]
	UPDATE `creature_template` SET `HealthMultiplier`='400', `ArmorMultiplier`='1', `MinLevelHealth`='1332400', `MaxLevelHealth`='1332400', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MaxRangedDmg`='0', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15910';
	-- Giant Eye Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `CreatureTypeFlags`='8', `HealthMultiplier`='12', `ArmorMultiplier`='1', `MinLevelHealth`='36624', `MaxLevelHealth`='36624', `MinLevelMana`='0', `MaxLevelMana`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15334';
	-- Giant Claw Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `UnitFlags`='0', `HealthMultiplier`='30', `ArmorMultiplier`='1', `MinLevelHealth`='91560', `MaxLevelHealth`='91560', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15728';
	-- Claw Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `CreatureTypeFlags`='8', `HealthMultiplier`='0.5', `DamageMultiplier`='4', `ArmorMultiplier`='1', `MinLevelHealth`='1526', `MaxLevelHealth`='1526', `MinMeleeDmg`='52.0', `MaxMeleeDmg`='68.9', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15725';
	-- Eye Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `CreatureTypeFlags`='8', `HealthMultiplier`='0.75', `ArmorMultiplier`='1', `MinLevelHealth`='2289', `MaxLevelHealth`='2289', `MinLevelMana`='0', `MaxLevelMana`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15726';
	-- Mouth Tentacle Mount Visual [NOSNIFF][NOBESTIARY]
		-- TO DO!
	-- Flesh Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `CreatureTypeFlags`='8', `SpeedWalk`=('6' / '2.5'), `SpeedRun`=('10' / '7'), `HealthMultiplier`='8', `DamageMultiplier`='4', `ArmorMultiplier`='1', `MinLevelHealth`='24416', `MaxLevelHealth`='24416', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15802';
	-- Vanquished Tentacle [NOBESTIARY]
	UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `Scale`='0', `HealthMultiplier`='2', `ArmorMultiplier`='1', `MinLevelHealth`='6104', `MaxLevelHealth`='6104', `MinLevelMana`='0', `MaxLevelMana`='0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15901';
	-- Giant Claw Tentacle Test [NOTEMPLATE][NOSNIFF][NOBESTIARY]
		-- TO DO!
	-- Giant Claw Tentacle Test [NOTEMPLATE][NOSNIFF][NOBESTIARY]
		-- TO DO!

-- ----------------------------------------------------------------------------------------------------------------------------------------

-- Anubisath Sentinel
UPDATE `creature_template` SET `DamageMultiplier`='17', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15264';

-- Obsidian Eradicator [NOBESTIARY]
UPDATE `creature_template` SET `HealthMultiplier`='70', `DamageMultiplier`='20', `ArmorMultiplier`='1', `MinLevelHealth`='170940', `MaxLevelHealth`='170940', `MinMeleeDmg`='96.8', `MaxMeleeDmg`='128.2', `MaxRangedDmg`='0', `Armor`='3075', `MeleeAttackPower`='238', `RangedAttackPower`='24' WHERE `Entry`='15262';

-- Vekniss Guardian
UPDATE `creature_template` SET `DamageMultiplier`='15', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15233';

-- Vekniss Drone
UPDATE `creature_template` SET `DamageMultiplier`='2', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15300';

-- Qiraji Brainwasher
UPDATE `creature_template` SET `DamageMultiplier`='12', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15247';

-- Vekniss Warrior
UPDATE `creature_template` SET `HealthMultiplier`='16', `DamageMultiplier`='12', `ArmorMultiplier`='1', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15230';
	-- Vekniss Borer [NOBESTIARY]
	UPDATE `creature_template` SET `HealthMultiplier`='2.5', `DamageMultiplier`='4', `ArmorMultiplier`='1', `MinLevelHealth`='7630', `MaxLevelHealth`='7630', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15622';

-- Vekniss Soldier
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `DamageMultiplier`='8', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15229';

-- Vekniss Hive Crawler
UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='107.9', `MaxMeleeDmg`='143.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='262', `RangedAttackPower`='30' WHERE `Entry`='15240';

-- Vekniss Stinger
UPDATE `creature_template` SET `DamageMultiplier`='12', `MinMeleeDmg`='107.9', `MaxMeleeDmg`='143.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='262', `RangedAttackPower`='30' WHERE `Entry`='15235';

-- Vekniss Wasp
UPDATE `creature_template` SET `DamageMultiplier`='8', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='15236';

-- Qiraji Lasher
UPDATE `creature_template` SET `DamageMultiplier`='18', `MinMeleeDmg`='84.7', `MaxMeleeDmg`='112.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15249';

-- Anubisasth Defender
UPDATE `creature_template` SET `DamageMultiplier`='30', `MinMeleeDmg`='107.9', `MaxMeleeDmg`='143.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='262', `RangedAttackPower`='30' WHERE `Entry`='15277';
	-- Anubisath Warrior
	UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `FactionAlliance`='310', `FactionHorde`='310', `HealthMultiplier`='12', `DamageMultiplier`='3', `ArmorMultiplier`='1', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15537';
	-- Anubisath Swarmguard
	UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61', `FactionAlliance`='310', `FactionHorde`='310', `HealthMultiplier`='2', `DamageMultiplier`='15', `ArmorMultiplier`='1', `MinMeleeDmg`='68.8', `MaxMeleeDmg`='91.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15538';

-- Qiraji Champion
UPDATE `creature_template` SET `DamageMultiplier`='25', `MinMeleeDmg`='109.9', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15252';

-- Qiraji Slayer
UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='98.5', `MaxMeleeDmg`='130.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='244', `RangedAttackPower`='25' WHERE `Entry`='15250';

-- Qiraji Mindslayer
UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='15246';

-- Anubisath Warder
UPDATE `creature_template` SET `DamageMultiplier`='28', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='15311';

-- Obsidian Nullifier [NOBESTIARY]
UPDATE `creature_template` SET `HealthMultiplier`='50', `DamageMultiplier`='25', `ArmorMultiplier`='1', `MinLevelHealth`='125750', `MaxLevelHealth`='125750', `MinMeleeDmg`='98.5', `MaxMeleeDmg`='130.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3316', `MeleeAttackPower`='244', `RangedAttackPower`='25', `EquipmentTemplateId`='0' WHERE `Entry`='15312';

-- ----------------------------------------------------------------------------------------------------------------------------------------

-- Arygos [NOBESTIARY]
	-- TO DO!

-- Caelestrasz [NOBESTIARY]
	-- TO DO!

-- Merithra of the Dream [NOBESTIARY]
	-- TO DO!

-- Andorgos [NOBESTIARY]
	-- TO DO!

-- Vethsera [NOBESTIARY]
	-- TO DO!

-- Kandrostrasz [NOBESTIARY]
	-- TO DO!
