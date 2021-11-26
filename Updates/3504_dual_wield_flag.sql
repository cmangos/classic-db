-- Remove Dual Wield ExtraFlag from creatures that have two weapons (not needed)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~8388608 WHERE `entry` IN (
61, -- Thuros Lightfingers - 1900 - 1900
315, -- Stalvan Mistmantle - 934 - 1897
502, -- Benny Blaanco - 1897 - 1897
580, -- Redridge Drudger - 2558 - 2809
639, -- Edwin VanCleef - 2179 - 2147
723, -- Mosh'Ogg Butcher - 2827 - 2827
813, -- Colonel Kurzen - 5285 - 2179
947, -- Rohh the Silent - 5281 - 1900
1398, -- Boss Galgosh - 2202 - 3350
1561, -- Bloodsail Raider - 2184 - 2184
1696, -- Targorr the Dread - 5305 - 5305
1711, -- Defias Convict - 2184 - 2184
1716, -- Bazil Thredd - 2179 - 1897
1785, -- Skeletal Terror - 5532 - 5532
1838, -- Scarlet Interrogator - 5532 - 5532
2320, -- Nagaz - 5286 - 5286
2554, -- Witherbark Axe Thrower - 1905 - 1905
2558, -- Witherbark Berserker - 1909 - 1909
2589, -- Syndicate Mercenary - 1899 - 1896
2597, -- Lord Falconcrest - 2178 - 2178
2600, -- Singer - 5280 - 5280
2605, -- Zalas Witherbark - 1905 - 1905
3669, -- Lord Cobrahn - 3494 - 1906
3670, -- Lord Pythas - 1909 - 5286
-- 3672, -- Boahn - 3326 - 0
3736, -- Darkslayer Mordenthal - 1906 - 1906
3840, -- Druid of the Fang - 3494 - 11314
3974, -- Houndmaster Loksey - 5286 - 5286
3983, -- Interrogator Vishas - 5532 - 5532
4329, -- Firemane Scout - 1905 - 1905
-- 4403, -- Muckshell Pincer -  - 
4420, -- Overlord Ramtusk - 5286 - 5286
4479, -- Fardel Dabyrie - 2180 - 5284
4480, -- Kenata Dabyrie - 1900 - 2711
4493, -- Scarlet Avenger - 12934 - 12934
-- 4540, -- Scarlet Monk -  - 
4666, -- Burning Blade Felsworn - 5285 - 5281
4714, -- Slitherblade Myrmidon - 1899 - 1896
5399, -- Veyzhak the Cannibal - 2827 - 2827
5683, -- Comar Villard - 5281 - 5280
5713, -- Gasher - 2183 - 5286
5835, -- Foreman Grills - 5278 - 5278
5846, -- Dark Iron Taskmaster - 5278 - 5278
5932, -- Taskmaster Whipfang - 5532 - 5532
6771, -- Ravenholdt Assassin - 2179 - 2711
7029, -- Blackrock Battlemaster - 5286 - 5286
-- 7033, -- Firegut Ogre - 3361 - 0
7057, -- Digmaster Shovelphlange - 3346 - 1910
7605, -- Raven - 5281 - 5281
8216, -- Retherokk the Berserker - 11762 - 11762
-- 8218, -- Witherheart the Stalker -  - 
8407, -- Makron the Corrupt - 3364 - 5284
8529, -- Scourge Champion - 12944 - 2179
9027, -- Gorosh the Dervish - 10611 - 10611
9040, -- Dope'rel - 10616 - 5285
9236, -- Shadow Hunter Vosh'gajin - 10878 - 12332
9237, -- War Master Voone - 12290 - 12290
9258, -- Scarshield Raider - 2179 - 2179
9264, -- Firebrand Pyromancer - 1906 - 1906
9319, -- Houndmaster Grebmar - 11763 - 11762
9583, -- Bloodaxe Veteran - 12290 - 10611
10318, -- Blackhand Assassin - 12297 - 12298
10391, -- Skeletal Berserker - 1905 - 1905
-- 10478, -- Splintered Skeleton -  - 
-- 10488, -- Risen Construct -  - 
10824, -- Ranger Lord Hawkspear - 2178 - 2178
10997, -- Cannon Master Willey - 11763 - 11763
-- 11022, -- Alexi Barov - 5284 - 0
11043, -- Crimson Monk - 3494 - 11506
11196, -- Shatterspear Drummer - 12786 - 12786
11261, -- Doctor Theolen Krastinov - 2827 - 2827
11348, -- Zealot Zath - 3494 - 11506
11387, -- Sandfury Speaker - 5278 - 5278
11452, -- Wildspawn Rogue - 10619 - 10619
11467, -- Tsu'zee - 12298 - 12298
11469, -- Eldreth Seether - 1899 - 1897
11880, -- Twilight Avenger - 13312 - 13312
-- 12100, -- Lava Reaver -  - 
12236, -- Lord Vyletongue - 10616 - 10616
-- 12262, -- Ziggurat Protector -  - 
-- 12263, -- Slaughterhouse Protector -  - 
14425, -- Gnawbone - 5278 - 5278
14515, -- High Priestess Arlokk - 10616 - 10616
-- 14688, -- Master Sandoval -  - 
-- 14882, -- Atal'ai Mistress -  - 
15084, -- Renataki - 19980 - 19980
15162, -- Scarlet Inquisitor - 5532 - 2827
16050, -- Rotfang - 22215 - 5284
-- 16299, -- Skeletal Shocktrooper -  - 
16387 -- Atiesh - 22738 - 22738
-- 16422, -- Skeletal Soldier -  - 
);