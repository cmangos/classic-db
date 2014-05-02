-- Updated drop conditions of item 7741 (The Shaft of Tsol) in Uldaman as the item was previously undroppable:
-- its drop condition was having completed a quest the item is used for in order to complete so the condition
-- could never be true
DELETE FROM `conditions` WHERE `condition_entry` IN (327, 328);
INSERT INTO `conditions` VALUES
(327, 9, 2240, 0), -- Player has taken quest 2240 (Hidden Chamber)
(328, -2, 327, 324); -- Player has taken or completed quest 2240

UPDATE `creature_loot_template` SET `condition_id` = 328 WHERE `item` = 7741;
