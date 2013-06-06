-- Adds condition for loot template of items "Shredder operating manual pages" (entries 16645 to 16656)
-- as these should only drop for Horde players (condition_id = 3 in classic DB)
-- Source: http://www.wowwiki.com/Patch_1.8.0#Items
-- For items looted from creatures
UPDATE `creature_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16645 AND 16656;
-- For items looted from gameobjects
UPDATE `gameobject_loot_template` SET `condition_id` = 3 WHERE `item` BETWEEN 16645 AND 16656;
