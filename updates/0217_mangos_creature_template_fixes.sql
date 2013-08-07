-- Fixed equipment for creature 14423 (Officer Jaxon), 14438 (Officer Pomeroy) and 14439 (Officer Brady) who should have their weapon unsheathed while patrolling
-- Thanks stan84 for pointing
-- Source: http://www.wowhead.com/npc=14423#screenshots
-- Source: http://www.wowhead.com/npc=14438#screenshots
-- Source: http://www.wowhead.com/npc=14439#screenshots
UPDATE `creature_addon` SET `b2_0_sheath` = 1 WHERE `guid` IN (79818, 90484, 79768);