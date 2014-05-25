-- -----------------------

UPDATE `creature_template` SET `MinLevel` = 61 WHERE `Entry` = 15324; -- Qiraji Gladiator
UPDATE `creature_template` SET `MinLevel` = 61 WHERE `Entry` = 15387; -- Qiraji Warrior
UPDATE `creature_template` SET `MinLevel` = 61 WHERE `Entry` = 15344; -- Swarmguard Needler

UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 63 WHERE `Entry` = 15391; -- Captain Qeez
UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 63 WHERE `Entry` = 15386; -- Major Yeggeth

UPDATE `creature_template` SET `FactionAlliance` = 7, `FactionHorde` = 7, `Scale` = 0.5, `MovementType` = 1 WHERE `Entry` = 15168; -- Vile Scarab
