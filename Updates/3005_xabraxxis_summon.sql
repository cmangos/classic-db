-- Rework summon of NPC 10373 (Xabraxxis) in Darkshore for quest 4763 (The Blackwood Corrupted)
DELETE FROM dbscripts_on_event WHERE id=3938;
INSERT INTO dbscripts_on_event VALUES
(3938, 20000, 0, 10, 10373, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 6888.34, -480.37, 40.62, 3.7581, 0, 'Spawn Xabraxxis for quest 4763'),
(3938, 20000, 0, 26, 0, 0, 0, 10373, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Xabraxxis attacks - quest 4763');
