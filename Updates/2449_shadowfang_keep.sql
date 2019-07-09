UPDATE creature SET id=0 WHERE id=3864;

DELETE FROM creature_spawn_entry WHERE guid IN (16440, 16441, 16442);
INSERT INTO creature_spawn_entry (guid, entry) VALUES
(16440, 3864), (16440, 3865), -- Fel Steed, Shadow Charger
(16441, 3864), (16441, 3865), -- Fel Steed, Shadow Charger
(16442, 3864), (16442, 3865); -- Fel Steed, Shadow Charger

DELETE FROM creature_linking WHERE guid IN (16440, 16441, 16442);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(16440, 16442, 3), -- Fel Steed/Shadow Charger -> Fel Steed/Shadow Charger
(16441, 16442, 3); -- Fel Steed/Shadow Charger -> Fel Steed/Shadow Charger
