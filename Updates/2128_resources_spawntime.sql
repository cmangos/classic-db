-- Fix spawn time of mineral and herbal resources
-- based on https://github.com/cmangos/tbc-db/commit/7c15b357b6108310d1ac479edb6864f27ea4c346
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE id IN (1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1628, 2041, 2042, 2043, 2044, 2045, 2046, 2866, 142140, 142141, 142142, 142143, 142144, 142145, 176583, 176584, 176586, 176587, 176588) AND map NOT IN (0, 1);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE id IN (324, 1731, 1732, 1733, 1734, 1735, 2040, 2047, 2054, 2055, 103711, 105569, 150079, 150080, 150081, 150082, 165658, 175404) AND map NOT IN (0, 1);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE id IN (123848, 2653, 1610, 1667) AND map NOT IN (0, 1);
