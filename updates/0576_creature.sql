-- Fixed spawn time of trash mobs in Molten Core
-- Source:  http://leftoversraiding.org/index.php/topic/725/1/molten-core-summary---pt.-1-%28intro-trash%29.html

UPDATE `creature` SET `spawntimesecs` = (18 * 60) WHERE `id` = 11673; -- Ancient core hound
UPDATE `creature` SET `spawntimesecs` = (30 * 60) WHERE `id` = 12101; -- Lava Surger
UPDATE `creature` SET `spawntimesecs` = (12 * 60 * 60) WHERE `id` IN (11658, 11659); -- Molten Giant / Destroyer
UPDATE `creature` SET `spawntimesecs` = (2 * 60 * 60) WHERE `id` IN (11668, 11665); -- Firelord / Lava Annihilator
UPDATE `creature` SET `spawntimesecs` = (60 * 60) WHERE `id`=  11671; -- Core Hound
UPDATE `creature` SET `spawntimesecs` = (2 * 60 * 60) WHERE `id` IN (11666, 11667, 12076, 12100); -- Firewalker, Flameguard, Lava Reaver, Lava Elemental
