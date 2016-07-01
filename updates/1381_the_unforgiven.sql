-- Spawned NPC 10516 (The Unforgiven) and its adds 10387 (Vengeful Phantom) in Stratholme
-- This closes #192. Thanks @Nekoi for pointing and @Tobschinski for having the right approach
-- Kids, never blindly believe comments on the Internet (wowhead and the like...). Check by yourself.
DELETE FROM creature WHERE guid BETWEEN 160512 AND 160516;
INSERT INTO creature VALUES
(134244, 10516, 329, 0, 0, 3718.479, -3426.675, 131.759, 3.176403, 7200, 0, 0, 11136, 0, 0, 0),
(590011, 10387, 329, 0, 0, 3716.03, -3423.4, 131.745, 4.3506, 3600, 0, 0, 835, 0, 0, 0),
(590012, 10387, 329, 0, 0, 3706.85, -3425.96, 131.697, 5.69441, 3600, 0, 0, 835, 0, 0, 0),
(590013, 10387, 329, 0, 0, 3718.34, -3430.62, 131.484, 2.6722, 3600, 0, 0, 835, 0, 0, 0),
(590014, 10387, 329, 0, 0, 3709.38, -3434.97, 130.49, 0.969456, 3600, 0, 0, 835, 0, 0, 0);

DELETE FROM creature_linking_template WHERE entry = 10387;
INSERT INTO creature_linking_template VALUES
(10387, 329, 10516, 3, 0);
