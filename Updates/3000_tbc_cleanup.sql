-- These herbalism trainers have no gossip in Classic and the broadcast text id for this npc_text entry does not exist in the Classic table.
 DELETE FROM npc_text WHERE ID=9385;
 DELETE FROM gossip_menu WHERE entry=7691;
 DELETE FROM gossip_menu_option WHERE menu_id=7691;
 DELETE FROM gossip_menu WHERE entry=10350; -- using same tbc text
 DELETE FROM gossip_menu_option WHERE menu_id=10350;
 UPDATE creature_template SET GossipMenuId=0, NpcFlags=16 WHERE GossipMenuId IN (7691, 10350);

 -- Theramore Guard has no gossip in Classic and the broadcast text id for this npc_text entry does not exist in the Classic table.
 DELETE FROM npc_text WHERE ID=11492;
 DELETE FROM gossip_menu WHERE entry=8851;
 UPDATE creature_template SET GossipMenuId=0, NpcFlags=0 WHERE entry = 4979;

 -- Sentry Point Captain has no gossip in Classic and the broadcast text id for this npc_text entry does not exist in the Classic table.
 DELETE FROM npc_text WHERE ID=11264;
 DELETE FROM gossip_menu WHERE entry=8793;
 UPDATE creature_template SET GossipMenuId=0, NpcFlags=0 WHERE entry = 5086;

 -- Remove TBC gossip for Bloodmage Lynnore and replace with Classic version.
 DELETE FROM npc_text WHERE ID=16007;
 DELETE FROM gossip_menu WHERE entry=11473;
 INSERT INTO gossip_menu VALUES (820, 1371, 0, 0);
 UPDATE creature_template SET GossipMenuId=820 WHERE entry = 7506;

 -- Remove TBC gossip for Ag'tor Bloodfist and replace with Classic version.
 DELETE FROM npc_text WHERE ID=14690;
 UPDATE gossip_menu SET text_id=2033 WHERE entry=1401 && text_id=14690;
 