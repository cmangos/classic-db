-- Blacksmith Verringtan & Hillsbrad Apprentice Blacksmith
-- Prevents Error have UNIT_NPC_FLAG_VENDOR but have empty trading item list.
-- Source : https://www.wowhead.com/classic/npc=2265/hillsbrad-apprentice-blacksmith#sells
-- https://www.wowhead.com/classic/npc=2404/blacksmith-verringtan
UPDATE creature_template SET NpcFlags = 4 WHERE Entry = 2265; -- 128 tbc+
UPDATE creature_template SET NpcFlags = 0 WHERE Entry = 2404;

-- Horde Warbringer / Alliance Brigadier General fix
-- Returns have UNIT_NPC_FLAG_VENDOR but have empty trading item list error
-- NpcFlags corrected to 3 (UNIT_NPC_FLAG_QUESTGIVER + UNIT_NPC_FLAG_GOSSIP)
UPDATE creature_template SET NpcFlags = 3 WHERE Entry = 15350; -- seemingly sells stuff in wotlk
UPDATE creature_template SET NpcFlags = 3 WHERE Entry = 15351; -- seemingly sells stuff in wotlk

