-- Add GAMEOBJECT_EXTRA_FLAG_DYNGUID for gameobjects that (partly) use gameobject_spawn_entry and pooling
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|2 WHERE entry IN (
324, -- Small Thorium Vein
1734, -- Gold Vein
2040, -- Mithril Deposit
2047, -- Truesilver Deposit
3658, -- Water Barrel
3659, -- Barrel of Melon Juice
3660, -- Armor Crate
3661, -- Weapon Crate
3662, -- Food Crate
3689, -- Weapon Crate
3693, -- Food Crate
3694, -- Food Crate
3695, -- Food Crate
3702, -- Armor Crate
3703, -- Armor Crate
3704, -- Weapon Crate
3705, -- Barrel of Milk
3706, -- Barrel of Sweet Nectar
3707, -- Food Crate
3719, -- Food Crate
75293, -- Large Battered Chest
75295, -- Large Iron Bound Chest
75296, -- Large Iron Bound Chest
75297, -- Large Iron Bound Chest
75298, -- Large Solid Chest
75299, -- Large Solid Chest
75300, -- Large Solid Chest
113768, -- Brightly Colored Egg
113769, -- Brightly Colored Egg
113770, -- Brightly Colored Egg
113771, -- Brightly Colored Egg
153464, -- Large Solid Chest
153469, -- Large Mithril Bound Chest
153472, -- Food Crate
153473, -- Food Crate
165658, -- Dark Iron Deposit
175404, -- Rich Thorium Vein
181872, -- Steam Pump Part
181873, -- Steam Pump Part
181876 -- Steam Pump Part
);
