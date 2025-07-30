-- diff
-- classic
-- 2815; -- [UNUSED] Teresa Shore

-- tbc
-- 25; -- Mithril Mechanical Dragonling
-- 621; -- Chicken
-- 1722; -- Andr'e
-- 7507; -- Brown Snake
-- 7508; -- Black Kingsnake
-- 7509; -- Crimson Snake
-- 8001; -- Corpus Ragatus
-- 8999; -- Innkeeper Sentinel Hill
-- 9095; -- Northshire Guard Justin
-- 11111; -- Wynne Larsone
-- 16976; -- Ghostly Denizen
UPDATE creature_template SET StaticFlags1=StaticFlags1|0x00200000 WHERE CreatureTypeFlags&0x00000002;

