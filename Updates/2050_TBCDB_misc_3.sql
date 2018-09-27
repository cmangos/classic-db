-- Prevent multiple spawns using CONDITION_SPAWN_COUNT and CREATURE_EXTRA_FLAG_COUNT_SPAWNS
-- These NPCs spawn too far away to use CONDITION_CREATURE_IN_RANGE

-- Demetria <The Scarlet Oracle>
UPDATE creature_template SET ExtraFlags=ExtraFlags|2097152 WHERE entry=12339;
UPDATE creature_template SET SpeedWalk=1 WHERE entry=12352;

SET @COND := 606;

DELETE FROM conditions WHERE condition_entry=@COND;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(@COND, 39, 12339, 1);

DELETE FROM dbscripts_on_quest_start WHERE id=6148 AND delay=0;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6148, 0, 34, @COND, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if Demetria is already spawned');

-- Stitches <Gift from the Embalmer>
UPDATE creature_template SET ExtraFlags=ExtraFlags|2097152 WHERE entry=412;

DELETE FROM conditions WHERE condition_entry=204;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(204, 39, 412, 1);

DELETE FROM dbscripts_on_quest_end WHERE id=252 AND delay=0;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(252, 0, 34, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if Stitches is already spawned');

-- add missing movement for creatures from UDB
UPDATE creature_template SET MovementType=2 WHERE entry IN(1737,1739);
UPDATE creature SET MovementType=2 WHERE id IN(1737,1739);

-- =========================================================================
-- Fix Vendors Selling Green Items Without MaxCount and Inc Time for Refresh - All Items Set to 1 and 3 Hour Refresh Time
-- =========================================================================
UPDATE npc_vendor SET maxcount=1, incrtime=10800 WHERE item IN (SELECT entry FROM item_template WHERE quality IN (2)) AND maxcount=0;

UPDATE npc_vendor SET maxcount=0, incrtime=0 WHERE maxcount=1 AND incrtime=10800 AND item IN (12819,13501,14634,16768,16769,18160,18169,18170,18171,18172,18173,18182);

-- Scarshield Quartermaster 9046 - http://www.wowhead.com/npc=9046/scarshield-quartermaster#comments:id=599352
UPDATE creature SET spawntimesecsmin=600, spawntimesecsmax=900 WHERE guid=248 AND id=9046;

-- http://jira.vengeancewow.com/browse/TBC-1830
UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry=4054;

/*
http://jira.vengeancewow.com/browse/TBC-1746 
This was actually bug in retail at some point...
See comments here:
http://www.wowhead.com/quest=1045/a-new-adornment
http://www.wowhead.com/quest=1046/true-power-of-the-rod
ReqSourceId1 must be set to ensure skull drops while player is doing 1045.
ReqSourceCount1 must be 0 because otherwise, Skull is removed from player's inventory when starting 1046.
*/
UPDATE quest_template SET ReqSourceId1=5388, ReqSourceCount1=0 WHERE entry=1045;

/*
http://jira.vengeancewow.com/browse/TBC-1625
Spawn time for all of them is currently 30 mins.
I have no evidence to back this up, but perhaps it should be set a bit lower. 
Change to 15 mins?
http://www.wowhead.com/quest=206/maizoth 
*/
UPDATE creature SET spawntimesecsmin=15 * 60, spawntimesecsmax=15 * 60 WHERE id IN (678,679,680,709,710,723);

-- q.6301 'Cycle of Rebirth' end script
UPDATE gameobject SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE guid=33531;
UPDATE quest_template SET CompleteScript=6301 WHERE entry=6301;
DELETE FROM dbscripts_on_quest_end WHERE id=6301;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('6301', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Remove Quest Giver NpcFlags'),
('6301', '2', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Stand State'),
('6301', '3', '15', '20041', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Cast Tammra Sapling'),
('6301', '10', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Point'),
('6301', '13', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Kneel State'),
('6301', '13', '13', '0', '0', '0', '177927', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Activate gameobject'),
('6301', '16', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tammra Windfield - Add Quest Giver NpcFlags');
