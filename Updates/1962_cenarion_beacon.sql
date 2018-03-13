-- Fixed item 11511 (Cenarion Beacon) working outsite of Felwood
-- This closes https://github.com/cmangos/issues/issues/1494 . Thanks @bdebaere for reporting.
SET @COND := 986;

DELETE FROM conditions WHERE condition_entry IN (@COND, @COND + 1);
INSERT INTO conditions VALUES
(@COND, 4, 361, 0, 'Is In Area ID: 361'),
(@COND + 1, -1, 197, @COND, '(Player Has 1 or more of Item ID 11511 in Inventory AND Is In Area ID: 361)');

UPDATE creature_loot_template SET condition_id=@COND + 1 WHERE condition_id=197;
UPDATE skinning_loot_template SET condition_id=@COND + 1 WHERE condition_id=197;
UPDATE gameobject_loot_template SET condition_id=@COND + 1 WHERE condition_id=197;
UPDATE reference_loot_template SET condition_id=@COND + 1 WHERE condition_id=197;
