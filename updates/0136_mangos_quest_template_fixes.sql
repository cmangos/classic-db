-- The following queries restore quest 1388 (Nothing But The Truth) to its classic behavior as required quest items were changed in TBC

-- fixing Quest 1388 (Nothing But The Truth) previous questid
-- because quest where available before completing the first two quest of this questline.
UPDATE `quest_template` SET `PrevQuestId` = 1383 WHERE `entry` = 1388;

-- fixing Quest 1383. Deleting deepstrider tumor from dreaming whelps.
-- Adding deepstrider tumor questdrop to deepstrider sea giants.
-- Correcting Questtext.
UPDATE quest_template SET Details="I have just the right serum in mind. It will deal with the truth in precisely the way the truth should be dealt with.$B$BFor this concoction I will need several Shadow Panther hearts from the Swamp. I also require the enchanted fungus off of the Mire Lord who resides there. I am sure one as able as you, $n, can persuade him to part with some.$B$BNow the hard part will be locating a Deepstrider tumor from far-off Desolace. Very rarely the giants there become ill and a tumor forms.$B$BNow, off you go!" WHERE entry=1383;
UPDATE quest_template SET Objectives="Apothecary Faustin at Beggar's Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and a Deep Strider Tumor." WHERE entry=1383;
DELETE FROM `creature_loot_template` WHERE `item` = 6082;
INSERT INTO `creature_loot_template` VALUES (4686,6082,-100,0,1,1,0);
INSERT INTO `creature_loot_template` VALUES (4687,6082,-100,0,1,1,0);