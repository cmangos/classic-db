-- Added support for quest 4771 (Dawn's Gambit) in Scholomance
-- Sources:
-- https://www.youtube.com/watch?v=egdOEC0gAoU
-- https://www.youtube.com/watch?v=9JDaI7BGmNM

-- Fixed template of involved GameObjects by filling placeholder fields
UPDATE gameobject_template SET extraflags=1, faction=114, data3=18110, data2=5, data4=1, data8=1 WHERE entry=177304;
UPDATE gameobject_template SET faction=114, data2=5, data4=1 WHERE entry=176110;

-- Fixed extraflags of NPC 10475 (Scholomance Student): they should not ignore aggro
UPDATE creature_template SET ExtraFlags=0 WHERE Entry=10475;
