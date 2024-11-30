-- Diff auras with tbcmangos based on sniff due to spell_list removing ACID Scripts
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 30;
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 43;
UPDATE `creature_template_addon` SET `auras` = '7165' WHERE `entry` = 48; -- 7165 (21156 core applied)
UPDATE `creature_template_addon` SET `auras` = '19483' WHERE `entry` = 89; -- core applied too
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 99;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 217; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 434; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 442; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 446; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '11919' WHERE `entry` = 471;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 506; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 539; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 569; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 572; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 574; -- 3583 manually casted, not s.10022
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 616; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 678; -- 5164 manually casted, not s.7095
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (723, 0, 0, 1, 0, 0, '3417');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 729; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 769; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '3637' WHERE `entry` = 814; -- doesnt have s.18146
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 858; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 920; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 930; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '3637' WHERE `entry` = 937;
UPDATE `creature_template_addon` SET `auras` = '3284' WHERE `entry` = 978;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1026; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1035; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '643 3418' WHERE `entry` = 1036;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1038; -- 643 applied through npc 1036
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1041; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1117; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1178; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '7165' WHERE `entry` = 1179; -- 7165 (21156 core applied)
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1184; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1185; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1195; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 1353;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1504; -- 6751 manually casted, not s.6752
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1505; -- 6751 manually casted, not s.6752
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1555; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1565; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 1688;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1780; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1781; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1821; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '10022' WHERE `entry` = 1822;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1953; -- 6866 manually casted, not s.6867
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1954; -- 6866 manually casted, not s.6867
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1955; -- 6870 manually casted, not s.6871
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 1956; -- 6870 manually casted, not s.6871
UPDATE `creature_template_addon` SET `auras` = '7667' WHERE `entry` = 1971;
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 1998;
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 1999;
UPDATE `creature_template_addon` SET `auras` = '3418' WHERE `entry` = 2090;
UPDATE `creature_template_addon` SET `auras` = '5811' WHERE `entry` = 2156;
UPDATE `creature_template_addon` SET `auras` = '5811' WHERE `entry` = 2157;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2186; -- 3391 manually casted, not s.8876
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 2189;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2241; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '7276' WHERE `entry` = 2260;
UPDATE `creature_template_addon` SET `auras` = '3582' WHERE `entry` = 2261;
UPDATE `creature_template_addon` SET `auras` = '3418' WHERE `entry` = 2268;
UPDATE `creature_template_addon` SET `auras` = '3284' WHERE `entry` = 2271;
UPDATE `creature_template_addon` SET `auras` = '643' WHERE `entry` = 2305;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2344; -- s.8258 different aura, not s.643 seemingly in combat or so
UPDATE `creature_template_addon` SET `auras` = '3582' WHERE `entry` = 2427;
UPDATE `creature_template_addon` SET `auras` = '3616 1785' WHERE `entry` = 2434; -- not 1786, 31665 tbc+ only
UPDATE `creature_template_addon` SET `auras` = '3637' WHERE `entry` = 2547;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2563; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2565; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2575; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '3616' WHERE `entry` = 2644;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 2783; -- different channel spell tbc+, already committed
UPDATE `creature_template_addon` SET `auras` = '18847' WHERE `entry` = 2923;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 3068; -- 3583 manually casted, not s.10022
UPDATE `creature_template_addon` SET `auras` = '6752' WHERE `entry` = 3124;
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` = 3125; -- wrong aura befor. - removed here https://github.com/cmangos/classic-db/commit/5994056a445f8fb5e1e2ac1b6fd4069c76be4651#diff-554113e38d084bb94524dc70be8df6d7c5f1ac95e3846cded9778709f6c4dc55L8868
UPDATE `creature_template_addon` SET `auras` = '5012' WHERE `entry` = 3190;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 3225; -- 6818 manually casted, not s.6823
UPDATE `creature_template_addon` SET `auras` = '5111' WHERE `entry` = 3417;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3417, 0, 0, 0, 0, 0, '5111');
UPDATE `creature_template_addon` SET `auras` = '3582' WHERE `entry` = 3730;
UPDATE `creature_template_addon` SET `auras` = '6821' WHERE `entry` = 3743;
UPDATE `creature_template_addon` SET `auras` = '6820' WHERE `entry` = 3745;
UPDATE `creature_template_addon` SET `auras` = '6823' WHERE `entry` = 3748;
UPDATE `creature_template_addon` SET `auras` = '6823' WHERE `entry` = 3750;
UPDATE `creature_template_addon` SET `auras` = '6867 6871' WHERE `entry` = 3780;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 3797; -- 7090 kind of spells should not be handled in template (druid transforms)
UPDATE `creature_template_addon` SET `auras` = '8218' WHERE `entry` = 3808; -- seemingly no stealth s.8218 (https://youtu.be/h1vmPJIRBTU?si=xVk54SZIPPCY87J8&t=132) this aura seemingly does not show
UPDATE `creature_template_addon` SET `auras` = '6923' WHERE `entry` = 3810;
UPDATE `creature_template_addon` SET `auras` = '6923' WHERE `entry` = 3811;
UPDATE `creature_template_addon` SET `auras` = '8612' WHERE `entry` = 3815;
UPDATE `creature_template_addon` SET `auras` = '3616 6920' WHERE `entry` = 3821;
UPDATE `creature_template_addon` SET `auras` = '29266' WHERE `entry` = 3891; -- seemingly doesnt have any?
UPDATE `creature_template_addon` SET `auras` = '6431' WHERE `entry` = 3892; -- sometimes 6606
UPDATE `creature_template_addon` SET `auras` = '7165' WHERE `entry` = 3898; -- in combat? - https://www.youtube.com/watch?v=N3G-Sx8O2rg, https://www.youtube.com/watch?v=x7F0D5QcFmY shows flee of other npcs
UPDATE `creature_template_addon` SET `auras` = '6813' WHERE `entry` = 3922;
UPDATE `creature_template_addon` SET `auras` = '6813' WHERE `entry` = 3923;
UPDATE `creature_template_addon` SET `auras` = '6813' WHERE `entry` = 3924;
UPDATE `creature_template_addon` SET `auras` = '6813' WHERE `entry` = 3925;
UPDATE `creature_template_addon` SET `auras` = '6813' WHERE `entry` = 3926;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4005; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4011; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4012; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4013; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4015; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '7999' WHERE `entry` = 4029;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4035; -- 5164 manually casted, not s.7095
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4107; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4109; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4110; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4118; -- 3583 manually casted, not s.10022
UPDATE `creature_template_addon` SET `auras` = '8247' WHERE `entry` = 4248;
-- Creature (Entry: 4329) has spell 2602 defined in `auras` field in `creature_template_addon, but spell has cast time. Use it in AI instead.
-- Creature (Entry: 4331) has spell 2602 defined in `auras` field in `creature_template_addon, but spell has cast time. Use it in AI instead.
-- Creature (Entry: 4334) has spell 2602 defined in `auras` field in `creature_template_addon, but spell has cast time. Use it in AI instead.
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4329; -- 18968 tbc+ 2602 classic
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4331; -- 18968 tbc+ 2602 classic
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4334; -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4329, 0, 0, 1, 0, 0, '2602'); -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4331, 0, 0, 1, 0, 0, '2602'); -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4334, 0, 0, 1, 0, 0, '2602'); -- 18968 tbc+ 2602 classic
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4347; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4358;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4358, 0, 0, 1, 0, 0, '9463');
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4359;
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4360;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4360, 0, 0, 1, 0, 0, '9463');
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4361;
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4362;
UPDATE `creature_template_addon` SET `auras` = '9463' WHERE `entry` = 4363;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4376; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4379; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '9464' WHERE `entry` = 4397;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4415; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4457; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '6822' WHERE `entry` = 4474;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4479; -- 8876 10022 manually casted
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4670; -- s.6920 but sometimes not, phasing
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 4671; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '8601' WHERE `entry` = 4971;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 5245; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '8981' WHERE `entry` = 5430;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 5441; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 5471; -- 7165 (21156 core applied) combat
UPDATE `creature_template_addon` SET `auras` = '12187' WHERE `entry` = 5624;
UPDATE `creature_template_addon` SET `auras` = '7670' WHERE `entry` = 5743;
UPDATE `creature_template_addon` SET `auras` = '15097' WHERE `entry` = 5760; -- s.7974 only RP Azrethoc's Flight (Rank 1)
UPDATE `creature_template_addon` SET `auras` = '11964' WHERE `entry` = 5983;
UPDATE `creature_template_addon` SET `auras` = '3616' WHERE `entry` = 6004;
UPDATE `creature_template_addon` SET `auras` = '12544' WHERE `entry` = 6117;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (6117, 0, 0, 1, 0, 0, '12544');
UPDATE `creature_template_addon` SET `auras` = '11964' WHERE `entry` = 6136;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 6170; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 6180; -- 7165 (21156 core applied) combat
UPDATE `creature_template_addon` SET `auras` = '7276' WHERE `entry` = 6201;
UPDATE `creature_template_addon` SET `auras` = '9036 10848' WHERE `entry` = 6491;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (6491, 0, 0, 0, 0, 0, '9036 10848');
-- Creature (Entry: 6492) has spell 9095 defined in `auras` field in `creature_template_addon, but spell has cast time. Use it in AI instead.
UPDATE `creature_template_addon` SET `auras` = '9093' WHERE `entry` = 6492; -- s.9095 new missing
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (6492, 0, 0, 0, 0, 0, '9093 9095');
UPDATE `creature_template_addon` SET `auras` = '14133' WHERE `entry` = 6556;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 7028; -- some some s.8734 others s.12380
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (3278,3279,3277,3276,3275);
REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(3278, 1, -7620.51, -768.226, 190.877, 5.5676, 1, 702801),
(3279, 1, -7603.22, -763.992, 190.921, 4.36332, 1, 702801),
(3277, 1, -7620.57, -785.899, 190.854, 0.541052, 1, 702801),
(3276, 1, -7593.33, -778.441, 190.968, 3.15905, 1, 702801),
(3275, 1, -7603.77, -793.267, 190.905, 1.8675, 1, 702801);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 702801;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(702801, 5000, 0, 15, 12380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Shadow Channeling');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 7036; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 7369;
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 7446;
UPDATE `creature_template_addon` SET `auras` = '15876' WHERE `entry` = 7457;
UPDATE `creature_template_addon` SET `auras` = '7366' WHERE `entry` = 7725; -- s.7381 applied through s.7366
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (7725, 0, 0, 1, 0, 0, '7366');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8205; -- 3391 manually casted, not s.8876
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8216; -- 3391 manually casted, not s.12787
UPDATE `creature_template_addon` SET `auras` = '1032' WHERE `entry` = 8382;
UPDATE `creature_template_addon` SET `auras` = '8876 12539' WHERE `entry` = 8532;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (8532, 0, 0, 1, 0, 0, '8876 12539');
UPDATE `creature_template_addon` SET `auras` = '16574' WHERE `entry` = 8534;
UPDATE `creature_template_addon` SET `auras` = '8278 8279 16380' WHERE `entry` = 8538; -- s.18950 wrong
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (8538, 0, 0, 1, 0, 0, '8278 8279 16380');
UPDATE `creature_template_addon` SET `auras` = '8278 8279 16380' WHERE `entry` = 8539; -- only had s.8279
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (8539, 0, 0, 1, 0, 0, '8278 8279 16380');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8543; -- s.14775 not all of them, messes up movement animation (included in creature_addon for these 8 spawns)
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8553; -- wrongfully had s.16592 (from other npc it seems) - s.8734 sometimes
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8561; -- s.8734 sometimes
UPDATE `creature_template_addon` SET `auras` = '11441' WHERE `entry` = 8606;
UPDATE `creature_template_addon` SET `auras` = '15733' WHERE `entry` = 9264; -- Missing
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 9297; -- 744 manually casted, not s.7276
UPDATE `creature_template_addon` SET `auras` = '13377 13913' WHERE `entry` = 9376;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 9521; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 9691; -- 744 manually casted, not s.3616
UPDATE `creature_template_addon` SET `auras` = '13377' WHERE `entry` = 10119;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 10182; -- 3391 manually casted, not s.8876
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 10359; -- 3583 manually casted, not s.10022
UPDATE `creature_template_addon` SET `auras` = '8713' WHERE `entry` = 10580;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 10639; -- 3391 manually casted, not s.8876
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 10641; -- 3583 manually casted, not s.10022
UPDATE `creature_template_addon` SET `auras` = '29266' WHERE `entry` = 10668; -- ??? again maybe not visible?
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 10816; -- 17014 manually casted, not s.32900
UPDATE `creature_template_addon` SET `auras` = '16577' WHERE `entry` = 10821;
UPDATE `creature_template_addon` SET `auras` = '12556 17327' WHERE `entry` = 10940;
UPDATE `creature_template_addon` SET `auras` = '18951' WHERE `entry` = 10946; -- manually casted, not s.8876, 17467
UPDATE `creature_template_addon` SET `auras` = '18148' WHERE `entry` = 11577;
UPDATE `creature_template_addon` SET `auras` = '16428' WHERE `entry` = 11896;
UPDATE `creature_template_addon` SET `auras` = '8990' WHERE `entry` = 12128;
UPDATE `creature_template_addon` SET `auras` = '6821' WHERE `entry` = 12921;
UPDATE `creature_template_addon` SET `auras` = '7165' WHERE `entry` = 12977; -- 7165 (21156 core applied)
UPDATE `creature_template_addon` SET `auras` = '5301' WHERE `entry` = 13777;
UPDATE `creature_template_addon` SET `auras` = '5301' WHERE `entry` = 13841;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 14266; -- 11918 manually casted, not s.11919
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` = 14375;
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` = 14423;
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` = 14438;
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` = 14439;
UPDATE `creature_template_addon` SET `auras` = '21788' WHERE `entry` = 14472;
UPDATE `creature_template_addon` SET `auras` = '11984' WHERE `entry` = 15162;
UPDATE `creature_template_addon` SET `auras` = '12187' WHERE `entry` = 15195;
UPDATE `creature_template_addon` SET `auras` = '11966 15733' WHERE `entry` = 15201;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 15207; -- s.8876 unsure waiting for sniff data
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 15215; -- blackout seems manual and different per expansion? s.15268 https://www.youtube.com/watch?v=nY620CT52B8 s.44415 tbc
UPDATE `creature_template_addon` SET `auras` = '26000' WHERE `entry` = 15730;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 15898; -- s.25824 conditional, mostly just s.26384 for morph
UPDATE `creature_template_addon` SET `auras` = '10848' WHERE `entry` = 16148;
UPDATE `creature_template_addon` SET `auras` = '10848 27987' WHERE `entry` = 16150;
UPDATE `creature_template_addon` SET `auras` = '29307' WHERE `entry` = 16360;
UPDATE `creature_template_addon` SET `auras` = '19951 28158' WHERE `entry` = 16363;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (16363, 0, 0, 0, 0, 0, '19951 28158');
UPDATE `creature_template_addon` SET `auras` = '24244 28156' WHERE `entry` = 16375;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (16375, 0, 0, 0, 0, 0, '24244 28156');
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 16697; -- different spells used with delay npc_aoe_damage_trigger (for s.28874 2sec delay)
UPDATE `creature_template_addon` SET `auras` = '29402' WHERE `entry` = 17048;
UPDATE `creature_template_addon` SET `auras` = '29402' WHERE `entry` = 17049;

-- tbc+
-- UPDATE `creature_template_addon` SET `auras` = '3616 1785 31665' WHERE `entry` = 2434; -- not 1786, 31665 tbc+ only
-- UPDATE `creature_template_addon` SET `auras` = '18968' WHERE `entry` = 4329; -- 18968 tbc+ 2602 classic
-- UPDATE `creature_template_addon` SET `auras` = '18968' WHERE `entry` = 4331; -- 18968 tbc+ 2602 classic
-- UPDATE `creature_template_addon` SET `auras` = '18968' WHERE `entry` = 4334; -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4329, 0, 0, 1, 0, 0, '18968'); -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4331, 0, 0, 1, 0, 0, '18968'); -- 18968 tbc+ 2602 classic
-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (4334, 0, 0, 1, 0, 0, '18968'); -- 18968 tbc+ 2602 classic
-- UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` IN (16350,16351,16352); -- s.11918 manually ACID already adjusted in other commit

