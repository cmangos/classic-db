-- Fixed faction of creature 5644 (Dalinda Malem) to prevent her to being chained killed by surrounding NPCs on spawn
-- which will greatly helps players to find her because she is a quest giver
UPDATE `creature_template` SET
`unit_flags` = 512,
`faction_A` = 35, `faction_H` = 35,
`flags_extra` = 2
WHERE `entry` = 5644;
