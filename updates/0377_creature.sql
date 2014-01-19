-- Removed duplicate creature 14865 (Felini) in Darkmoon Fair (Elwynn Forest)
DELETE FROM `creature` WHERE `guid` = 52414;

-- Updated gossip of creature 6148 (Silas Darkmoon) as it was using a player name
UPDATE `npc_text` SET `text0_0` = 'It\'s not always about money, $N!  While we receive generous donations - some extremely substantial - our traveling troupe of performers is fueled creatively by a need to brighten this war-torn world.  Don\'t worry about us, but instead let us worry about how to best entertain you.' WHERE `id` = 7336;
