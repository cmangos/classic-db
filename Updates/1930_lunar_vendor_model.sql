-- Fixed model of Alliance NPC Lunar Festival Vendor in Moonglade
DELETE FROM game_event_creature_data WHERE guid=91689;
INSERT INTO game_event_creature_data VALUES
(91689, 0, 0, 0, 26384, 0, 7);
