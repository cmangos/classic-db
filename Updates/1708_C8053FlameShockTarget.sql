-- Update Bloodmage Thalnos 8053 set Flame Shock target to hostile instead of self
UPDATE
	`creature_ai_scripts`
SET
	`action1_param2` = 1
WHERE
	`creature_id` = 4543 AND
	`action1_type` = 11 AND
	`action1_param1` = 8053;
