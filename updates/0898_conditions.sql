-- ==================================================================
-- Fix Faction Mount Vendors Selling To Other Races Below Exalted Rep
-- ==================================================================
-- ------------------
-- Katie Hunter (384) - Human
-- ------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=384;
UPDATE conditions SET value1=76 WHERE condition_entry=816; -- Remove Draenei Race
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=4004 AND id=0;
 
-- -----------------------
-- Veron Amberstill (1261) - Dwarf
-- -----------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=1261;
UPDATE conditions SET value1=73 WHERE condition_entry=1026; -- Remove Draenei Race
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=4001 AND id=0;
 
-- --------------
-- Lelanai (4730) - Night Elf
-- --------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=4730;
DELETE FROM gossip_menu_option WHERE menu_id IN (3185) AND id IN (2);
 
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('218','5','69','7');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('219','14','69','0');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('220','-1','218','219');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('221','14','8','0');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('222','-2','220','221');
 
UPDATE gossip_menu SET condition_id=222 WHERE entry=3185 AND text_id=3942;
UPDATE gossip_menu_option SET condition_id=222 WHERE menu_id=3185 AND id=1;
 
UPDATE gossip_menu_option SET id=0, npc_option_npcflag=128 WHERE menu_id=3185 AND id=1;
 
-- ---------------------------
-- Milli Featherwhistle (7955) - Gnome
-- ---------------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=7955;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('3186','0','1','I would like to buy from you.','3','128','0','0','0','0','0',NULL,'331');
 
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('327','5','54','7');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('328','14','13','0');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('329','-1','327','328');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('330','14','64','0');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES('331','-2','329','330');
 
UPDATE gossip_menu SET condition_id=331 WHERE entry=3186 AND text_id=3945;
UPDATE gossip_menu_option SET condition_id=331 WHERE menu_id=3186 AND id=0;
 
-- --------------------
-- Harb Clawhoof (3685) - Tauren
-- --------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=3685;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES('4006','4862','0','847');
UPDATE gossip_menu_option SET npc_option_npcflag=128, condition_id=847 WHERE menu_id=4006 AND id=0;
UPDATE conditions SET value1=146 WHERE condition_entry=817; -- Remove Blood Elf Race
 
-- --------------
-- Zjolnir (7952) - Troll
-- --------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=7952;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES('3162','3896','0','849');
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=3162 AND id=0;
UPDATE conditions SET value1=50 WHERE condition_entry=819; -- Remove Blood Elf Race
 
-- -------------------------
-- Ogunaro Wolfrunner (3362) - Orc
-- -------------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=3362;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES('3161','3893','0','845');
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=3161 AND id=0;
UPDATE conditions SET value1=176 WHERE condition_entry=815; -- Remove Blood Elf Race
 
-- ---------------------
-- Zachariah Post (4731) - Undead
-- ---------------------
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry=4731;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES('4005','5840','0','0');
UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=4005 AND id=0;
UPDATE conditions SET value1=162 WHERE condition_entry=821; -- Remove Blood Elf Race