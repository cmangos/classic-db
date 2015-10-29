
-- Instructor Razuvious
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='90', `MinMeleeDmg`='192.2', `MaxMeleeDmg`='254.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='3500', `RangedBaseAttackTime`='3500' WHERE `Entry`='16061';
	-- Deathknight Understudy
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='45.5', `ArmorMultiplier`='2', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16803';

-- Gothik the Harvester
UPDATE `creature_template` SET `DamageMultiplier`='27.5', `MinMeleeDmg`='102.2', `MaxMeleeDmg`='135.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='27', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16060';
	-- Unrelenting Trainee [NOBESTIARY]
		-- TO DO
	-- Unrelenting Death Knight
	UPDATE `creature_template` SET `DamageMultiplier`='24', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='16125';
	-- Unrelenting Rider
	UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='100.4', `MaxMeleeDmg`='133.0', `MeleeAttackPower`='246', `RangedAttackPower`='26' WHERE `Entry`='16126';
	-- Spectral Trainee
	UPDATE `creature_template` SET `DamageMultiplier`='6', `MinMeleeDmg`='98.5', `MaxMeleeDmg`='130.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='244', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16127';
	-- Spectral Deathknight
	UPDATE `creature_template` SET `DamageMultiplier`='24', `MinMeleeDmg`='107.9', `MaxMeleeDmg`='143.1', `MeleeAttackPower`='262', `RangedAttackPower`='30' WHERE `Entry`='16148';
	-- Spectral Rider
	UPDATE `creature_template` SET `DamageMultiplier`='20', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MeleeAttackPower`='268', `RangedAttackPower`='32' WHERE `Entry`='16150';
	-- Spectral Horse [NO BESTIARY]
		-- TO DO

-- Thane Korth'azz
UPDATE `creature_template` SET `HealthMultiplier`='180', `PowerMultiplier`='2', `DamageMultiplier`='25', `ArmorMultiplier`='1', `MinLevelHealth`='599580', `MaxLevelHealth`='599580', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16064';
	-- Lady Blaumeux
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='35', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16065';
	-- Highlord Mograine
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='24', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16062';
	-- Sir Zeliek
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='35', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16063';

-- Anub'Rekhan
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='35', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15956';
	-- Crypt Guard
		UPDATE `creature_template` SET `DamageMultiplier`='30', `MinMeleeDmg`='52.9', `MaxMeleeDmg`='70.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1000', `RangedBaseAttackTime`='1000' WHERE `Entry`='16573';
	-- Corpse Scarab [NOBESTIARY][NODMGMULT]
	UPDATE `creature_template` SET `Scale`='0', `HealthMultiplier`='2', `DamageMultiplier`='1', `ArmorMultiplier`='1', `MinLevelHealth`='6104', `MaxLevelHealth`='6104', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='52', `MaxMeleeDmg`='68.9', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='1000', `RangedBaseAttackTime`='1000' WHERE `Entry`='16698';

-- Grand Widow Faerlina
UPDATE `creature_template` SET `PowerMultiplier`='20', `DamageMultiplier`='50', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15953';
	-- Naxxramas Worshipper
		-- TO DO
	-- Naxxramas Follower
		-- TO DO

-- Maexxna
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='50', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15952';
	-- Maexxna Spiderling
	UPDATE `creature_template` SET `HealthMultiplier`='1.25', `DamageMultiplier`='1.5', `MinLevelHealth`='3815', `MaxLevelHealth`='3815', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='17055';

-- Patchwerk [NODMGMULT]

-- Grobbulus
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='40', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15931';
	-- Grobbulus Cloud [NOBESTIARY]
	UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `SpeedWalk`=('0.01' / '2.5'), `SpeedRun`=('0.01' / '7'), `HealthMultiplier`='1.35', `ArmorMultiplier`='1', `MinLevelHealth`='4120', `MaxLevelHealth`='4120', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='16363';
	-- Fallout Slime
	UPDATE `creature_template` SET `Scale`='0', `PowerMultiplier`='2', `DamageMultiplier`='32', `MinMeleeDmg`='93.5', `MaxMeleeDmg`='124.1', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16290';
	-- Sewage Slime [NOSNIFF]
		-- TO DO

-- Gluth
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='45', `MinMeleeDmg`='87.9', `MaxMeleeDmg`='116.5', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='1600', `RangedBaseAttackTime`='1600' WHERE `Entry`='15932';
	-- Zombie Chow [NOBESTIARY]
	UPDATE `creature_template` SET `ModelId2`='10975', `ModelId3`='5432', `ModelId4`='5265', `HealthMultiplier`='40', `PowerMultiplier`='3', `ArmorMultiplier`='1', `MinLevelHealth`='122080', `MaxLevelHealth`='122080', `MinMeleeDmg`='155.9', `MaxMeleeDmg`='206.8', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='3000', `RangedBaseAttackTime`='3000' WHERE `Entry`='16360';

-- Thaddius
UPDATE `creature_template` SET `HealthMultiplier`='2000', `PowerMultiplier`='2', `DamageMultiplier`='50', `ArmorMultiplier`='1', `MinLevelHealth`='6662000', `MaxLevelHealth`='6662000', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='109.9', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15928';
	-- Stalagg
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='56.25', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15929';
	-- Feugen
	UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='56.25', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15930';

-- Noth the Plaguebringer
UPDATE `creature_template` SET `HealthMultiplier`='500', `PowerMultiplier`='30', `DamageMultiplier`='50', `ArmorMultiplier`='1', `MinLevelHealth`='1665500', `MaxLevelHealth`='1665500', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15954';
	-- Plagued Warrior [NOBESTIARY]
		-- TO DO
	-- Plagued Champion [NOBESTIARY]
		-- TO DO
	-- Plagued Guardian [NOSNIFF]
		-- TO DO

-- Heigan
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='50', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15936';

-- Loatheb
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='80', `MinMeleeDmg`='68.6', `MaxMeleeDmg`='91.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='1250', `RangedBaseAttackTime`='1250' WHERE `Entry`='16011';
	-- Spore
	UPDATE `creature_template` SET `HealthMultiplier`='0.1', `ArmorMultiplier`='1', `MinLevelHealth`='305', `MaxLevelHealth`='305', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='16286';

-- Sapphiron
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='70', `MinMeleeDmg`='98.9', `MaxMeleeDmg`='131.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='15989';
	-- Blizzard [NOBESTIARY]
	UPDATE `creature_template` SET `MinLevel`='63', `MaxLevel`='63', `Rank`='3', `ArmorMultiplier`='1', `MinLevelHealth`='3331', `MaxLevelHealth`='3331', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `Armor`='4691', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16474';
	-- Sapphiron's Wing Buffet [NOTEMPLATE][NOBESTIARY]
		-- TO DO

-- Kel'Thuzad
UPDATE `creature_template` SET `UnitClass`='2', `HealthMultiplier`='1200', `PowerMultiplier`='600', `DamageMultiplier`='62.5', `ArmorMultiplier`='1', `MinLevelHealth`='3198000', `MaxLevelHealth`='3198000', `MinMeleeDmg`='102.2', `MaxMeleeDmg`='135.3', `MeleeAttackPower`='252', `RangedAttackPower`='27', `MeleeBaseAttackTime`='2000' WHERE `Entry`='15990';
	-- Unstoppable Abimonation [NOBESTIARY]
		-- TO DO
	-- Soldier of the Frozen Wastes
		-- TO DO
	-- Soul Weaver
		-- TO DO
	-- Guardian of Icecrown
	UPDATE `creature_template` SET `Scale`='0', `CreatureTypeFlags`='72', `Rank`='1', `DamageMultiplier`='20', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16441';

-- ----------------------------------------------------------------------------------------------------------------------------------------

-- Infectious Ghoul
UPDATE `creature_template` SET `DamageMultiplier`='35', `MinMeleeDmg`='79.4', `MaxMeleeDmg`='105.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `Entry`='16244';

-- Plague Slime
UPDATE `creature_template` SET `DamageMultiplier`='60', `MinMeleeDmg`='95.2', `MaxMeleeDmg`='126.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16243';
	-- Plague Slime (Blue)
	UPDATE `creature_template` SET `DamageMultiplier`='60', `MinMeleeDmg`='95.2', `MaxMeleeDmg`='126.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16783';
	-- Plague Slime (Red)
	UPDATE `creature_template` SET `DamageMultiplier`='60', `MinMeleeDmg`='95.2', `MaxMeleeDmg`='126.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16784';
	-- Plague Slime (Green)
	UPDATE `creature_template` SET `DamageMultiplier`='60', `MinMeleeDmg`='95.2', `MaxMeleeDmg`='126.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16785';

-- Stoneskin Gargoyle
UPDATE `creature_template` SET `UnitClass`='2', `HealthMultiplier`='105', `PowerMultiplier`='10', `DamageMultiplier`='36', `ArmorMultiplier`='1', `MinMeleeDmg`='98.5', `MaxMeleeDmg`='130.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='244', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16168';

-- Mutated Grub
UPDATE `creature_template` SET `DamageMultiplier`='8', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16297';

-- Frenzied Bat
UPDATE `creature_template` SET `Scale`='0', `DamageMultiplier`='6', `MinMeleeDmg`='77.9', `MaxMeleeDmg`='103.1', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `Entry`='16036';

-- Plagued Bat
UPDATE `creature_template` SET `Scale`='0', `DamageMultiplier`='6', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16037';

-- Plague Beast
UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16034';

-- Larva [NOBESTIARY]
	-- TO DO

-- Maggot [NOBESTIARY]
	-- TO DO

-- Rat [NOBESTIARY]
	-- TO DO

-- Diseased Maggot
UPDATE `creature_template` SET `DamageMultiplier`='12.5', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MeleeAttackPower`='252', `RangedAttackPower`='26' WHERE `Entry`='16056';

-- Rotting Maggot
UPDATE `creature_template` SET `DamageMultiplier`='10', `MinMeleeDmg`='129.9', `MaxMeleeDmg`='172.4', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='16057';

-- Eye Stalk [NOBESTIARY]
	-- TO DO

-- Spider [NOBESTIARY]
	-- TO DO

-- Poisonous Skitterer [NOBESTIARY]
	-- TO DO

-- Carrion Spinner
UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15975';

-- Dread Creeper
UPDATE `creature_template` SET `DamageMultiplier`='24', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15974';

-- Necro Stalker [NOSNIFF]
UPDATE `creature_template` SET `DamageMultiplier`='26', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16453';

-- Crypt Reaver
UPDATE `creature_template` SET `DamageMultiplier`='50', `MinMeleeDmg`='63.5', `MaxMeleeDmg`='84.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='1200' WHERE `Entry`='15978';

-- Venom Stalker
UPDATE `creature_template` SET `DamageMultiplier`='32', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15976';

-- Naxxramas Cultist
	-- TO DO
-- Naxxramas Acolyte
	-- TO DO

-- Tomb Horror
UPDATE `creature_template` SET `DamageMultiplier`='32', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='15979';

-- Spirit of Naxxramas [NOSNIFF]
UPDATE `creature_template` SET `PowerMultiplier`='10', `DamageMultiplier`='25', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16449';

-- Plagued Ghoul
UPDATE `creature_template` SET `DamageMultiplier`='35', `MinMeleeDmg`='79.4', `MaxMeleeDmg`='105.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `Entry`='16447';

-- Necropolis Acolyte [NOSNIFF]
UPDATE `creature_template` SET `ModelId2`='16161', `DamageMultiplier`='25', `MinMeleeDmg`='100.4', `MaxMeleeDmg`='133.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='246', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16368';

-- Plagued Gargoyle [NOSNIFF]
UPDATE `creature_template` SET `UnitClass`='2', `HealthMultiplier`='100', `PowerMultiplier`='3', `DamageMultiplier`='37.5', `ArmorMultiplier`='1', `MinMeleeDmg`='98.5', `MaxMeleeDmg`='130.4', `MaxRangedDmg`='0', `Armor`='3316', `MeleeAttackPower`='244', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16446';

-- Plagued Deathhound [NOSNIFF]
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='30', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16448';

-- Necro Knight Guardian
	-- TO DO

-- Deathknight Vindicator [NOSNIFF]
UPDATE `creature_template` SET `UnitClass`='2', `HealthMultiplier`='50', `PowerMultiplier`='10', `DamageMultiplier`='40', `ArmorMultiplier`='1', `MinMeleeDmg`='100.4', `MaxMeleeDmg`='133.0', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='246', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16451';

-- Patchwork Golem
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='37.5', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16017';

-- Bile Retcher
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='35', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16018';

-- Sludge Belcher
UPDATE `creature_template` SET `DamageMultiplier`='28', `MinMeleeDmg`='134.9', `MaxMeleeDmg`='178.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='262', `RangedAttackPower`='30', `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `Entry`='16029';

-- Embalming Slime
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='31.25', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16024';

-- Living Monstrosity
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='27.5', `MinMeleeDmg`='107.9', `MaxMeleeDmg`='143.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='262', `RangedAttackPower`='30', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16021';

-- Surgical Assistant
UPDATE `creature_template` SET `PowerMultiplier`='5', `DamageMultiplier`='15', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16022';

-- Mad Scientist
UPDATE `creature_template` SET `UnitClass`='1', `HealthMultiplier`='16', `PowerMultiplier`='2', `DamageMultiplier`='15', `ArmorMultiplier`='1', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16020';

-- Living Poison
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='9', `MinMeleeDmg`='132.3', `MaxMeleeDmg`='175.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `RangedBaseAttackTime`='2500' WHERE `Entry`='16027';

-- Stitched Spewer
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='37.5', `MinMeleeDmg`='109.8', `MaxMeleeDmg`='145.6', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='268', `RangedAttackPower`='32', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16025';

-- Toxic Tunnel [NOBESTIARY]
UPDATE `creature_template` SET `HealthMultiplier`='1.35', `ArmorMultiplier`='1', `MinLevelHealth`='4120', `MaxLevelHealth`='4120', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28' WHERE `Entry`='16400';

-- Risen Deathknight
UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16154';

-- Deathknight
	-- TO DO

-- Deathknight Captain
	-- TO DO

-- Necro Knight
	-- TO DO

-- Shade of Naxxramas [NOBESTIARY]
	-- TO DO

-- Bony Construct
UPDATE `creature_template` SET `PowerMultiplier`='3', `DamageMultiplier`='26', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16167';

-- Skeletal Smith
UPDATE `creature_template` SET `DamageMultiplier`='12', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16193';

-- Dark Touched Warrior [NOSNIFF][NOBESTIARY]
	-- TO DO

-- Death Touched Warrior [NOSNIFF][NOBESTIARY]
	-- TO DO

-- Naxxramas Combat Dummy [NOBESTIARY]
	-- TO DO

-- Doom Touched Warrior [NOSNIFF]
UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16157';

-- Deathknight Cavalier
	-- TO DO

-- Death Lord
	-- TO DO

-- Deathcharger Steed [NOBESTIARY]
	-- TO DO

-- Unholy Axe
UPDATE `creature_template` SET `DamageMultiplier`='34', `MinMeleeDmg`='95.2', `MaxMeleeDmg`='126.3', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='16194';

-- Unholy Swords
UPDATE `creature_template` SET `DamageMultiplier`='22', `MinMeleeDmg`='105.8', `MaxMeleeDmg`='140.3', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='16215';

-- Unholy Staff
UPDATE `creature_template` SET `DamageMultiplier`='33', `MinMeleeDmg`='84.7', `MaxMeleeDmg`='112.2', `MaxRangedDmg`='0', `Armor`='4091', `MeleeAttackPower`='258', `RangedAttackPower`='28', `MeleeBaseAttackTime`='1600', `RangedBaseAttackTime`='1600' WHERE `Entry`='16216';

-- 1029382193213543254 Triggers & Spawners
	-- TO DO
