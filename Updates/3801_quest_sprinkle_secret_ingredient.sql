-- End script for quest Sprinkle's Secret Ingredient.
DELETE FROM dbscripts_on_quest_end WHERE id='2641';
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('2641 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Sprinkles Secret Ingredient - Set ActiveObject'),
('2641 ', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Sprinkles Secret Ingredient - Remove NPC Flags'),
('2641 ', '0', '0', '0', '0', '0', '0', '3661', '0', '0', '0', '0','0', '0', '0', 'Sprinkles Secret Ingredient - Say Text'),
('2641 ', '4000', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Sprinkles Secret Ingredient - Add NPC Flags');

UPDATE quest_template SET CompleteScript=2641 WHERE entry=2641;

-- Start script for quest Noggenfogger Elixir.
DELETE FROM dbscripts_on_quest_start WHERE id='2662';
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, data_flags, dataint, dataint2, dataint3, dataint4,x, y, z, o, comments) VALUES 
('2662 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Noggenfogger Elixir - Set ActiveObject'),
('2662 ', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Noggenfogger Elixir - Remove NPC Flags'),
('2662 ', '0', '0', '0', '0', '0', '0', '4548', '0', '0', '0', '0','0', '0', '0', 'Noggenfogger Elixir - Say Text'),
('2662 ', '5000', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Noggenfogger Elixir - Add NPC Flags');

UPDATE quest_template SET StartScript=2662 WHERE entry=2662;
