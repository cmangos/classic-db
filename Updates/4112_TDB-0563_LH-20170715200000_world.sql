-- https://github.com/lh-server/core/commit/010bf608aedf3ec6d3025ef67f51b5cc702685ce
-- Befor boh quest credits are given at the same time, when the spell ist casted. now one on kill, one on cast, cast might be a hack and should be done in another way
-- Fix quest Druid of the Claw(id:2561) These are 2 different objectives and using the charm on him should not count as having killed him.
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 7318, `ReqCreatureOrGOId2` = 0, `ReqCreatureOrGOCount1` = 1, `ReqCreatureOrGOCount2` = 0, `ReqSpellCast1` = 0, `ReqSpellCast2` = 10617 WHERE `entry` = 2561;

-- Fix quest text The Color of Blood(id:388) - Mac instead of $N
UPDATE `quest_template` SET `OfferRewardText` = 'So these bandanas -- filthy tokens of corruption -- are what my Mac had to die for?  Such a waste.  Such a tragic sacrifice. $b$bBut alas, I cannot return to the past.  Just know, $N, that you have brought my family justice through your deeds.' WHERE `entry` = 388;

