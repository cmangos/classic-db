-- relevant for tbc+ too
-- Lieutenant General Andorov - vendor and repair flag are set in core after event is done, should not be default flags
-- gone wrong here: https://github.com/cmangos/tbc-db/commit/8d40e5e87a347eacdb5cce2bf4841c2dec150321
-- m_creature->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP | UNIT_NPC_FLAG_VENDOR);
-- GossipHello_npc_general_andorov(Player* player, Creature* creature)
-- player->ADD_GOSSIP_ITEM_ID(GOSSIP_ICON_VENDOR, GOSSIP_ITEM_TRADE, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);
UPDATE creature_template SET NpcFlags=1 WHERE Entry=15471;

