-- Fixed quest 9259 (Traitor to the Bloodsail) that allowed to gain unlimited REP with Booty Bay easily
-- Thanks Neotmiren for pointing and fixing
-- Source: http://www.wowhead.com/quest=9259
UPDATE `quest_template` SET
`RequiredMaxRepValue` = -1, `RewRepFaction3` = 0, `RewRepFaction4` = 0, `RewRepFaction5` = 0, `RewRepValue3` = 0, `RewRepValue4` = 0, `RewRepValue5` = 0
WHERE `entry` = 9259;
