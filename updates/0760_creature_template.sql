-- Fixed scale of Crushridge ogres in Ruins of Alterac. Author: Metalica
-- This closes #604
-- Sources: https://www.youtube.com/watch?v=IyWdCSGjP7Q
-- https://www.youtube.com/watch?v=KcB201DV73I
UPDATE `creature_template` SET `scale` = 1.75 WHERE `Entry` = 2287; -- Crushridge Warmonger
UPDATE `creature_template` SET `scale` = 2.0 WHERE `Entry` = 2257; -- Mug'Thol
UPDATE `creature_template` SET `scale` = 2.0 WHERE `Entry` = 2420; -- Targ
UPDATE `creature_template` SET `scale` = 1.7 WHERE `Entry` = 2421; -- Muckrake
UPDATE `creature_template` SET `scale` = 1.5 WHERE `Entry` = 2254; -- Crushridge Mauler
