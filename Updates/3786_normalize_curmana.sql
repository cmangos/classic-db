UPDATE `creature` SET `curmana`=0 WHERE `id` IN (SELECT `entry` FROM `creature_template` WHERE `RegenerateStats` & 8 != 0) AND `curmana` != 0;

