-- Quest 'Deviate Hides'
-- https://www.wowhead.com/tbc/quest=1486/deviate-hides
-- should be available for both Factions, was Horde Only before
-- Before: RequiredRaces = 690 Horde Quest (Until Cata)
-- remaining vmangos "255" value quests to doublecheck, there is a cherrypick commit for this: 1,2868,3911,4299,5383,7462,7487,8302,8314,8900,8901,8905,8906,8909,8910,8911,8912,8931,8932,8933,8934,8935,8937,8938,8940,8941,8944,8948,8949,8962,8964,8965,8966,8967,8968,8969,8973,8985,8988,8989,8990,8991,8992,9000,9001,9004,9006,9008,9010,9011,9012,9013,9030,9065,9378,9556
-- https://github.com/cmangos/issues/wiki/Quest_template#requiredraces - for cross repo porting
UPDATE quest_template SET RequiredRaces = '255' WHERE entry = '1486';

