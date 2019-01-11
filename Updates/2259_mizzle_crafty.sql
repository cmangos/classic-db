-- Updates to Dire Maul
-- add gossip npcflag to Mizzle only once he reaches his destination
-- remove gossip npcflag from Mizzle sooner after tribute gossip option is selected
-- This fixes the issue of stopping his movement by talking to him before he reaches WP 7.
-- Also prevents possible spam of tribute chest option causing more than 1 chest to spawn.
DELETE FROM dbscripts_on_gossip WHERE id=574001 AND command=29;
INSERT INTO `dbscripts_on_gossip` VALUES
(574001, 0, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mizzle - npc_flag removed');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435308, 1435307) AND command=29;
INSERT INTO dbscripts_on_creature_movement VALUES
(1435307, 0, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mizzle - npc_flag added');
