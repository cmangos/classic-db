-- Each instance listed here will be closed
UPDATE areatrigger_teleport SET required_level = 61 WHERE id IN (
2848, -- Onyxia's Lair
2890, -- Molten Core
3528,
3529,
3726, -- Blackwing Lair
-- 3928, -- Zul'Gurub
4008, -- Ruins of Ahn'Qiraj
4010, -- Temple of Ahn'Qiraj
4156, -- Naxxramas
4055
);

-- Allow items listed here to be available to everybody
UPDATE item_template SET AllowableClass = -1, AllowableRace = -1 WHERE entry IN (
13317, -- Whistle of the Ivory Raptor
18768  -- Reins of the Swift Dawnsaber
);
