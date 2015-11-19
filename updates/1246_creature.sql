-- Fixed movement of two NPCs in Felwood
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (40659, 40665);
