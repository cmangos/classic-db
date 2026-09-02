-- Repopulate CREATOR_LOOT creature_loot_template
UPDATE `creature_template` SET `LootId` = `entry` WHERE `entry` IN (
2673, -- Target Dummy
2674, -- Advanced Target Dummy
2676, -- Compact Harvest Reaper
12426); -- Masterwork Target Dummy

DELETE FROM `creature_loot_template` WHERE `entry` IN (2673,2674,2676,12426);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- https://www.wowhead.com/classic/item=4366/target-dummy#comments:id=5969944
-- https://www.wowhead.com/classic/item=4366/target-dummy#comments:id=3150920:reply=1331957
-- https://www.wowhead.com/classic/npc=2673/target-dummy
-- https://www.wowhead.com/classic/npc=2676/compact-harvest-reaper#comments:id=2897471:reply=1234767
(2673, 4363, 50, 0, 1, 1, 0, 'Copper Modulator'),
(2673, 4359, 80, 0, 1, 1, 0, 'Handful of Copper Bolts'),
(2673, 2841, 70, 0, 1, 1, 0, 'Bronze Bar'),
(2673, 2592, 5, 0, 1, 1, 0, 'Wool Cloth'), -- https://www.wowhead.com/classic/item=4366/target-dummy#comments:id=2682180
(2673, 2589, 75, 0, 1, 1, 0, 'Linen Cloth'),
(2673, 7191, 10, 0, 1, 1, 0, 'Fused Wiring'), -- https://www.wowhead.com/classic/item=4366/target-dummy#comments:id=5062
-- https://www.wowhead.com/classic/item=4392/advanced-target-dummy#comments:id=5972756
-- https://www.wowhead.com/classic/npc=2674/advanced-target-dummy
-- https://www.wowhead.com/classic/npc=2676/compact-harvest-reaper#comments:id=2897471:reply=1234767
(2674, 4387, 60, 0, 1, 1, 0, 'Iron Strut'), -- 2674, 4387, 60, 0, 1, 1, 0, Iron Strut
(2674, 4382, 60, 0, 1, 1, 0, 'Bronze Framework'), -- 2674, 4382, 70, 0, 1, 1, 0, Bronze Framework
(2674, 4389, 60, 0, 1, 1, 0, 'Gyrochronatom'), -- 2674, 4389, 60, 0, 1, 1, 0, Gyrochronatom
(2674, 4234, 75, 0, 1, 3, 0, 'Heavy Leather'), -- 2674, 4234, 90, 0, 2, 2, 0, Heavy Leather
(2674, 7191, 25, 0, 1, 1, 0, 'Fused Wiring'), -- 2674, 7191, 10, 0, 1, 1, 0, Fused Wiring -> https://www.wowhead.com/classic/item=4366/target-dummy#comments:id=2682079
-- https://www.wowhead.com/classic/npc=2676/compact-harvest-reaper
-- https://www.wowhead.com/classic/item=4391/compact-harvest-reaper-kit#comments:id=2719346
(2676, 4387, 75, 0, 1, 2, 0, 'Iron Strut'),
(2676, 4382, 50, 0, 1, 1, 0, 'Bronze Framework'),
(2676, 4389, 75, 0, 1, 2, 0, 'Gyrochronatom'),
(2676, 4234, 75, 4, 1, 3, 0, 'Heavy Leather'),
(2676, 7191, 20, 0, 1, 1, 0, 'Fused Wiring'),
-- https://www.wowhead.com/classic/npc=12426/masterwork-target-dummy
-- https://www.wowhead.com/classic/item=16023/masterwork-target-dummy#comments:id=5975373
-- https://www.wowhead.com/classic/item=16023/masterwork-target-dummy#comments:id=2701485
-- https://www.wowhead.com/classic/spell=19814/masterwork-target-dummy#comments:id=15081
(12426, 16000, 40, 0, 1, 1, 0, 'Thorium Tube'),
(12426, 6037, 40, 0, 1, 1, 0, 'Truesilver Bar'),
(12426, 10561, 40, 0, 1, 1, 0, 'Mithril Casing'),
(12426, 15994, 75, 0, 1, 2, 0, 'Thorium Widget'),
(12426, 8170, 100, 0, 1, 2, 0, 'Rugged Leather'),
(12426, 7191, 40, 0, 1, 1, 0, 'Fused Wiring');

