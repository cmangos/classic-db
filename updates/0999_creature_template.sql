-- Fixed model for NPC 659 (El Pollo Grande) in Felwood
-- Thanks theTrueAnimal for pointing. This closes #749
UPDATE `creature_template` SET `ModelId1` = 589 WHERE `entry` = 659;
