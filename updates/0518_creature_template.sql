-- Fixed various model and scale in C'Thun encounter in Temple of Ahn'Qiraj
-- This closes #166 and should make the fight far less clustered that is previously was
-- Source: http://www.youtube.com/watch?v=GZNKugMdPFI
-- Comparison to TBC-DB also

-- Fixed model of creature 15726 (Eye Tentacle) who was using the wrong model and adjusted size
UPDATE `creature_template` SET `ModelId1` = 15788, `Scale` = 1.4 WHERE `Entry` = 15726;
-- Adjusted scale of creature 15589 (Eye of C'Thun)
UPDATE `creature_template` SET `Scale` = 1 WHERE `Entry` = 15589;
-- Adjusted scale of creature 15727 (C'Thun)
UPDATE `creature_template` SET `Scale` = 1 WHERE `Entry` = 15727;
-- Adjusted scale of creature 15728 (Giant Claw Tentacle)
UPDATE `creature_template` SET `Scale` = 7 WHERE `Entry` = 15728;
-- Adjusted scale of creature 15802 (Flesh Tentacle)
UPDATE `creature_template` SET `Scale` = 5 WHERE `Entry` = 15802;
-- Adjusted scale of creature 15334 (Giant Eye Tentacle)
UPDATE `creature_template` SET `Scale` = 5 WHERE `Entry` = 15334;
-- Adjusted scale of creature 15910 (Giant Tentacle Portal)
UPDATE `creature_template` SET `Scale` = 0.35 WHERE `Entry` = 15910;
-- Adjusted scale of creature 15725 (Claw Tentacle)
UPDATE `creature_template` SET `Scale` = 2 WHERE `Entry` = 15725;
-- Adjusted scale of creature 15726 (Eye Tentacle)
UPDATE `creature_template` SET `Scale` = 1.4 WHERE `Entry` = 15726;
-- Adjusted scale of creature 15904 (Tentacle Portal)
UPDATE `creature_template` SET `Scale` = 0.15 WHERE `Entry` = 15904;
UPDATE `creature` SET `modelid` = 0, `position_z` = 100.221 WHERE `id` = 15896;
