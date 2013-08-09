-- Properly add snare (1024) and root (64) immunity mask to creature 13021 (Warpwood Crusher)
-- Thanks titarion for pointing
-- Source: http://www.wowhead.com/npc=13021#comments
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|(64+1024) WHERE `entry` = 13021;
