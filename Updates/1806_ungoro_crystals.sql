-- Pooled together to Crystal GOs in Un'Goro Crater
-- Closes #77
SET @POOL := 25611;

DELETE FROM pool_gameobject WHERE guid IN (17548, 17713);
INSERT INTO pool_gameobject VALUES
(17548, @POOL, 0, "Un'Goro - Green/Red Crystal"),
(17713, @POOL, 0, "Un'Goro - Green/Red Crystal");

DELETE FROM pool_template WHERE entry=@POOL;
INSERT INTO pool_template VALUES
(@POOL, 1, "Un'Goro - Green/Red Crystal");
