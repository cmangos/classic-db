-- Add auras via addons
-- Rancid Ooze
UPDATE creature_template_addon SET auras='3338' WHERE entry IN (
1033, -- Monstrous Ooze
1031, -- Crimson Ooze
1032  -- Black Ooze
);

-- Moss Hide
UPDATE creature_template_addon SET auras='8852' WHERE entry IN (
1011, -- Mosshide Trapper
1010  -- Mosshide Fenrunner
);

-- Baby Murloc Passive
UPDATE creature_template_addon SET auras='24983' WHERE entry IN (
15186, -- Murky
16069  -- Gurky
);
