-- WotLK content clean-up
-- Thanks @Lichery for pointing.
-- Closes #89

-- Creatures
DELETE FROM creature_template WHERE Entry IN (16509, 16510);

-- Texts
DELETE FROM npc_text WHERE id IN (14661, 13856, 14813, 14828, 15159, 13857, 14406, 14408, 14476, 14757, 14794, 14793, 14824);
DELETE FROM gossip_menu WHERE entry IN (10598, 10673);
