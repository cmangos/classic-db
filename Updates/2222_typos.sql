-- Add missing comments column for npc_vendor and npc_vendor tables
ALTER TABLE npc_vendor ADD COLUMN comments TEXT NULL AFTER condition_id;
ALTER TABLE npc_vendor_template ADD COLUMN comments TEXT NULL AFTER condition_id;
