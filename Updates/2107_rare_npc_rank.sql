-- Fix rank of two NPCs, they are rare elite, not just elite:
-- Trigore the Lasher
-- Veyzhak the Cannibal
UPDATE creature_template SET `Rank`=2 WHERE Entry IN (3652, 5399);
