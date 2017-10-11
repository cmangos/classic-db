-- Added support for hourly bells event in cities
DELETE FROM game_event WHERE entry=1024;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, linkedTo, description) VALUES
('1024', '2010-01-01 01:00:00', '2025-01-01 01:00:00', '60', '1', '0', '0', 'Hourly Bells');
