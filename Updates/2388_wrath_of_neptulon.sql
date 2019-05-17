-- Add support for Wrath of Neptulon quest
-- Sources:
/*
https://www.youtube.com/watch?v=K7HGi6kcBAQ
https://www.youtube.com/watch?v=1CnqWadEDRs
https://www.youtube.com/watch?v=GuvQxrG8gEc
https://www.youtube.com/watch?v=7ag6xbC_Yrk
https://www.youtube.com/watch?v=KL-E5Owoxw0
https://www.youtube.com/watch?v=-hKH53SJtZM
https://www.youtube.com/watch?v=S2NTQnuy7Cs
https://www.youtube.com/watch?v=SgFecm_MnCw
*/

-- Maws: neutral faction at spawn and add missing swimming flag for animation
UPDATE creature_template SET Faction=15, UnitFlags=32768 WHERE Entry=15571;

-- Circle waypoint movement at the edge of the Swirling Maelstrom
DELETE FROM creature_movement_template WHERE entry=15571;
INSERT INTO creature_movement_template VALUES
(15571, 0, 1, 3561.725098, -6647.203613, -7.5, 0, 0, 0, NULL),
(15571, 0, 2, 3569.491211, -6601.534668, -7.5, 0, 0, 0, NULL),
(15571, 0, 3, 3567.581787, -6601.534668, -7.5, 0, 0, 0, NULL),
(15571, 0, 4, 3556.089844, -6580.337402, -7.5, 0, 0, 0, NULL),
(15571, 0, 5, 3535.929199, -6566.029785, -7.5, 0, 0, 0, NULL),
(15571, 0, 6, 3512.707275, -6560.118164, -7.5, 0, 0, 0, NULL),
(15571, 0, 7, 3481.141113, -6564.093262, -7.5, 0, 0, 0, NULL),
(15571, 0, 8, 3471.087158, -6577.640137, -7.5, 0, 0, 0, NULL),
(15571, 0, 9, 3457.589844, -6601.105957, -7.5, 0, 0, 0, NULL),
(15571, 0, 10, 3455.857666, -6626.840820, -7.5, 0, 0, 0, NULL),
(15571, 0, 11, 3464.808838, -6650.078613, -7.5, 0, 0, 0, NULL),
(15571, 0, 12, 3482.844238, -6667.317383, -7.5, 0, 0, 0, NULL),
(15571, 0, 13, 3506.620361, -6675.020020, -7.5, 0, 0, 0, NULL),
(15571, 0, 14, 3525.413330, -6673.905273, -7.5, 0, 0, 0, NULL);

-- Swirling Maelstrom, Theatric Lightning
UPDATE gameobject_template SET size=4 WHERE entry IN (180669, 183356);
UPDATE gameobject_template SET flags=16 WHERE entry=183356;    -- Uninteractable

-- Spawn missing Theatric Lightning at the same position than Swirling Maelstrom
DELETE FROM gameobject WHERE guid=99001;
INSERT INTO gameobject VALUES
(99001, 183356, 1, 3512.29, -6618.08, 0.01, 0, 0, 0, 0, 0, -9000, -9000, 0, 1);

-- Remove event DB scripts: now handled in SD2
DELETE FROM dbscripts_on_event WHERE id=9542;
