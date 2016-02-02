-- Added missing alternate gossip texts from warrior, paladin and hunters
-- used when player is not from the required class
-- based on lght versions of commits https://github.com/unified-db/Database/commit/582b9631d4359f549721726d26a8d91663f882a2
-- https://github.com/unified-db/Database/commit/de53b9e2b97c1a07e3d6c2d6abcbd49a7362e515
-- and https://github.com/unified-db/Database/commit/605ee65c0c22e516b016fbe6b75904d0142f21d5 by @Grz3s


-- ------------------------
-- warrior trainers gossips
-- ------------------------

SET @CID := 13; -- condition : is warrior

-- Llane Beshere c.911
DELETE FROM gossip_menu WHERE entry = 4650 AND text_id = 1216;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4650, 1216, 0, @CID); -- warrior only

-- Thran Khorman c.912
DELETE FROM gossip_menu WHERE entry = 4684;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4684, 1215, 0, @CID); -- warrior only

-- Lyria Du Lac   c.913
-- Ander Germaine c.914
DELETE FROM gossip_menu WHERE entry = 4649 AND text_id = 1216;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4649, 1216, 0, @CID); -- warrior only

-- Granis Swiftaxe c.1229
DELETE FROM gossip_menu WHERE entry = 4683 AND text_id = 1215;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4683, 1215, 0, @CID); -- warrior only

-- Kelstrum Stonebreaker c.1901
DELETE FROM gossip_menu WHERE entry = 4569;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4569, 5724, 0, 0), -- all 
(4569, 1215, 0, @CID); -- warrior only

-- Torm Ragetotem c.3041
DELETE FROM gossip_menu WHERE entry = 4526 AND text_id = 1218;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4526, 1218, 0, @CID); -- warrior only

-- Sark Ragetotem c.3042
DELETE FROM gossip_menu WHERE entry = 4525 AND text_id = 1218;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4525, 1218, 0, @CID); -- warrior only

-- Ker Ragetotem c.3043
DELETE FROM gossip_menu WHERE entry = 4527 AND text_id = 1218;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4527, 1218, 0, @CID); -- warrior only

-- Harutt Thunderhorn c.3059
DELETE FROM gossip_menu WHERE entry = 4645 AND text_id = 1218;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4645, 1218, 0, @CID); -- warrior only

-- Krang Stonehoof c.3063
DELETE FROM gossip_menu WHERE entry = 655 AND text_id = 1218;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(655, 1218, 0, @CID); -- warrior only

-- Grezz Ragefist c.3353
DELETE FROM gossip_menu WHERE entry = 4509;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4509, 4985, 0, 0), -- all 
(4509, 1040, 0, @CID); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4509;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4509,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4509,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);

-- Sorek c.3354
DELETE FROM gossip_menu WHERE entry = 4511;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4511, 4985, 0, 0), -- all 
(4511, 1040, 0, @CID); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4511;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4511,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4511,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);

-- Alyissia c.3593
UPDATE gossip_menu SET condition_id = @CID WHERE entry = 4697 AND text_id = 1217;

-- Christoph Walker c.4593
DELETE FROM gossip_menu WHERE entry = 4548;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4548, 4984, 0, 0), -- all 
(4548, 1219, 0, @CID); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4548;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4548,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4548,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);

-- Angela Curthas c.4594
DELETE FROM gossip_menu WHERE entry = 4546 AND text_id = 1219;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4546, 1219, 0, @CID); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4546;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4546,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4546,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);

-- Baltus Fowler c.4595
DELETE FROM gossip_menu WHERE entry = 4547 AND text_id = 1219;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4547, 1219, 0, @CID); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4547;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4547,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4547,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);

-- Kelv Sternhammer c.5113
DELETE FROM gossip_menu WHERE entry = 4570 AND text_id = 1217;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4570, 1217, 0, @CID); -- warrior only

-- Bilban Tosslespanner c.5114
DELETE FROM gossip_menu WHERE entry = 4568;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4568, 4988, 0, 0), -- all 
(4568, 4989, 0, @CID); -- warrior only

-- Wu Shen c.5479
DELETE FROM gossip_menu WHERE entry = 4482 AND text_id = 1216;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4482, 1216, 0, @CID); -- warrior only

-- Ilsa Corbin c.5480
DELETE FROM gossip_menu WHERE entry = 4481 AND text_id = 1216;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4481, 1216, 0, @CID); -- warrior only


-- ------------------------
-- paladin trainers gossips
-- ------------------------

SET @CID := 14;

-- Brother Sammuel c.925
DELETE FROM gossip_menu WHERE entry = 4663 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4663, 3977, 0, 0);

-- Brother Wilhelm c.927
DELETE FROM gossip_menu WHERE entry = 4664 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4664, 3977, 0, 0);

-- Lord Grayson Shadowbreaker c.928
DELETE FROM gossip_menu WHERE entry = 4471 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4471, 3977, 0, 0);

-- Azar Stronghammer c.1232
DELETE FROM gossip_menu WHERE entry = 4677;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4677, 3974, 0, @CID), -- Paladin 
(4677, 3975, 0, 0);

-- Brandur Ironhammer c.5149
DELETE FROM gossip_menu WHERE entry = 2304;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2304, 3974, 0, @CID), -- Paladin 
(2304, 3975, 0, 0);

-- Arthur the Faithful c.5491
DELETE FROM gossip_menu WHERE entry = 4469 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4469, 3977, 0, 0);

-- Katherine the Pure c.5492
DELETE FROM gossip_menu WHERE entry = 4470 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4470, 3977, 0, 0);

-- Brother Karman c.8140
DELETE FROM gossip_menu WHERE entry = 4662 AND text_id = 3977;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4662, 3977, 0, 0);


-- ------------------------
-- hunter trainers gossips
-- ------------------------

SET @CID := 15;

-- Kragg c.1404
DELETE FROM gossip_menu WHERE entry = 4657 AND text_id = 5001;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4657, 5001, 0, @CID); -- hunter

-- Kary Thunderhorn c.3038
DELETE FROM gossip_menu WHERE entry = 4011 AND text_id = 4867;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4011, 4867, 0, @CID); -- hunter

-- Holt Thunderhorn c.3039
DELETE FROM gossip_menu WHERE entry = 4023 AND text_id = 4868;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4023, 4868, 0, @CID); -- hunter    

-- Urek Thunderhorn c.3040
DELETE FROM gossip_menu WHERE entry = 4524 AND text_id = 4997;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4524, 4997, 0, @CID); -- hunter

-- Yaw Sharpmane c.3065
DELETE FROM gossip_menu WHERE entry = 4012 AND text_id = 4868;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4012, 4868, 0, @CID); -- hunter

-- Jen'shan c.3154
DELETE FROM gossip_menu WHERE entry = 4648;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4648, 4987, 0, @CID), -- hunter
(4648, 5004, 0, 0);

-- Thotar c.3171
DELETE FROM gossip_menu WHERE entry = 4017;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4017, 4888, 0, @CID), -- hunter
(4017, 4998, 0, 0);

-- Ormak Grimshot c.3352
DELETE FROM gossip_menu WHERE entry = 4010 AND text_id = 4866;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4010, 4866, 0, @CID); -- hunter

-- Xor'juul c.3406
-- Sian'dur c.3407
DELETE FROM gossip_menu WHERE entry = 4506 AND text_id = 4987;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4506, 4987, 0, @CID); -- hunter

-- Ayanna Everstride c.3596
DELETE FROM gossip_menu WHERE entry = 4695;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4695, 4863, 0, @CID), -- hunter
(4695, 4993, 0, 0);

-- Jocaste c.4146
DELETE FROM gossip_menu WHERE entry = 4008 AND text_id = 4863;
INSERT INTO `gossip_menu` VALUES
(4008, 4863, 0, @CID); -- hunter

-- Daera Brightspear c.5115
DELETE FROM gossip_menu WHERE entry = 4549;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4549, 4999, 0, @CID), -- hunter    
(4549, 5000, 0, 0);

-- Olmin Burningbeard c.5116
DELETE FROM gossip_menu WHERE entry = 4550;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4550, 4890, 0, @CID), -- hunter    
(4550, 5000, 0, 0);

-- Regnus Thundergranite c.5117
DELETE FROM gossip_menu WHERE entry = 4551;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4551, 4999, 0, @CID), -- hunter    
(4551, 5000, 0, 0);

-- Einris Brightspear c.5515
DELETE FROM gossip_menu WHERE entry = 4474;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4474, 4893, 0, @CID), -- hunter    
(4474, 5000, 0, 0);
