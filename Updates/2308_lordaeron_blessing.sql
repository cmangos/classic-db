-- Add DB support for spell 30238 (Lordaeron's Blessing) in Eastern Plaguelands
SET @COND := 1399;

DELETE FROM conditions WHERE condition_entry=@COND;
INSERT INTO conditions VALUES
(@COND, 1, 30238, 1, 'Player Has Aura: 30238, EffectIndex: 1');

DELETE FROM spell_area WHERE spell=31906;
INSERT INTO spell_area VALUES
(31906, 139, 0, 0, 0, @COND, 30238, 0, 0, 1),
(31906, 2057, 0, 0, 0, @COND, 30238, 0, 0, 1),
(31906, 2017, 0, 0, 0, @COND, 30238, 0, 0, 1),
(31906, 3456, 0, 0, 0, @COND, 30238, 0, 0, 1);

