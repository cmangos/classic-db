-- Fix gossip menu for Maybess Riverbreeze
UPDATE gossip_menu SET entry=2207 WHERE entry=20022;
UPDATE creature_template SET GossipMenuId=2207 WHERE Entry=9529;
-- Remove vendor list for NPC that is not a vendor
DELETE FROM `npc_vendor` WHERE entry=6776;
