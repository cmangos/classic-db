-- Fix a few movement types in Shadowfang Keep
-- Make NPC 3886 (Razorclaw the Butcher) roam
UPDATE creature SET MovementType=1, spawndist=5 WHERE id=3886;
-- Make idle two roaming adds in Wolf Master Nandos room
UPDATE creature SET MovementType=0, spawndist=0 WHERE guid IN (16238, 16240);
