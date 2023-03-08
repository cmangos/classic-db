-- DB errors corrected
-- Table creature_movement entry ???? point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5; -- general fix

-- Not Req Anymore
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1971601,7945901,7946601,7946701,7948501,7952001,1534301); -- 'RUN ON' -- GENERIC '5' used instead
-- Table `command` have unexpected subcommand 'setdeathstate' in command 'npc setdeathstate', skip.
DELETE FROM command WHERE name = 'npc setdeathstate';

-- UPDATE
/*
Table creature_movement_template entry 17897 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 17895 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 27626 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 12056 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 13533 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 27656 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 17898 point 1 has no delay but changes run state. Adding delay to point.
*/
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5;

/*
Table waypoint_path entry 3254 point 98 has no delay but changes run state. Adding delay to point.
*/
UPDATE waypoint_path SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5;

-- ================================================
-- tbcmangos fixes related to waittime and scriptid

-- ====================================================================================
-- general
-- Table creature_movement entry 44818 point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 6; -- general fix for run off
-- Table creature_movement_template entry 796 point 35 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 6176 point 14 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 18258 point 19 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 18258 point 11 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 18258 point 5 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 18257 point 33 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 9457 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 9458 point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 6;
-- ====================================================================================

-- unique scripts that have more then just run on/off
-- Table creature_movement entry 65634 point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 1829901;
-- Table creature_movement entry 17336 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 17566 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 17577 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 17579 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18044 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18051 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18053 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18054 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18490 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 18492 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 22307 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 23710 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 29049 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 29050 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 29051 point 3 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 29052 point 3 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 2285708;

-- Not Req Anymore
-- Table creature_movement entry 71981 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 13775 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 140698 point 2 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 140699 point 2 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 140700 point 2 has no delay but changes run state. Adding delay to point.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2025101,1490101,2233202); -- 'RUN ON' -- GENERIC '5' used instead
UPDATE creature_movement SET WaitTime = 1, `ScriptId` = 5 WHERE `Id` IN (71981,13775,140698,140699,140700) AND `ScriptId` IN (2025101,1490101,2233202);

-- Not Req Anymore
-- Table creature_movement entry 13775 point 3 has no delay but changes run state. Adding delay to point.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1490102); -- GENERIC - Run Mode Off - 6
UPDATE creature_movement SET WaitTime = 1, `ScriptId` = 6 WHERE `Id` IN (13775) AND `ScriptId` IN (1490102);

-- unique scripts that have more then just run on/off
-- Table creature_movement_template entry 2533 point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId IN (253301);
-- Table creature_movement_template entry 19851 point 14 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId IN (1985103);
-- Table creature_movement_template entry 1271 point 24 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId IN (311102);

-- Not Req Anymore
-- Table creature_movement_template entry 4059 point 1 has no delay but changes run state. Adding delay to point.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (405901); -- 'RUN ON' -- GENERIC '5' used instead
UPDATE creature_movement_template SET WaitTime = 1, `ScriptId` = 5 WHERE `entry` IN (4059) AND `ScriptId` IN (405901);

-- Not Req Anymore
-- Table creature_movement_template entry 19604 point 25 has no delay but changes run state. Adding delay to point.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1960402); -- GENERIC - Run Mode Off - 6
UPDATE creature_movement_template SET WaitTime = 1, `ScriptId` = 6 WHERE `entry` IN (19604) AND `ScriptId` IN (1960402);

-- Instance File
-- Table creature_movement entry 5460033 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 5330258 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 5330238 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 5330228 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17898 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17898 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17898 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17897 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17897 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17897 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17895 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17895 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 17895 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement_template entry 13533 point 1 has no delay but changes run state. Adding delay to point.

-- ================================================
-- classicmangos fixes related to waittime and scriptid

-- Table creature_movement entry 3111 point 24 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId IN (311102); -- creature_movement instead of creature_movement_template

-- old stockades breakout script not yet ported from wotlkmangos
-- Table creature_movement entry 138550 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 138551 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 138552 point 1 has no delay but changes run state. Adding delay to point.
-- Table creature_movement entry 138553 point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId IN (504301); -- run on

-- Table creature_movement_template entry 5831 point 1 has no delay but changes run state. Adding delay to point.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (583101); -- 'RUN ON' -- GENERIC '5' used instead
UPDATE creature_movement_template SET WaitTime = 1, `ScriptId` = 5 WHERE `entry` IN (5831) AND `ScriptId` IN (583101); -- tbc/wotlk already use 5

