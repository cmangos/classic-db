-- Removed spawns of creature 3939 (Razormane Wolf) because this is a summoned NPC
-- This closes #588
-- Source: http://www.wowhead.com/npc=3939#comments
-- http://www.wowwiki.com/Razormane_Wolf
DELETE FROM `creature` WHERE `id` = 3939;
