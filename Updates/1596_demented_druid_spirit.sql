-- Remove gold from NPC 15260 (Demented Druid Spirit): they are summoned NPCs and should not have gold
UPDATE creature_template SET MinLootGold=0, MaxLootGold=0 WHERE Entry=15260;
 