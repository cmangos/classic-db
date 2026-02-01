-- https://github.com/vmangos/core/commit/340fae868c392d5b1691f103885f7cee58537ec1
-- condition overwritten by mistake in https://github.com/cmangos/classic-db/blob/master/Updates/4642_TDB-0418_VDB-20220917141705_world.sql#L238
-- 831	-1	812	821	0	0	0	(Has Minimum Rank Exalted With Faction ID: 68 AND Player RaceMask: 162) - 812 was overwritten
DELETE FROM `conditions` WHERE `condition_entry` = 830 AND `value1` = 68;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(830, 5, 68, 7, 0, 0, 0, 'Has Minimum Rank Exalted With Faction ID: 68');

UPDATE `conditions` SET `value1` = 830 WHERE `value1` = 812 AND `condition_entry` = 831;

