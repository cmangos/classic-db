-- Ratchet Bruiser 3502
-- no gossip flag in 3.3.5 sniffs
-- no gossip flags in 2.4.3 sniffs - 2008-02-22 07-11-57
-- no gossip flags in CCSDB
UPDATE creature_template SET NpcFlags = 0 WHERE Entry = 3502;

