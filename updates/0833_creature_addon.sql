-- Fixed sheathed equipment for NPC 844 (Antonio Perrelli). Thanks Tobschinski for pointing.
-- This closes #670 
DELETE FROM `creature_addon` WHERE `guid` = (SELECT `guid` FROM `creature` WHERE `id` = 844);
