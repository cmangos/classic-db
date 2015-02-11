-- Removed spawns of NPC 11258 from Scholomance : this NPC is summoned
DELETE FROM `creature` WHERE `id` = 11258 AND `map` = 289;
