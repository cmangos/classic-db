DELETE FROM dbscripts_on_gossip WHERE id IN (2387);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2387, 1, 9, 47578, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gossip Menu 2387 - Wooden Outhouse (173265) - Respawn Goodsteel Ledger (173266) for 20 sec');

UPDATE gossip_menu_option SET action_menu_id=2386, action_script_id=2387, condition_id=3715 WHERE menu_id=2387; -- action_menu_id is 2388 instead in Nost (currently nonexistent, so we'll use existing menu 2386)

DELETE FROM conditions WHERE condition_entry IN (3713,3714,3715);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3713, 9, 4450, 0, 'Quest ID 4450 Taken'), -- Ledger from Tanaris
(3714, 24, 11727, 1, 'Player Has Less Than 1 of Item ID 11727 in Inventory/Bank'), -- Goodsteel Ledger
(3715, -1, 3714, 3713, '');
