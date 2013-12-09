-- Changed InhabitType of creature 8236 (Muck Frenzy) from 1 (Ground only) to 2 (water only)
-- because this creature is a fish and shouldn't walk and attack players on islands like they
-- are currently doing
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 8236;
