-- Add Random Movement for Occulus, Chronalis & Tick (8196,8197,8198) based on tbc-sniff
UPDATE creature SET spawndist=10, MovementType=1 WHERE id=8196; -- Occulus
UPDATE creature SET spawndist=10, MovementType=1 WHERE id=8197; -- Chronalis - z level already fixed in tbc-db
UPDATE creature SET spawndist=10, MovementType=1 WHERE id=8198; -- Tick
