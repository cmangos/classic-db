SET @FACT :=  67; -- Scarlet Crusade

-- --------------------------------------------

UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10425; -- Crimson Battle Mage
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10419; -- Crimson Conjuror
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10421; -- Crimson Defender
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 12128; -- Crimson Elite
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10424; -- Crimson Gallant
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10418; -- Crimson Guardsman
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 11120; -- Crimson Hammersmith
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 11043; -- Crimson Monk
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10426; -- Crimson Inquisitor
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10423; -- Crimson Priest
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10422; -- Crimson Sorcerer
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 11054; -- Crimson Rifleman
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10420; -- Crimson Initiate

UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 11032; -- Malor the Zealous
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10997; -- Cannon Master Willey
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10811; -- Archivist Galford
UPDATE `creature_template` SET `FactionAlliance` = @FACT, `FactionHorde` = @FACT WHERE `Entry` = 10812; -- Grand Crusader Dathrohan

UPDATE `creature_template` SET `MaxLevel` = 60 WHERE `Entry` = 11043; -- Crimson Monk
UPDATE `creature_template` SET `MinLevel` = 57, `MaxLevel` = 58 WHERE `Entry` = 11054; -- Crimson Rifleman
UPDATE `creature_template` SET `MinLevel` = 60 WHERE `Entry` = 10997; -- Cannon Master Willey
UPDATE `creature_template` SET `MinLevel` = 62 WHERE `Entry` = 10812; -- Grand Crusader Dathrohan
