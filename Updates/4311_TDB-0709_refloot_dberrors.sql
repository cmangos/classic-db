-- refloot names DBErrors (run these once so everything is named in these tables)
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

-- not needed as most are duplicated or not needed in general.
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65003; -- NPC LOOT (Rare NPC Loot) - Gruff Swiftbite - Special Items - Table reference_loot_template_names for entry 65003 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 100; -- down from 85 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=100
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65018; -- NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items (65278) - Table reference_loot_template_names for entry 65018 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65019; -- NPC LOOT (Rare NPC Loot) - Marisa du'Paige - Special Items (65279) - Table reference_loot_template_names for entry 65019 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65021; -- NPC LOOT (Rare NPC Loot) - Lost One Chieftain - Special Items - Table reference_loot_template_names for entry 65021 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65024; -- NPC LOOT (Rare NPC Loot) - Dragonmaw Battlemaster - Special Items - Table reference_loot_template_names for entry 65024 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65025; -- NPC LOOT (Rare NPC Loot) - Jade - Special Items - Table reference_loot_template_names for entry 65025 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65026; -- NPC LOOT (Rare NPC Loot) - Lost One Cook - Special Items - Table reference_loot_template_names for entry 65026 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65041; -- NPC LOOT (Rare NPC Loot) - Scarlet Judge - Special Items - Table reference_loot_template_names for entry 65041 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65043; -- NPC LOOT (Rare NPC Loot) - Foulmane - Special Items - Table reference_loot_template_names for entry 65043 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 1847; -- up from 2 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=1847
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65044; -- NPC LOOT (Rare NPC Loot) - Lord Maldazzar - Special Items - Table reference_loot_template_names for entry 65044 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65045; -- NPC LOOT (Rare NPC Loot) - Dreadwhisper - Special Items - Table reference_loot_template_names for entry 65045 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65046; -- NPC LOOT (Rare NPC Loot) - The Husk - Special Items - Table reference_loot_template_names for entry 65046 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65048; -- NPC LOOT (Rare NPC Loot) - Muad - Special Items - Table reference_loot_template_names for entry 65048 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 1910; -- down from 100 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=1910
UPDATE `creature_loot_template` SET `groupid` = 9 WHERE `entry` = 1910 AND `item` = 4302; -- Small Green Dagger
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65056; -- NPC LOOT (Rare NPC Loot) - Strider Clutchmother - Special Items - Table reference_loot_template_names for entry 65056 has name but no entry
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `entry` = 2172 AND `item` = 5469; -- Strider Meat
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65057; -- NPC LOOT (Rare NPC Loot) - Shadowclaw - Special Items - Table reference_loot_template_names for entry 65057 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 2175; -- down from 100 - https://web.archive.org/web/20080216230333/http://wow.allakhazam.com/db/mob.html?wmob=2175
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65058; -- NPC LOOT (Rare NPC Loot) - Lady Moongazer - Special Items - Table reference_loot_template_names for entry 65058 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65059; -- NPC LOOT (Rare NPC Loot) - Carnivous the Breaker - Special Items - Table reference_loot_template_names for entry 65059 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65060; -- NPC LOOT (Rare NPC Loot) - Licillin - Special Items - Table reference_loot_template_names for entry 65060 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65061; -- NPC LOOT (Rare NPC Loot) - Firecaller Radison - Special Items - Table reference_loot_template_names for entry 65061 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65062; -- NPC LOOT (Rare NPC Loot) - Stone Fury - Special Items - Table reference_loot_template_names for entry 65062 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65070; -- NPC LOOT (Rare NPC Loot) - Molok the Crusher - Special Items - Table reference_loot_template_names for entry 65070 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65071; -- NPC LOOT (Rare NPC Loot) - Zalas Witherbark - Special Items - Table reference_loot_template_names for entry 65071 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65074; -- NPC LOOT (Rare NPC Loot) - Shadowforge Commander - Special Items - Table reference_loot_template_names for entry 65074 has name but no entry
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2744, 4616, -15); -- Ryedol's Lucky Pick
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65075; -- NPC LOOT (Rare NPC Loot) - War Golem - Special Items - Table reference_loot_template_names for entry 65075 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65076; -- NPC LOOT (Rare NPC Loot) - Rumbler - Special Items - Table reference_loot_template_names for entry 65076 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65077; -- NPC LOOT (Rare NPC Loot) - Barnabus - Special Items - Table reference_loot_template_names for entry 65077 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65079; -- NPC LOOT (Rare NPC Loot) - Broken Tooth - Special Items - Table reference_loot_template_names for entry 65079 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65083; -- NPC LOOT (Rare NPC Loot) - Sludge Beast - Special Items - Table reference_loot_template_names for entry 65083 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65086; -- NPC LOOT (Rare NPC Loot) - Sewer Beast - Special Items - Table reference_loot_template_names for entry 65086 has name but no entry
DELETE FROM `creature_loot_template` WHERE `entry` = 3581 AND `item` != 770; -- Pointy Crocolisk Tooth
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65089; -- NPC LOOT (Rare NPC Loot) - Apothecary Falthis - Special Items - Table reference_loot_template_names for entry 65089 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65090; -- NPC LOOT (Rare NPC Loot) - Akkrilus - Special Items - Table reference_loot_template_names for entry 65090 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65093; -- NPC LOOT (Rare NPC Loot) - Vengeful Ancient - Special Items - Table reference_loot_template_names for entry 65093 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65095; -- NPC LOOT (Rare NPC Loot) - Darkmist Widow - Special Items - Table reference_loot_template_names for entry 65095 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65096; -- NPC LOOT (Rare NPC Loot) - Lady Szallah - Special Items - Table reference_loot_template_names for entry 65096 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65097; -- NPC LOOT (Rare NPC Loot) - Diamond Head - Special Items - Table reference_loot_template_names for entry 65097 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65098; -- NPC LOOT (Rare NPC Loot) - Bloodroar the Stalker - Special Items - Table reference_loot_template_names for entry 65098 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65099; -- NPC LOOT (Rare NPC Loot) - Antilus the Soarer - Special Items - Table reference_loot_template_names for entry 65099 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65100; -- NPC LOOT (Rare NPC Loot) - Dreamwatcher Forktongue - Special Items - Table reference_loot_template_names for entry 65100 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65101; -- NPC LOOT (Rare NPC Loot) - Arash-ethis - Special Items - Table reference_loot_template_names for entry 65101 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65102; -- NPC LOOT (Rare NPC Loot) - Qirot - Special Items - Table reference_loot_template_names for entry 65102 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65103; -- NPC LOOT (Rare NPC Loot) - Old Grizzlegut - Special Items - Table reference_loot_template_names for entry 65103 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65104; -- NPC LOOT (Rare NPC Loot) - Gnarl Leafbrother - Special Items - Table reference_loot_template_names for entry 65104 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65105; -- NPC LOOT (Rare NPC Loot) - Snarler - Special Items - Table reference_loot_template_names for entry 65105 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65106; -- NPC LOOT (Rare NPC Loot) - Veyzhak the Cannibal - Special Items - Table reference_loot_template_names for entry 65106 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65107; -- NPC LOOT (Rare NPC Loot) - Zekkis - Special Items - Table reference_loot_template_names for entry 65107 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65108; -- NPC LOOT (Rare NPC Loot) - Snagglespear - Special Items - Table reference_loot_template_names for entry 65108 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5786; -- up from 1 - https://web.archive.org/web/20080217052821/http://wow.allakhazam.com/db/mob.html?wmob=5786
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65109; -- NPC LOOT (Rare NPC Loot) - Enforcer Emilgund - Special Items - Table reference_loot_template_names for entry 65109 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65111; -- NPC LOOT (Rare NPC Loot) - Warlord Kolkanis - Special Items - Table reference_loot_template_names for entry 65111 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5808; -- up from 1 - https://web.archive.org/web/20080217014456/http://wow.allakhazam.com/db/mob.html?wmob=5808
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65112; -- NPC LOOT (Rare NPC Loot) - Watch Commander Zalaphil - Special Items - Table reference_loot_template_names for entry 65112 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5809; -- up from 1 - https://web.archive.org/web/20080217014501/http://wow.allakhazam.com/db/mob.html?wmob=5809
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65113; -- NPC LOOT (Rare NPC Loot) - Death Flayer - Special Items - Table reference_loot_template_names for entry 65113 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65115; -- NPC LOOT (Rare NPC Loot) - Snort the Heckler - Special Items - Table reference_loot_template_names for entry 65115 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65116; -- NPC LOOT (Rare NPC Loot) - Thunderstomp - Special Items - Table reference_loot_template_names for entry 65116 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65117; -- NPC LOOT (Rare NPC Loot) - Azzere the Skyblade - Special Items - Table reference_loot_template_names for entry 65117 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65118; -- NPC LOOT (Rare NPC Loot) - Foreman Grills - Special Items - Table reference_loot_template_names for entry 65118 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65119; -- NPC LOOT (Rare NPC Loot) - Engineer Whirleygig - Special Items - Table reference_loot_template_names for entry 65119 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65123; -- NPC LOOT (Rare NPC Loot) - Malgin Barleybrew - Special Items - Table reference_loot_template_names for entry 65123 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65126; -- NPC LOOT (Rare NPC Loot) - Dishu - Special Items - Table reference_loot_template_names for entry 65126 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65127; -- NPC LOOT (Rare NPC Loot) - Achellios the Banished - Special Items - Table reference_loot_template_names for entry 65127 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65128; -- NPC LOOT (Rare NPC Loot) - Varo'then's Ghost - Special Items - Table reference_loot_template_names for entry 65128 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65129; -- NPC LOOT (Rare NPC Loot) - Ravasaur Matriarch - Special Items - Table reference_loot_template_names for entry 65129 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65130; -- NPC LOOT (Rare NPC Loot) - Clutchmother Zavas - Special Items - Table reference_loot_template_names for entry 65130 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65131; -- NPC LOOT (Rare NPC Loot) - Uhk'loc - Special Items - Table reference_loot_template_names for entry 65131 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65132; -- NPC LOOT (Rare NPC Loot) - Magister Hawkhelm - Special Items - Table reference_loot_template_names for entry 65132 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65133; -- NPC LOOT (Rare NPC Loot) - Antilos - Special Items - Table reference_loot_template_names for entry 65133 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65134; -- NPC LOOT (Rare NPC Loot) - Lady Sesspira - Special Items - Table reference_loot_template_names for entry 65134 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65136; -- NPC LOOT (Rare NPC Loot) - Gatekeeper Rageroar - Special Items - Table reference_loot_template_names for entry 65136 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65137; -- NPC LOOT (Rare NPC Loot) - Master Feardred - Special Items - Table reference_loot_template_names for entry 65137 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65138; -- NPC LOOT (Rare NPC Loot) - Flagglemurk the Cruel - Special Items - Table reference_loot_template_names for entry 65138 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65140; -- NPC LOOT (Rare NPC Loot) - Lord Sinslayer - Special Items - Table reference_loot_template_names for entry 65140 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65141; -- NPC LOOT (Rare NPC Loot) - Ambassador Bloodrage - Special Items - Table reference_loot_template_names for entry 65141 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65143; -- NPC LOOT (Rare NPC Loot) - Cyclok the Mad - Special Items - Table reference_loot_template_names for entry 65143 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65144; -- NPC LOOT (Rare NPC Loot) - Kregg Keelhaul - Special Items - Table reference_loot_template_names for entry 65144 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65145; -- NPC LOOT (Rare NPC Loot) - Soriid the Devourer - Special Items - Table reference_loot_template_names for entry 65145 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65146; -- NPC LOOT (Rare NPC Loot) - Haarka the Ravenous - Special Items - Table reference_loot_template_names for entry 65146 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65147; -- NPC LOOT (Rare NPC Loot) - Greater Firebird - Special Items - Table reference_loot_template_names for entry 65147 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65148; -- NPC LOOT (Rare NPC Loot) - Murderous Blisterpaw - Special Items - Table reference_loot_template_names for entry 65148 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65149; -- NPC LOOT (Rare NPC Loot) - Razortalon - Special Items - Table reference_loot_template_names for entry 65149 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65150; -- NPC LOOT (Rare NPC Loot) - Old Cliff Jumper - Special Items - Table reference_loot_template_names for entry 65150 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65151; -- NPC LOOT (Rare NPC Loot) - The Reak - Special Items - Table reference_loot_template_names for entry 65151 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65152; -- NPC LOOT (Rare NPC Loot) - Ironback - Special Items - Table reference_loot_template_names for entry 65152 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65153; -- NPC LOOT (Rare NPC Loot) - Jalinde Summerdrake - Special Items - Table reference_loot_template_names for entry 65153 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65154; -- NPC LOOT (Rare NPC Loot) - Retherokk the Berserker - Special Items - Table reference_loot_template_names for entry 65154 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65155; -- NPC LOOT (Rare NPC Loot) - Witherheart the Stalker - Special Items - Table reference_loot_template_names for entry 65155 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 8218; -- up from 2 - https://web.archive.org/web/20080216061047/http://wow.allakhazam.com/db/mob.html?wmob=8218
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65156; -- NPC LOOT (Rare NPC Loot) - Zul'arek Hatefowler - Special Items - Table reference_loot_template_names for entry 65156 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65157; -- NPC LOOT (Rare NPC Loot) - Rekk'tilac - Special Items - Table reference_loot_template_names for entry 65157 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65158; -- NPC LOOT (Rare NPC Loot) - Smoldar - Special Items - Table reference_loot_template_names for entry 65158 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65159; -- NPC LOOT (Rare NPC Loot) - Faulty War Golem - Special Items - Table reference_loot_template_names for entry 65159 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65160; -- NPC LOOT (Rare NPC Loot) - Shleipnarr - Special Items - Table reference_loot_template_names for entry 65160 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65161; -- NPC LOOT (Rare NPC Loot) - Scald - Special Items - Table reference_loot_template_names for entry 65161 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65162; -- NPC LOOT (Rare NPC Loot) - Slave Master Blackheart - Special Items - Table reference_loot_template_names for entry 65162 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65163; -- NPC LOOT (Rare NPC Loot) - Mojo the Twisted - Special Items - Table reference_loot_template_names for entry 65163 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65164; -- NPC LOOT (Rare NPC Loot) - Magronos the Unyielding - Special Items - Table reference_loot_template_names for entry 65164 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65165; -- NPC LOOT (Rare NPC Loot) - Akubar the Seer - Special Items - Table reference_loot_template_names for entry 65165 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65166; -- NPC LOOT (Rare NPC Loot) - Spiteflayer - Special Items - Table reference_loot_template_names for entry 65166 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65167; -- NPC LOOT (Rare NPC Loot) - Ravage - Special Items - Table reference_loot_template_names for entry 65167 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65168; -- NPC LOOT (Rare NPC Loot) - Clack the Reaver - Special Items - Table reference_loot_template_names for entry 65168 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65169; -- NPC LOOT (Rare NPC Loot) - Deatheye - Special Items - Table reference_loot_template_names for entry 65169 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65170; -- NPC LOOT (Rare NPC Loot) - Grunter - Special Items - Table reference_loot_template_names for entry 65170 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65171; -- NPC LOOT (Rare NPC Loot) - Dreadscorn - Special Items - Table reference_loot_template_names for entry 65171 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65173; -- NPC LOOT (Rare NPC Loot) - The Evalcharr - Special Items - Table reference_loot_template_names for entry 65173 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65175; -- NPC LOOT (Rare NPC Loot) - Thauris Balgarr - Special Items - Table reference_loot_template_names for entry 65175 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65176; -- NPC LOOT (Rare NPC Loot) - Gruklash - Special Items - Table reference_loot_template_names for entry 65176 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65177; -- NPC LOOT (Rare NPC Loot) - Malfunctioning Reaver - Special Items - Table reference_loot_template_names for entry 65177 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65178; -- NPC LOOT (Rare NPC Loot) - Scarshield Quartermaster - Special Items - Table reference_loot_template_names for entry 65178 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65179; -- NPC LOOT (Rare NPC Loot) - Hahk'Zor - Special Items - Table reference_loot_template_names for entry 65179 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65180; -- NPC LOOT (Rare NPC Loot) - Gorgon'och - Special Items - Table reference_loot_template_names for entry 65180 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65181; -- NPC LOOT (Rare NPC Loot) - Deathmaw - Special Items - Table reference_loot_template_names for entry 65181 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65182; -- NPC LOOT (Rare NPC Loot) - Terrorspark - Special Items - Table reference_loot_template_names for entry 65182 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65183; -- NPC LOOT (Rare NPC Loot) - Mezzir the Howler - Special Items - Table reference_loot_template_names for entry 65183 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65184; -- NPC LOOT (Rare NPC Loot) - Grizzle Snowpaw - Special Items - Table reference_loot_template_names for entry 65184 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65185; -- NPC LOOT (Rare NPC Loot) - Rak'shiri - Special Items - Table reference_loot_template_names for entry 65185 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65186; -- NPC LOOT (Rare NPC Loot) - Bayne - Special Items - Table reference_loot_template_names for entry 65186 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65187; -- NPC LOOT (Rare NPC Loot) - Ressan the Needler - Special Items - Table reference_loot_template_names for entry 65187 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65188; -- NPC LOOT (Rare NPC Loot) - Fellicent's Shade - Special Items - Table reference_loot_template_names for entry 65188 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65189; -- NPC LOOT (Rare NPC Loot) - Sri'skulk - Special Items - Table reference_loot_template_names for entry 65189 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65190; -- NPC LOOT (Rare NPC Loot) - Lady Vespia - Special Items - Table reference_loot_template_names for entry 65190 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65191; -- NPC LOOT (Rare NPC Loot) - Rorgish Jowl - Special Items - Table reference_loot_template_names for entry 65191 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65192; -- NPC LOOT (Rare NPC Loot) - Oakpaw - Special Items - Table reference_loot_template_names for entry 65192 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65193; -- NPC LOOT (Rare NPC Loot) - Branch Snapper - Special Items - Table reference_loot_template_names for entry 65193 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65194; -- NPC LOOT (Rare NPC Loot) - Eck'alom - Special Items - Table reference_loot_template_names for entry 65194 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65195; -- NPC LOOT (Rare NPC Loot) - Mugglefin - Special Items - Table reference_loot_template_names for entry 65195 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65196; -- NPC LOOT (Rare NPC Loot) - Mist Howler - Special Items - Table reference_loot_template_names for entry 65196 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65197; -- NPC LOOT (Rare NPC Loot) - Prince Raze - Special Items - Table reference_loot_template_names for entry 65197 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65198; -- NPC LOOT (Rare NPC Loot) - Duggan Wildhammer - Special Items - Table reference_loot_template_names for entry 65198 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65199; -- NPC LOOT (Rare NPC Loot) - Hed'mush the Rotting - Special Items - Table reference_loot_template_names for entry 65199 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65200; -- NPC LOOT (Rare NPC Loot) - Warlord Thresh'jin - Special Items - Table reference_loot_template_names for entry 65200 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65201; -- NPC LOOT (Rare NPC Loot) - Zul'Brin Warpbranch - Special Items - Table reference_loot_template_names for entry 65201 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65202; -- NPC LOOT (Rare NPC Loot) - Ranger Lord Hawkspear - Special Items - Table reference_loot_template_names for entry 65202 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65203; -- NPC LOOT (Rare NPC Loot) - Gish the Unmoving - Special Items - Table reference_loot_template_names for entry 65203 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65205; -- NPC LOOT (Rare NPC Loot) - Deathspeaker Selendre - Special Items - Table reference_loot_template_names for entry 65205 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65206; -- NPC LOOT (Rare NPC Loot) - Cursed Centaur - Special Items - Table reference_loot_template_names for entry 65206 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65207; -- NPC LOOT (Rare NPC Loot) - Ursol'lok - Special Items - Table reference_loot_template_names for entry 65207 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65208; -- NPC LOOT (Rare NPC Loot) - Gorefang - Special Items - Table reference_loot_template_names for entry 65208 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65209; -- NPC LOOT (Rare NPC Loot) - Old Vicejaw - Special Items - Table reference_loot_template_names for entry 65209 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65210; -- NPC LOOT (Rare NPC Loot) - Krethis Shadowspinner - Special Items - Table reference_loot_template_names for entry 65210 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65211; -- NPC LOOT (Rare NPC Loot) - Gravis Slipknot - Special Items - Table reference_loot_template_names for entry 65211 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65212; -- NPC LOOT (Rare NPC Loot) - Araga - Special Items - Table reference_loot_template_names for entry 65212 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65213; -- NPC LOOT (Rare NPC Loot) - Cranky Benj - Special Items - Table reference_loot_template_names for entry 65213 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65214; -- NPC LOOT (Rare NPC Loot) - 7:XT - Special Items - Table reference_loot_template_names for entry 65214 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65215; -- NPC LOOT (Rare NPC Loot) - Prince Kellen - Special Items - Table reference_loot_template_names for entry 65215 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65216; -- NPC LOOT (Rare NPC Loot) - Kaskk - Special Items - Table reference_loot_template_names for entry 65216 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65217; -- NPC LOOT (Rare NPC Loot) - Hissperak - Special Items - Table reference_loot_template_names for entry 65217 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65218; -- NPC LOOT (Rare NPC Loot) - Giggler - Special Items - Table reference_loot_template_names for entry 65218 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65219; -- NPC LOOT (Rare NPC Loot) - Accursed Slitherblade - Special Items - Table reference_loot_template_names for entry 65219 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65220; -- NPC LOOT (Rare NPC Loot) - Burgle Eye - Special Items - Table reference_loot_template_names for entry 65220 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65221; -- NPC LOOT (Rare NPC Loot) - Drogoth the Roamer - Special Items - Table reference_loot_template_names for entry 65221 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65222; -- NPC LOOT (Rare NPC Loot) - Dart - Special Items - Table reference_loot_template_names for entry 65222 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65223; -- NPC LOOT (Rare NPC Loot) - Ripscale - Special Items - Table reference_loot_template_names for entry 65223 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65224; -- NPC LOOT (Rare NPC Loot) - Hayoc - Special Items - Table reference_loot_template_names for entry 65224 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65225; -- NPC LOOT (Rare NPC Loot) - The Rot - Special Items - Table reference_loot_template_names for entry 65225 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65226; -- NPC LOOT (Rare NPC Loot) - Lord Angler - Special Items - Table reference_loot_template_names for entry 65226 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65227; -- NPC LOOT (Rare NPC Loot) - Oozeworm - Special Items - Table reference_loot_template_names for entry 65227 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65228; -- NPC LOOT (Rare NPC Loot) - Shanda the Spinner - Special Items - Table reference_loot_template_names for entry 65228 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65229; -- NPC LOOT (Rare NPC Loot) - Lord Condar - Special Items - Table reference_loot_template_names for entry 65229 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65230; -- NPC LOOT (Rare NPC Loot) - Seeker Aqualon - Special Items - Table reference_loot_template_names for entry 65230 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65231; -- NPC LOOT (Rare NPC Loot) - Squiddic - Special Items - Table reference_loot_template_names for entry 65231 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65232; -- NPC LOOT (Rare NPC Loot) - Ribchaser - Special Items - Table reference_loot_template_names for entry 65232 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65233; -- NPC LOOT (Rare NPC Loot) - Snarlflare - Special Items - Table reference_loot_template_names for entry 65233 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65234; -- NPC LOOT (Rare NPC Loot) - Boulderheart - Special Items - Table reference_loot_template_names for entry 65234 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65235; -- NPC LOOT (Rare NPC Loot) - Scargil - Special Items - Table reference_loot_template_names for entry 65235 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65236; -- NPC LOOT (Rare NPC Loot) - Lady Zephris - Special Items - Table reference_loot_template_names for entry 65236 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65237; -- NPC LOOT (Rare NPC Loot) - Ro'Bark - Special Items - Table reference_loot_template_names for entry 65237 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65238; -- NPC LOOT (Rare NPC Loot) - Creepthess - Special Items - Table reference_loot_template_names for entry 65238 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65239; -- NPC LOOT (Rare NPC Loot) - Big Samras - Special Items - Table reference_loot_template_names for entry 65239 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65240; -- NPC LOOT (Rare NPC Loot) - Jimmy the Bleeder - Special Items - Table reference_loot_template_names for entry 65240 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65241; -- NPC LOOT (Rare NPC Loot) - Death Howl - Special Items - Table reference_loot_template_names for entry 65241 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65242; -- NPC LOOT (Rare NPC Loot) - Alshirr Banebreath - Special Items - Table reference_loot_template_names for entry 65242 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65243; -- NPC LOOT (Rare NPC Loot) - Ragepaw - Special Items - Table reference_loot_template_names for entry 65243 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65244; -- NPC LOOT (Rare NPC Loot) - Olm the Wise - Special Items - Table reference_loot_template_names for entry 65244 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65245; -- NPC LOOT (Rare NPC Loot) - Mongress - Special Items - Table reference_loot_template_names for entry 65245 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65246; -- NPC LOOT (Rare NPC Loot) - The Ongar - Special Items - Table reference_loot_template_names for entry 65246 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65247; -- NPC LOOT (Rare NPC Loot) - Mirelow - Special Items - Table reference_loot_template_names for entry 65247 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65248; -- NPC LOOT (Rare NPC Loot) - Gnawbone - Special Items - Table reference_loot_template_names for entry 65248 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65249; -- NPC LOOT (Rare NPC Loot) - Harb Foulmountain - Special Items - Table reference_loot_template_names for entry 65249 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65250; -- NPC LOOT (Rare NPC Loot) - Gibblesnik - Special Items - Table reference_loot_template_names for entry 65250 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65252; -- NPC LOOT (Rare NPC Loot) - Grimmaw - Special Items - Table reference_loot_template_names for entry 65252 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 14429; -- up from 15 - https://web.archive.org/web/20080217052029/http://wow.allakhazam.com/db/mob.html?wmob=14429
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65253; -- NPC LOOT (Rare NPC Loot) - Duskstalker - Special Items - Table reference_loot_template_names for entry 65253 has name but no entry
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 14430; -- up from 1 - https://web.archive.org/web/20080217052034/http://wow.allakhazam.com/db/mob.html?wmob=14430
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65256; -- NPC LOOT (Rare NPC Loot) - Sludginn - Special Items - Table reference_loot_template_names for entry 65256 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65257; -- NPC LOOT (Rare NPC Loot) - Fingat - Special Items - Table reference_loot_template_names for entry 65257 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65258; -- NPC LOOT (Rare NPC Loot) - Gilmorian - Special Items - Table reference_loot_template_names for entry 65258 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65259; -- NPC LOOT (Rare NPC Loot) - Molt Thorn - Special Items - Table reference_loot_template_names for entry 65259 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65260; -- NPC LOOT (Rare NPC Loot) - Gretheer - Special Items - Table reference_loot_template_names for entry 65260 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65261; -- NPC LOOT (Rare NPC Loot) - Krellack - Special Items - Table reference_loot_template_names for entry 65261 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65262; -- NPC LOOT (Rare NPC Loot) - Grubthor - Special Items - Table reference_loot_template_names for entry 65262 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65263; -- NPC LOOT (Rare NPC Loot) - Huricanian - Special Items - Table reference_loot_template_names for entry 65263 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65264; -- NPC LOOT (Rare NPC Loot) - Twilight Lord Everun - Special Items - Table reference_loot_template_names for entry 65264 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65265; -- NPC LOOT (Rare NPC Loot) - Gluggle - Special Items - Table reference_loot_template_names for entry 65265 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65266; -- NPC LOOT (Rare NPC Loot) - Roloch - Special Items - Table reference_loot_template_names for entry 65266 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65267; -- NPC LOOT (Rare NPC Loot) - Rippa - Special Items - Table reference_loot_template_names for entry 65267 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65268; -- NPC LOOT (Rare NPC Loot) - Kurmokk - Special Items - Table reference_loot_template_names for entry 65268 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65269; -- NPC LOOT (Rare NPC Loot) - Verifonix - Special Items - Table reference_loot_template_names for entry 65269 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65270; -- NPC LOOT (Rare NPC Loot) - Lumbering Horror - Special Items (modify for classic & tbc, wotlk is different with level 70 items 40k+ item entries) - Table reference_loot_template_names for entry 65270 has name but no entry
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 14697 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 14697 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65271; -- NPC LOOT (Rare NPC Loot) - Spirit of the Damned - Special Items - Table reference_loot_template_names for entry 65271 has name but no entry
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 16379 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 16379 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65272; -- NPC LOOT (Rare NPC Loot) - Bone Witch - Special Items - Table reference_loot_template_names for entry 65272 has name but no entry
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 16380 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 16380 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65273; -- NPC LOOT (Rare NPC Loot) - Eldinarcus - Special Items - Table reference_loot_template_names for entry 65273 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65274; -- NPC LOOT (Rare NPC Loot) - Tregla - Special Items - Table reference_loot_template_names for entry 65274 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65275; -- NPC LOOT (Rare NPC Loot) - Crusty - Special Items - Table reference_loot_template_names for entry 65275 has name but no entry

-- classicmangos single fixes
-- added in tbc+
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65073; -- NPC LOOT (Rare NPC Loot) - Geomancer Flintdagger - Special Items - Table reference_loot_template_names for entry 65073 has name but no entry

-- https://github.com/cmangos/tbc-db/blob/a42bd13849fa6944cc1f4a109e6bf31c1307b20f/Updates/0414_techbot_random_texts.sql#L294
-- https://github.com/cmangos/tbc-db/commit/bd2a90a8c362cb3d4f2f663b8d7b2e623e2b5ac6
-- 44000	Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49) Incorrect! - Table reference_loot_template_names for entry 44000 has name but no entry
DELETE FROM `reference_loot_template_names` WHERE `entry` = 44000; -- Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49)
DELETE FROM `reference_loot_template` WHERE `entry` = 44000;
-- https://www.wowhead.com/classic/item=15902/a-crazy-grab-bag#contains;50-2+16-19+1 - ItemLevel 56-61 Classic Items! as is set in classicmangos
-- 60199	NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY
DELETE FROM `item_loot_template` WHERE `entry` = 15902;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (15902, 10121, 9.5, 0, 1, 1, 0, 'Ornate Gauntlets');
-- (15902, 10154, 4.8, 0, 1, 1, 0, 'Mercurial Girdle');
-- (15902, 10169, 4.8, 0, 1, 1, 0, 'Templar Legplates');
-- (15902, 10216, 4.8, 0, 1, 1, 0, 'Elegant Belt');
-- (15902, 10217, 4.8, 0, 1, 1, 0, 'Elegant Leggings');
-- (15902, 10225, 4.8, 0, 1, 1, 0, 'Nightshade Gloves');
-- (15902, 10236, 4.8, 0, 1, 1, 0, 'Engraved Leggings');
-- (15902, 10267, 4.8, 0, 1, 1, 0, 'Masterwork Cape');
-- (15902, 10275, 4.8, 0, 1, 1, 0, 'Emerald Breastplate');
-- (15902, 10276, 4.8, 0, 1, 1, 0, 'Emerald Sabatons');
-- (15902, 10281, 4.8, 0, 1, 1, 0, 'Emerald Pauldrons');
-- (15902, 10282, 4.8, 0, 1, 1, 0, 'Emerald Vambraces');
(15902, 60199, 100, 1, -60199, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY');

