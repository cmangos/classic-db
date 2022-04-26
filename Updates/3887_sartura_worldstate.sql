-- Fix worldstate check for Battleguard Sartura after update core z2792
DELETE FROM worldstate_name WHERE Id=71101;
INSERT INTO worldstate_name(Id, Name) VALUES
(71101,'AQ40 - Battleguard Sartura - Alive');

DELETE FROM conditions WHERE condition_entry=6033 AND type=42;
INSERT INTO conditions(condition_entry,type,value1,value2,value3) VALUES
(6033, 42, 71101, 0, 1);

UPDATE spawn_group SET WorldState=6033 WHERE Id=5310014;
