-- Uniformize addon and emote for NPC 5843 (Slave Worker)
-- Slave Worker 5843
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=5843);
DELETE FROM creature_template_addon WHERE entry=5843;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_flags,emote,moveflags,auras) VALUES
(5843,0,0,1,16,173,0,NULL);
