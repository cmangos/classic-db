-- Updated loot table of NPC 10433 (Marduk Blackpool)
UPDATE creature_loot_template SET ChanceOrQuestChance=30 WHERE entry=10433 AND item IN (14576, 18692);
DELETE FROM creature_loot_template WHERE entry=10433 AND item=24087;
INSERT INTO creature_loot_template VALUES
(10433, 24087, 0.1, 1, -24087, 1, 0, '');
