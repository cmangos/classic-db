-- Removed all gossips that have correct id set in creature_template
-- CDB & TDB can use this... for check
-- SELECT * FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id IN (SELECT Entry FROM creature_template WHERE GossipMenuId >0));
DELETE FROM npc_gossip WHERE npc_guid IN (
-- guid, text, gossipmenu, gossiptext
-- 62, -- 4445 more options
-- 141208, -- 7354 6214	7366, different
6499, -- 7174 6022	7174
19221, -- 3557 2871	3557
37097, -- 3334 50001	3334
51258, -- 2575 1922	2575
86167, -- 68 5181	6194 - entry 13436 "68" is blank template
86233); -- 6194 5181	6194

