-- Kor'Kron Elites should not be elite
-- See
-- https://youtu.be/YcEqpVfrE7U?t=55m43s
-- http://www.wowhead.com/npc=14304/korkron-elite#comments
-- Patch 2.4.3 "Strangely enough, they aren't Elite."
UPDATE
	`creature_template`
SET
	`Rank` = 0
WHERE
	`Entry` = 14304;
