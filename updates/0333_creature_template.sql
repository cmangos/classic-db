-- Fixed faction of creature 584 (Kazon): he will now attack players invading Render's Camp like
-- every Blackrock orc should do instead of chasing critters like the wolf he previously believed he was
-- Sources: http://www.wowhead.com/quest=26797#
--          http://www.wowhead.com/npc=3301#screenshots:id=60853
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 584;
