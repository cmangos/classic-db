-- Adds addon to Instructor Razuvious who should sheath his sword
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature_addon` WHERE `guid` = 88460;
UPDATE `creature_addon` VALUES (88460, 0, 0, 0, 0, 0, 0, '18950'); -- weapon sheathed
-- Updated weapon slot to prevent NPC sword to point upward when sheathed
UPDATE `creature_equip_template_raw` SET `equipslot1` = 1 WHERE `entry` = 985;
