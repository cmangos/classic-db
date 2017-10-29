-- UNIT_FLAG_IMMUNE_TO_PLAYER is being removed from Shade of Eranikus when Jammal'an dies.
-- UNIT_FLAG_IMMUNE_TO_PLAYER is however not present on Shade of Eranikus, instead an unreferenced flag is used.
-- This leads to Shade of Eranikus not being attackable after Jammal'an dies.
-- Changed the flag to UNIT_FLAG_IMMUNE_TO_PLAYER. Now working as intended.

UPDATE
	`creature_template`
SET
	`UnitFlags` = 33024 -- was 32896
WHERE
	`Entry` = 5709;
