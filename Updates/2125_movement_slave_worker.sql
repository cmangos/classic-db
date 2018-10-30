-- Fix movement for two NPC 5843 (Slave Worker)
UPDATE creature SET MovementType=0, spawndist=0 WHERE guid IN (5679, 5685);
