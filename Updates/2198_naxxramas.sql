-- naxxramas transport fixup
-- period value courtesy of Shauren
DELETE FROM gameobject WHERE id IN(181056);
DELETE FROM transports WHERE entry IN(181056);
INSERT INTO transports VALUES
(181056, 'Naxxramas', 1204730);
