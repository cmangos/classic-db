-- https://github.com/vmangos/core/commit/66dd1994012695bd5f6cb0224dbc8dd0a997c48e
-- https://web.archive.org/web/20080728125356/http://wow.allakhazam.com/db/item.html?witem=6661
-- Razorfen Servitor																					-- allakhazam cmangos vmangos tbc.wowhead
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=6132; -- 0.04 0.08 0.17 0.14
-- Barak Kodobane
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3394; -- 0.01 0.02 0.1 0
-- Hecklefang Stalker
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=4128; -- 0.01 0.02 0.01 0.01
-- Prospector Khazgorm
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3392; -- 0.01 0.02 0.12 0.1
-- Owatanka
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3473; -- 0.01 0.04 0.01 0
-- Bael'dun Foreman
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3375; -- 0.01 0.02 0.01 0.1
-- Washte Pawne
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('3472','6661','0.05','0','1','1'); -- 0.01 0 0.07 0.06
-- Stormhide
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3238; -- 0.01 0.02 0.03 0.02
-- Bael'dun Excavator
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3374; -- 0.01 .02 .04 .03
-- Overseer Glibby
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('6606','6661','0.05','0','1','1'); -- .01 0 .1 .09
-- Bael'dun Officer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3378; -- 0.01 0.02 0.02 0.03
-- Cannoneer Whessan - https://tbc.wowhead.com/npc=3455/cannoneer-whessan#drops;50
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('3455','6661','0.05','0','1','1'); -- .01 0 0 .05
-- Greater Thunderhawk
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3249; -- .01 .02 .01 0
-- Bael'dun Soldier
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3376; -- .01 .02 .01 .02
-- Boss Copperplug
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('9336','6661','0.01','0','1','1'); -- .01 0 0 0
-- Razormane Warfrenzy
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3459; -- 0.01 0.04 0.02 0.03
-- Wooly Kodo
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3237; -- 0.01 0.02 0.01 0
-- Bael'dun Rifleman
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3377; -- 0.01 0.02 0.02 0.02
-- Kolkar Invader
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=9524; -- 0.01 0.02 0.04 0.04
-- Baron Longshore
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3467; -- 0.02 0.02 0.01 0
-- Barrens Kodo
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3236; -- 0.02 0.04 0.01 0
-- Thunderhawk Cloudscraper
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3424; -- 0.02 0.02 0.03 0.03
-- Lakota'mani
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('3474','6661','0.01','0','1','1'); -- .01 0 0 0
-- Tinkerer Sniggles
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3471; -- 0.02 0.06 0.01 0.02
-- Isha Awak
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3476; -- 0.02 0.06 0.01 0
-- Aean Swiftriver
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=5797; -- .02 .02 .01 0
-- Razormane Stalker
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3457; -- .02 .04 .02 .02
-- Kolkar Stormer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3273; -- .02 .04 .04 .04 
-- Kolkar Wrangler
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3272; -- .02 .02 .04 .03
-- Captain Fairmount
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3393; -- .02 .04 .11 .1
-- Razormane Pathfinder
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3456; -- .02 .04 .05 .05
-- Razormane Seer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3458; -- .02 .04 .06 .06
-- Wandering Barrens Giraffe
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3463; -- .02 .04 .05 .04
-- Thunderhead
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3239; -- .02 .04 .1 .08
-- Ornery Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3245; -- .02 .04 .03 .03
-- Theramore Preserver
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3386; -- .02 .06 .06 .06
-- Hezrul Bloodmark
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3396; -- .02 .034 .04 .04
-- Sunscale Scytheclaw
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3256; -- .02 .04 .05 .04
-- Thora Feathermoon
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=5798; -- .02 .03 0.14 0
-- Venture Co. Enforcer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3283; -- .02 .04 .05 .06
-- Zhevra Courser
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3466; -- .02 .06 .02 .02
-- Slimeshell Makrura
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=6020; -- .02 .04 .02 0
-- Silithid Grub
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3251; -- .02 .06 .01 0
-- Thunderhawk Hatchling
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3247; -- .02 .06 .04 .04
-- Zhevra Charger
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3426; -- .02 .06 .06 .05
-- Silithid Swarmer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3252; -- .02 .04 .03 .03
-- Bristleback Geomancer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3263; -- .03 .06 .04 .04
-- Bristleback Thornweaver
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3261; -- .03 .06 .04 .04
-- Stormsnout
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3240; -- .03 .04 .03 .02
-- Bristleback Water Seeker
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3260; -- .03 .04 .01 .01
-- Southsea Cutthroat
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3383; -- .03 .02 .07 .07
-- Witchwing Ambusher
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3279; -- .03 .08 .04 .04
-- Cannoneer Smythe
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3454; -- .03 .04 .05 0
-- Witchwing Windcaller
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3280; -- .03 .026 .03 .04
-- Kreenig Snarlsnout
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3438; -- .03 .06 .03 .04
-- Bristleback Hunter
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3258; -- .03 .06 .03 .03
-- Razormane Geomancer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3269; -- .03 .06 .07 .06
-- Hecklefang Snarler
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=4129; -- .03 .04 .04 .03
-- Southsea Brigand
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3381; -- .03 .04 .06 .06
-- Witchwing Slayer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3278; -- .03 .06 .05 .04
-- Kolkar Packhound
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=4316; -- .03 .01 .07 .07
-- Tazan
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=6494; -- .03 .04 .11 .1
-- Theramore Marine
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3385; -- .04 .06 .05 .05
-- Southsea Cannoneer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3382; -- .04 .08 .09 .09
-- Sunscale Lashtail
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3254; -- .04 .1 .07 .07
-- Witchwing Harpy
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3276; -- .04 .08 .08 .08
-- Greater Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3244; -- .04 .08 .07 .06
-- Kolkar Stormseer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=9523; -- .04 .1 .3 .3
-- Venture Co. Overseer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3286; -- .04 .1 .04 .04
-- Southsea Privateer
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3384; -- .04 .06 .05 .09
-- Thunderstomp
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=5832; -- .04 .05 .01 0
-- Fleeting Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3246; -- .04 .08 .07 .07
-- Razormane Defender
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3266; -- .04 .1 .12 .12
-- Savannah Matriarch
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3416; -- .04 .08 .05 .06
-- Verog the Dervish
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3395; -- .04 .12 .05 .02
-- Silithid Creeper
UPDATE creature_loot_template SET ChanceOrQuestChance=0.04 WHERE item=6661 AND entry=3250; -- .04 .06 .01 .01
-- Lost Barrens Kodo
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3234; -- .04 .08 .03 .02
-- Oasis Snapjaw
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3461; -- .04 .1 .05 .05
-- Marcus Bel
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=5800; -- .05 .1 .01 0
-- Razormane Water Seeker
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3267; -- .05 .08 .06 .07
-- Kolkar Marauder
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3275; -- .05 .1 .07 .08
-- Savannah Prowler
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3425; -- .05 .1 .09 .08
-- Barrens Giraffe
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3248; -- .05 .12 0.05 .08
-- Venture Co. Mercenary
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3282; -- .05 .1 .07 .06
-- Savannah Huntress
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3415; -- .05 .2 .08 07
-- Venture Co. Drudger
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3284; -- .05 .1 .1 .1
-- Sunscale Screecher
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3255; -- .05 .1 .05 .05
-- Razormane Thornweaver
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3268; -- .05 .12 .08 .08
-- Kolkar Bloodcharger
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3397; -- .05 .1 .07 .09
-- Nak
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3434; -- .05 .1 .02 0
-- Razormane Hunter
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3265; -- .05 .1 .14 .12
-- Zhevra Runner
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3242; -- .05 .12 .08 .08
-- Razormane Mystic
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3271; -- .05 .08 .07 .07
-- Heggin Stonewhisker
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=5847; -- .05 .07 .01 0
-- Hecklefang Hyena
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=4127; -- .05 .1 .08 .07
-- Venture Co. Peon
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3285; -- .05 .1 .11 .09
-- Burning Blade Bruiser
UPDATE creature_loot_template SET ChanceOrQuestChance=0.08 WHERE item=6661 AND entry=3379; -- .05 .12 .04 .09
-- Witchwing Roguefeather
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3277; -- .06 .14 .07 .06
-- Kolkar Pack Runner
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3274; -- .06 .12 .07 .06
-- Stonearm
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5837','6661','0.05','0','1','1'); -- .06 0 0 0
-- Burning Blade Acolyte
UPDATE creature_loot_template SET ChanceOrQuestChance=0.07 WHERE item=6661 AND entry=3380; -- .06 .14 .07 .06
-- Ishamuhale
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3257; -- .06 .18 .04 .04
-- Muck Frenzy
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=8236; -- .06 .08 .3 .18
-- Engineer Whirleygig
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5836','6661','0.05','0','1','1'); -- .07 0 0 0
-- Silithid Protector
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3503; -- .07 .18 .04 0
-- Elder Mystic Razorsnout
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3270; -- .07 .14 .01 .07
-- Savannah Patriarch
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3241; -- .08 .18 .09 .07
-- Rathorian
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=3470; -- .08 .16 .01 .14
-- Snort the Heckler
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=5829; -- .09 .12 .01 0
-- Savannah Highmane
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=3243; -- .09 .2 .06 .05
-- Faltering Silithid Flayer
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('15811','6661','0.1','0','1','1'); -- .1 0 0 0
-- Brontus
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5827','6661','0.1','0','1','1'); -- .1 0 0 0
-- Rocklance
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=5841; -- .12 .05 .01 0
-- Swinegart Spearhide
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5864','6661','0.1','0','1','1'); -- .13 0 0 0
-- Geopriest Gukk'rok
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5863','6661','0.1','0','1','1');
-- Sister Rathtalon
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('5830','6661','0.1','0','1','1');
-- General Twinbraid
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) VALUES ('3414','6661','0.1','0','1','1');
-- Supervisor Lugwizzle
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item=6661 AND entry=3445; -- 0.1

-- Creatures below where not mentioned on wowhead, but had a drop chance for the recipe in db (since those are barrens creatures as well) -> lowering dropchance
UPDATE creature_loot_template SET ChanceOrQuestChance=0.03 WHERE item=6661 AND entry=3235; -- Greater Barrens Kodo .06
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3394; -- Barak Kodobane .02
UPDATE creature_loot_template SET ChanceOrQuestChance=0.01 WHERE item=6661 AND entry=3436; -- Kuz .02
UPDATE creature_loot_template SET ChanceOrQuestChance=0.05 WHERE item=6661 AND entry=5799; -- Hannah Bladeleaf .1
UPDATE creature_loot_template SET ChanceOrQuestChance=0.1 WHERE item=6661 AND entry=5835; -- Foreman Grills .24
UPDATE creature_loot_template SET ChanceOrQuestChance=0.09 WHERE item=6661 AND entry=5865; -- Dishu .18