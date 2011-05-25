-- Each instance listed here will be closed
UPDATE areatrigger_teleport SET required_level = 61 WHERE target_map IN (
249, -- Onyxia's Lair
-- 309, -- Zul'Gurub
409, -- Molten Core
469, -- Blackwing Lair
509, -- Ruins of Ahn'Qiraj
531, -- Temple of Ahn'Qiraj
533, -- Naxxramas
);

-- Allow items listed here to be available to everybody
UPDATE item_template SET AllowableClass = -1, AllowableRace = -1 WHERE entry IN (
13317, -- Whistle of the Ivory Raptor
18768  -- Reins of the Swift Dawnsaber
);
