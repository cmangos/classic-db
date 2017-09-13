-- Add proper conditions for getting Replacement Phial q.3375
-- http://www.wowhead.com/quest=3375/replacement-phial#comments:id=427683
-- Also made the quest repeatable
-- Note that the comment states the quest becomes unavailable after completing q.2361, but I believe that is incorrect since the last quest to use the Scrying Bowl is q.2204 (with the same name)
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1387 AND 1394;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(1387, 9, 2200, 0), -- Back to Uldaman accepted
(1388, 8, 2200, 0), -- Back to Uldaman rewarded
(1389, 8, 2204, 0), -- Restoring the Necklace rewarded
(1390, 24, 7667, 1), -- Player does not own item 7667
(1391, -3, 1389, 0), -- Restoring the Necklace NOT rewarded
(1392, -2, 1387, 1388), -- Back to Uldaman accepted OR rewarded
(1393, -1, 1391, 1392), -- (Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)
(1394, -1, 1393, 1390); -- ((Restoring the Necklace NOT rewarded) AND (Back to Uldaman accepted OR rewarded)) AND Player does not own item 7667

UPDATE quest_template SET PrevQuestId=0, SpecialFlags=1, RequiredCondition=1394 WHERE entry=3375;
