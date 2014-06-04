-- Added waypoints to Princess(ID 330)
SET @GUID := 80849;

UPDATE creature SET MovementType = 2 WHERE guid = @GUID;
