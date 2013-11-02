-- Set to rare rank of creatures 4842 (Earthcaller Halmgar), 4425 (Blind Hunter) & 4438 (Razorfen Spearhide)
-- in Razorfen Kraul
-- Source: http://old.wowhead.com/npc=4842
-- http://old.wowhead.com/npc=4425
-- http://old.wowhead.com/npc=4438
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` IN (4842, 4425, 4438);

SET @HALMGAR_GUID := 590008;
SET @HUNTER_GUID := 87485;
SET @ALTERNATE_GUID1 := 87327;
SET @ALTERNATE_GUID2 := 590010;


-- Put creatures 4842 (Earthcaller Halmgar), 4425 (Blind Hunter)
-- in pools as they are rare creatures and should not spawn all the time
-- Source: http://old.wowhead.com/npc=4842
-- http://old.wowhead.com/npc=4425

-- Added spawn of creature 4539 (Greater Kraul Bat) as an alternate spawn in pool for Blind Hunter
DELETE FROM `creature` WHERE `guid` = @ALTERNATE_GUID2;
INSERT INTO `creature` VALUES
(@ALTERNATE_GUID2, 4539, 47, 1954, 0, 2200.76, 1978.19, 56.7228, 2.77843, 7200, 3, 0, 3296, 0, 0, 1);


DELETE FROM `pool_creature` WHERE `guid` IN (@HALMGAR_GUID, @HUNTER_GUID, @ALTERNATE_GUID1, @ALTERNATE_GUID2);
INSERT INTO `pool_creature` VALUES
(@HALMGAR_GUID, 1176, 30, 'Earthcaller Halmgar (4842) Razorfen Kraul'),
(@ALTERNATE_GUID1, 1176, 70, 'Alternate creature to Halmgar (4842) Razorfen Kraul'),
(@HUNTER_GUID, 1177, 30, 'Blind Hunter (4425) Razorfen Kraul'),
(@ALTERNATE_GUID2, 1177, 70, 'Alternate creature to Blind Hunter (4425) Razorfen Kraul');

DELETE FROM `pool_template` WHERE `entry` IN (1176, 1177);
INSERT INTO `pool_template` VALUES
(1176, 1, 'Earthcaller Halmgar (4842) Razorfen Kraul'),
(1177, 1, 'Blind Hunter (4425) Razorfen Kraul');
