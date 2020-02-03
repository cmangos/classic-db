-- Remove passive Aura with CastTime for NPC 6227
-- c.6227 are buffed with spell 10348 by Leprous Technician 6222 / Leprous Machinesmith 6224 (Handled by ACID)
-- Based on https://github.com/cmangos/tbc-db/commit/dc2cb18450e7aded9491aeefd53ca21633f5efeb
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=6227);
