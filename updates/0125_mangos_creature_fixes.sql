-- Remove Random Obsidian Chunks --
DELETE FROM gameobject WHERE guid = '9306';
DELETE FROM game_event_gameobject WHERE guid = '9306';
DELETE FROM gameobject_battleground WHERE guid = '9306';
DELETE FROM gameobject WHERE guid = '11495';
DELETE FROM game_event_gameobject WHERE guid = '11495';
DELETE FROM gameobject_battleground WHERE guid = '11495';
DELETE FROM gameobject WHERE guid = '12443';
DELETE FROM game_event_gameobject WHERE guid = '12443';
DELETE FROM gameobject_battleground WHERE guid = '12443';
DELETE FROM gameobject WHERE guid = '9301';
DELETE FROM game_event_gameobject WHERE guid = '9301';
DELETE FROM gameobject_battleground WHERE guid = '9301';
DELETE FROM gameobject WHERE guid = '14106';
DELETE FROM game_event_gameobject WHERE guid = '14106';
DELETE FROM gameobject_battleground WHERE guid = '14106';
DELETE FROM gameobject WHERE guid = '14124';
DELETE FROM game_event_gameobject WHERE guid = '14124';
DELETE FROM gameobject_battleground WHERE guid = '14124';
DELETE FROM gameobject WHERE guid = '14127';
DELETE FROM game_event_gameobject WHERE guid = '14127';
DELETE FROM gameobject_battleground WHERE guid = '14127';
DELETE FROM gameobject WHERE guid = '14142';
DELETE FROM game_event_gameobject WHERE guid = '14142';
DELETE FROM gameobject_battleground WHERE guid = '14142';
-- Anubisath Sentinel Position Adjustment --
UPDATE creature SET position_x = '-8159.728027', position_y = '2145.341309', position_z = '129.582779', orientation = '3.473037' WHERE guid = '87570';
UPDATE creature SET position_x = '-8156.620605', position_y = '2119.613770', position_z = '129.114990', orientation = '3.174591' WHERE guid = '87571';
-- Adds missing Obsidian Eradicator -- 
INSERT INTO creature VALUES (590011,15262,531,0,0,-8277.51,2117.84,118.176,0.261538,25,0,0,170805,24340,0,0);
UPDATE creature SET spawntimesecs=3600 WHERE guid=590011;
-- Corrects 2 slanted Sentinels next to Skeram --
UPDATE creature SET position_x = '-8317.698242', position_y = '2134.262451', position_z = '118.550896', orientation = '0.410774' WHERE guid = '87564';
UPDATE creature SET position_x = '-8314.269531', position_y = '2114.679932', position_z = '118.272003', orientation = '0.204999' WHERE guid = '87565';
