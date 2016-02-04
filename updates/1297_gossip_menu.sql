-- Added missing alternate gossip texts from rogue, priest and shaman trainers
-- used when player is not from the required class
-- based on light versions of commits https://github.com/unified-db/Database/commit/bfb080cc2d3b0debdce9998a0e0856160c1a5fe6
-- https://github.com/unified-db/Database/commit/16d7790faff3827f3085d2fb7c09c1f58bbee200
-- and https://github.com/unified-db/Database/commit/76fd8bc65c61cbacded4de5401fd6db8baaf9190 by @Grz3s


-- ------------------------
-- rogue trainers gossips
-- ------------------------

SET @CID := 16; -- condition : is rogue

-- Rwag c.3155
UPDATE gossip_menu SET text_id = 638 WHERE entry = 141 AND text_id = 4794;

-- Shenthul c.3401
DELETE FROM gossip_menu WHERE entry = 50199; -- source TC - not sure if its correct
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(50199, 1124, 0, 1024), -- Rogue
(50199, 1038, 0, @CID),
(50199, 4793, 0, 25);
DELETE FROM gossip_menu_option WHERE menu_id = 50199;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(50199, 0, 3, 'Can you train me how to use rogue skills?', 5, 16, 0, 0, 0, 0, 0, NULL, 16),
(50199, 4, 0, '<Take the letter>', 1, 1, -1, 0, 5, 0, 0, NULL, 196),
(50199, 1, 0, 'I wish to unlearn my talents.', 1, 1, 4461, 0, 0, 0, 0, NULL, 136);

-- Carolyn Ward c.4582
DELETE FROM gossip_menu WHERE entry = 4542 AND text_id = 581;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4542, 581, 0, @CID); -- Rogue
DELETE FROM gossip_menu_option WHERE menu_id = 4542;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4542, 0, 3, 'an you train me how to use rogue skills?', 5, 16, 0, 0, 0, 0, 0, NULL, 16),
(4542, 4, 0, '<Take the letter>', 1, 1, -1, 0, 5, 0, 0, NULL, 196),
(4542, 1, 0, 'I wish to unlearn my talents.', 1, 1, 4461, 0, 0, 0, 0, NULL, 136);

-- Miles Dexter c.4583
DELETE FROM gossip_menu WHERE entry = 4540 AND text_id = 581;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4540, 581, 0, @CID); -- Rogue
DELETE FROM gossip_menu_option WHERE menu_id = 4540;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4540, 0, 3, 'an you train me how to use rogue skills?', 5, 16, 0, 0, 0, 0, 0, NULL, 16),
(4540, 4, 0, '<Take the letter>', 1, 1, -1, 0, 5, 0, 0, NULL, 196),
(4540, 1, 0, 'I wish to unlearn my talents.', 1, 1, 4461, 0, 0, 0, 0, NULL, 136);

-- Gregory Charles c.4584
DELETE FROM gossip_menu WHERE entry = 4541 AND text_id = 581;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4541, 581, 0, @CID); -- Rogue
DELETE FROM gossip_menu_option WHERE menu_id = 4541;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4541, 0, 3, 'an you train me how to use rogue skills?', 5, 16, 0, 0, 0, 0, 0, NULL, 16),
(4541, 4, 0, '<Take the letter>', 1, 1, -1, 0, 5, 0, 0, NULL, 196),
(4541, 1, 0, 'I wish to unlearn my talents.', 1, 1, 4461, 0, 0, 0, 0, NULL, 136);

-- Ormyr Flinteye c.5166
DELETE FROM gossip_menu WHERE entry = 4562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4562, 4834, 0, @CID), -- Rogue
(4562, 4833, 0, 0);


-- ------------------------
-- priest trainers gossips
-- ------------------------

SET @CID := 112; -- condition : is priest

-- High Priestess Laurena c.376
DELETE FROM gossip_menu WHERE entry = 4666 AND text_id = 4433;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4666, 4433, 0, @CID); -- Priest

-- Branstock Khalder c.837
-- Maxan Anvol c.1226
-- Theodrus Frostbeard c.5141
-- Braenna Flintcrag c.5142
-- Toldren Deepiron c.5143
DELETE FROM gossip_menu WHERE entry = 4680 AND text_id = 4436;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4680, 4436, 0, @CID); -- Priest

-- Dark Cleric Duesten c.2123
DELETE FROM gossip_menu WHERE entry = 3645;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3645, 4439, 0, 0),
(3645, 4442, 0, @CID);
DELETE FROM gossip_menu_option WHERE menu_id = 3645;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('3645','0','3','Train me.','5','16','0','0','0','0','0','','0'),
('3645','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');

-- Miles Welsh c.3044
-- Malakai Cross c.3045
-- Father Cobb c.3046
-- Aelthalyste c.4606
UPDATE gossip_menu SET text_id = 4439 WHERE entry IN (4533, 4531, 4532, 4544) AND text_id = 4437;

-- Shanda c.3595
-- Laurna Morninglight c.3600
-- Astarii Starseeker c.4090
-- Jandria c.4091
-- Lariia c.4092
DELETE FROM gossip_menu WHERE entry = 4691 AND text_id = 4438;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4691, 4438, 0, @CID); -- Priest
UPDATE gossip_menu_option SET option_text = 'I would like to train further in the ways of the Light.' WHERE menu_id = 4691 AND id = 0;

-- Tai'jin c.3706
-- Ken'jai c.3707
DELETE FROM gossip_menu WHERE entry = 3644 AND text_id = 4441;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3644, 4441, 0, @CID); -- Priest

-- Father Lankester c.4607
DELETE FROM gossip_menu WHERE entry = 4545;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4545, 4439, 0, 0),
(4545, 4442, 0, @CID);
DELETE FROM gossip_menu_option WHERE menu_id = 4545;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4545','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4545','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');

-- Father Lazarus c.4608
DELETE FROM gossip_menu WHERE entry = 4543;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4543, 4439, 0, 0),
(4543, 4442, 0, @CID);
DELETE FROM gossip_menu_option WHERE menu_id = 4543;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4543','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4543','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');

-- Brother Benjamin c.5484
DELETE FROM gossip_menu WHERE entry = 4468 AND text_id = 4433;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4468, 4433, 0, @CID); -- Priest

-- Brother Joshua c.5489
DELETE FROM gossip_menu WHERE entry = 4666 AND text_id = 4433;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4666, 4433, 0, @CID); -- Priest

-- Nara Meideros c.11397
DELETE FROM gossip_menu WHERE entry = 3643;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3643, 4437, 0, 0),
(3643, 4438, 0, @CID);

-- Priestess Alathea c.11401
DELETE FROM gossip_menu WHERE entry = 4691;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4691, 4437, 0, 0),
(4691, 4438, 0, @CID);

-- High Priest Rohan c.11406
DELETE FROM gossip_menu WHERE entry = 3642 AND text_id = 4436;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3642, 4436, 0, @CID); -- Priest


-- ------------------------
-- shaman trainers gossips
-- ------------------------

SET @CID := 17; -- condition : is shaman

-- Haromm c.986
UPDATE gossip_menu_option SET option_text = 'Teach me the ways of the spirits.' WHERE menu_id = 4104 AND id = 0;

-- Siln Skychaser c.3030
DELETE FROM gossip_menu WHERE entry = 4528;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4528, 5005, 0, @CID), -- Shaman
(4528, 5006, 0, 0);

-- Tigor Skychaser c.3031
DELETE FROM gossip_menu WHERE entry = 4530;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4530, 5005, 0, @CID), -- Shaman
(4530, 5006, 0, 0);

-- Beram Skychaser c.3032
DELETE FROM gossip_menu WHERE entry = 4529;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4529, 5005, 0, @CID), -- Shaman
(4529, 5006, 0, 0);

-- Meela Dawnstrider c.3062
-- Narm Skychaser c.3066
DELETE FROM gossip_menu WHERE entry = 4103;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4103, 5005, 0, @CID), -- Shaman
(4103, 5006, 0, 0);

-- Swart c.3173
DELETE FROM gossip_menu WHERE entry = 4104;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4104, 5005, 0, @CID), -- Shaman
(4104, 5006, 0, 0);

-- Kardris Dreamseeker c.3344
DELETE FROM gossip_menu WHERE entry = 4516;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4516, 5005, 0, @CID), -- Shaman
(4516, 5006, 0, 0);

-- Sian'tsu c.3403
DELETE FROM gossip_menu WHERE entry = 4515;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4515, 5007, 0, @CID), -- Shaman
(4515, 5008, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4515;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4515','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4515','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Sagorne Creststrider c.13417
DELETE FROM gossip_menu WHERE entry = 5123;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5123, 5005, 0, @CID), -- Shaman
(5123, 5006, 0, 0);
