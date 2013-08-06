-- Adding 30 minutes duration (real time) to Fresh Carcass
-- Source: http://www.wowhead.com/item=5810#comments
UPDATE `item_template` SET `duration` = 1800, `ExtraFlags` = 2 WHERE `entry` = 5810;

-- Adding 30 minutes (real time) duration to Fresh Zhevra Carcass
-- Source: http://www.wowhead.com/item=10338#comments
UPDATE `item_template` SET `duration` = 1800, `ExtraFlags` = 2 WHERE `entry` = 10338;

-- fixing Quest 3741 allways has been a crossfaction quest
-- Source: http://www.wowwiki.com/Quest:Nida%27s_Necklace?direction=next&oldid=826304
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 3741;

-- Changes any reference to Hemet Jr. to Hemet because in classic Hemet Jr. did not exist and was added in TBC as
-- a replacement of Hemet (senior) who had left to Outland
-- fixing Quest 197 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill Tethis, an elusive, dangerous raptor in Stranglethorn.' WHERE `entry` = 197;

-- fixing Quest 196 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Jungle Stalkers.' WHERE `entry` = 196;

-- fixing Quest 195 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Lashtail Raptors.' WHERE `entry` = 195;

-- fixing Quest 194 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Stranglethorn Raptors.' WHERE `entry` = 194;
UPDATE `quest_template` SET `RequestItemsText` = 'I never met a hunter who got any kills by standing around the campfire. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?' WHERE `entry` = 194;

-- fixing Quest 5763 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Details` = "Long ago, a dwarf came to this land.  His name was Hemet and he wished to hunt great beasts.  His skills with the rifle were uncanny, and we spent many days hunting together.  Even the enmity between our peoples was forgotten.$B$BWhen he left Desolace for Stranglethorn, I vowed to one day welcome him back so that we may hunt again.  Now is that time.$B$BTake this kodo horn as a gift to Hemet.  He will know it is from me.  You will find him in Stranglethorn, north of the Grom'gol Base camp." WHERE `entry` = 5763;
UPDATE `quest_template` SET `Objectives` = "Bring Roon's Kodo Horn to Hemet Nesingwary in Stranglethorn." WHERE `entry` =5763;

-- fixing Quest 5762 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Details` = "I have a package for an old customer of mine, a dwarf named Hemet Nesingwary.  The package took weeks to arrive, and Hemet's long gone by now.  He said he was going to Stranglethorn to hunt the beasts there, but he left me some money to send his delivery when I could.  $B$BHemet's a rich dwarf and it's a good idea to keep up relations with the rich ones, yeah?  So... you want to deliver the package for me?$B$BI heard Hemet has a camp in Stranglethorn, north of Grom'gol." WHERE `entry` = 5762;
UPDATE `quest_template` SET `Objectives` = "Take Kravel's Crate to Hemet Nesingwary in Stranglethorn." WHERE `entry` = 5762;

-- fixing Quest 208 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to bring him the head of King Bangalash, the great white tiger.' WHERE `entry`=208;
