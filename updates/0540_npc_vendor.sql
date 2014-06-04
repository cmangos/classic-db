-- Pattern: Runic Leather Headband was added to vendor Jase Farlane (EPL)
-- Thanks Neotmiren for pointing and fixing. This closes #453 
-- Source: http://www.wowwiki.com/Leatherworking?oldid=338750
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 15756;
INSERT INTO `npc_vendor` VALUES (12941, 15756, 0, 0, 0);
