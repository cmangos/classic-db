-- Xar'Ti 7953
-- gossip corrected
UPDATE gossip_menu SET condition_id = 810 WHERE entry = 4022 AND text_id = 4875; -- "Has Minimum Rank Exalted With Faction ID: 530"
UPDATE `gossip_menu_option` SET `condition_id` = 810 WHERE `menu_id` = 4022 AND `id` = 0; -- I seek training to ride a steed. (https://www.wowhead.com/tbc/npc=7953/xarti#comments:id=129990)
-- I can teach you the finer points of Raptor Riding, provided you have enough gold to cover the lesson! - 4875
-- You need to be exalted with the trolls of the Darkspear tribe before I will teach you a riding skill, $c. - 5865
UPDATE creature_template_addon SET emote = 0 WHERE entry = 7953; -- emote shouldnt be state
DELETE FROM dbscripts_on_relay WHERE id = 9995;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9995,1,1,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Xar\'Ti 7953 EAI: emote - 10'),
(9995,60000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Xar\'Ti 7953 EAI: emote - 0');

