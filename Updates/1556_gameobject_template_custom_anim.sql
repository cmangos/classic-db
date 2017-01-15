-- Custom animation for some objects fixed
-- 187432 - Alliance Flag - 5651 -- Without = doesnt work -- with works fine
-- 181699 - Barrel of Filth - 6869 -- Without = doesnt work -- with works fine
-- 184661 - Smoke Beacon - 6544 -- Without = doesnt work -- with works fine
-- 188692 - Valiance Keep Cannon - 245 -- Without = player casts multiple spell ??? -- with better animation from gun
-- 187389 - Falling Rocks - 4473 -- -- Without = work partly -- with much better (full animation)
-- 184694 - Zelana's Alchemy Set - 345 -- Without = doesnt work -- with works fine
-- 180452 - Blastenheimer 5000 Ultra Cannon - 6429 -- Without = doesnt work -- with works fine
-- https://www.youtube.com/watch?v=BmRsGlhzACc (i did diff fix for it... but effect is the same and can be seen on this avi)
UPDATE gameobject_template SET ExtraFlags = 1 WHERE displayId IN (245,345,4473,5651,6429,6544,6869);
