-- Fixed teleport coordinates for spell 21128 (Maraudon Portal Effect)
-- Source: https://www.youtube.com/watch?v=IV0zBJMmRQ4
DELETE FROM spell_target_position WHERE id=21128;
INSERT INTO spell_target_position VALUES
(21128, 349, 497.20, 15.97, -96.31, 3.0584);
