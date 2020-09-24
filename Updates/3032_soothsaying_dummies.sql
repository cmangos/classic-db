-- It seems that in Classic, switching Leatherworking specialization was also done this way? May be valid for TBC as well instead of the current options on the specialty trainers.
-- Some temporary npc text IDs are used here as we don't know the real ones.

-- 3639 Show Your Work (Goblin, both factions)
-- 3641 Show Your Work (Gnomish, Alliance)
-- 3643 Show Your Work (Gnomish, Horde)

DELETE FROM npc_text WHERE id=8321;
DELETE FROM npc_text_broadcast_text WHERE Id IN (8321,50001);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(8321, 1, 11874),
(50001, 1, 11875);
DELETE FROM gossip_menu WHERE entry=7058 AND text_id=50001;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
-- 7058, 8321 (shown when player has no relevant professions?)
(7058, 50001, 0, 11004); -- if able to unlearn/learn Engineering specialization?

DELETE FROM gossip_menu_option WHERE menu_id=7058;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
-- Can't unlearn spec in Classic/TBC - have to drop Engineering entirely and level it again from 1
-- (7058,0,0,'I wish to unlearn my Gnomish Engineering specialization!',36143,1,0,-1,0,0,0,1500000,'Do you really want to unlearn your Gnomish Engineering specialization and lose all associated recipes?',36144,169),
-- (7058,1,0,'I wish to unlearn my Goblin Engineering specialization!',36146,1,0,-1,0,0,0,1500000,'Do you really want to unlearn your Goblin Engineering specialization and lose all associated recipes?',36145,170),
(7058,2,0,'I am 100% confident that I wish to learn in the ways of gnomish engineering.',11878,1,0,-1,0,705801,0,0,'',0,11004),
(7058,3,0,'I am 100% confident that I wish to learn in the ways of goblin engineering.',11876,1,0,-1,0,705802,0,0,'',0,11004);

DELETE FROM conditions WHERE condition_entry IN (10994,10995,10996,10997,10998,10999,11000,11001,11002,11003,11004);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
-- 169 Player Has Learned Spell: 20219 (Gnomish Engineering)
-- 170 Player Has Learned Spell: 20222 (Goblin Engineering)
(10994, 8, 3639, 0, 'Quest ID 3639 Rewarded'),
(10995, 8, 3641, 0, 'Quest ID 3641 Rewarded'),
(10996, 8, 3643, 0, 'Quest ID 3643 Rewarded'),
(10997, 7, 202, 225, 'Has Skill ID 202, Minimum Skill Value 225'),
(10998, -2, 10995, 10996, '(Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded)'),
(10999, 17, 20219, 1, 'NOT Player Has Learned Spell: 20219'),
(11000, 17, 20222, 1, 'NOT Player Has Learned Spell: 20222'),
(11001, -1, 10999, 11000, 'NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222'),
(11002, -2, 10994, 10998, 'Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded)'),
(11003, -1, 11001, 11002, '(NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222) AND (Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded))'),
(11004, -1, 11003, 10997, '((NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222) AND (Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded))) AND Has Skill ID 202, Minimum Skill Value 225');

DELETE FROM dbscripts_on_gossip WHERE id IN (705801,705802);
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(705801, 0, 0, 15, 20220, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Gnomish Engineering'),
(705802, 0, 0, 15, 20221, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Goblin Engineering');
