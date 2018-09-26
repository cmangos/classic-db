-- Fixed roaming creatures with dead or kneel bytes
UPDATE creature SET MovementType=0, spawndist=0 WHERE movementtype<>0 AND guid IN (
    SELECT guid FROM creature_addon WHERE bytes1 IN (3, 8));
    