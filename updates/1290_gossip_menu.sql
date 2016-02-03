-- Added missing alternate gossip texts from mage, warlock and druid trainers
-- used when player is not from the required class
-- based on light versions of commits https://github.com/unified-db/Database/commit/6fd45fc0178a35d96dab8dcffb34c253c0648f53
-- https://github.com/unified-db/Database/commit/7bfbcde4e1eaeb2e767092f8714d5477b08e032a
-- and https://github.com/unified-db/Database/commit/226c18e1905b36aa5288edddf3da32acb590f4e7 by @Grz3s


-- ------------------------
-- mage trainers gossips
-- ------------------------

SET @CID := 18; -- condition : is mage

-- Marryk Nurribit c.944
-- Bink c.5144
-- Nittlebur Sparkfizzle c.5146
DELETE FROM gossip_menu WHERE entry = 4552 AND text_id = 560;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4552, 560, 0, @CID); -- Mage

-- Magis Sparkmantle c.1228
DELETE FROM gossip_menu WHERE entry = 4685;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4685, 560, 0, @CID), -- Mage
(4685, 561, 0, 0);

-- Isabella c.2124
DELETE FROM gossip_menu WHERE entry = 4654 AND text_id = 562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4654, 562, 0, @CID); -- Mage

-- Archmage Shymm c.3047
DELETE FROM gossip_menu WHERE entry = 4534 AND text_id = 562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4534, 562, 0, @CID); -- Mage

-- Kaelystia Hatebringer c.4566
DELETE FROM gossip_menu WHERE entry = 4539 AND text_id = 562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4539, 562, 0, @CID); -- Mage

-- Pierce Shackleton c.4567
DELETE FROM gossip_menu WHERE entry = 4538 AND text_id = 562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4538, 562, 0, @CID); -- Mage

-- Anastasia Hartwell c.4568
DELETE FROM gossip_menu WHERE entry = 4537 AND text_id = 562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4537, 562, 0, @CID); -- Mage

-- Un'Thuwa c.5880
-- Pephredo c.5882
-- Enyo c.5883
-- Mai'ah c.5884
-- Deino c.5885
-- Uthel'nay c.7311
DELETE FROM gossip_menu WHERE entry = 64 AND text_id = 564;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(64, 564, 0, @CID); -- Mage


-- ------------------------
-- warlock trainers gossips
-- ------------------------

SET @CID := 19; -- condition : is warlock

-- Alamar Grimm c.460
DELETE FROM gossip_menu WHERE entry = 4681 AND text_id = 2193;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4681, 2193, 0, @CID); -- Warlock

-- Demisette Cloyce c.461
DELETE FROM gossip_menu WHERE entry = 4503;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4503, 5722, 0, 0),
(4503, 5693, 0, @CID);  -- Warlock

-- Dhugru Gorelust c.3172
DELETE FROM gossip_menu WHERE entry = 4641 AND text_id = 5714;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4641, 5714, 0, @CID); -- Warlock

-- Kaal Soulreaper c.4563
DELETE FROM gossip_menu WHERE entry = 2383 AND text_id = 5714;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2383, 5714, 0, @CID); -- Warlock

-- Luther Pickman c.4564
DELETE FROM gossip_menu WHERE entry = 4609;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4609, 5719, 0, @CID); -- Warlock

-- Ursula Deline c.5495
DELETE FROM gossip_menu WHERE entry = 4505;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4505, 5722, 0, 0),
(4505, 5693, 0, @CID);  -- Warlock

-- Sandahl c.5496
DELETE FROM gossip_menu WHERE entry = 4504;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4504, 5722, 0, 0),
(4504, 5693, 0, @CID);  -- Warlock

-- Gimrizz Shadowcog c.5612
DELETE FROM gossip_menu WHERE entry = 4682 AND text_id = 2193;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4682, 2193, 0, @CID); -- Warlock


-- ------------------------
-- druid trainers gossips
-- ------------------------

SET @CID := 21; -- condition : is druid

-- Sheal Runetotem c.3034
DELETE FROM gossip_menu WHERE entry = 4606 AND text_id = 5716;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4606, 5716, 0, @CID); -- Druid

-- Kym Wildmane c.3036
DELETE FROM gossip_menu WHERE entry = 4607 AND text_id = 5716;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4607, 5716, 0, @CID); -- Druid

-- Gennia Runetotem c.3064
DELETE FROM gossip_menu WHERE entry = 3926 AND text_id = 4786;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3926, 4786, 0, @CID); -- Druid

-- Mardant Strongoak c.3597
DELETE FROM gossip_menu WHERE entry = 4688 AND text_id = 4784;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4688, 4784, 0, @CID); -- Druid

-- Fylerian Nightwing c.4219
DELETE FROM gossip_menu WHERE entry = 4571 AND text_id = 4782;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4571, 4782, 0, @CID); -- Druid

-- Sheldras Moontree c.5504
DELETE FROM gossip_menu WHERE entry = 4508;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4508, 5694, 0, @CID), -- Druid
(4508, 4783, 0, 0);

-- Theridran c.5505
DELETE FROM gossip_menu WHERE entry = 3925;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3925, 4784, 0, @CID), -- Druid
(3925, 4783, 0, 0);

-- Maldryn c.5506
DELETE FROM gossip_menu WHERE entry = 4507;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4507, 5694, 0, @CID), -- Druid
(4507, 4783, 0, 0);

-- Jannos Lighthoof c.8142
DELETE FROM gossip_menu WHERE entry = 4646 AND text_id = 5716;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4646, 5716, 0, @CID); -- Druid

-- Golhine the Hooded c.9465
DELETE FROM gossip_menu WHERE entry = 4605;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4605, 4784, 0, @CID), -- Druid
(4605, 4780, 0, 0);

-- Loganaar c.12042
DELETE FROM gossip_menu WHERE entry = 4687;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4687, 4784, 0, @CID), -- Druid
(4687, 4783, 0, 0);
