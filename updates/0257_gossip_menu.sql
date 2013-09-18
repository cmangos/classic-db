-- Added gossip menu for creature 240 (Marshal Dughan) and linked it to creature template
-- Source: YTDB
INSERT INTO `gossip_menu` VALUES (11611, 16211,0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 11611, `npcflag` = `npcflag`|1 WHERE `entry` = 240;

-- Added npc txt associated with gossip menu above
INSERT INTO `npc_text` VALUES (16211, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $N...', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
