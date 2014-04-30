-- Removed duplicate spawns of some of the creatures 16781 (Midsummer Celebrant) as they
-- were spawned at the same place of another.
-- Thanks Neotmiren for pointing. This closes #60 
DELETE FROM `creature` WHERE `guid` IN (94711, 94655, 94656, 94653, 94604, 94553, 94454, 94455,
94735, 94734, 94701, 94582, 94726, 94696, 94724, 94575, 94697, 94580, 94579, 94557, 94605, 94556,
94704, 94739);
