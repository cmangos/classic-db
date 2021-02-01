-- Add missing gossip and gossip option for NPC 8579 (Yeh'kinya) in Tanaris
-- This allow players to start again Avatar of Hakkar event in Sunken Temple once they have completed quest 3528 (The God Hakkar)

SET @COND := 65;

DELETE FROM conditions WHERE condition_entry=@COND;
INSERT INTO conditions VALUES
(@COND, 8, 3528, 0, 0, 0, 0, 'Quest ID 3528 Rewarded');


DELETE FROM gossip_menu WHERE entry=1470 AND text_id=4563;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1470, 2139, 0, @COND);

DELETE FROM gossip_menu_option WHERE menu_id=1470;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(1470, 0, 0, 'Yes.  Give me the spell to summon the avatar.', 4567, 1, 1, -1, 0, 147001, 0, 0, '', 0, @COND);

DELETE FROM dbscripts_on_gossip WHERE id=857901;
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(147001, 0, 0, 15, 12998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yeh''kinya - Create Yeh''kinya''s Scroll');

DELETE FROM npc_text WHERE ID IN (4563, 4565);
DELETE FROM npc_text_broadcast_text WHERE Id IN (4563, 4565);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(2139, 1, 0, 0, 0, 0, 0, 0, 0, 4563, 0, 0, 0, 0, 0, 0, 0),
(2140, 1, 0, 0, 0, 0, 0, 0, 0, 4565, 0, 0, 0, 0, 0, 0, 0);
