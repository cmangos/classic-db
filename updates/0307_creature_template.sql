-- Fixed creature 10221 (Bloodaxe Worg Pup) size as they are far too small
-- Thanks Ela for the fix
-- Source (not far up from bottom) http://www.playthingofthegods.net/LBRSWorgPupGuide/LBRSWorgPupGuide.htm
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` = 10221;
