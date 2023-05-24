-- SESSILE 0x00000100 - creature_template_movement.Rooted = 1
UPDATE `creature_template` SET `StaticFlags1` = `StaticFlags1`|0x00000100 WHERE `entry` IN (
1921, -- Combat Dummy
2667, -- Ward of Laze
2673, -- Target Dummy
2674, -- Advanced Target Dummy
5202, -- Archery Target
5674, -- Practice Target
5781, -- Silithid Creeper Egg
6066, -- Earthgrab Totem
7527, -- Goblin Land Mine
8035, -- Dark Iron Land Mine
9496, -- Gorishi Egg
12426, -- Masterwork Target Dummy
14081, -- Demon Portal
14362, -- Thornling
15047, -- Gurubashi
16111, -- Love Fool
16236, -- Eye Stalk
16364, -- Infused Crystal
16897, -- Honor Hold Target Dummy Middle
17578, -- Training Dummy -> "Hellfire Training Dummy" later.
18176, -- Tainted Earthgrab Totem
18372, -- Rough Stone Statue
18734, -- Coarse Stone Statue
18735, -- Heavy Stone Statue
18736, -- Solid Stone Statue
18737, -- Dense Stone Statue
18738, -- Primal Stone Statue
19399, -- Fel Cannon
19897, -- Tainted Earthgrab Totem (1)
20061, -- Frostbite Invisible Stalker
21071, -- Totem of Spirits
21217, -- The Lurker Below
21233, -- Legion Fel Cannon
21322, -- Warp Storm
22315, -- Deathforge Mine
22331, -- Dragonmaw Elite
22336, -- Demon Portal (Zuluhed)
22451, -- Legion Fel Cannon MKII
22461, -- Fel Cannon MKI
23076, -- Legion Flak Cannon
23077, -- [PH]Knockdown Fel Cannon Dummy
24792, -- Advanced Training Dummy
25305, -- Dancing Flames
25315, -- Kil'jaeden
27166, -- The Brewmaiden
27169); -- The Black Brewmaiden

-- wotlk+
-- 23771, -- Blockade Cannon
-- 23876, -- Spore
-- 24210, -- Riven Widow Cocoon
-- 25284, -- Nerub'ar Victim
-- 25534, -- En'kilah Blood Globe
-- 26678, -- Warsong Battle Standard
-- 27064, -- Abandoned Fuel Tank
-- 27212, -- Image of Loken
-- 27430, -- Destructive Ward
-- 27714, -- 7th Legion Chain Gun
-- 27894, -- Antipersonnel Cannon
-- 28156, -- Defeated Argent Footman
-- 28366, -- Wintergrasp Tower Cannon
-- 28408, -- Primordial Drake Egg
-- 29475, -- Improved Land Mine
-- 29483, -- K3 Perimeter Turret
-- 29613, -- Eye Stalk (1)
-- 29649, -- Captured Death's Rise Spy
-- 29747, -- The Ocular
-- 29790, -- The Ocular - Eye of Acherus Exterior Shell
-- 30066, -- Valkyrion Harpoon Gun
-- 30236, -- Argent Cannon
-- 30391, -- Healthy Mushroom
-- 30435, -- Poisonous Mushroom
-- 30527, -- Training Dummy
-- 31103, -- Twilight Egg (Cosmetic)
-- 31143, -- Reinforced Training Dummy
-- 31144, -- Grandmaster's Training Dummy
-- 31146, -- Heroic Training Dummy
-- 31204, -- Sartharion Twilight Egg
-- 31280, -- Ymirheim Spear Gun
-- 31461, -- Healthy Mushroom (1)
-- 31462, -- Poisonous Mushroom (1)
-- 31547, -- Sartharion Twilight Egg (1)
-- 32347, -- Alumeth Summon Bunny
-- 32541, -- Initiate's Training Dummy
-- 32542, -- Disciple's Training Dummy
-- 32543, -- Veteran's Training Dummy
-- 32545, -- Initiate's Training Dummy
-- 32546, -- Ebon Knight's Training Dummy
-- 32547, -- Highlord's Nemesis Trainer
-- 32666, -- Expert's Training Dummy
-- 32667, -- Master's Training Dummy
-- 32795, -- Antipersonnel Cannon (1)
-- 32926, -- Flash Freeze
-- 32938, -- Flash Freeze
-- 33174, -- Snowpacked Icicle Target
-- 33184, -- Razorscale Harpoon Gun (Unused)
-- 33229, -- Melee Target
-- 33243, -- Ranged Target
-- 33264, -- Ironwork Cannon
-- 33272, -- Charge Target
-- 33352, -- Flash Freeze (1)
-- 33353, -- Flash Freeze (1)
-- 33651, -- VX-001
-- 34047, -- Rocket Strike
-- 34050, -- Rocket (Mimiron Visual)
-- 34068, -- Magnetic Core
-- 34071, -- Leviathan Mk II
-- 34096, -- Auriaya Feral Defender Stalker
-- 34108, -- VX-001 (1)
-- 34110, -- Rocket Strike (1)
-- 34121, -- Flames (Spread)
-- 34149, -- Frost Bomb
-- 34362, -- Proximity Mine
-- 34363, -- Flames (Initial)
-- 36021, -- The Brewmaiden
-- 36024, -- The Black Brewmaiden
-- 36934, -- Empowering Orb Controller Stalker
-- 38461); -- Toravon Frozen Orb Stalker

UPDATE `creature_template` SET `CorpseDecay` = 10 WHERE `entry` = 2673; -- Target Dummy
UPDATE `creature_template` SET `CorpseDecay` = 10 WHERE `entry` = 2674; -- Advanced Target Dummy
UPDATE `creature_template` SET `CorpseDecay` = 1 WHERE `entry` = 7527; -- Goblin Land Mine
UPDATE `creature_template` SET `CorpseDecay` = 10 WHERE `entry` = 8035; -- Dark Iron Land Mine (check if this should also be 1)
UPDATE `creature_template` SET `CorpseDecay` = 10 WHERE `entry` = 12426; -- Masterwork Target Dummy

