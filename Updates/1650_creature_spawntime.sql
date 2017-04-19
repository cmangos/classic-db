-- Console errors fixed
-- Individual spawn range will be set later.
UPDATE creature SET spawntimesecsmax=spawntimesecsmin;
UPDATE gameobject SET spawntimesecsmax=spawntimesecsmin;

-- All world bosses have 2-4 day respawn timer

-- Lord Kazzak
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 12397;
-- Emeriss
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14889;
-- Lethon
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14888;
-- Ysondre
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14887;
-- Taerar
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14890;
-- Azuregos
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 6109;