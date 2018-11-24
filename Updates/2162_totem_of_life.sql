-- Fix item 22396 (Totem of Life) not modifying Lesser Healing Wave
-- Closes https://github.com/cmangos/issues/issues/745
DELETE FROM spell_affect WHERE entry=27855;
INSERT INTO spell_affect VALUES (27855, 0, 128);
