-- fixes totems and idols not working
DELETE FROM spell_affect WHERE entry IN(27853,32402,27855,28856,32401);
INSERT INTO spell_affect VALUES
(27855,0,0x0000000000000080), -- Increased Lesser Healing Wave
(28856,0,0x0000000000000080),
(27853,0,0x0000000000000010); -- Increased Rejuvenation Healing
