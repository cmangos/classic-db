-- Frostwyrm Lair Waterfall: change animation state
UPDATE gameobject SET animprogress=100 WHERE id=181225;

-- Plague Fissure trigger NPC
-- Add missing spawn
DELETE FROM creature WHERE guid=23709;
INSERT INTO `creature` VALUES (23709, 17293, 533, 0, 0, 2772.57, -3685.28, 273.749, 6.21337, 3600, 3600, 0, 0, 4120, 0, 0, 0);
-- Update flags in template
UPDATE creature_template SET UnitFlags=33555200, ExtraFlags=66 WHERE Entry=17293;
