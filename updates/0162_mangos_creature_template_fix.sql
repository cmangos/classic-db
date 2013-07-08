-- Reverted faction for creatures 2578 (Young Mesa Buzzard), 2579 (Mesa Buzzard), 2580 (Elder Mesa Buzzard)
-- as they were hostile to players prio to patch 2.3.2. Correct faction value is taken from other buzzard creatures
-- Source: http://http://www.wowwiki.com/Mesa_Buzzard
-- http://www.wowwiki.com/Elder_Mesa_Buzzard
-- http://www.wowwiki.com/Young_Mesa_Buzzard
UPDATE `creature_template` SET `Faction_A` = 73, `Faction_H` = 73 WHERE `entry` IN (2578, 2579, 2580);
