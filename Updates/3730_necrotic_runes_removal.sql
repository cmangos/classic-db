-- Remove Necrotic Rune when disrupting channeling of Cultist Engineer in Scourge Invasions events
-- 8 runes must be removed, as noted in gossip option
DELETE FROM dbscripts_on_gossip WHERE id=7166 AND command=17;
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(7166, 0, 0, 17, 22484, 8, 0, 0, 0, 0x008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - Use 8 shards to summon Shadow of Doom');
