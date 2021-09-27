-- Set Default MovementType to 0 for classic-db creatures where tbc-db useses 0 for good reason
-- creature_template MovementType = 0 is the most save to set for npcs, 1 can interfere with scripts and 2 should only be set if there is no static spawn of that npc or if the npc should do something right away
-- Source: tbcmangos (classic value befor)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='2673'; -- Target Dummy (1 MovementType Befor)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='8982'; -- Ironhand Guardian (1 MovementType Befor)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='17066'; -- Ribbon Pole Debug Target (1 MovementType Befor)

-- Some even have issues due to having 1 (Grimclaw is temp spawned, misbehaves due to MovementType = 1
-- Grimclaw 3695 - wotlk-db has a slightly different script from classic/tbc
-- .go c id 3693
-- .q add 985
-- .q com 985 - bear had movementtype = 1 which interfered with script and his movementscript didnt give him enough time to play it properly
UPDATE `dbscripts_on_quest_end` SET `dataint` = 1 WHERE `id` = 985 AND `delay` = 0; -- SetRun for Grimclaw 3695
UPDATE `dbscripts_on_quest_end` SET `datalong2` = 0 WHERE `id` = 985 AND `delay` IN (2000,5000,54000); -- Remove Forced Movementspeed (which also didnot make it work)

