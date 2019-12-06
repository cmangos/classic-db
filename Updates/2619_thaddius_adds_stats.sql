-- Add Feugen/Stalagg specific aura to each Tesla Coil NPC
DELETE FROM creature_addon WHERE guid IN (6095, 6096);
INSERT INTO creature_addon VALUES
(6095, 0, 0, 1, 16, 0, 0, '28097'),
(6096, 0, 0, 1, 16, 0, 0, '28109');

-- Link the Tesla Coil to their respective add
DELETE FROM creature_linking WHERE guid IN (6095, 6096);
INSERT INTO creature_linking VALUES
(6095, 88481, 1+4+128+1024),
(6096, 88482, 1+4+128+1024);

-- Update stats and remove movement hack for NPC 16218 (Tesla Coil)
UPDATE creature_template SET HealthMultiplier=1.35, SpeedWalk=(2/2.5), SpeedRun=(8/7.0), MovementType=0 WHERE Entry=16218;
UPDATE creature SET MovementType=0 WHERE id=16218;
DELETE FROM creature_movement WHERE id IN (6095, 6096);
