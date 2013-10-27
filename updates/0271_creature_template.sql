-- Level of NPC Mor'Ladim (Duskwood) should be 35, not 38
-- source: http://www.wowwiki.com/Mor'Ladim?oldid=353029
UPDATE `creature_template` SET `minlevel` =35, `maxlevel` = 35 WHERE `entry` = 522;
