-- Fixes for Stomper Kreeg vendor data
-- Gordok Green Grog 18269 and Kreeg's Stout Beatdown 18284 should not have a limited supply
-- Increased restock time for Volatile Rum
UPDATE npc_vendor SET maxcount=0, incrtime=0 WHERE entry=14322 AND item<>9260;
UPDATE npc_vendor SET incrtime=10800 WHERE entry=14322 AND item=9260;
