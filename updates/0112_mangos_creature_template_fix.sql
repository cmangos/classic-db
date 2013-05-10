-- Changes rank of creature 5928 (Sorrow Wing) as it was a rare elite in classic
-- Source: http://www.wowhead.com/npc=5928#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 5928;