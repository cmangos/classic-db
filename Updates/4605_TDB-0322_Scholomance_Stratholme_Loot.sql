-- Add Scholomance & Stratholme Zone Drop Refloots
-- Cleanups and Improvements
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (30011,30012);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(30011, 'Scholomance - Zone Drop'),
(30012, 'Stratholme - Zone Drop');

DELETE FROM `reference_loot_template` WHERE `entry` IN (30011,30012);
-- ===========
-- Scholomance
-- ===========
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
(30011, 14536, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=14536/bonebrace-hauberk - https://web.archive.org/web/20080502205828/http://wow.allakhazam.com/db/item.html?witem=14536
(30011, 18697, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18697/coldstone-slippers
(30011, 18698, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18698/tattered-leather-hood
(30011, 18699, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18699/icy-tomb-spaulders
(30011, 18700, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18700/malefic-bracers
(30011, 18701, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18701/innervating-band
(30011, 18702, 0, 1, 1, 1, 0, ''); -- https://www.wowhead.com/classic/item=18702/belt-of-the-ordained

DELETE FROM `creature_loot_template` WHERE `item` IN (14536,18697,18698,18699,18700,18701,18702,30011);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
(1853, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- allakhazam
(10469, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10469/scholomance-adept
(10470, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10470/scholomance-neophyte
(10471, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10471/scholomance-acolyte
(10472, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10472/scholomance-occultist
(10476, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10476/scholomance-necrolyte
(10477, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10477/scholomance-necromancer
(10478, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10478/splintered-skeleton
(10486, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10486/risen-warrior
(10487, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10487/risen-protector
(10488, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10488/risen-construct
(10489, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10489/risen-guard
(10491, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10491/risen-bonewarder
(10495, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10495/diseased-ghoul
(10498, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10498/spectral-tutor
(10499, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10499/spectral-researcher
(10500, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10500/spectral-teacher
(10502, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- allakhazam
(10503, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10503/jandice-barov
(10504, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10504/lord-alexei-barov
(10505, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10505/instructor-malicia
(10506, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- allakhazam
(10507, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10507/the-ravenian
(10508, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- allakhazam
(10901, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt
(11257, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=11257/scholomance-handler
(11261, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov
(11551, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=11551/necrofiend
(11582, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=11582/scholomance-dark-summoner
(11622, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=11622/rattlegore
(14518, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=14518/aspect-of-banality
(14519, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=14519/aspect-of-corruption
(14520, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=14520/aspect-of-malice
(14521, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=14521/aspect-of-shadow
(14695, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'), -- https://www.wowhead.com/classic/npc=14695/lord-blackwood
(14861, 30011, 0.05, 1, -30011, 1, 0, 'Scholomance - Zone Drop'); -- https://www.wowhead.com/classic/npc=14861/blood-steward-of-kirtonos

-- https://www.wowhead.com/tbc/item=16705/dreadmist-wraps#dropped-by & https://web.archive.org/web/20080503182928/http://wow.allakhazam.com/db/item.html?witem=16705
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (8+17+14.5) / 3 WHERE `item` = 16705 AND `entry` = 10901; -- Lorekeeper Polkelt (17) 14.50%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.4+0.02+0.02) / 3 WHERE `item` = 16705 AND `entry` = 10477; -- Scholomance Necromancer (0.02) 0.02%

-- https://www.wowhead.com/tbc/item=16684/magisters-gloves & https://web.archive.org/web/20080503182923/http://wow.allakhazam.com/db/item.html?witem=16684
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (7+14+9.56) / 3 WHERE `item` = 16684 AND `entry` = 11261; -- Doctor Theolen Krastinov (14) 9.56%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.58+0.02) / 3 WHERE `item` = 16684 AND `entry` = 10469; -- Scholomance Adept (4.58) 0.02%

-- https://www.wowhead.com/tbc/item=16685/magisters-belt & https://web.archive.org/web/20080613144400/http://wow.allakhazam.com/db/item.html?witem=16685
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.7+1.6+1.55) / 3 WHERE `item` = 16685 AND `entry` = 10469; -- Scholomance Adept (1.6) 1.55%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+2.22+2.00) / 3 WHERE `item` = 16685 AND `entry` = 9239; -- Smolderthorn Mystic (2.22) 2.00%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.2+1+0.87) / 3 WHERE `item` = 16685 AND `entry` = 10398; -- Thuzadin Shadowcaster (1) 0.87%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.1+0.9+0.86) / 3 WHERE `item` = 16685 AND `entry` = 10400; -- Thuzadin Necromancer (0.9) 0.86%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.3+0.89+0.84) / 3 WHERE `item` = 16685 AND `entry` = 10419; -- Crimson Conjuror (0.89) 0.84%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.86+1.83) / 3 WHERE `item` = 16685 AND `entry` = 10422; -- Crimson Sorcerer (1.86) 1.83%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+2.65+2.48) / 3 WHERE `item` = 16685 AND `entry` = 10425; -- Crimson Battle Mage (2.65) 2.48%

-- https://www.wowhead.com/tbc/item=16710/shadowcraft-bracers / https://web.archive.org/web/20080503182933/http://wow.allakhazam.com/db/item.html?witem=16710
DELETE FROM `creature_loot_template` WHERE `item` = 16710 AND `entry` = 9265; -- Smolderthorn Shadow Hunter (1.18) - none!
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+3.46+1.26) / 3 WHERE `item` = 16710 AND `entry` = 10488; -- Risen Construct (3.46) 1.26%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.4+1.38) / 3 WHERE `item` = 16710 AND `entry` = 10405; -- Plague Ghoul (1.4) 1.38%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+6.329+3.78+1.32) / 4 WHERE `item` = 16710 AND `entry` = 10472; -- Scholomance Occultist / Dark Shade (6.329,3.78) 1.32%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+6.329+3.78+1.49) / 4 WHERE `item` = 16710 AND `entry` = 11284; -- Scholomance Occultist / Dark Shade (6.329,3.78) 1.49%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+5+3.63) / 3 WHERE `item` = 16710 AND `entry` = 10505; -- Instructor Malicia (5) 3.63%

-- https://www.wowhead.com/tbc/item=16716/wildheart-belt - https://web.archive.org/web/20080604015020/http://wow.allakhazam.com/db/item.html?witem=16716
DELETE FROM `creature_loot_template` WHERE `item` = 16716 AND `entry` IN (10416,10417); -- Bile Spewer (0.48) / Venom Belcher (0.46) - none!
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+1.11+0.98) / 3 WHERE `item` = 16716 AND `entry` = 9258; -- Scarshield Raider (1.11) 0.98%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.53+1.45) / 3 WHERE `item` = 16716 AND `entry` = 10499; -- Spectral Researcher (1.53) 1.45%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+3.82+1.44) / 3 WHERE `item` = 16716 AND `entry` = 10500; -- Spectral Teacher (3.82) 1.44%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.6+1.08+0.96) / 3 WHERE `item` = 16716 AND `entry` = 9692; -- Bloodaxe Raider (1.08) 0.96%
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES (9736, 16716, 1.35, 0, 1, 1, 0, ''); -- missing, prob due to faction 1.30%, seemingly still drops set items in wrath so we're missing a refloot here.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+5.2+1.68) / 3 WHERE `item` = 16716 AND `entry` = 11257; -- Scholomance Handler (5.2) 1.68%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (5+4+3.38) / 3 WHERE `item` = 16716 AND `entry` = 10507; -- The Ravenian (4) 3.38%

-- https://www.wowhead.com/tbc/item=16722/lightforge-bracers - https://web.archive.org/web/20080503134045/http://wow.allakhazam.com/db/item.html?witem=16722
DELETE FROM `creature_loot_template` WHERE `item` = 16722 AND `entry` IN (10408,10409); -- Rockwing Gargoyle (0.6) / Rockwing Screecher (0.7) - none!
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+3.64+1.76) / 3 WHERE `item` = 16722 AND `entry` = 10486; -- Risen Warrior (3.64) 1.76%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+3.68+2.66) / 3 WHERE `item` = 16722 AND `entry` = 10487; -- Risen Protector (3.68) 2.66%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+5+3.05) / 3 WHERE `item` = 16722 AND `entry` = 10504; -- Lord Alexei Barov (5) 3.05%

-- https://www.wowhead.com/tbc/item=16702/dreadmist-belt - https://web.archive.org/web/20080412093522/http://wow.allakhazam.com/db/item.html?witem=16702
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1+1.3+0.85) / 3 WHERE `item` = 16702 AND `entry` = 10398; -- Thuzadin Shadowcaster (1.3) 0.85%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.1+1.2+0.96) / 3 WHERE `item` = 16702 AND `entry` = 10400; -- Thuzadin Necromancer (1.2) 0.96%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.3+0.9+0.82) / 3 WHERE `item` = 16702 AND `entry` = 10419; -- Crimson Conjuror (0.9) 0.82%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+0.03+0.02) / 3 WHERE `item` = 16702 AND `entry` = 10422; -- Crimson Sorcerer (0.03) 0.02%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.5+1.7+1.4) / 3 WHERE `item` = 16702 AND `entry` = 10477; -- Scholomance Necromancer (1.7) 1.40%

-- https://www.wowhead.com/tbc/item=16714/wildheart-bracers - https://web.archive.org/web/20080331193114/http://wow.allakhazam.com/db/item.html?witem=16714
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+4.52+1.59) / 3 WHERE `item` = 16714 AND `entry` = 10426; -- Crimson Inquisitor (4.52) 1.59%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+3.9+1.43) / 3 WHERE `item` = 16714 AND `entry` = 10463; -- Shrieking Banshee (3.9) 1.43%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+4.62+1.58) / 3 WHERE `item` = 16714 AND `entry` = 10464; -- Wailing Banshee (4.62) 1.58%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.5+1.36+1.31) / 3 WHERE `item` = 16714 AND `entry` = 10495; -- Diseased Ghoul (1.36) 1.31%

-- https://www.wowhead.com/tbc/item=12753/skin-of-shadow - https://web.archive.org/web/20080105091637/http://wow.allakhazam.com/db/item.html?witem=12753
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 12753 AND `entry` = 10488; -- Risen Construct (17) 18.22%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12753 AND `entry` = 10502; -- Lady Illucia Barov (19) 14.85%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12753 AND `entry` = 10505; -- Instructor Malicia (17) 13.01%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 12753 AND `entry` = 10491; -- Risen Bonewarder (17) 19.43%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12753 AND `entry` = 10507; -- The Ravenian (17) 12.43%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12753 AND `entry` = 10901; -- Lorekeeper Polkelt (17) 13.99%

-- https://www.wowhead.com/tbc/item=20520/dark-rune - https://web.archive.org/web/20080102031432/http://wow.allakhazam.com/db/item.html?witem=20520 - maybe more like 15%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 10502; -- Lady Illucia Barov (51.4353) 35.85%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 10477; -- Scholomance Necromancer (20) 16.37%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 11582; -- Scholomance Dark Summoner (20) 15.04%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 10507; -- The Ravenian (44) 30.95%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 10505; -- Instructor Malicia (44) 33.06%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 20520 AND `entry` = 10901; -- Lorekeeper Polkelt (44) 35.34%

DELETE FROM `creature_loot_template` WHERE `item` = 10592; -- Catseye Elixir
DELETE FROM `creature_loot_template` WHERE `item` = 15994; -- Thorium Widget
DELETE FROM `creature_loot_template` WHERE `item` = 24231; -- Coarse Snuff
DELETE FROM `creature_loot_template` WHERE `item` = 24281; -- Carved Ivory Bone

-- https://www.wowhead.com/tbc/item=7191/fused-wiring - https://web.archive.org/web/20080104034440/http://wow.allakhazam.com/db/item.html?witem=7191
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES (7800, 7191, 2, 0, 1, 1, 0, ''); -- Mekgineer Thermaplugg
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES (6229, 7191, 1.5, 0, 1, 1, 0, ''); -- Crowd Pummeler 9-60
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES (6235, 7191, 1, 0, 1, 1, 0, ''); -- Electrocutioner 6000
DELETE FROM `creature_loot_template` WHERE `item` = 7191 AND `entry` IN (
9096, -- Rage Talon Dragonspawn
10319, -- Blackhand Iron Guard
10371, -- Rage Talon Captain
10398, -- Thuzadin Shadowcaster
10419, -- Crimson Conjuror
11448, -- Gordok Warlock
11456, -- Wildspawn Shadowstalker
12897); -- Silverwing Warrior

DELETE FROM `creature_loot_template` WHERE `item` = 13362 AND `entry` = 10384; -- Letter from the Front - Spectral Citizen
DELETE FROM `creature_loot_template` WHERE `item` = 13364 AND `entry` = 10385; -- Fras Siabi's Advertisement - Ghostly Citizen
DELETE FROM `creature_loot_template` WHERE `item` = 14227 AND `entry` IN ( -- Ironweb Spider Silk
9096, -- Rage Talon Dragonspawn
8898, -- Anvilrage Marshal
10319, -- Blackhand Iron Guard
10371, -- Rage Talon Captain
10419, -- Crimson Conjuror
11456); -- Wildspawn Shadowstalker

-- ==========
-- Stratholme
-- ==========
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
(30012, 17061, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=17061/junos-shadow - https://web.archive.org/web/20080503102143/http://wow.allakhazam.com/db/item.html?witem=17061
(30012, 18736, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18736/plaguehound-leggings
(30012, 18741, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18741/morlunes-bracer
(30012, 18742, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18742/stratholme-militia-shoulderguard
(30012, 18743, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18743/gracious-cape
(30012, 18744, 0, 1, 1, 1, 0, ''), -- https://www.wowhead.com/classic/item=18744/plaguebat-fur-gloves
(30012, 18745, 0, 1, 1, 1, 0, ''); -- https://www.wowhead.com/classic/item=18745/sacred-cloth-leggings

DELETE FROM `creature_loot_template` WHERE `item` IN (17061,18736,18741,18742,18743,18744,18745,30012);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, comments) VALUES
(10381, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10381/ravaged-cadaver
(10382, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10382/mangled-cadaver
(10384, 30012, 0.03, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10384/spectral-citizen
(10385, 30012, 0.03, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10385/ghostly-citizen
(10390, 30012, 0.01, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10390/skeletal-guardian
(10391, 30012, 0.01, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10391/skeletal-berserker
(10394, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10394/black-guard-sentry
(10398, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10398/thuzadin-shadowcaster
(10399, 30012, 0.01, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10399/thuzadin-acolyte
(10400, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10400/thuzadin-necromancer
(10405, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10405/plague-ghoul
(10406, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10406/ghoul-ravener
(10407, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10407/fleshflayer-ghoul
(10408, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10408/rockwing-gargoyle
(10409, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10409/rockwing-screecher
(10412, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10412/crypt-crawler
(10413, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10413/crypt-beast
(10414, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10414/patchwork-horror
(10416, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10416/bile-spewer
(10417, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10417/venom-belcher
(10418, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10418/crimson-guardsman
(10419, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10419/crimson-conjuror
(10420, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10420/crimson-initiate
(10421, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10421/crimson-defender
(10422, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10422/crimson-sorcerer
(10423, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10423/crimson-priest
(10424, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10424/crimson-gallant
(10425, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10425/crimson-battle-mage
(10426, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10426/crimson-inquisitor
(10435, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10435/magistrate-barthilas
(10436, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10436/baroness-anastari
(10437, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10437/nerubenkan
(10438, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10438/maleki-the-pallid
(10439, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10439/ramstein-the-gorger
(10440, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10440/baron-rivendare
(10463, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10463/shrieking-banshee
(10464, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10464/wailing-banshee
(10808, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10808/timmy-the-cruel
(10811, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10811/archivist-galford
(10813, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=10812/grand-crusader-dathrohan (Grand Crusader Dathrohan 10812)
(11032, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=11032/malor-the-zealous
(11043, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=11043/crimson-monk
(11121, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'), -- https://www.wowhead.com/classic/npc=11121/black-guard-swordsmith
(14684, 30012, 0.05, 1, -30012, 1, 0, 'Stratholme - Zone Drop'); -- https://www.wowhead.com/classic/npc=14684/balzaphon

-- https://www.wowhead.com/tbc/item=16697/devout-bracers - https://web.archive.org/web/20080112072010/http://wow.allakhazam.com/db/item.html?witem=16697
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1+1.28+0.84) / 3 WHERE `item` = 16697 AND `entry` = 10398; -- Thuzadin Shadowcaster (1.28) 0.84%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.1+1.58+0.94) / 3 WHERE `item` = 16697 AND `entry` = 10400; -- Thuzadin Necromancer (1.58) 0.94%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.3+0.95+0.87) / 3 WHERE `item` = 16697 AND `entry` = 10419; -- Crimson Conjuror (0.95) 0.87%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.9+1.67) / 3 WHERE `item` = 16697 AND `entry` = 10420; -- Crimson Initiate (1.9) 1.67%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+3.71+3.53) / 3 WHERE `item` = 16697 AND `entry` = 10423; -- Crimson Priest (3.71) 3.53%

-- https://www.wowhead.com/tbc/item=16681/beaststalkers-bindings - https://web.archive.org/web/20080111035437/http://wow.allakhazam.com/db/item.html?witem=16681
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (7+1.74+1.7) / 3 WHERE `item` = 16681 AND `entry` = 9096; -- Rage Talon Dragonspawn (1.74) 1.70%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.02+1.41) / 3 WHERE `item` = 16681 AND `entry` = 10406; -- Ghoul Ravener (4.02) 1.41%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.32+1.33) / 3 WHERE `item` = 16681 AND `entry` = 10407; -- Fleshflayer Ghoul (4.32) 1.33%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+2.04+1.84) / 3 WHERE `item` = 16681 AND `entry` = 10421; -- Crimson Defender (2.04) 1.84%

-- https://www.wowhead.com/tbc/item=16671/bindings-of-elements - https://web.archive.org/web/20080116225223/http://wow.allakhazam.com/db/item.html?witem=16671
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+2.97+2.89) / 3 WHERE `item` = 16671 AND `entry` = 11043; -- Crimson Monk (2.97) 2.89%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.1+1.19) / 3 WHERE `item` = 16671 AND `entry` = 10412; -- Crypt Crawler (4.1) 1.19%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.76+1.28) / 3 WHERE `item` = 16671 AND `entry` = 10413; -- Crypt Beast (4.76) 1.28%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.46+1.44) / 3 WHERE `item` = 16671 AND `entry` = 10478; -- Splintered Skeleton (1.46) 1.44%

-- https://www.wowhead.com/tbc/item=16736/belt-of-valor - https://web.archive.org/web/20080117092805/http://wow.allakhazam.com/db/item.html?witem=16736 - Highlord Omokk prenerf?
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+1.98+1.79) / 3 WHERE `item` = 16736 AND `entry` = 9268; -- Smolderthorn Berserker (1.98) 1.79%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (3+3.3+2.73) / 3 WHERE `item` = 16736 AND `entry` = 10414; -- Patchwork Horror (3.3) 2.73%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.9+2.7+2.1) / 3 WHERE `item` = 16736 AND `entry` = 10416; -- Bile Spewer (2.7) 2.10%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (1.1+3+2.15) / 3 WHERE `item` = 16736 AND `entry` = 10417; -- Venom Belcher (3) 2.15%

-- https://www.wowhead.com/tbc/item=16723/lightforge-belt - https://web.archive.org/web/20080108144737/http://wow.allakhazam.com/db/item.html?witem=16723
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.6+1.95) / 3 WHERE `item` = 16723 AND `entry` = 10408; -- Rockwing Gargoyle (4.6) 1.95%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (2+4.5+1.89) / 3 WHERE `item` = 16723 AND `entry` = 10409; -- Rockwing Screecher (4.5) 1.89%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.6+1.77+1.65) / 3 WHERE `item` = 16723 AND `entry` = 10418; -- Crimson Guardsman (1.77) 1.65%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (4+4.32+1.68) / 3 WHERE `item` = 16723 AND `entry` = 10424; -- Crimson Gallant (4.32) 1.68%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = (0.15+0.52) / 2 WHERE `item` = 16723 AND `entry` = 12128; -- Crimson Elite (0.52) keep legacy data. - https://web.archive.org/web/20080104234232/http://wow.allakhazam.com/db/mob.html?wmob=12128

-- https://www.wowhead.com/tbc/item=18335/pristine-black-diamond - https://web.archive.org/web/20071225184301/http://wow.allakhazam.com/db/item.html?witem=18335
-- Reinsert for TDB/WDB from CDB - wotlk should reinsert complete data from tbcmangos, wotlk uses blank 1% chance which is much too high and wrong.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10477, 18335, 0.1051, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10502, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10503, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10505, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10507, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10508, 18335, 0.25, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10901, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(11261, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(11622, 18335, 0.1, 0, 1, 1, 0, 'Pristine Black Diamond'),
-- Reinsert for TDB only from CDB
(16145, 18335, 0.0796, 0, 1, 1, 0, 'Pristine Black Diamond'),
(16154, 18335, 0.1376, 0, 1, 1, 0, 'Pristine Black Diamond'),
(16163, 18335, 0.1316, 0, 1, 1, 0, 'Pristine Black Diamond');

UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (16156,16157,16158,16803);
DELETE FROM `creature_loot_template` WHERE `entry` IN (16156,16157,16158,16803); -- false assigned loot (see amount in web.archive)
REPLACE INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`) SELECT `entry`, 18335, 0.1, 0, 1, 1 FROM `creature_template` WHERE `entry` IN (
-- classic + tbc only (Naxx)
-- 16156, -- Dark Touched Warrior (false positive)
-- 16157, -- Doom Touched Warrior (false positive)
-- 16158, -- Death Touched Warrior (false positive)
16451, -- Deathknight Vindicator
-- 16803, -- Deathknight Understudy (Bossfight)
-- all
1838, -- Scarlet Interrogator
7069, -- Condemned Monk
7071, -- Cursed Paladin
9196, -- Highlord Omokk
9217, -- Spirestone Lord Magus
9237, -- War Master Voone
9236, -- Shadow Hunter Vosh'gajin
9596, -- Bannok Grimaxe
9736, -- Quartermaster Zigris
10263, -- Burning Felguard
10393, -- Skul
10429, -- Warchief Rend Blackhand
10432, -- Vectus
10433, -- Marduk Blackpool
10435, -- Magistrate Barthilas
10436, -- Baroness Anastari
10438, -- Maleki the Pallid
10440, -- Baron Rivendare
10472, -- Scholomance Occultist
10504, -- Lord Alexei Barov
10509, -- Jed Runewatcher
10516, -- The Unforgiven
10558, -- Hearthsinger Forresten
10808, -- Timmy the Cruel
10811, -- Archivist Galford
10813, -- Balnazzar (Grand Crusader Dathrohan 10812) 
10899, -- Goraluk Anvilcrack
10997, -- Cannon Master Willey
11058, -- Fras Siabi
11082, -- Stratholme Courier
11120, -- Crimson Hammersmith
11121, -- Black Guard Swordsmith
11498, -- Skarr the Unbreakable
11501, -- King Gordok
14321, -- Guard Fengus
14323, -- Guard Slip'kik
14325, -- Captain Kromcrush
14326, -- Guard Mol'dar
14327, -- Lethtendris
11467, -- Tsu'zee
11486, -- Prince Tortheldrin
11487, -- Magister Kalendris
11488, -- Illyanna Ravenoak
11490, -- Zevrim Thornhoof
11492, -- Alzzin the Wildshaper
12337, -- Crimson Courier
13442, -- Arch Druid Renferal
14324, -- Cho'Rush the Observer
14349, -- Pimgib
14354, -- Pusillin
14506, -- Lord Hel'nurath
14516, -- Death Knight Darkreaver
14861, -- Blood Steward of Kirtonos
16042); -- Lord Valthalak

-- Table 'creature_loot_template' entry 11498 isn't creature entry and not referenced from loot, and then useless.
UPDATE `creature_template` SET `LootId` = `entry` WHERE `entry` IN (11497,11498);
-- Add missing Loot Templates for Dire Maul Arena Bosses
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11447, 35015, 100, 0, -35015, 2, 0, 'Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items'),
(11497, 35015, 100, 0, -35015, 2, 0, 'Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items'),
(11498, 35015, 100, 0, -35015, 2, 0, 'Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items');

-- Bonus from vmangos discord
DELETE FROM `creature_loot_template` WHERE `item` IN (11184,11185,11186,11188); -- ungoro power crystals

