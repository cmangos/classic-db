-- Fixed damage of creature 10925 (Rotting Worm) that were too high
-- Thanks Nekoi for pointing. This closes #241 
-- Source: TBC-DB
-- http://www.wowhead.com/npc=10925#comments
UPDATE `creature_template` SET `mindmg` = 60, `maxdmg` = 90, `dmg_multiplier` = 1.4 WHERE `entry` = 10925;
