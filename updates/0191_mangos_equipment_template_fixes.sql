-- Added Weapons for Plagued Warrior
-- Source: http://www.youtube.com/watch?v=cxch-KEATeQ
-- Source: http://www.wowcr.net/videos/vid08-naxxramas/
UPDATE `creature_template` SET `equipment_id` = 1872 WHERE `entry` = 16984;

-- Added Weapons for Plagued Champion
-- Source: http://www.youtube.com/watch?v=cxch-KEATeQ
-- Source: http://www.wowcr.net/videos/vid08-naxxramas/
UPDATE `creature_template` SET `equipment_id` = 149 WHERE `entry` = 16983;

-- Added Weapons for Plagued Guardian
-- Source: http://www.wowcr.net/videos/vid08-naxxramas/
-- Source: http://www.youtube.com/watch?v=cxch-KEATeQ
UPDATE `creature_template` SET `equipment_id` = 788 WHERE `entry` = 16981;

-- Added Correct Weapon and Equip Template Lady Blaumeux
-- Source: http://www.wowhead.com/npc=16065#screenshots
-- Source: http://www.wowwiki.com/Four_Horsemen_%28original%29?file=FourHorsemen.jpg
-- Source: http://evowde.lima-city.de/forum/tactics/www.wow-tactics.de/gfx/naxx/ss-reiter.jpg
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 35258, `equipinfo1` = 13639426 WHERE `entry` = 1457;

-- Added Correct Weapon and Equip Template for Sir Zeliek
-- Source: http://www.wowhead.com/npc=16063#screenshots
-- Source: http://www.wowwiki.com/Four_Horsemen_%28original%29?file=FourHorsemen.jpg
-- Source: http://evowde.lima-city.de/forum/tactics/www.wow-tactics.de/gfx/naxx/ss-reiter.jpg
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 35710, `equipinfo1` = 13639426 WHERE `entry` = 1488;

-- Added Weapons and  Equip template for Thane Kor'thazz
-- Source: http://www.wowhead.com/npc=16064#screenshots
-- Source: http://evowde.lima-city.de/forum/tactics/www.wow-tactics.de/gfx/naxx/ss-reiter.jpg
-- Source: http://www.wowwiki.com/Four_Horsemen_%28original%29?file=FourHorsemen.jpg
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2403;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES (2403, 35129, 0, 0, 218171138, 0, 0, 3, 0, 0);
UPDATE `creature_template` SET `equipment_id` = 2403 WHERE `entry` = 16064;

-- Added Weapons for Death Lord
-- Source: http://www.youtube.com/watch?v=7VcozSUZc9Y
-- Source: http://www.youtube.com/watch?v=KxITOD-fQ5g
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
UPDATE `creature_template` SET `equipment_id` = 1268 WHERE `entry` = 16861;

-- Added Weapons for Unrelenting rider
-- Source: http://www.youtube.com/watch?v=FN2QtHx8_xw
UPDATE `creature_template` SET `equipment_id` = 1232 WHERE `entry` = 16126;

-- Added Weapons for Spectral Rider
-- Source: http://www.youtube.com/watch?v=FN2QtHx8_xw
UPDATE `creature_template` SET `equipment_id` = 1232 WHERE `entry` = 16150;

-- Added Weapons for Deathknight Vindicator
-- Source: http://www.wowhead.com/npc=16451#screenshots
UPDATE `creature_template` SET `equipment_id` = 1232 WHERE `entry` = 16451;

-- Added Weapons for Necropolis Acolyte
-- Source: http://www.wowhead.com/npc=16368#screenshots
UPDATE `creature_template` SET `equipment_id` = 954 WHERE `entry` = 16368;

-- Added Weapons for Necro Knight Guardian
-- Source: http://www.wowhead.com/npc=16452#screenshots
UPDATE `creature_template` SET `equipment_id` = 1451 WHERE `entry` = 16452;

-- Added Weapons and  Equip template for Necro Knight
-- Source: http://www.wowhead.com/npc=16165#screenshots
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2404;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES (2404, 35712, 0, 0, 218171138, 0, 0, 3, 0, 0);
UPDATE `creature_template` SET `equipment_id` = 2404 WHERE `entry` = 16165;


-- Added Weapons and  Equip template for Spectral/Unrelenting Deathknight
-- Source: http://www.youtube.com/watch?v=FN2QtHx8_xw
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2402;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES (2402, 16128, 30993, 0, 218169346, 234948100, 0, 3, 4, 0);
UPDATE `creature_template` SET `equipment_id` = 2402 WHERE `entry` = 16125;
UPDATE `creature_template` SET `equipment_id` = 2402 WHERE `entry` = 16148;

-- Added Weapons  and equip template for Npc Unholy Swords.
-- Source: http://www.wowhead.com/npc=16216#screenshots
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 23798, `equipmodel2` = 23798, `equipmodel3` = 0, `equipinfo1` = 13639426, `equipinfo2` = 13639426, `equipinfo3`= 0, `equipslot1` = 781, `equipslot2` = 781,  `equipslot3` = 0 WHERE `entry` = 1726;

