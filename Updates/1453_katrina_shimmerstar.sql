-- Hallow's End Vendor Corrections
-- As per Dagochen's report, Katrina Shimmerstar was not present in this event.  This NPC has been added and in addition the Pumpkin treat has been added to her vendor list. 
-- This item is only available when the Jesper(Alliance)/Spoops(Horde) quests have been completed at the respective vendors (source: wowwiki page for each npc).
-- Conditions for these casess have been added.  Thanks to @Dagochen for spotting.

/* Adding Katrina to the Hallow's End Event */
DELETE FROM `creature` WHERE `guid` = 86235;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(86235, 15353, 0, 0, 0, -4918.637, -983.1412, 501.5376, 2.43867, 120, 0, 0, 1605, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` = 86235;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(86235, 12);

SET @CONDITION := 1368;

/* Adding conditions for Hallow's End Vendors */
DELETE FROM `conditions` WHERE `condition_entry` IN (@CONDITION, @CONDITION + 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@CONDITION, 8, 8311, 0),
(@CONDITION + 1, 8, 8312, 0);

/* Adding Treat to Katrina vendor table and adding quest completion conditions for both vendors */
DELETE FROM `npc_vendor` WHERE `entry` = 15353 AND `item` = 20557;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`) VALUES
(15353, 20557, 0, 0, @CONDITION);
UPDATE `npc_vendor` SET `condition_id`= @CONDITION + 1 WHERE `entry`= 15354 AND `item`= 20557;
