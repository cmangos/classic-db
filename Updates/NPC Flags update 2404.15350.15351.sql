-- Blacksmith Verringtan fix (Hillsbrad Foothills)
-- Should have the same vendor list as Hillsbrad Apprentice Blacksmith
-- Changed VendorID to 1001 (prev. 0)
-- Prevents Error have UNIT_NPC_FLAG_VENDOR but have empty trading item list.
-- Source : https://classicdb.ch/?npc=2404#sells

UPDATE creature_template
SET VendorTemplateId = 1001
WHERE Entry = 2404;

-- Horde Warbringer / Alliance Brigadier General fix
-- Returns have UNIT_NPC_FLAG_VENDOR but have empty trading item list error
-- NpcFlags corrected to 3 (UNIT_NPC_FLAG_QUESTGIVER + UNIT_NPC_FLAG_GOSSIP)

UPDATE creature_template
SET NpcFlags = 3
WHERE Entry = 15350;

UPDATE creature_template
SET NpcFlags = 3
WHERE Entry = 15351;
