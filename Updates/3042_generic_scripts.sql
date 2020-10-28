-- Make all Generic scripts target source (self) ... not searching for other target if exist
UPDATE dbscripts_on_creature_movement SET data_flags = 0x04 WHERE id BETWEEN 1 AND 1399;
