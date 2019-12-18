-- Add missing immunities to NPC 9033 (General Angerforge) and 8983 (Golem Lord Argelmach)
-- Sync them with TBC-DB
UPDATE creature_template SET MechanicImmuneMask=76234719 WHERE Entry IN (9033, 8983);
