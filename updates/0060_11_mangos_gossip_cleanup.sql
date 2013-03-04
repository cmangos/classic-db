-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- We still keep track of the update progress with a temporary column in db_version table
ALTER TABLE db_version CHANGE COLUMN condition_update_10 condition_update_11 bit;
-- The following queries removes TBC menu entries, options, texts and scripts
-- from the various gossip_menu tables
-- Those entries were determined because either they are used by a creature added in TBC
-- and later or because they use npc_text that was added in TBC or later, or used a spell,
-- item, quest, skill, level that was added in TBC or later

-- dbscript #7
-- From gossip_menu #8660 with text :11057 The pile of skulls reeks of foulness.  You fear the arakkoa have made an addition to the pile fairly recently.$B$BYou will need 10 Time-Lost Scrolls to call forth the descendants of Terokk's adversaries.
-- Used by source: gameobject #185913
-- option #0 "<Call forth Gezzarak the Huntress.>"
-- option #1 "<Call forth Darkscreecher Akkarai.>"
-- option #2 "<Call forth Karrog.>"
-- option #3 "<Call forth Vakkiz the Windrager.>"


DELETE FROM gossip_menu WHERE entry=8660;
DELETE FROM npc_text WHERE id=11057;
DELETE FROM gossip_menu_option WHERE menu_id=8660 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8660 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=8;
DELETE FROM gossip_menu_option WHERE menu_id=8660 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8660 AND id=3;
DELETE FROM dbscripts_on_gossip WHERE id=10;

-- dbscript #3142
-- Quest rewards directly correct item while TBC version use a spell to cast it
-- No need of script in classic


DELETE FROM dbscripts_on_gossip WHERE id=3142;

-- dbscript #7585
-- From gossip_menu #7585 with text :9229 So we're to trust people who would insult us with this deception? Do the draenei think so little of us that they must resort to trickery to get our attention?$B$BWe're aware of their desire to 'redeem' us, but my people want none of their redemption. We are capable of standing on our own and we will pursue our destiny as a proud and separate people. Carry this message to your allies.
-- Used by source: gossip option menu #7583 id #0
-- option #0 "I will tell them. Farewell, elder." submenu #7586


DELETE FROM gossip_menu WHERE entry=7585;
DELETE FROM npc_text WHERE id=9229;
DELETE FROM gossip_menu_option WHERE menu_id=7585 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7585;
DELETE FROM gossip_menu WHERE entry=7586;
DELETE FROM npc_text WHERE id=9231;

-- dbscript #7676
-- From gossip_menu #7675 with text :9361 Who so boldly stands before Lantresor of the Blade? Do you not know death by sight, $g boy:girl;?
-- Used by source: unknown
-- option #0 "I have killed many of your ogres, Lantresor. I have no fear." submenu #7682
-- option #1 "I have killed many of your ogres, Lantresor. I have no fear." submenu #7682


DELETE FROM gossip_menu WHERE entry=7675;
DELETE FROM npc_text WHERE id=9361;
DELETE FROM gossip_menu_option WHERE menu_id=7675 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7675 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=7676;
DELETE FROM gossip_menu WHERE entry=7682;
DELETE FROM npc_text WHERE id=9362;
DELETE FROM gossip_menu_option WHERE menu_id=7682 AND id=0;
DELETE FROM gossip_menu WHERE entry=7682;
DELETE FROM npc_text WHERE id=9362;
DELETE FROM gossip_menu_option WHERE menu_id=7682 AND id=0;
DELETE FROM gossip_menu WHERE entry=7681;
DELETE FROM npc_text WHERE id=9363;
DELETE FROM gossip_menu_option WHERE menu_id=7681 AND id=0;
DELETE FROM gossip_menu WHERE entry=7681;
DELETE FROM npc_text WHERE id=9363;
DELETE FROM gossip_menu_option WHERE menu_id=7681 AND id=0;
DELETE FROM gossip_menu WHERE entry=7680;
DELETE FROM npc_text WHERE id=9364;
DELETE FROM gossip_menu_option WHERE menu_id=7680 AND id=0;
DELETE FROM gossip_menu WHERE entry=7680;
DELETE FROM npc_text WHERE id=9364;
DELETE FROM gossip_menu_option WHERE menu_id=7680 AND id=0;
DELETE FROM gossip_menu WHERE entry=7679;
DELETE FROM npc_text WHERE id=9365;
DELETE FROM gossip_menu_option WHERE menu_id=7679 AND id=0;
DELETE FROM gossip_menu WHERE entry=7679;
DELETE FROM npc_text WHERE id=9365;
DELETE FROM gossip_menu_option WHERE menu_id=7679 AND id=0;
DELETE FROM gossip_menu WHERE entry=7678;
DELETE FROM npc_text WHERE id=9366;
DELETE FROM gossip_menu_option WHERE menu_id=7678 AND id=0;
DELETE FROM gossip_menu WHERE entry=7678;
DELETE FROM npc_text WHERE id=9366;
DELETE FROM gossip_menu_option WHERE menu_id=7678 AND id=0;
DELETE FROM gossip_menu WHERE entry=7677;
DELETE FROM npc_text WHERE id=9367;
DELETE FROM gossip_menu_option WHERE menu_id=7677 AND id=0;
DELETE FROM gossip_menu WHERE entry=7677;
DELETE FROM npc_text WHERE id=9367;
DELETE FROM gossip_menu_option WHERE menu_id=7677 AND id=0;
DELETE FROM gossip_menu WHERE entry=7676;
DELETE FROM npc_text WHERE id=9368;
DELETE FROM gossip_menu_option WHERE menu_id=7676 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7676;
DELETE FROM gossip_menu WHERE entry=7676;
DELETE FROM npc_text WHERE id=9368;
DELETE FROM gossip_menu_option WHERE menu_id=7676 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7676;

-- dbscript #7715
-- From gossip_menu #7715 with text :9423 <Altruis turns to face you and smiles.>$B$BI do not.$B$B<Altruis points to his steed, Nethrandamus.>$B$BWe must stop them before these forge camps are able to complete whatever it is that they are building.
-- Used by source: gossip option menu #7716 id #0
-- option #0 "Forge camps?" submenu #7714


DELETE FROM gossip_menu WHERE entry=7715;
DELETE FROM npc_text WHERE id=9423;
DELETE FROM gossip_menu_option WHERE menu_id=7715 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7715;
DELETE FROM gossip_menu WHERE entry=7714;
DELETE FROM npc_text WHERE id=9424;

-- dbscript #7722
-- From gossip_menu #7722 with text :9431 Twin Spire Ruins is not yet secure! My orders are to only give out battle standards when the two beacons are lit and the area is secure. Get out there and gain control of those beacons!
-- Used by source: unknown
-- option #0 "Give me a battle standard. I will take control of Twin Spire Ruins."
-- option #1 "I have marks to redeem!"


DELETE FROM gossip_menu WHERE entry=7722;
DELETE FROM npc_text WHERE id=9431;
DELETE FROM gossip_menu_option WHERE menu_id=7722 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7722;
DELETE FROM gossip_menu_option WHERE menu_id=7722 AND id=1;

-- dbscript #7724
-- From gossip_menu #7724 with text :9432 The beacons are lit, now is the time to strike! Take one of these battle standards and plant it at the graveyard for the Alliance!
-- Used by source: unknown
-- option #0 "Give me a battle standard. I will take control of Twin Spire Ruins."
-- option #1 "I have marks to redeem!"


DELETE FROM gossip_menu WHERE entry=7724;
DELETE FROM npc_text WHERE id=9432;
DELETE FROM gossip_menu_option WHERE menu_id=7724 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7724;
DELETE FROM gossip_menu_option WHERE menu_id=7724 AND id=1;

-- dbscript #7938
-- From gossip_menu #7938 with text :10053 Throm'ka, $c. Is this shattered land what you expected to see? It's nothing like the stories I've been told. It's hard to believe my people ever thrived in this desolate place.
-- Used by source: unknown
-- option #0 "Show me where I can fly."
-- option #1 "Send me to Thrallmar!"


DELETE FROM gossip_menu WHERE entry=7938;
DELETE FROM npc_text WHERE id=10053;
DELETE FROM gossip_menu_option WHERE menu_id=7938 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7938 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=7938;

-- dbscript #7939
-- From gossip_menu #7939 with text :9935 Another soldier on $ghis:her; way to Honor Hold... by Kurdran's beard, they can use the help!
-- Used by source: unknown
-- option #0 "Show me where I can fly."
-- option #1 "Send me to Honor Hold!"


DELETE FROM gossip_menu WHERE entry=7939;
DELETE FROM npc_text WHERE id=9935;
DELETE FROM gossip_menu_option WHERE menu_id=7939 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7939 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=7939;

-- dbscript #8072
-- From gossip_menu #8072 with text :9977 Beware, mortal, beyond this hall lies dangers unheard of in your world. Tread carefully...
-- Used by source: unknown
-- option #0 "Please take me to the master's lair."


DELETE FROM gossip_menu WHERE entry=8072;
DELETE FROM npc_text WHERE id=9977;
DELETE FROM gossip_menu_option WHERE menu_id=8072 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8072;

-- dbscript #8082
-- From gossip_menu #8082 with text :9989 
-- Used by source: unknown
-- option #0 "I'm as ready as I'll ever be."


DELETE FROM gossip_menu WHERE entry=8082;
DELETE FROM npc_text WHERE id=9989;
DELETE FROM gossip_menu_option WHERE menu_id=8082 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8082;

-- dbscript #8100
-- From gossip_menu #8100 with text :10717 Don't worry.  Shatter Point is as sturdy as they come!  But just in case, be ready to jump on a gryphon if the base starts to break apart...
-- Used by source: unknown
-- option #0 "Send me to Shatter Point."


DELETE FROM gossip_menu WHERE entry=8100;
DELETE FROM npc_text WHERE id=10717;
DELETE FROM gossip_menu_option WHERE menu_id=8100 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8100;

-- dbscript #8161
-- From gossip_menu #8161 with text :10103 The spirit of water has left us.  Our tribe is doomed.
-- Used by source: unknown
-- option #0 "Walk free, elder.  Bring the spirits back to your tribe."


DELETE FROM gossip_menu WHERE entry=8161;
DELETE FROM npc_text WHERE id=10103;
DELETE FROM gossip_menu_option WHERE menu_id=8161 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8161;
DELETE FROM db_script_string WHERE entry=2000000199;

-- dbscript #8162
-- From gossip_menu #8162 with text :10104 The winds do not speak to our tribe anymore, $N.  My people are lost without elders to bring the spirits to them.
-- Used by source: unknown
-- option #0 "Walk free, elder.  Bring the spirits back to your tribe."


DELETE FROM gossip_menu WHERE entry=8162;
DELETE FROM npc_text WHERE id=10104;
DELETE FROM gossip_menu_option WHERE menu_id=8162 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8162;
DELETE FROM db_script_string WHERE entry=2000000200;

-- dbscript #8163
-- From gossip_menu #8163 with text :10105 These chains that bind me prevent me from bringing the spirit of fire to my people, $N.  Souls without fire are souls that cannot rebel against their masters.
-- Used by source: unknown
-- option #0 "Walk free, elder.  Bring the spirits back to your tribe."


DELETE FROM gossip_menu WHERE entry=8163;
DELETE FROM npc_text WHERE id=10105;
DELETE FROM gossip_menu_option WHERE menu_id=8163 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8163;
DELETE FROM db_script_string WHERE entry=2000000201;

-- dbscript #8301
-- From gossip_menu #8301 with text :10356 Tread lightly, $r. Beyond this bridge lies hell.
-- Used by source: unknown
-- option #1 "I need another disguise, Borak. I lost the last one." submenu #8337


DELETE FROM gossip_menu WHERE entry=8301;
DELETE FROM npc_text WHERE id=10356;
DELETE FROM gossip_menu_option WHERE menu_id=8301 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=8301;
DELETE FROM gossip_menu WHERE entry=8337;
DELETE FROM npc_text WHERE id=10402;

-- dbscript #8338
-- From gossip_menu #8338 with text :10409 Wait. Where are you going? You needed a transfer, correct? Let's just get it done and over with, ok? Zuluhed at Dragonmaw? It will be done. Please let Lord Illidan know that his orders were carried out with the full cooperation of the Eclipsion.$B$BI will dispatch Ruul the Darkener to personally deliver the fragment!$B$BYou heard me right - Ruul...$B
-- Used by source: gossip option menu #8339 id #0
-- option #0 "Ah, good of you to come around, Ruusk. Thank you and farewell."


DELETE FROM gossip_menu WHERE entry=8338;
DELETE FROM npc_text WHERE id=10409;
DELETE FROM gossip_menu_option WHERE menu_id=8338 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8338;

-- dbscript #8356
-- From gossip_menu #8356 with text :10427 The dwarf appears to have been discovered and slain in the midst of a spy mission. The Deathforge's attendants have left the corpse in the open, perhaps as a warning to other would-be interlopers.
-- Used by source: unknown
-- option #0 "Reclaim Flanis's pack."


DELETE FROM gossip_menu WHERE entry=8356;
DELETE FROM npc_text WHERE id=10427;
DELETE FROM gossip_menu_option WHERE menu_id=8356 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8356;

-- dbscript #8371
-- From gossip_menu #8371 with text :10446 The orc's corpse has been casually tossed aside so as not to litter the walkway.
-- Used by source: unknown
-- option #0 "Search the corpse for Kagrosh's pack."


DELETE FROM gossip_menu WHERE entry=8371;
DELETE FROM npc_text WHERE id=10446;
DELETE FROM gossip_menu_option WHERE menu_id=8371 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8371;

-- dbscript #8429
-- From gossip_menu #8429 with text :10532 The Blade's Edge Mountains are a place of great opportunity.  How unfortunate that some deem themselves above all others on matters that pertain to taking advantage of such opportunities.$B$BWho do the Cenarion Expedition think they are to tell us what we can and cannot do here?
-- Used by source: unknown
-- option #0 "Overseer, I am here to negotiate on behalf of the Cenarion Expedition." submenu #8430


DELETE FROM gossip_menu WHERE entry=8429;
DELETE FROM npc_text WHERE id=10532;
DELETE FROM gossip_menu_option WHERE menu_id=8429 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8429;
DELETE FROM gossip_menu WHERE entry=8430;
DELETE FROM npc_text WHERE id=10533;

-- dbscript #8617
-- From gossip_menu #8617 with text :10795 Forgive me for questioning you, my son. My sight isn't what it once was, but the raven has blessed me with a long life.$B$BSoon, it will be time for you to take my place. I have taught you all I know. My only regret is that I didn't prove worthy enough to recover our sacred Book of the Raven.
-- Used by source: gossip option menu #8616 id #0
-- option #0 "Yes elder. Tell me more of the book." submenu #20014


DELETE FROM gossip_menu WHERE entry=8617;
DELETE FROM npc_text WHERE id=10795;
DELETE FROM gossip_menu_option WHERE menu_id=8617 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8617;

-- dbscript #8697
-- From gossip_menu #8697 with text :10945 We do not know. We believe that the Black Dragonflight is involved as are some independent third parties. That is why you are here, $r. You will unravel this mystery from the inside and bring redemption to Netherwing.$B$BAnd now... I can only assume she asked you to bring back my hand.
-- Used by source: gossip option menu #8698 id #0
-- option #0 "Well... yes." submenu #8696


DELETE FROM gossip_menu WHERE entry=8697;
DELETE FROM npc_text WHERE id=10945;
DELETE FROM gossip_menu_option WHERE menu_id=8697 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8697;
DELETE FROM gossip_menu WHERE entry=8696;
DELETE FROM npc_text WHERE id=10946;

-- dbscript #8718
-- From gossip_menu #8718 with text :10978 
-- Used by source: unknown
-- option #1 "Yes, I'd love a ride to Blackwind Landing."


DELETE FROM gossip_menu WHERE entry=8718;
DELETE FROM npc_text WHERE id=10978;
DELETE FROM gossip_menu_option WHERE menu_id=8718 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=8718;
DELETE FROM npc_gossip WHERE npc_guid=407;

-- dbscript #8719
-- From gossip_menu #8719 with text :10979 Hello, $g sir : ma'am;!  If you want, I have a nether ray waiting to take you to the Skyguard Outpost atop the Blade's Edge Mountains.$B$BJust let me know.
-- Used by source: unknown
-- option #1 "Absolutely!  Send me to the Skyguard Outpost."


DELETE FROM gossip_menu WHERE entry=8719;
DELETE FROM npc_text WHERE id=10979;
DELETE FROM gossip_menu_option WHERE menu_id=8719 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=8719;

-- dbscript #8761
-- From gossip_menu #8761 with text :11126 This crime cannot be allowed to go unsolved. The location of the inn and the violence of its destruction make this a very delicate matter. Inspect the site with the utmost respect, friend.
-- Used by source: unknown
-- option #0 "Can you spread the reflective dust again?"


DELETE FROM gossip_menu WHERE entry=8761;
DELETE FROM npc_text WHERE id=11126;
DELETE FROM gossip_menu_option WHERE menu_id=8761 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8761;

-- dbscript #8782
-- From gossip_menu #8782 with text :11224 
-- Used by source: unknown
-- option #0 "Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island."


DELETE FROM gossip_menu WHERE entry=8782;
DELETE FROM npc_text WHERE id=11224;
DELETE FROM gossip_menu_option WHERE menu_id=8782 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8782;

-- dbscript #8851
-- From gossip_menu #8851 with text :11492 Welcome to Theramore, $c.
-- Used by source: unknown
-- option #0 "You look like an intelligent person. Why don't you read one of these leaflets and give it some thought?"


DELETE FROM gossip_menu WHERE entry=8851;
DELETE FROM npc_text WHERE id=11492;
DELETE FROM gossip_menu_option WHERE menu_id=8851 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8851;
DELETE FROM db_script_string WHERE entry IN (2000005434, 2000005432, 2000005428, 2000005435);

-- dbscript #9205
-- From gossip_menu #9205 with text :12507 
-- Used by source: unknown
-- option #0 "Take me to the Caverns of Time."


DELETE FROM gossip_menu WHERE entry=9205;
DELETE FROM npc_text WHERE id=12507;
DELETE FROM gossip_menu_option WHERE menu_id=9205 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=9205;

-- dbscript #10131
-- From gossip_menu #10131 with text :14065 
-- Used by source: unknown
-- option #0 "Take me to the Caverns of Time."


DELETE FROM gossip_menu WHERE entry=10131;
DELETE FROM npc_text WHERE id=14065;
DELETE FROM gossip_menu_option WHERE menu_id=10131 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=10131;

-- dbscript #10219
-- From gossip_menu #10219 with text :14206 Gusty winds surround the altar.  There is an open spot where a small orb may have once rested.
-- Used by source: unknown
-- option #0 "Place Avruu's Orb on the altar."


DELETE FROM gossip_menu WHERE entry=10219;
DELETE FROM npc_text WHERE id=14206;
DELETE FROM gossip_menu_option WHERE menu_id=10219 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=10219;

-- dbscript #20003
-- From gossip_menu #20003 with text :10365 With the help of my brother Zap in Everlook I have constructed a Dimensional Imploder right here in Area 52.   Who needs a rocket when you have instant transportation via Goblin Engineering!   Are you a skilled enough Goblin Engineer to lean how to build your own Imploder beacon?
-- Used by source: unknown
-- option #0 "[PH] Learn Dimensional Ripper."


DELETE FROM gossip_menu WHERE entry=20003;
DELETE FROM npc_text WHERE id=10365;
DELETE FROM gossip_menu_option WHERE menu_id=20003 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=20003;

-- dbscript #20004
-- From gossip_menu #20004 with text :10410 With the help of Engineer Lapforge from Gadgetzan i have built a powerful gnomish transporter here at Toshley's Station!  I would be happy to help any gnomish engineer with enough skill to build their own personal transport beacon.
-- Used by source: unknown
-- option #0 "[PH] Learn Ultrasafe Transporter."


DELETE FROM gossip_menu WHERE entry=20004;
DELETE FROM npc_text WHERE id=10410;
DELETE FROM gossip_menu_option WHERE menu_id=20004 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=20004;

-- dbscript #80880
-- From gossip_menu #8088 with text :10000 Hail, adventurer. Heed my warnings before venturing into the Black Morass.
-- Used by source: unknown
-- option #0 "I require a chrono-beacon, Sa'at."
-- option #1 "I require a chrono-beacon, Sa'at."


DELETE FROM gossip_menu WHERE entry=8088;
DELETE FROM npc_text WHERE id=10000;
DELETE FROM gossip_menu_option WHERE menu_id=8088 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=80880;
DELETE FROM gossip_menu_option WHERE menu_id=8088 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=80880;

-- dbscript #246501
-- From gossip_menu #2465 with text :3158 
-- Used by source: unknown
-- option #0 "Lady Jaina, this may sound like an odd request... but I have a young ward who is quite shy. You are a hero to him, and he asked me to get your autograph." submenu #5850
-- option #1 "I'm ready to travel to Stormwind."


DELETE FROM gossip_menu_option WHERE menu_id=2465 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=246501;

-- dbscript #796701
-- From gossip_menu #7967 with text :9801 Move along unless you've got business with the fleet.
-- Used by source: unknown
-- option #1 "Send me to the Abyssal Shelf!"
-- option #2 "Send me to the Abyssal Shelf!"
-- option #3 "I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"
-- option #4 "Lend me a Windrider. I'm going to Spinebreaker Post!"


DELETE FROM gossip_menu WHERE entry=7967;
DELETE FROM npc_text WHERE id=9801;
DELETE FROM gossip_menu_option WHERE menu_id=7967 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=796701;
DELETE FROM gossip_menu_option WHERE menu_id=7967 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=796701;
DELETE FROM gossip_menu_option WHERE menu_id=7967 AND id=3;
DELETE FROM dbscripts_on_gossip WHERE id=796703;
DELETE FROM gossip_menu_option WHERE menu_id=7967 AND id=4;
DELETE FROM dbscripts_on_gossip WHERE id=796704;

-- dbscript #797002
-- From gossip_menu #7970 with text :9801 Move along unless you've got business with the fleet.
-- Used by source: unknown
-- option #2 "Send me to Shatter Point!"
-- option #3 "I'm on a bombing mission for Forward Commander Kingston.  I need a gryphon destroyer!"
-- option #4 "Send me to Shatter Point!"


DELETE FROM gossip_menu WHERE entry=7970;
DELETE FROM npc_text WHERE id=9801;
DELETE FROM gossip_menu_option WHERE menu_id=7970 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=797002;
DELETE FROM gossip_menu_option WHERE menu_id=7970 AND id=3;
DELETE FROM dbscripts_on_gossip WHERE id=797003;
DELETE FROM gossip_menu_option WHERE menu_id=7970 AND id=4;
DELETE FROM dbscripts_on_gossip WHERE id=797002;

-- dbscript #809600
-- From gossip_menu #8096 with text :10010 Shatter Point is a great place for a Wildhammer dwarf.  I've never had so much time in the air!
-- Used by source: unknown
-- option #0 "Send me to Honor Point!"
-- option #1 "Send me to the Abyssal Shelf!"
-- option #2 "Send me to the Abyssal Shelf!"


DELETE FROM gossip_menu WHERE entry=8096;
DELETE FROM npc_text WHERE id=10010;
DELETE FROM gossip_menu_option WHERE menu_id=8096 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=809600;
DELETE FROM gossip_menu_option WHERE menu_id=8096 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=809601;
DELETE FROM gossip_menu_option WHERE menu_id=8096 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=809601;

-- dbscript #906201
-- From gossip_menu #9062 with text :12252 You don't get to see much action in my line of work.  Serving this close to the front lines in a combat zone is a nice change of pace.
-- Used by source: unknown
-- option #0 "Speaking of action, I've been ordered to undertake an air strike."
-- option #1 "Speaking of action, I've been ordered to undertake an air strike."
-- option #2 "Speaking of action, I've been ordered to undertake an air strike."
-- option #3 "I need to intercept the Dawnblade reinforcements."
-- option #4 "I need to intercept the Dawnblade reinforcements."
-- option #5 "I need to intercept the Dawnblade reinforcements."


DELETE FROM gossip_menu WHERE entry=9062;
DELETE FROM npc_text WHERE id=12252;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=906201;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=906201;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=906201;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=3;
DELETE FROM dbscripts_on_gossip WHERE id=906202;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=4;
DELETE FROM dbscripts_on_gossip WHERE id=906202;
DELETE FROM gossip_menu_option WHERE menu_id=9062 AND id=5;
DELETE FROM dbscripts_on_gossip WHERE id=906202;

-- dbscript #914301
-- From gossip_menu #9143 with text :12371 <The dragonhawk appears to be unsettled by the commotion in the surrounding area.>
-- Used by source: unknown
-- option #0 "<Ride the dragonhawk to Sun's Reach.>"
-- option #1 "<Ride the dragonhawk to Sun's Reach.>"
-- option #2 "<Ride the dragonhawk to Sun's Reach.>"


DELETE FROM gossip_menu WHERE entry=9143;
DELETE FROM npc_text WHERE id=12371;
DELETE FROM gossip_menu_option WHERE menu_id=9143 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=914301;
DELETE FROM gossip_menu_option WHERE menu_id=9143 AND id=1;
DELETE FROM dbscripts_on_gossip WHERE id=914301;
DELETE FROM gossip_menu_option WHERE menu_id=9143 AND id=2;
DELETE FROM dbscripts_on_gossip WHERE id=914301;

-- From gossip_menu #7162 with text :8432 Such a delight to see you again, $c. No, really. You're the reason that I'm making money here, hand over fist.$B$BNow, what can I sell to you today?
-- Used by source: unknown
-- option #0 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=7162;
DELETE FROM npc_text WHERE id=8432;
DELETE FROM gossip_menu_option WHERE menu_id=7162 AND id=0;

-- From gossip_menu #7719 with text :9419 What do you see when you look to the west, mortal?
-- Used by source: gossip option menu #8398 id #0
-- option #0 "I see twisted steel and smell sundered earth." submenu #7718
-- option #1 "Tell me about the demon hunter training grounds at the Ruins of Karabor." submenu #8394


DELETE FROM gossip_menu WHERE entry=7719;
DELETE FROM npc_text WHERE id=9419;
DELETE FROM gossip_menu_option WHERE menu_id=7719 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7719 AND id=1;
DELETE FROM gossip_menu WHERE entry=7718;
DELETE FROM npc_text WHERE id=9420;
DELETE FROM gossip_menu_option WHERE menu_id=7718 AND id=0;
DELETE FROM gossip_menu WHERE entry=8394;
DELETE FROM npc_text WHERE id=10492;
DELETE FROM gossip_menu_option WHERE menu_id=8394 AND id=0;
DELETE FROM gossip_menu WHERE entry=7717;
DELETE FROM npc_text WHERE id=9421;
DELETE FROM gossip_menu_option WHERE menu_id=7717 AND id=0;
DELETE FROM gossip_menu WHERE entry=8393;
DELETE FROM npc_text WHERE id=10493;
DELETE FROM gossip_menu_option WHERE menu_id=8393 AND id=0;
DELETE FROM gossip_menu WHERE entry=7716;
DELETE FROM npc_text WHERE id=9422;
DELETE FROM gossip_menu_option WHERE menu_id=7716 AND id=0;
DELETE FROM gossip_menu WHERE entry=8395;
DELETE FROM npc_text WHERE id=10494;
DELETE FROM gossip_menu_option WHERE menu_id=8395 AND id=0;
DELETE FROM gossip_menu WHERE entry=7715;
DELETE FROM npc_text WHERE id=9423;
DELETE FROM gossip_menu_option WHERE menu_id=7715 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7715;
DELETE FROM gossip_menu WHERE entry=8396;
DELETE FROM npc_text WHERE id=10495;
DELETE FROM gossip_menu_option WHERE menu_id=8396 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8396;
DELETE FROM gossip_menu WHERE entry=7714;
DELETE FROM npc_text WHERE id=9424;
DELETE FROM gossip_menu WHERE entry=8398;
DELETE FROM npc_text WHERE id=10497;
DELETE FROM gossip_menu_option WHERE menu_id=8398 AND id=0;

-- Gossip option #401
-- From gossip_menu #401 with text :898 Which class trainer are you looking for?
-- Used by source: gossip option menu #435 id #14
-- option #0 "Druid" submenu #405
-- option #1 "Hunter" submenu #408
-- option #2 "Mage" submenu #402
-- option #3 "Paladin" submenu #407
-- option #4 "Priest" submenu #406
-- option #5 "Rogue" submenu #403
-- option #6 "Shaman" submenu #8164  <- this one is TBC only
-- option #7 "Warlock" submenu #409
-- option #8 "Warrior" submenu #404

DELETE FROM gossip_menu_option WHERE menu_id=435 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=401 AND id=6;
DELETE FROM gossip_menu WHERE entry=8164;
DELETE FROM npc_text WHERE id=10106;

-- POI #300
-- From gossip_menu #721 with text :1272 What are you looking for?
-- Used by source: creature #3084 (Bluffwatcher)
-- option #0 "The bank" submenu #743
-- option #1 "The wind rider master" submenu #744
-- option #2 "The guild master" submenu #742
-- option #3 "The inn" submenu #2461
-- option #4 "The mailbox" submenu #2462
-- option #5 "The auction house" submenu #2463
-- option #6 "The weapon master" submenu #3725
-- option #7 "The stable master" submenu #4904
-- option #8 "The battlemaster" submenu #8223
-- option #9 "A class trainer" submenu #740
-- option #10 "A profession trainer" submenu #751
-- option #12 "The zeppelin master" submenu #10596 <- this one was added in TBC


DELETE FROM gossip_menu_option WHERE menu_id=721 AND id=12;
DELETE FROM gossip_menu WHERE entry=10596;
DELETE FROM npc_text WHERE id=14658;

-- POI #65
-- From gossip_menu #2144 with text :2766 Which class trainer might ye be looking for?
-- Used by source: gossip option menu #2121 id #11
-- option #0 "Hunter" submenu #2147
-- option #1 "Mage" submenu #2148
-- option #2 "Paladin" submenu #2150
-- option #3 "Priest" submenu #2149
-- option #4 "Rogue" submenu #2151
-- option #5 "Warlock" submenu #2152
-- option #6 "Warrior" submenu #2153
-- option #7 "Shaman" submenu #8643 <- This one was added in TBC


DELETE FROM gossip_menu_option WHERE menu_id=2144 AND id=7;
DELETE FROM gossip_menu WHERE entry=8643;
DELETE FROM npc_text WHERE id=10842;

-- POI #438
-- From gossip_menu #2343 with text :3022 Here in Darnassus you will find skilled trainers who have perfected the skills of their chosen class through ages of training and dedication.  I will guide you to one who can become your mentor, you have but to name your chosen path.
-- Used by source: gossip option menu #10265 id #9
-- option #0 "Druid" submenu #2328
-- option #1 "Hunter" submenu #2327
-- option #2 "Mage" submenu #2329 <- This one was added in TBC
-- option #3 "Paladin" submenu #2341 <- This one was added in TBC
-- option #4 "Priest" submenu #2342 <- Fix this one that should be 2329 (2342 is for warriors)
-- option #5 "Rogue" submenu #2341
-- option #6 "Warrior" submenu #2342


DELETE FROM gossip_menu_option WHERE menu_id=2343 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=2343 AND id=3;
UPDATE gossip_menu_option SET action_menu_id=2329 WHERE menu_id=2343 AND id=4;

-- POI #277
-- From gossip_menu #2849 with text :3543 What are you looking for?
-- Used by source: creature #5624 (Undercity Guardian)
-- option #0 "The bank" submenu #2822
-- option #1 "The bat handler" submenu #2823
-- option #2 "The guild master" submenu #2824
-- option #3 "The inn" submenu #2825
-- option #4 "The mailbox" submenu #2826
-- option #5 "The auction house" submenu #2827
-- option #6 "The zeppelin master" submenu #2828
-- option #7 "The weapon master" submenu #3726
-- option #8 "The stable master" submenu #4906
-- option #9 "The battlemaster" submenu #8225
-- option #12 "A class trainer" submenu #2848
-- option #13 "A profession trainer" submenu #2847
-- option #14 "Locksmith" submenu #10261 <- this one was added in TBC


DELETE FROM gossip_menu_option WHERE menu_id=2849 AND id=14;
DELETE FROM gossip_menu WHERE entry=10261;
DELETE FROM npc_text WHERE id=14250;

-- From gossip_menu #3355 with text :4096 Which profession?
-- Used by source: gossip option menu #3356 id #5
-- option #0 "Alchemy" submenu #3342
-- option #1 "Blacksmithing" submenu #3343
-- option #2 "Cooking" submenu #3344
-- option #3 "Enchanting" submenu #3345
-- option #4 "Engineering" submenu #3346
-- option #5 "First Aid" submenu #3347
-- option #6 "Fishing" submenu #3348
-- option #7 "Herbalism" submenu #3349 <- this one has wrong point of interest
-- option #9 "Leatherworking" submenu #3350
-- option #10 "Mining" submenu #3351
-- option #11 "Skinning" submenu #3352
-- option #12 "Tailoring" submenu #3353


UPDATE gossip_menu_option SET action_poi_id=288 WHERE menu_id=3355 AND id=7;

-- From gossip_menu #7672 with text :9354 Boulderfist hungry! Need food! Warmaul ogre tribe kick Boulderfist out of mound to north. Many more Boulderfist to feed now.
-- Used by source: gossip option menu #7673 id #0
-- option #0 "And you think you can just eat anything you want? You're obviously trying to eat the Broken of Telaar." submenu #7671


DELETE FROM gossip_menu WHERE entry=7672;
DELETE FROM npc_text WHERE id=9354;
DELETE FROM gossip_menu_option WHERE menu_id=7672 AND id=0;
DELETE FROM gossip_menu WHERE entry=7671;
DELETE FROM npc_text WHERE id=9355;
DELETE FROM gossip_menu_option WHERE menu_id=7671 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7671;
DELETE FROM gossip_menu WHERE entry=7670;
DELETE FROM npc_text WHERE id=9356;

-- From gossip_menu #7704 with text :9405 Very busy... very busy!  What?
-- Used by source: unknown
-- option #0 "Empoor, you're going to tell me what I want to know, or else!"


DELETE FROM gossip_menu WHERE entry=7704;
DELETE FROM npc_text WHERE id=9405;
DELETE FROM gossip_menu_option WHERE menu_id=7704 AND id=0;

-- From gossip_menu #7729 with text :9440 WUT YOU WANT!?
-- Used by source: unknown
-- option #0 "I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."


DELETE FROM gossip_menu WHERE entry=7729;
DELETE FROM npc_text WHERE id=9440;
DELETE FROM gossip_menu_option WHERE menu_id=7729 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7729;
DELETE FROM db_script_string WHERE entry=2000000196;

-- From gossip_menu #7730 with text :9441 Fshhhhhhsssfhhhhh?
-- Used by source: unknown
-- option #0 "I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."


DELETE FROM gossip_menu WHERE entry=7730;
DELETE FROM npc_text WHERE id=9441;
DELETE FROM gossip_menu_option WHERE menu_id=7730 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7730;
DELETE FROM db_script_string WHERE entry=2000000197;

-- From gossip_menu #7732 with text :9442 <Floon makes a series of strange clicking and clucking sounds.>
-- Used by source: unknown
-- option #0 "I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you." submenu #7731


DELETE FROM gossip_menu WHERE entry=7732;
DELETE FROM npc_text WHERE id=9442;
DELETE FROM gossip_menu_option WHERE menu_id=7732 AND id=0;
DELETE FROM gossip_menu WHERE entry=7731;
DELETE FROM npc_text WHERE id=9443;
DELETE FROM gossip_menu_option WHERE menu_id=7731 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7731;
DELETE FROM db_script_string WHERE entry=2000000198;

-- From gossip_menu #7716 with text :9422 They elude me. I cannot see past their defenses. They have put in place wards to prevent detection.$B$B<Altruis points westward.>$B$BThey fear us because they know that we fear nothing. The cost for such power is great, the sacrifices many. 
-- Used by source: gossip option menu #7717 id #0
-- option #0 "How do you see them now?" submenu #7715


DELETE FROM gossip_menu WHERE entry=7716;
DELETE FROM npc_text WHERE id=9422;
DELETE FROM gossip_menu_option WHERE menu_id=7716 AND id=0;
DELETE FROM gossip_menu WHERE entry=7715;
DELETE FROM npc_text WHERE id=9423;
DELETE FROM gossip_menu_option WHERE menu_id=7715 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7715;
DELETE FROM gossip_menu WHERE entry=7714;
DELETE FROM npc_text WHERE id=9424;

-- From gossip_menu #7777 with text :9551 Blessings of the Naaru. What can I help you find?
-- Used by source: unknown
-- option #0 "Auction House" submenu #7778
-- option #1 "The Bank" submenu #7779
-- option #2 "Hippogryph Master" submenu #7780
-- option #3 "Guild Master" submenu #7781
-- option #4 "The Inn" submenu #7782
-- option #5 "Mailbox" submenu #7783
-- option #6 "Stable Master" submenu #7784
-- option #7 "Weapon Master" submenu #7785
-- option #8 "Battlemasters" submenu #7786
-- option #9 "Class Trainer" submenu #7787
-- option #10 "Profession Trainer" submenu #7788


DELETE FROM gossip_menu WHERE entry=7777;
DELETE FROM npc_text WHERE id=9551;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=7777 AND id=10;
DELETE FROM gossip_menu WHERE entry=7778;
DELETE FROM npc_text WHERE id=9528;
DELETE FROM gossip_menu WHERE entry=7779;
DELETE FROM npc_text WHERE id=9529;
DELETE FROM gossip_menu WHERE entry=7780;
DELETE FROM npc_text WHERE id=9530;
DELETE FROM gossip_menu WHERE entry=7781;
DELETE FROM npc_text WHERE id=9539;
DELETE FROM gossip_menu WHERE entry=7782;
DELETE FROM npc_text WHERE id=9545;
DELETE FROM gossip_menu WHERE entry=7783;
DELETE FROM npc_text WHERE id=10254;
DELETE FROM gossip_menu WHERE entry=7784;
DELETE FROM npc_text WHERE id=9558;
DELETE FROM gossip_menu WHERE entry=7785;
DELETE FROM npc_text WHERE id=9565;
DELETE FROM gossip_menu WHERE entry=7786;
DELETE FROM npc_text WHERE id=9531;
DELETE FROM gossip_menu_option WHERE menu_id=7786 AND id=0;
DELETE FROM gossip_menu WHERE entry=7787;
DELETE FROM npc_text WHERE id=9533;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7787 AND id=6;
DELETE FROM gossip_menu WHERE entry=7788;
DELETE FROM npc_text WHERE id=9555;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=7788 AND id=13;
DELETE FROM gossip_menu WHERE entry=8226;
DELETE FROM npc_text WHERE id=10223;
DELETE FROM gossip_menu WHERE entry=7789;
DELETE FROM npc_text WHERE id=9534;
DELETE FROM gossip_menu WHERE entry=7790;
DELETE FROM npc_text WHERE id=9544;
DELETE FROM gossip_menu WHERE entry=7791;
DELETE FROM npc_text WHERE id=9550;
DELETE FROM gossip_menu WHERE entry=7792;
DELETE FROM npc_text WHERE id=9553;
DELETE FROM gossip_menu WHERE entry=7793;
DELETE FROM npc_text WHERE id=9554;
DELETE FROM gossip_menu WHERE entry=7794;
DELETE FROM npc_text WHERE id=9556;
DELETE FROM gossip_menu WHERE entry=7795;
DELETE FROM npc_text WHERE id=9562;
DELETE FROM gossip_menu WHERE entry=7796;
DELETE FROM npc_text WHERE id=9527;
DELETE FROM gossip_menu WHERE entry=7797;
DELETE FROM npc_text WHERE id=9532;
DELETE FROM gossip_menu WHERE entry=7798;
DELETE FROM npc_text WHERE id=9535;
DELETE FROM gossip_menu WHERE entry=7799;
DELETE FROM npc_text WHERE id=9536;
DELETE FROM gossip_menu WHERE entry=7800;
DELETE FROM npc_text WHERE id=9537;
DELETE FROM gossip_menu WHERE entry=7801;
DELETE FROM npc_text WHERE id=9538;
DELETE FROM gossip_menu WHERE entry=7802;
DELETE FROM npc_text WHERE id=9543;
DELETE FROM gossip_menu WHERE entry=7803;
DELETE FROM npc_text WHERE id=9547;
DELETE FROM gossip_menu WHERE entry=7804;
DELETE FROM npc_text WHERE id=9549;
DELETE FROM gossip_menu WHERE entry=7805;
DELETE FROM npc_text WHERE id=9552;
DELETE FROM gossip_menu WHERE entry=7806;
DELETE FROM npc_text WHERE id=9557;
DELETE FROM gossip_menu WHERE entry=7807;
DELETE FROM npc_text WHERE id=9559;
DELETE FROM gossip_menu WHERE entry=8399;
DELETE FROM npc_text WHERE id=10501;

-- From gossip_menu #8081 with text :9988 What is it you want?  I'm not one for small talk.
-- Used by source: unknown
-- option #0 "Magistrix Carinda has sent me to ask you about Arelion's secret. Who was he seeing?"


DELETE FROM gossip_menu WHERE entry=8081;
DELETE FROM npc_text WHERE id=9988;
DELETE FROM gossip_menu_option WHERE menu_id=8081 AND id=0;

-- From gossip_menu #8129 with text :10066 If the Light cannot guide you, my friend, perhaps I can be of assistance. What is it you need?
-- Used by source: unknown
-- option #0 "Bank" submenu #8130
-- option #1 "Hippogryph Master" submenu #8133
-- option #2 "Guild Master" submenu #8134
-- option #3 "Inn" submenu #8135
-- option #4 "Stable Master" submenu #8136
-- option #5 "Class Trainer" submenu #8137
-- option #6 "Profession Trainer" submenu #8138


DELETE FROM gossip_menu WHERE entry=8129;
DELETE FROM npc_text WHERE id=10066;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8129 AND id=6;
DELETE FROM gossip_menu WHERE entry=8130;
DELETE FROM npc_text WHERE id=10067;
DELETE FROM gossip_menu WHERE entry=8133;
DELETE FROM npc_text WHERE id=10071;
DELETE FROM gossip_menu WHERE entry=8134;
DELETE FROM npc_text WHERE id=10073;
DELETE FROM gossip_menu WHERE entry=8135;
DELETE FROM npc_text WHERE id=10074;
DELETE FROM gossip_menu WHERE entry=8136;
DELETE FROM npc_text WHERE id=10075;
DELETE FROM gossip_menu WHERE entry=8137;
DELETE FROM npc_text WHERE id=10076;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8137 AND id=6;
DELETE FROM gossip_menu WHERE entry=8138;
DELETE FROM npc_text WHERE id=10087;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=8138 AND id=13;
DELETE FROM gossip_menu WHERE entry=8139;
DELETE FROM npc_text WHERE id=10077;
DELETE FROM gossip_menu WHERE entry=8141;
DELETE FROM npc_text WHERE id=10078;
DELETE FROM gossip_menu WHERE entry=8142;
DELETE FROM npc_text WHERE id=10081;
DELETE FROM gossip_menu WHERE entry=8143;
DELETE FROM npc_text WHERE id=10083;
DELETE FROM gossip_menu WHERE entry=8144;
DELETE FROM npc_text WHERE id=10084;
DELETE FROM gossip_menu WHERE entry=8145;
DELETE FROM npc_text WHERE id=10085;
DELETE FROM gossip_menu WHERE entry=8146;
DELETE FROM npc_text WHERE id=10086;
DELETE FROM gossip_menu WHERE entry=8147;
DELETE FROM npc_text WHERE id=10088;
DELETE FROM gossip_menu WHERE entry=8148;
DELETE FROM npc_text WHERE id=10089;
DELETE FROM gossip_menu WHERE entry=8149;
DELETE FROM npc_text WHERE id=10090;
DELETE FROM gossip_menu WHERE entry=8150;
DELETE FROM npc_text WHERE id=10091;
DELETE FROM gossip_menu WHERE entry=8151;
DELETE FROM npc_text WHERE id=10092;
DELETE FROM gossip_menu WHERE entry=8152;
DELETE FROM npc_text WHERE id=10093;
DELETE FROM gossip_menu WHERE entry=8153;
DELETE FROM npc_text WHERE id=10094;
DELETE FROM gossip_menu WHERE entry=8154;
DELETE FROM npc_text WHERE id=10095;
DELETE FROM gossip_menu WHERE entry=8159;
DELETE FROM npc_text WHERE id=10100;
DELETE FROM gossip_menu WHERE entry=8155;
DELETE FROM npc_text WHERE id=10096;
DELETE FROM gossip_menu WHERE entry=8156;
DELETE FROM npc_text WHERE id=10097;
DELETE FROM gossip_menu WHERE entry=8157;
DELETE FROM npc_text WHERE id=10098;
DELETE FROM gossip_menu WHERE entry=8158;
DELETE FROM npc_text WHERE id=10099;
DELETE FROM npc_gossip WHERE npc_guid=6162;

-- From gossip_menu #8185 with text :10180 You seek something in our fair land?
-- Used by source: unknown
-- option #0 "Dragonhawk Master" submenu #8184
-- option #1 "Guild Master" submenu #8186
-- option #2 "The Inn" submenu #8187
-- option #3 "Stable Master" submenu #8188
-- option #4 "Class Trainer" submenu #8196
-- option #5 "Profession Trainer" submenu #8205


DELETE FROM gossip_menu WHERE entry=8185;
DELETE FROM npc_text WHERE id=10180;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8185 AND id=5;
DELETE FROM gossip_menu WHERE entry=8184;
DELETE FROM npc_text WHERE id=10181;
DELETE FROM gossip_menu WHERE entry=8186;
DELETE FROM npc_text WHERE id=354;
DELETE FROM gossip_menu WHERE entry=8187;
DELETE FROM npc_text WHERE id=10183;
DELETE FROM gossip_menu WHERE entry=8188;
DELETE FROM npc_text WHERE id=10184;
DELETE FROM gossip_menu WHERE entry=8196;
DELETE FROM npc_text WHERE id=9331;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8196 AND id=6;
DELETE FROM gossip_menu WHERE entry=8205;
DELETE FROM npc_text WHERE id=9338;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=8205 AND id=13;
DELETE FROM gossip_menu WHERE entry=8189;
DELETE FROM npc_text WHERE id=10185;
DELETE FROM gossip_menu WHERE entry=8190;
DELETE FROM npc_text WHERE id=10186;
DELETE FROM gossip_menu WHERE entry=8191;
DELETE FROM npc_text WHERE id=10187;
DELETE FROM gossip_menu WHERE entry=8192;
DELETE FROM npc_text WHERE id=10189;
DELETE FROM gossip_menu WHERE entry=8193;
DELETE FROM npc_text WHERE id=10190;
DELETE FROM gossip_menu WHERE entry=8194;
DELETE FROM npc_text WHERE id=10191;
DELETE FROM gossip_menu WHERE entry=8195;
DELETE FROM npc_text WHERE id=10192;
DELETE FROM gossip_menu WHERE entry=8197;
DELETE FROM npc_text WHERE id=10193;
DELETE FROM gossip_menu WHERE entry=8198;
DELETE FROM npc_text WHERE id=10194;
DELETE FROM gossip_menu WHERE entry=8199;
DELETE FROM npc_text WHERE id=10195;
DELETE FROM gossip_menu WHERE entry=8200;
DELETE FROM npc_text WHERE id=10196;
DELETE FROM gossip_menu WHERE entry=8201;
DELETE FROM npc_text WHERE id=10197;
DELETE FROM gossip_menu WHERE entry=8202;
DELETE FROM npc_text WHERE id=10198;
DELETE FROM gossip_menu WHERE entry=8203;
DELETE FROM npc_text WHERE id=10199;
DELETE FROM gossip_menu WHERE entry=8204;
DELETE FROM npc_text WHERE id=10200;
DELETE FROM gossip_menu WHERE entry=8208;
DELETE FROM npc_text WHERE id=10203;
DELETE FROM gossip_menu WHERE entry=8209;
DELETE FROM npc_text WHERE id=10204;
DELETE FROM gossip_menu WHERE entry=8210;
DELETE FROM npc_text WHERE id=10205;
DELETE FROM gossip_menu WHERE entry=8211;
DELETE FROM npc_text WHERE id=10206;
DELETE FROM gossip_menu WHERE entry=8212;
DELETE FROM npc_text WHERE id=10207;

-- From gossip_menu #8259 with text :10312 Are you ready to hear the story of the Cipher of Damnation, $N?
-- Used by source: gossip option menu #8276 id #0
-- option #0 "What do you have for sale, Oronok?"
-- option #1 "I am ready to hear your story, Oronok." submenu #8281


DELETE FROM gossip_menu WHERE entry=8259;
DELETE FROM npc_text WHERE id=10312;
DELETE FROM gossip_menu_option WHERE menu_id=8259 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8259 AND id=1;
DELETE FROM gossip_menu WHERE entry=8281;
DELETE FROM npc_text WHERE id=10313;
DELETE FROM gossip_menu_option WHERE menu_id=8281 AND id=0;
DELETE FROM gossip_menu WHERE entry=8280;
DELETE FROM npc_text WHERE id=10314;
DELETE FROM gossip_menu_option WHERE menu_id=8280 AND id=0;
DELETE FROM gossip_menu WHERE entry=8279;
DELETE FROM npc_text WHERE id=10315;
DELETE FROM gossip_menu_option WHERE menu_id=8279 AND id=0;
DELETE FROM gossip_menu WHERE entry=8278;
DELETE FROM npc_text WHERE id=10316;
DELETE FROM gossip_menu_option WHERE menu_id=8278 AND id=0;
DELETE FROM gossip_menu WHERE entry=8277;
DELETE FROM npc_text WHERE id=10317;
DELETE FROM gossip_menu_option WHERE menu_id=8277 AND id=0;
DELETE FROM gossip_menu WHERE entry=8276;
DELETE FROM npc_text WHERE id=10318;
DELETE FROM gossip_menu_option WHERE menu_id=8276 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8276;

-- From gossip_menu #8282 with text :10321 Welcome to Shattrath City, seat of the Sha'tar in Outland. You seek guidance?
-- Used by source: unknown
-- option #0 "World's End Tavern" submenu #8329
-- option #1 "Bank" submenu #8315
-- option #2 "Inn" submenu #8317
-- option #3 "Flight Master" submenu #8319
-- option #4 "Mailbox" submenu #8320
-- option #5 "Stable Master" submenu #8321
-- option #6 "Battlemaster" submenu #8323
-- option #7 "Profession Trainer" submenu #8326
-- option #8 "Mana Loom" submenu #8402
-- option #9 "Alchemy Lab" submenu #8546
-- option #10 "Gem Merchant" submenu #8548


DELETE FROM gossip_menu WHERE entry=8282;
DELETE FROM npc_text WHERE id=10321;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8282 AND id=10;
DELETE FROM gossip_menu WHERE entry=8329;
DELETE FROM npc_text WHERE id=10394;
DELETE FROM gossip_menu WHERE entry=8315;
DELETE FROM npc_text WHERE id=10379;
DELETE FROM gossip_menu_option WHERE menu_id=8315 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8315 AND id=1;
DELETE FROM gossip_menu WHERE entry=8317;
DELETE FROM npc_text WHERE id=10382;
DELETE FROM gossip_menu_option WHERE menu_id=8317 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8317 AND id=1;
DELETE FROM gossip_menu WHERE entry=8319;
DELETE FROM npc_text WHERE id=10385;
DELETE FROM gossip_menu WHERE entry=8320;
DELETE FROM npc_text WHERE id=10386;
DELETE FROM gossip_menu_option WHERE menu_id=8320 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8320 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8320 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8320 AND id=3;
DELETE FROM gossip_menu WHERE entry=8321;
DELETE FROM npc_text WHERE id=10387;
DELETE FROM gossip_menu_option WHERE menu_id=8321 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8321 AND id=1;
DELETE FROM gossip_menu WHERE entry=8323;
DELETE FROM npc_text WHERE id=10388;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=2;
DELETE FROM gossip_menu WHERE entry=8326;
DELETE FROM npc_text WHERE id=10391;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8326 AND id=7;
DELETE FROM gossip_menu WHERE entry=8402;
DELETE FROM npc_text WHERE id=10503;
DELETE FROM gossip_menu WHERE entry=8546;
DELETE FROM npc_text WHERE id=10696;
DELETE FROM gossip_menu WHERE entry=8548;
DELETE FROM npc_text WHERE id=10697;
DELETE FROM gossip_menu_option WHERE menu_id=8548 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8548 AND id=1;
DELETE FROM gossip_menu WHERE entry=8313;
DELETE FROM npc_text WHERE id=10380;
DELETE FROM gossip_menu WHERE entry=8314;
DELETE FROM npc_text WHERE id=10381;
DELETE FROM gossip_menu WHERE entry=8316;
DELETE FROM npc_text WHERE id=10383;
DELETE FROM gossip_menu WHERE entry=8318;
DELETE FROM npc_text WHERE id=10384;
DELETE FROM gossip_menu WHERE entry=8313;
DELETE FROM npc_text WHERE id=10380;
DELETE FROM gossip_menu WHERE entry=8316;
DELETE FROM npc_text WHERE id=10383;
DELETE FROM gossip_menu WHERE entry=8314;
DELETE FROM npc_text WHERE id=10381;
DELETE FROM gossip_menu WHERE entry=8318;
DELETE FROM npc_text WHERE id=10384;
DELETE FROM gossip_menu WHERE entry=8316;
DELETE FROM npc_text WHERE id=10383;
DELETE FROM gossip_menu WHERE entry=8318;
DELETE FROM npc_text WHERE id=10384;
DELETE FROM gossip_menu WHERE entry=8324;
DELETE FROM npc_text WHERE id=10389;
DELETE FROM gossip_menu WHERE entry=8325;
DELETE FROM npc_text WHERE id=10390;
DELETE FROM gossip_menu WHERE entry=9206;
DELETE FROM npc_text WHERE id=12510;
DELETE FROM gossip_menu WHERE entry=8327;
DELETE FROM npc_text WHERE id=10392;
DELETE FROM gossip_menu WHERE entry=8335;
DELETE FROM npc_text WHERE id=10400;
DELETE FROM gossip_menu WHERE entry=8328;
DELETE FROM npc_text WHERE id=10393;
DELETE FROM gossip_menu WHERE entry=8330;
DELETE FROM npc_text WHERE id=10395;
DELETE FROM gossip_menu WHERE entry=8331;
DELETE FROM npc_text WHERE id=10396;
DELETE FROM gossip_menu WHERE entry=8332;
DELETE FROM npc_text WHERE id=10397;
DELETE FROM gossip_menu WHERE entry=8334;
DELETE FROM npc_text WHERE id=10399;
DELETE FROM gossip_menu WHERE entry=8333;
DELETE FROM npc_text WHERE id=10398;
DELETE FROM gossip_menu WHERE entry=8547;
DELETE FROM npc_text WHERE id=10698;
DELETE FROM gossip_menu WHERE entry=8549;
DELETE FROM npc_text WHERE id=10699;

-- From gossip_menu #8336 with text :10401 Who dares interrupt the Grand Commander?
-- Used by source: unknown
-- option #0 "I bring word from Lord Illidan." submenu #8342


DELETE FROM gossip_menu WHERE entry=8336;
DELETE FROM npc_text WHERE id=10401;
DELETE FROM gossip_menu_option WHERE menu_id=8336 AND id=0;
DELETE FROM gossip_menu WHERE entry=8342;
DELETE FROM npc_text WHERE id=10405;
DELETE FROM gossip_menu_option WHERE menu_id=8342 AND id=0;
DELETE FROM gossip_menu WHERE entry=8341;
DELETE FROM npc_text WHERE id=10406;
DELETE FROM gossip_menu_option WHERE menu_id=8341 AND id=0;
DELETE FROM gossip_menu WHERE entry=8340;
DELETE FROM npc_text WHERE id=10407;
DELETE FROM gossip_menu_option WHERE menu_id=8340 AND id=0;
DELETE FROM gossip_menu WHERE entry=8339;
DELETE FROM npc_text WHERE id=10408;
DELETE FROM gossip_menu_option WHERE menu_id=8339 AND id=0;
DELETE FROM gossip_menu WHERE entry=8338;
DELETE FROM npc_text WHERE id=10409;
DELETE FROM gossip_menu_option WHERE menu_id=8338 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8338;

-- From gossip_menu #7162 with text :8432 Such a delight to see you again, $c. No, really. You're the reason that I'm making money here, hand over fist.$B$BNow, what can I sell to you today?
-- Used by source: unknown
-- option #0 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=7162;
DELETE FROM npc_text WHERE id=8432;
DELETE FROM gossip_menu_option WHERE menu_id=7162 AND id=0;

-- From gossip_menu #7399 with text :8864 Watch your step around here, stranger.
-- Used by source: gossip option menu #7426 id #0
-- option #0 "Admiral, I need another tree disguise kit."


DELETE FROM gossip_menu WHERE entry=7399;
DELETE FROM npc_text WHERE id=8864;
DELETE FROM gossip_menu_option WHERE menu_id=7399 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7399;

-- From gossip_menu #7585 with text :9229 So we're to trust people who would insult us with this deception? Do the draenei think so little of us that they must resort to trickery to get our attention?$B$BWe're aware of their desire to 'redeem' us, but my people want none of their redemption. We are capable of standing on our own and we will pursue our destiny as a proud and separate people. Carry this message to your allies.
-- Used by source: gossip option menu #7583 id #0
-- option #0 "I will tell them. Farewell, elder." submenu #7586


DELETE FROM gossip_menu WHERE entry=7585;
DELETE FROM npc_text WHERE id=9229;
DELETE FROM gossip_menu_option WHERE menu_id=7585 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7585;
DELETE FROM gossip_menu WHERE entry=7586;
DELETE FROM npc_text WHERE id=9231;

-- From gossip_menu #7596 with text :9243 The naaru are wise beyond our understanding.  I've learned more from A'dal in the last five months than all the years I spent in the libraries of Dalaran.
-- Used by source: gossip option menu #8014 id #0
-- option #0 "I've heard your name spoken only in whispers, mage.  Who are you?" submenu #8009


DELETE FROM gossip_menu WHERE entry=7596;
DELETE FROM npc_text WHERE id=9243;
DELETE FROM gossip_menu_option WHERE menu_id=7596 AND id=0;
DELETE FROM gossip_menu WHERE entry=8009;
DELETE FROM npc_text WHERE id=9876;
DELETE FROM gossip_menu_option WHERE menu_id=8009 AND id=0;
DELETE FROM gossip_menu WHERE entry=8010;
DELETE FROM npc_text WHERE id=9877;
DELETE FROM gossip_menu_option WHERE menu_id=8010 AND id=0;
DELETE FROM gossip_menu WHERE entry=8011;
DELETE FROM npc_text WHERE id=9878;
DELETE FROM gossip_menu_option WHERE menu_id=8011 AND id=0;
DELETE FROM gossip_menu WHERE entry=8012;
DELETE FROM npc_text WHERE id=9879;
DELETE FROM gossip_menu_option WHERE menu_id=8012 AND id=0;
DELETE FROM gossip_menu WHERE entry=8013;
DELETE FROM npc_text WHERE id=9880;
DELETE FROM gossip_menu_option WHERE menu_id=8013 AND id=0;
DELETE FROM gossip_menu WHERE entry=8014;
DELETE FROM npc_text WHERE id=9881;
DELETE FROM gossip_menu_option WHERE menu_id=8014 AND id=0;

-- From gossip_menu #7633 with text :9316 Where in our fair city do you wish to go?
-- Used by source: unknown
-- option #0 "Auction House" submenu #7668
-- option #1 "The Bank" submenu #7639
-- option #2 "Dragonhawk Master" submenu #7640
-- option #3 "Guild Master" submenu #7641
-- option #4 "The Inn" submenu #7845
-- option #5 "Mailbox" submenu #7643
-- option #6 "Stable Master" submenu #7644
-- option #7 "Weapon Master" submenu #7645
-- option #8 "Battlemasters" submenu #7646
-- option #9 "Class Trainer" submenu #7649
-- option #10 "Profession Trainer" submenu #7667
-- option #11 "Mana Loom" submenu #8401


DELETE FROM gossip_menu WHERE entry=7633;
DELETE FROM npc_text WHERE id=9316;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=7633 AND id=11;
DELETE FROM gossip_menu WHERE entry=7668;
DELETE FROM npc_text WHERE id=9317;
DELETE FROM gossip_menu_option WHERE menu_id=7668 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7668 AND id=1;
DELETE FROM gossip_menu WHERE entry=7639;
DELETE FROM npc_text WHERE id=9320;
DELETE FROM gossip_menu_option WHERE menu_id=7639 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7639 AND id=1;
DELETE FROM gossip_menu WHERE entry=7640;
DELETE FROM npc_text WHERE id=9323;
DELETE FROM gossip_menu WHERE entry=7641;
DELETE FROM npc_text WHERE id=9324;
DELETE FROM gossip_menu WHERE entry=7845;
DELETE FROM npc_text WHERE id=9602;
DELETE FROM gossip_menu_option WHERE menu_id=7845 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7845 AND id=1;
DELETE FROM gossip_menu WHERE entry=7643;
DELETE FROM npc_text WHERE id=9326;
DELETE FROM gossip_menu WHERE entry=7644;
DELETE FROM npc_text WHERE id=9327;
DELETE FROM gossip_menu WHERE entry=7645;
DELETE FROM npc_text WHERE id=9328;
DELETE FROM gossip_menu WHERE entry=7646;
DELETE FROM npc_text WHERE id=9329;
DELETE FROM gossip_menu WHERE entry=7649;
DELETE FROM npc_text WHERE id=9331;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7649 AND id=6;
DELETE FROM gossip_menu WHERE entry=7667;
DELETE FROM npc_text WHERE id=9338;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=7667 AND id=13;
DELETE FROM gossip_menu WHERE entry=8401;
DELETE FROM npc_text WHERE id=10502;
DELETE FROM gossip_menu WHERE entry=7634;
DELETE FROM npc_text WHERE id=9318;
DELETE FROM gossip_menu WHERE entry=7635;
DELETE FROM npc_text WHERE id=9319;
DELETE FROM gossip_menu WHERE entry=7637;
DELETE FROM npc_text WHERE id=9321;
DELETE FROM gossip_menu WHERE entry=7638;
DELETE FROM npc_text WHERE id=9322;
DELETE FROM gossip_menu WHERE entry=7642;
DELETE FROM npc_text WHERE id=9325;
DELETE FROM gossip_menu WHERE entry=7844;
DELETE FROM npc_text WHERE id=9603;
DELETE FROM gossip_menu WHERE entry=7647;
DELETE FROM npc_text WHERE id=9330;
DELETE FROM gossip_menu WHERE entry=7648;
DELETE FROM npc_text WHERE id=9332;
DELETE FROM gossip_menu WHERE entry=7650;
DELETE FROM npc_text WHERE id=9333;
DELETE FROM gossip_menu WHERE entry=7651;
DELETE FROM npc_text WHERE id=9334;
DELETE FROM gossip_menu WHERE entry=7652;
DELETE FROM npc_text WHERE id=9335;
DELETE FROM gossip_menu WHERE entry=7653;
DELETE FROM npc_text WHERE id=9336;
DELETE FROM gossip_menu WHERE entry=7654;
DELETE FROM npc_text WHERE id=9337;
DELETE FROM gossip_menu WHERE entry=7655;
DELETE FROM npc_text WHERE id=9339;
DELETE FROM gossip_menu WHERE entry=7656;
DELETE FROM npc_text WHERE id=9340;
DELETE FROM gossip_menu WHERE entry=7860;
DELETE FROM npc_text WHERE id=9624;
DELETE FROM gossip_menu WHERE entry=7657;
DELETE FROM npc_text WHERE id=9341;
DELETE FROM gossip_menu WHERE entry=7658;
DELETE FROM npc_text WHERE id=9342;
DELETE FROM gossip_menu WHERE entry=7659;
DELETE FROM npc_text WHERE id=9343;
DELETE FROM gossip_menu WHERE entry=7660;
DELETE FROM npc_text WHERE id=9344;
DELETE FROM gossip_menu WHERE entry=7661;
DELETE FROM npc_text WHERE id=9345;
DELETE FROM gossip_menu WHERE entry=7662;
DELETE FROM npc_text WHERE id=9346;
DELETE FROM gossip_menu WHERE entry=7663;
DELETE FROM npc_text WHERE id=9347;
DELETE FROM gossip_menu WHERE entry=7664;
DELETE FROM npc_text WHERE id=9348;
DELETE FROM gossip_menu WHERE entry=7665;
DELETE FROM npc_text WHERE id=9349;
DELETE FROM gossip_menu WHERE entry=7666;
DELETE FROM npc_text WHERE id=9350;


-- From gossip_menu #7669 with text :9352 Why you mean to Lump? Lump hungry, dat's all.
-- Used by source: unknown
-- option #0 "I need answers, ogre!" submenu #7673


DELETE FROM gossip_menu WHERE entry=7669;
DELETE FROM npc_text WHERE id=9352;
DELETE FROM gossip_menu_option WHERE menu_id=7669 AND id=0;
DELETE FROM gossip_menu WHERE entry=7673;
DELETE FROM npc_text WHERE id=9353;
DELETE FROM gossip_menu_option WHERE menu_id=7673 AND id=0;
DELETE FROM gossip_menu WHERE entry=7672;
DELETE FROM npc_text WHERE id=9354;
DELETE FROM gossip_menu_option WHERE menu_id=7672 AND id=0;
DELETE FROM gossip_menu WHERE entry=7671;
DELETE FROM npc_text WHERE id=9355;
DELETE FROM gossip_menu_option WHERE menu_id=7671 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7671;
DELETE FROM gossip_menu WHERE entry=7670;
DELETE FROM npc_text WHERE id=9356;

-- From gossip_menu #8357 with text :10430 <The Arcane Guardian seems to face you, but says nothing.>
-- Used by source: unknown
-- option #0 "World's End Tavern" submenu #8358
-- option #1 "Bank" submenu #8359
-- option #2 "Inn" submenu #8360
-- option #3 "Flight Master" submenu #8361
-- option #4 "Mailbox" submenu #8363
-- option #5 "Stable Master" submenu #8364
-- option #6 "Battlemaster" submenu #8365
-- option #7 "Profession Trainer" submenu #8403
-- option #8 "Mana Loom" submenu #8550
-- option #9 "Alchemy Lab" submenu #8551
-- option #10 "Gem Merchant" submenu #8552


DELETE FROM gossip_menu WHERE entry=8357;
DELETE FROM npc_text WHERE id=10430;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8357 AND id=10;
DELETE FROM gossip_menu WHERE entry=8358;
DELETE FROM npc_text WHERE id=10431;
DELETE FROM gossip_menu WHERE entry=8359;
DELETE FROM npc_text WHERE id=10432;
DELETE FROM gossip_menu WHERE entry=8360;
DELETE FROM npc_text WHERE id=10433;
DELETE FROM gossip_menu WHERE entry=8361;
DELETE FROM npc_text WHERE id=10435;
DELETE FROM gossip_menu WHERE entry=8363;
DELETE FROM npc_text WHERE id=10436;
DELETE FROM gossip_menu WHERE entry=8364;
DELETE FROM npc_text WHERE id=10437;
DELETE FROM gossip_menu WHERE entry=8365;
DELETE FROM npc_text WHERE id=10438;
DELETE FROM gossip_menu_option WHERE menu_id=8365 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8365 AND id=1;
DELETE FROM gossip_menu WHERE entry=8403;
DELETE FROM npc_text WHERE id=10504;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8403 AND id=7;
DELETE FROM gossip_menu WHERE entry=8550;
DELETE FROM npc_text WHERE id=10503;
DELETE FROM gossip_menu WHERE entry=8551;
DELETE FROM npc_text WHERE id=10701;
DELETE FROM gossip_menu WHERE entry=8552;
DELETE FROM npc_text WHERE id=10702;
DELETE FROM gossip_menu WHERE entry=8408;
DELETE FROM npc_text WHERE id=10513;
DELETE FROM gossip_menu WHERE entry=8409;
DELETE FROM npc_text WHERE id=10514;
DELETE FROM gossip_menu WHERE entry=8411;
DELETE FROM npc_text WHERE id=10516;
DELETE FROM gossip_menu WHERE entry=8412;
DELETE FROM npc_text WHERE id=10517;
DELETE FROM gossip_menu WHERE entry=8413;
DELETE FROM npc_text WHERE id=10518;
DELETE FROM gossip_menu WHERE entry=8414;
DELETE FROM npc_text WHERE id=10519;
DELETE FROM gossip_menu WHERE entry=8415;
DELETE FROM npc_text WHERE id=10520;
DELETE FROM gossip_menu WHERE entry=8416;
DELETE FROM npc_text WHERE id=10521;
DELETE FROM gossip_menu WHERE entry=8417;
DELETE FROM npc_text WHERE id=10522;
DELETE FROM gossip_menu WHERE entry=8418;
DELETE FROM npc_text WHERE id=10523;

-- From gossip_menu #8419 with text :10524 Welcome to Aldor Rise. You seek guidance?
-- Used by source: unknown
-- option #0 "World's End Tavern" submenu #8329
-- option #1 "Bank" submenu #8313
-- option #2 "Inn" submenu #8421
-- option #3 "Flight Master" submenu #8319
-- option #4 "Mailbox" submenu #8422
-- option #5 "Stable Master" submenu #8423
-- option #6 "Battlemaster" submenu #8323
-- option #7 "Profession Trainer" submenu #8424
-- option #8 "Mana Loom" submenu #8402
-- option #9 "Alchemy Lab" submenu #8546
-- option #10 "Gem Merchant" submenu #8547


DELETE FROM gossip_menu WHERE entry=8419;
DELETE FROM npc_text WHERE id=10524;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=8419 AND id=10;
DELETE FROM gossip_menu WHERE entry=8329;
DELETE FROM npc_text WHERE id=10394;
DELETE FROM gossip_menu WHERE entry=8313;
DELETE FROM npc_text WHERE id=10380;
DELETE FROM gossip_menu WHERE entry=8421;
DELETE FROM npc_text WHERE id=10525;
DELETE FROM gossip_menu WHERE entry=8319;
DELETE FROM npc_text WHERE id=10385;
DELETE FROM gossip_menu WHERE entry=8422;
DELETE FROM npc_text WHERE id=10526;
DELETE FROM gossip_menu WHERE entry=8423;
DELETE FROM npc_text WHERE id=10527;
DELETE FROM gossip_menu WHERE entry=8323;
DELETE FROM npc_text WHERE id=10388;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8323 AND id=2;
DELETE FROM gossip_menu WHERE entry=8424;
DELETE FROM npc_text WHERE id=10391;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=8424 AND id=7;
DELETE FROM gossip_menu WHERE entry=8402;
DELETE FROM npc_text WHERE id=10503;
DELETE FROM gossip_menu WHERE entry=8546;
DELETE FROM npc_text WHERE id=10696;
DELETE FROM gossip_menu WHERE entry=8547;
DELETE FROM npc_text WHERE id=10698;
DELETE FROM gossip_menu WHERE entry=8324;
DELETE FROM npc_text WHERE id=10389;
DELETE FROM gossip_menu WHERE entry=8325;
DELETE FROM npc_text WHERE id=10390;
DELETE FROM gossip_menu WHERE entry=9206;
DELETE FROM npc_text WHERE id=12510;
DELETE FROM gossip_menu WHERE entry=8327;
DELETE FROM npc_text WHERE id=10392;
DELETE FROM gossip_menu WHERE entry=8335;
DELETE FROM npc_text WHERE id=10400;
DELETE FROM gossip_menu WHERE entry=8328;
DELETE FROM npc_text WHERE id=10393;
DELETE FROM gossip_menu WHERE entry=8425;
DELETE FROM npc_text WHERE id=10528;
DELETE FROM gossip_menu WHERE entry=8331;
DELETE FROM npc_text WHERE id=10396;
DELETE FROM gossip_menu WHERE entry=8426;
DELETE FROM npc_text WHERE id=10529;
DELETE FROM gossip_menu WHERE entry=8334;
DELETE FROM npc_text WHERE id=10399;
DELETE FROM gossip_menu WHERE entry=8333;
DELETE FROM npc_text WHERE id=10398;

-- From gossip_menu #8497 with text :10616 <Neltharaku nods.>$B$BKarynaku... She is held prisoner atop Dragonmaw Fortress. I have made many attempts to free her. All have failed... You have battled these beasts before, have you not?$B
-- Used by source: gossip option menu #8498 id #0
-- option #0 "I have battled many beasts, dragon. I will help you." submenu #8397


DELETE FROM gossip_menu WHERE entry=8497;
DELETE FROM npc_text WHERE id=10616;
DELETE FROM gossip_menu_option WHERE menu_id=8497 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8497;
DELETE FROM gossip_menu WHERE entry=8397;
DELETE FROM npc_text WHERE id=10613;
DELETE FROM gossip_menu_option WHERE menu_id=8397 AND id=0;
DELETE FROM gossip_menu WHERE entry=8499;
DELETE FROM npc_text WHERE id=10614;
DELETE FROM gossip_menu_option WHERE menu_id=8499 AND id=0;
DELETE FROM gossip_menu WHERE entry=8498;
DELETE FROM npc_text WHERE id=10615;
DELETE FROM gossip_menu_option WHERE menu_id=8498 AND id=0;

-- From gossip_menu #8616 with text :10794 <The arakkoa ghost reaches out toward you as though to try to identify you. You get the impression that it cannot see you clearly.>$B$BRokkaram, is that you?
-- Used by source: unknown
-- option #0 "Yes... yes, it's me." submenu #8617


DELETE FROM gossip_menu WHERE entry=8616;
DELETE FROM npc_text WHERE id=10794;
DELETE FROM gossip_menu_option WHERE menu_id=8616 AND id=0;
DELETE FROM gossip_menu WHERE entry=8617;
DELETE FROM npc_text WHERE id=10795;
DELETE FROM gossip_menu_option WHERE menu_id=8617 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8617;

-- From gossip_menu #8692 with text :10936 The Cenarion Expedition rescued me from certain death inside the mines. I owe them my life! I offer up my services of repair and reagent sales to those that are allies of the Cenarion Expedition.
-- Used by source: unknown
-- option #0 "I am an ally of the Cenarion Expedition, Mortog. Show me your wares."


DELETE FROM gossip_menu WHERE entry=8692;
DELETE FROM npc_text WHERE id=10936;
DELETE FROM gossip_menu_option WHERE menu_id=8692 AND id=0;

-- From gossip_menu #8701 with text :10940 <The Murkblood overseer grunts.>
-- Used by source: unknown
-- option #0 "I am here for you, overseer." submenu #8695


DELETE FROM gossip_menu WHERE entry=8701;
DELETE FROM npc_text WHERE id=10940;
DELETE FROM gossip_menu_option WHERE menu_id=8701 AND id=0;
DELETE FROM gossip_menu WHERE entry=8695;
DELETE FROM npc_text WHERE id=10941;
DELETE FROM gossip_menu_option WHERE menu_id=8695 AND id=0;
DELETE FROM gossip_menu WHERE entry=8700;
DELETE FROM npc_text WHERE id=10942;
DELETE FROM gossip_menu_option WHERE menu_id=8700 AND id=0;
DELETE FROM gossip_menu WHERE entry=8699;
DELETE FROM npc_text WHERE id=10943;
DELETE FROM gossip_menu_option WHERE menu_id=8699 AND id=0;
DELETE FROM gossip_menu WHERE entry=8698;
DELETE FROM npc_text WHERE id=10944;
DELETE FROM gossip_menu_option WHERE menu_id=8698 AND id=0;
DELETE FROM gossip_menu WHERE entry=8697;
DELETE FROM npc_text WHERE id=10945;
DELETE FROM gossip_menu_option WHERE menu_id=8697 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8697;
DELETE FROM gossip_menu WHERE entry=8696;
DELETE FROM npc_text WHERE id=10946;

-- From gossip_menu #8762 with text :11136 You seem like a sensible $c, friend. Do you remember the glory days of Theramore, back before Jaina made us give up the fight against the Horde? Are you sick of being told to stay your blade while the orcs continue to provoke us?
-- Used by source: unknown
-- option #0 "Your propaganda won't work on me. Spout your treasonous filth elsewhere, traitor!"


DELETE FROM gossip_menu WHERE entry=8762;
DELETE FROM npc_text WHERE id=11136;
DELETE FROM gossip_menu_option WHERE menu_id=8762 AND id=0;

-- From gossip_menu #9727 with text :13310 There are two zeppelin towers outside Orgrimmar. The eastern tower serves Tirisfal Glades and Stranglethorn Vale, while the western tower serves Northrend and Thunder Bluff.
-- Used by source: gossip option menu #1951 id #6
-- option #0 "The eastern zeppelin tower" submenu #2481
-- option #1 "The western zeppelin tower" submenu #9726


DELETE FROM gossip_menu WHERE entry=9727;
DELETE FROM npc_text WHERE id=13310;
DELETE FROM gossip_menu_option WHERE menu_id=9727 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9727 AND id=1;
DELETE FROM gossip_menu WHERE entry=9726;

DELETE FROM db_script_string WHERE entry>=2000005429 AND entry<=2000005437;

-- From gossip_menu #8095 with text :10010 Shatter Point is a great place for a Wildhammer dwarf.  I've never had so much time in the air!
-- Used by source: unknown
-- option #0 "Show me where I can fly."


DELETE FROM gossip_menu WHERE entry=8095;
DELETE FROM npc_text WHERE id=10010;
DELETE FROM gossip_menu_option WHERE menu_id=8095 AND id=0;

-- From gossip_menu #1951 with text :2593 What are you looking for?
-- Used by source: creature #3296 (Orgrimmar Grunt)
-- option #0 "The bank" submenu #1901
-- option #1 "The wind rider master" submenu #1902
-- option #2 "The guild master" submenu #1903
-- option #3 "The inn" submenu #1904
-- option #4 "The mailbox" submenu #1905
-- option #5 "The auction house" submenu #2403
-- option #6 "The zeppelin master" submenu #9727 <- this one was added in TBC
-- option #7 "The weapon master" submenu #3724
-- option #8 "The stable master" submenu #4902
-- option #9 "The officers' lounge" submenu #5882
-- option #10 "The battlemaster" submenu #8224
-- option #12 "A class trainer" submenu #1949 <- we don't forget to remove the paladin trainer here
-- option #13 "A profession trainer" submenu #1942


DELETE FROM gossip_menu_option WHERE menu_id=1951 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=1949 AND id=7;
DELETE FROM gossip_menu WHERE entry=8644;
DELETE FROM npc_text WHERE id=10843;

-- From gossip_menu #7426 with text :8978 Can't you see that I'm busy?
-- Used by source: unknown
-- option #0 "It's over, Spark. The admiral knows it was you who betrayed the Alliance. Now you're either going to cooperate with me and tell me everything that you know or we're going to engage in some fisticuff." submenu #7399


DELETE FROM gossip_menu WHERE entry=7426;
DELETE FROM npc_text WHERE id=8978;
DELETE FROM gossip_menu_option WHERE menu_id=7426 AND id=0;
DELETE FROM gossip_menu WHERE entry=7399;
DELETE FROM npc_text WHERE id=8864;
DELETE FROM gossip_menu_option WHERE menu_id=7399 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7399;

-- From gossip_menu #7582 with text :9226 I humbly welcome you to our temple, spirit.
-- Used by source: unknown
-- option #0 "Greetings, elder. It is time for your people to end their hostility toward the draenei and their allies." submenu #7583


DELETE FROM gossip_menu WHERE entry=7582;
DELETE FROM npc_text WHERE id=9226;
DELETE FROM gossip_menu_option WHERE menu_id=7582 AND id=0;
DELETE FROM gossip_menu WHERE entry=7583;
DELETE FROM npc_text WHERE id=9227;
DELETE FROM gossip_menu_option WHERE menu_id=7583 AND id=0;
DELETE FROM gossip_menu WHERE entry=7585;
DELETE FROM npc_text WHERE id=9229;
DELETE FROM gossip_menu_option WHERE menu_id=7585 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=7585;
DELETE FROM gossip_menu WHERE entry=7586;
DELETE FROM npc_text WHERE id=9231;

-- From gossip_menu #10769 with text :15321 With the bulk of Undercity's forces deployed to Vengeance Landing in Northrend, the Warchief has sent us to reinforce the city's defenses.
-- Used by source: unknown
-- option #0 "The auction house" submenu #10737
-- option #1 "The bank" submenu #10738
-- option #3 "The bat handler" submenu #10740
-- option #4 "The battlemaster" submenu #10741
-- option #5 "The guild master" submenu #10748
-- option #6 "The inn" submenu #10750
-- option #7 "Locksmith" submenu #10753
-- option #8 "The mailbox" submenu #10755
-- option #9 "The stable master" submenu #10761
-- option #10 "The weapon master" submenu #10765
-- option #11 "The zeppelin master" submenu #10766
-- option #12 "A class trainer" submenu #10768
-- option #13 "A profession trainer" submenu #10767


DELETE FROM gossip_menu WHERE entry=10769;
DELETE FROM npc_text WHERE id=15321;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=10769 AND id=13;
DELETE FROM gossip_menu WHERE entry=10737;
DELETE FROM npc_text WHERE id=14900;
DELETE FROM gossip_menu WHERE entry=10738;
DELETE FROM npc_text WHERE id=14901;
DELETE FROM gossip_menu WHERE entry=10740;
DELETE FROM npc_text WHERE id=14903;
DELETE FROM gossip_menu WHERE entry=10741;
DELETE FROM npc_text WHERE id=14904;
DELETE FROM gossip_menu WHERE entry=10748;
DELETE FROM npc_text WHERE id=14911;
DELETE FROM gossip_menu WHERE entry=10750;
DELETE FROM npc_text WHERE id=14913;
DELETE FROM gossip_menu WHERE entry=10753;
DELETE FROM npc_text WHERE id=14916;
DELETE FROM gossip_menu WHERE entry=10755;
DELETE FROM npc_text WHERE id=14918;
DELETE FROM gossip_menu WHERE entry=10761;
DELETE FROM npc_text WHERE id=14924;
DELETE FROM gossip_menu WHERE entry=10765;
DELETE FROM npc_text WHERE id=14928;
DELETE FROM gossip_menu WHERE entry=10766;
DELETE FROM npc_text WHERE id=14929;
DELETE FROM gossip_menu WHERE entry=10768;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10768 AND id=5;
DELETE FROM gossip_menu WHERE entry=10767;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10767 AND id=12;
DELETE FROM gossip_menu WHERE entry=10754;
DELETE FROM npc_text WHERE id=14917;
DELETE FROM gossip_menu WHERE entry=10757;
DELETE FROM npc_text WHERE id=14920;
DELETE FROM gossip_menu WHERE entry=10758;
DELETE FROM npc_text WHERE id=14921;
DELETE FROM gossip_menu WHERE entry=10759;
DELETE FROM npc_text WHERE id=14922;
DELETE FROM gossip_menu WHERE entry=10763;
DELETE FROM npc_text WHERE id=14926;
DELETE FROM gossip_menu WHERE entry=10764;
DELETE FROM npc_text WHERE id=14927;
DELETE FROM gossip_menu WHERE entry=10736;
DELETE FROM npc_text WHERE id=14899;
DELETE FROM gossip_menu WHERE entry=10742;
DELETE FROM npc_text WHERE id=14905;
DELETE FROM gossip_menu WHERE entry=10743;
DELETE FROM npc_text WHERE id=14906;
DELETE FROM gossip_menu WHERE entry=10744;
DELETE FROM npc_text WHERE id=14907;
DELETE FROM gossip_menu WHERE entry=10745;
DELETE FROM npc_text WHERE id=14908;
DELETE FROM gossip_menu WHERE entry=10746;
DELETE FROM npc_text WHERE id=14909;
DELETE FROM gossip_menu WHERE entry=10747;
DELETE FROM npc_text WHERE id=14910;
DELETE FROM gossip_menu WHERE entry=10749;
DELETE FROM npc_text WHERE id=14912;
DELETE FROM gossip_menu WHERE entry=10752;
DELETE FROM npc_text WHERE id=14915;
DELETE FROM gossip_menu WHERE entry=10756;
DELETE FROM npc_text WHERE id=14919;
DELETE FROM gossip_menu WHERE entry=10760;
DELETE FROM npc_text WHERE id=14923;
DELETE FROM gossip_menu WHERE entry=10762;
DELETE FROM npc_text WHERE id=14925;


-- the following DELETE queries were tested one by one




-- From gossip_menu #7139 with text :8401 Greetings, travelers. I have been instructed to treat any bearer of a key to Karazhan as an honored guest of the Master. Feel free to ask any questions you wish of me. How may I assist you?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7139;
DELETE FROM npc_text WHERE id=8401;

-- From gossip_menu #7142 with text :8404 Ah, guests of the Master. I hope you've been watching your step in here.
-- Used by source: unknown
-- option #0 "Who is Midnight?" submenu #8170


DELETE FROM gossip_menu WHERE entry=7142;
DELETE FROM npc_text WHERE id=8404;
DELETE FROM gossip_menu_option WHERE menu_id=7142 AND id=0;
DELETE FROM gossip_menu WHERE entry=8170;
DELETE FROM npc_text WHERE id=10117;

-- From gossip_menu #7143 with text :8406 Damn all these vermin! I don't suppose you could help me with this situation?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7143;
DELETE FROM npc_text WHERE id=8406;

-- From gossip_menu #7149 with text :8413 
-- Used by source: unknown
-- option #0 "Yes, I'd like to purchase a ride down to the Ghostlands."


DELETE FROM gossip_menu WHERE entry=7149;
DELETE FROM npc_text WHERE id=8413;
DELETE FROM gossip_menu_option WHERE menu_id=7149 AND id=0;

-- From gossip_menu #7171 with text :8446 Yes... what do you want, $r? Can't you see I am busy here?
-- Used by source: unknown
-- option #0 "Master chef, can you train me in the culinary arts?"
-- option #1 "Have you any cooking supplies?"


DELETE FROM gossip_menu WHERE entry=7171;
DELETE FROM npc_text WHERE id=8446;
DELETE FROM gossip_menu_option WHERE menu_id=7171 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7171 AND id=1;

-- From gossip_menu #7178 with text :8458 Greetings, $r.  I am Ambassador Sunsorrow of the sin'dorei, or blood elves as we are commonly known.  I have high hopes that this new bond between us and the Horde will be mutually beneficial.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7178;
DELETE FROM npc_text WHERE id=8458;

-- From gossip_menu #7187 with text :8464 The drafts of fresh air that blow from Eversong from time to time really upset my stomach, if you know what I mean.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7187;
DELETE FROM npc_text WHERE id=8464;

-- From gossip_menu #7189 with text :8469 This sign contains various announcements and notices of rewards.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7189;
DELETE FROM npc_text WHERE id=8469;

-- From gossip_menu #7207 with text :8489 The High Executor is a very busy man, $c.  Maybe I can help you with whatever you need?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7207;
DELETE FROM npc_text WHERE id=8489;


-- From gossip_menu #7220 with text :8515 Sin'dorei and Forsaken share a common goal in the Ghostlands, $N.  Together we shall defeat the Scourge and who knows... perhaps the Forsaken will be valuable allies in our quest to reach Outland.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7220;
DELETE FROM npc_text WHERE id=8515;

-- From gossip_menu #7242 with text :8548 Dar'Khan thinks we'll roll over for the Scourge without putting up a fight.  We shall prove him wrong, $N.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7242;
DELETE FROM npc_text WHERE id=8548;

-- From gossip_menu #7243 with text :8549 Can't you see that I'm trying to have a conversation with the lady?  Oh, very well, she seems preoccupied anyway.$B$BI deal in only the finest drinks, both local and exotic in vintage.  Care to have a look?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7243;
DELETE FROM npc_text WHERE id=8549;

-- From gossip_menu #7260 with text :8582 Ours is the path of purity and righteousness in the Light.
-- Used by source: unknown
-- option #0 "I would like to train further in the ways of the Light."
-- option #1 "I wish to unlearn my talents." submenu #4461
-- option #2 "None"


DELETE FROM gossip_menu WHERE entry=7260;
DELETE FROM npc_text WHERE id=8582;
DELETE FROM gossip_menu_option WHERE menu_id=7260 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7260 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7260 AND id=2;

-- From gossip_menu #7262 with text :8586 I'm a hunter trainer. You'll want to find the $c trainer.
-- Used by source: unknown
-- option #0 "I seek training in the ways of the Hunter."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7262;
DELETE FROM npc_text WHERE id=8586;
DELETE FROM gossip_menu_option WHERE menu_id=7262 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7262 AND id=1;

-- From gossip_menu #7263 with text :8588 I would train you, but you are no warrior.
-- Used by source: unknown
-- option #0 "I require warrior training."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7263;
DELETE FROM npc_text WHERE id=8588;
DELETE FROM gossip_menu_option WHERE menu_id=7263 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7263 AND id=1;

-- From gossip_menu #7264 with text :8590 By the Naaru, you are no mage! If you are looking for training, you must seek out a $c trainer.
-- Used by source: unknown
-- option #0 "I am interested in mage training."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7264;
DELETE FROM npc_text WHERE id=8590;
DELETE FROM gossip_menu_option WHERE menu_id=7264 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7264 AND id=1;

-- From gossip_menu #7265 with text :8592 Though I cannot offer you training, young $c, I can give you my blessing. Walk boldly in the Light!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7265;
DELETE FROM npc_text WHERE id=8592;

-- From gossip_menu #7286 with text :8616 Many are the paths of the Light, $c.  You must decide which to follow on this world, or any other.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7286;
DELETE FROM npc_text WHERE id=8616;

-- From gossip_menu #7288 with text :8618 I offer what shelter I can in our shattered lands.
-- Used by source: unknown
-- option #0 "Make this inn your home."
-- option #1 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7288;
DELETE FROM npc_text WHERE id=8618;
DELETE FROM gossip_menu_option WHERE menu_id=7288 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7288 AND id=1;

-- From gossip_menu #7290 with text :8634 I deal in comfort... Soothe your savage impulse, $r. My inn is your home... 
-- Used by source: unknown
-- option #0 "A fine offer, Floyd. I wish to make Hellfire Peninsula my home."
-- option #1 "I'm looking for some specialty goods. Let me browse your wares, Floyd."


DELETE FROM gossip_menu WHERE entry=7290;
DELETE FROM npc_text WHERE id=8634;
DELETE FROM gossip_menu_option WHERE menu_id=7290 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7290 AND id=1;

-- From gossip_menu #7301 with text :8658 Sid's the name. It's nice to see some new faces around here. What can I do you for?
-- Used by source: unknown
-- option #0 "I would like to take a look at your wares, Sid."
-- option #1 "I wish to make Honor Hold my home, Sid."


DELETE FROM gossip_menu WHERE entry=7301;
DELETE FROM npc_text WHERE id=8658;
DELETE FROM gossip_menu_option WHERE menu_id=7301 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7301 AND id=1;

-- From gossip_menu #7303 with text :8662 What I wouldn't give for a healing crystal right about now!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7303;
DELETE FROM npc_text WHERE id=8662;

-- From gossip_menu #7306 with text :8672 Mirren and I are two of the very best hunters on either side of the Dark Portal.  Stick around, you might learn a thing or two.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7306;
DELETE FROM npc_text WHERE id=8672;

-- From gossip_menu #7307 with text :8673 I hope yer not here for our ale.  We're not sharing and that's final!$B$BIt's not our fault no one had the good sense to bring beer to Outland but us.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7307;
DELETE FROM npc_text WHERE id=8673;

-- From gossip_menu #7320 with text :8688 I was only an infant when my father was deployed to this wasteland. All that I have ever known of him is what others have told me.$B$BDo your dreams change, $N? Mine do not. I have one dream: A crimson skyline envelops me as Legion, numbering beyond comprehension, battle in the distance. I kneel before the body of a man, presumably my father, and weep. As he is gasping for air, his body wholly crushed, he whispers something. Despite every effort, I am unable to hear what he is trying to tell me.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7320;
DELETE FROM npc_text WHERE id=8688;

-- From gossip_menu #7332 with text :8716 It is sad to see what has happened to this land.  The Cenarion Expedition will do what it can to understand and heal the damage that has been done.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7332;
DELETE FROM npc_text WHERE id=8716;


-- From gossip_menu #7349 with text :8768 Though I cannot offer you training, young $c, I can give you my blessing.  Walk boldly in the Light!$B$BIs there anything else?
-- Used by source: unknown
-- option #0 "Train me"
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7349;
DELETE FROM npc_text WHERE id=8768;
DELETE FROM gossip_menu_option WHERE menu_id=7349 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7349 AND id=1;

-- From gossip_menu #7350 with text :8770 Not long ago, this place was the site of a terrible battle.  We of Nethergarde and the Argent Dawn held at bay a wave of demons, surging relentlessly from the Dark Portal.$B$BThose were dark days, full of bloodshed and despair...$B$BBut the Kingdoms of Azeroth soon joined us and pushed the monsters back!  The fighting continues on the far side of the Portal...$B$BThis camp is now calm, but I fear the quiet here belies the madness found through that hellish gate.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7350;
DELETE FROM npc_text WHERE id=8770;

-- From gossip_menu #7351 with text :8771 The heroics of the Trollbane bloodline are legendary. I idolize the man.$B$BAnd to find him alive, in the Outland...$B$B<Romus gazes past you.>$B$BWhen I first saw him, I nearly fainted. The shock was overwhelming. As I knelt before him, I had to fight back tears.$B$BYou can bet your sweet behind that I'm going to do everything in my power to make sure the Sons of Lothar are kept safe.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7351;
DELETE FROM npc_text WHERE id=8771;

-- From gossip_menu #7352 with text :9938 Ah, a new champion to aid our cause? What say you, $N? $B
-- Used by source: unknown
-- option #0 "Tell me of the Sons of Lothar." submenu #8044
-- option #1 "Tell me of the Hellfire orcs."
-- option #2 "Tell me of your homeland." submenu #8051


DELETE FROM gossip_menu WHERE entry=7352;
DELETE FROM npc_text WHERE id=9938;
DELETE FROM gossip_menu_option WHERE menu_id=7352 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7352 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7352 AND id=2;
DELETE FROM gossip_menu WHERE entry=8044;
DELETE FROM npc_text WHERE id=9932;
DELETE FROM gossip_menu_option WHERE menu_id=8044 AND id=0;
DELETE FROM gossip_menu WHERE entry=8051;
DELETE FROM npc_text WHERE id=8772;
DELETE FROM gossip_menu WHERE entry=8043;
DELETE FROM npc_text WHERE id=9933;

-- From gossip_menu #7355 with text :8780 <Sobbing> I hate graveyards.  So many dead.  And my sweet Luhanaa....
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7355;
DELETE FROM npc_text WHERE id=8780;

-- From gossip_menu #7357 with text :8786 We must strive to understand the balance maintained by this world's elemental spirits.
-- Used by source: unknown
-- option #0 "Teach me the ways of the spirits."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7357;
DELETE FROM npc_text WHERE id=8786;
DELETE FROM gossip_menu_option WHERE menu_id=7357 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7357 AND id=1;

-- From gossip_menu #7360 with text :8792 Come closer, friend.  Do not let my eyes startle you.$B$BI might have lost my sight many years ago but I never needed it to see the things that really matter.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7360;
DELETE FROM npc_text WHERE id=8792;

-- From gossip_menu #7361 with text :8793 
-- Used by source: unknown
-- option #0 "Please teach me how to fish, Diktynna."
-- option #1 "I wish to browse your wares, Diktynna."


DELETE FROM gossip_menu WHERE entry=7361;
DELETE FROM npc_text WHERE id=8793;
DELETE FROM gossip_menu_option WHERE menu_id=7361 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7361 AND id=1;

-- From gossip_menu #7363 with text :8796 I am honored to make your acquaintance.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7363;
DELETE FROM npc_text WHERE id=8796;

-- From gossip_menu #7364 with text :8798 Greetings.  I am Anchorite Delan - one of the draenei.  I am a teacher of sorts.  And who might you be?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7364;
DELETE FROM npc_text WHERE id=8798;

-- From gossip_menu #7368 with text :8804 I am far too busy to be wasting time on idle chatter. If you are looking for work as a huntsman, speak with Diktynna at the river's edge -- to the east. No doubt she's behind on her duties...
-- Used by source: unknown
-- option #0 "Train me."
-- option #1 "Acteon, where is the best area to hunt for moongraze stags?" submenu #7423
-- option #2 "Acteon, where is the best place to hunt moongraze bucks?" submenu #7424
-- option #3 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7368;
DELETE FROM npc_text WHERE id=8804;
DELETE FROM gossip_menu_option WHERE menu_id=7368 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7368 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7368 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7368 AND id=3;
DELETE FROM gossip_menu WHERE entry=7423;
DELETE FROM npc_text WHERE id=8972;
DELETE FROM gossip_menu WHERE entry=7424;
DELETE FROM npc_text WHERE id=8973;

-- From gossip_menu #7370 with text :8806 Gaze upon the Exodar, young $r. It is hard to imagine that we survived such a catastrophe.$B$B<Menelaous sighs.>$B$BThe Prophet states that it is here that our fate will finally be known. Ten lifetimes spent fleeing from the madness of the Burning Legion... here we finally make a stand.$B$BNo more running... I am ready to die.
-- Used by source: unknown
-- option #0 "Where can I find more infected nightstalker runts, Exarch?"


DELETE FROM gossip_menu WHERE entry=7370;
DELETE FROM npc_text WHERE id=8806;
DELETE FROM gossip_menu_option WHERE menu_id=7370 AND id=0;

-- From gossip_menu #7374 with text :8812 Greetings.  I am Anchorite Avuun of the draenei.  I am here studying the Lost Ones of the Fallow Sanctuary in the hope of being able to find a cure for their condition.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7374;
DELETE FROM npc_text WHERE id=8812;

-- From gossip_menu #7376 with text :8826 Your work here is complete, shaman.  Return to your people.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7376;
DELETE FROM npc_text WHERE id=8826;

-- From gossip_menu #7377 with text :8828 Greetings, $r.
-- Used by source: unknown
-- option #0 "Teach me the ways of the spirits."
-- option #1 "Tell me of your past, Farseer." submenu #7502
-- option #2 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7377;
DELETE FROM npc_text WHERE id=8828;
DELETE FROM gossip_menu_option WHERE menu_id=7377 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7377 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7377 AND id=2;
DELETE FROM gossip_menu WHERE entry=7502;
DELETE FROM npc_text WHERE id=9098;
DELETE FROM gossip_menu_option WHERE menu_id=7502 AND id=0;
DELETE FROM gossip_menu WHERE entry=7503;
DELETE FROM npc_text WHERE id=9099;
DELETE FROM gossip_menu_option WHERE menu_id=7503 AND id=0;
DELETE FROM gossip_menu WHERE entry=7504;
DELETE FROM npc_text WHERE id=9100;
DELETE FROM gossip_menu_option WHERE menu_id=7504 AND id=0;
DELETE FROM gossip_menu WHERE entry=7505;
DELETE FROM npc_text WHERE id=9101;
DELETE FROM gossip_menu_option WHERE menu_id=7505 AND id=0;
DELETE FROM gossip_menu WHERE entry=7506;
DELETE FROM npc_text WHERE id=9102;
DELETE FROM gossip_menu_option WHERE menu_id=7506 AND id=0;
DELETE FROM gossip_menu WHERE entry=7507;
DELETE FROM npc_text WHERE id=9103;
DELETE FROM gossip_menu_option WHERE menu_id=7507 AND id=0;
DELETE FROM gossip_menu WHERE entry=7508;
DELETE FROM npc_text WHERE id=9104;
DELETE FROM gossip_menu_option WHERE menu_id=7508 AND id=0;
DELETE FROM gossip_menu WHERE entry=7509;
DELETE FROM npc_text WHERE id=9105;

-- From gossip_menu #7378 with text :8832 Look around you, shaman.  Can you see the balance of the elements in the earth, the air, the water and the fire that has touched them all?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7378;
DELETE FROM npc_text WHERE id=8832;

-- From gossip_menu #7380 with text :8835 
-- Used by source: unknown
-- option #0 "I wish to learn all that you have to teach me about first aid, Fateema."


DELETE FROM gossip_menu WHERE entry=7380;
DELETE FROM npc_text WHERE id=8835;
DELETE FROM gossip_menu_option WHERE menu_id=7380 AND id=0;

-- From gossip_menu #7382 with text :8838 I'm very busy right now, young $c. Please excuse me.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7382;
DELETE FROM npc_text WHERE id=8838;

-- From gossip_menu #7383 with text :8840 Greetings, $c. I have been sent here from the Exodar to oversee the construction of Azure Watch.
-- Used by source: unknown
-- option #0 "I wish to learn about engineering, Daelo."
-- option #1 "I wish to browse your wares, Daelo."


DELETE FROM gossip_menu WHERE entry=7383;
DELETE FROM npc_text WHERE id=8840;
DELETE FROM gossip_menu_option WHERE menu_id=7383 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7383 AND id=1;

-- From gossip_menu #7384 with text :8844 An alchemist is able to work miracles with ordinary herbs, converting them into stable potions that range in effect from healing to breathing underwater and everything in between.
-- Used by source: unknown
-- option #0 "I wish to train as an alchemist, Daedal."


DELETE FROM gossip_menu WHERE entry=7384;
DELETE FROM npc_text WHERE id=8844;
DELETE FROM gossip_menu_option WHERE menu_id=7384 AND id=0;

-- From gossip_menu #7388 with text :8849 Avast ye, matey. Cookie is me name, cooking is me game. The McWeaksauce bloodline be a long line of cooks and tradesmen that work to please the more delicate senses o' man and woman.
-- Used by source: unknown
-- option #0 "Teach me how to cook, Cookie."
-- option #1 "Let me browse your wares, Cookie."


DELETE FROM gossip_menu WHERE entry=7388;
DELETE FROM npc_text WHERE id=8849;
DELETE FROM gossip_menu_option WHERE menu_id=7388 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7388 AND id=1;

-- From gossip_menu #7389 with text :8850 
-- Used by source: unknown
-- option #0 "I want to become a blacksmith."
-- option #1 "Let me browse your wares, Calypso."


DELETE FROM gossip_menu WHERE entry=7389;
DELETE FROM npc_text WHERE id=8850;
DELETE FROM gossip_menu_option WHERE menu_id=7389 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7389 AND id=1;

-- From gossip_menu #7392 with text :8853 Ikan tries and tries.  I think these Dreghood are much like the Lost Ones, you know... lost.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7392;
DELETE FROM npc_text WHERE id=8853;

-- From gossip_menu #7393 with text :8854 It will take a while, but these Broken Ones will learn the ways of the Light!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7393;
DELETE FROM npc_text WHERE id=8854;

-- From gossip_menu #7394 with text :8855 Welcome, $N. I am Landro Longshot - manager of the Black Flame. Perhaps you've not heard of the Black Flame until now. That doesn't surprise me; we work to keep things that way. We prefer to avoid... factional entanglements.$B$BThe Black Flame specializes in providing the finest services and entertainment money can buy, whether they happen to be hard to find items, gladiatorial combat, or lucrative games of chance.$B$BAre you here seeking something specific?$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7394;
DELETE FROM npc_text WHERE id=8855;

-- From gossip_menu #7397 with text :8860 The Ghostlands will not be won back by military force alone, $N.  That's where we magisters come in.$B$BOur guile and knowledge of the arcane are unmatched.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7397;
DELETE FROM npc_text WHERE id=8860;

-- From gossip_menu #7406 with text :8875 It's good to hear the voices of others here in Forest Song again. I'd begun to feel as though I might be the last of the kaldorei ever to set eyes on these lands before their descent into corruption.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7406;
DELETE FROM npc_text WHERE id=8875;

-- From gossip_menu #7414 with text :8953 As we attempt to gain the help of the peoples of this world against the Burning Legion, we must also learn to live peaceably amongst them.$B$BPlease keep this in mind as your journey takes you throughout Azeroth.  May the Light guide you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7414;
DELETE FROM npc_text WHERE id=8953;

-- From gossip_menu #7417 with text :9014 Greetings, young shaman.  Make yourself at home within my reef.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7417;
DELETE FROM npc_text WHERE id=9014;

-- From gossip_menu #7419 with text :8961 What's that $T scrub : girlie;?  You want your mommy?  Well too bad.  Maybe you should pay a visit to the Thrallmar officer's club to get her back?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7419;
DELETE FROM npc_text WHERE id=8961;

-- From gossip_menu #7421 with text :8970 Finally, everything is in place. Are you ready for your big stage debut?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7421;
DELETE FROM npc_text WHERE id=8970;

-- From gossip_menu #7422 with text :8971 Don't worry, you'll be fine. You look like a natural!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7422;
DELETE FROM npc_text WHERE id=8971;

-- From gossip_menu #7429 with text :8983 [Furbolg] Mil'ork kix ilfin o oomtor...
-- Used by source: unknown
-- option #0 "Please teach me how to skin, Gurf."


DELETE FROM gossip_menu WHERE entry=7429;
DELETE FROM npc_text WHERE id=8983;
DELETE FROM gossip_menu_option WHERE menu_id=7429 AND id=0;

-- From gossip_menu #7430 with text :8983 [Furbolg] Mil'ork kix ilfin o oomtor...
-- Used by source: unknown
-- option #0 "I wish to become a leatherworker, Moordo. Please train me."


DELETE FROM gossip_menu WHERE entry=7430;
DELETE FROM npc_text WHERE id=8983;
DELETE FROM gossip_menu_option WHERE menu_id=7430 AND id=0;

-- From gossip_menu #7431 with text :8993 Welcome to my shop!
-- Used by source: unknown
-- option #0 "Hello, Parkat. I wish to purchase something."


DELETE FROM gossip_menu WHERE entry=7431;
DELETE FROM npc_text WHERE id=8993;
DELETE FROM gossip_menu_option WHERE menu_id=7431 AND id=0;

-- From gossip_menu #7432 with text :8994 Ah, the Promised One has arrived. Welcome to Stillpine Hold.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7432;
DELETE FROM npc_text WHERE id=8994;

-- From gossip_menu #7433 with text :8996 Good tidings, $c. I am Stillpine the Younger, heir to the throne of Stillpine.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7433;
DELETE FROM npc_text WHERE id=8996;

-- From gossip_menu #7434 with text :8997 It is you who will defend my people and usher in a new era of prosperity for Stillpine!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7434;
DELETE FROM npc_text WHERE id=8997;

-- From gossip_menu #7435 with text :9003 I once served Medivh... or pretended to.  I helped the Violet Eye keep a close eye on the Master.$B$BBut now all I can think of is... making horseshoes.  Over and over.
-- Used by source: unknown
-- option #0 "I'm in need of your skill as a blacksmith, Koren."


DELETE FROM gossip_menu WHERE entry=7435;
DELETE FROM npc_text WHERE id=9003;
DELETE FROM gossip_menu_option WHERE menu_id=7435 AND id=0;

-- From gossip_menu #7448 with text :9021 
-- Used by source: unknown
-- option #0 "Show me what I've earned the right to purchase."


DELETE FROM gossip_menu WHERE entry=7448;
DELETE FROM npc_text WHERE id=9021;
DELETE FROM gossip_menu_option WHERE menu_id=7448 AND id=0;

-- From gossip_menu #7449 with text :9022 I am Admetius, leader of Blood Watch.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7449;
DELETE FROM npc_text WHERE id=9022;

-- From gossip_menu #7450 with text :9023 Welcome to Thrallmar, $N!  As you continue to aid us in our cause, I will grant you access to more of our supplies.
-- Used by source: unknown
-- option #0 "Show me what I've earned the right to purchase."


DELETE FROM gossip_menu WHERE entry=7450;
DELETE FROM npc_text WHERE id=9023;
DELETE FROM gossip_menu_option WHERE menu_id=7450 AND id=0;

-- From gossip_menu #7451 with text :9024 Need me to take care of your animal companions?
-- Used by source: unknown
-- option #0 "I wish to make use of the stables."


DELETE FROM gossip_menu WHERE entry=7451;
DELETE FROM npc_text WHERE id=9024;
DELETE FROM gossip_menu_option WHERE menu_id=7451 AND id=0;

-- From gossip_menu #7452 with text :9025 On Argus, Mac'Aree was the most sacred of our cities.$B$BWould you believe me if I told you that the walkways were lined with precious minerals? That the rivers glittered even in complete darkness?$B$BI long for those days... How long has it been? A thousand years? Ten-thousand?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7452;
DELETE FROM npc_text WHERE id=9025;

-- From gossip_menu #7455 with text :9029 Welcome to Blood Watch, $c. In my travels, I have amassed a wide variety of tools, artifacts, and knowledge from the various peoples we've encountered.$B$BShould you find yourself in need of this knowledge, you have only to ask.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7455;
DELETE FROM npc_text WHERE id=9029;

-- From gossip_menu #7458 with text :9033 If you only learn one thing during your time in Bloodmyst, $c, I hope that it is vigilance. This island claims the unwary first, then begins to wear down even the most guarded of warriors.$B$BEverywhere you turn, a foe stands ready to take your life. 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7458;
DELETE FROM npc_text WHERE id=9033;

-- From gossip_menu #7460 with text :9036 The others look at this landscape and see only death, corruption, and adversity. None of those things are in short supply, true, but that view ignores the opportunities presented by our environment.$B$BI will not stand by and watch these opportunities go ignored, $c. With your help, we can demonstrate to the others here at Blood Watch just how to make use of the environment and its creatures.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7460;
DELETE FROM npc_text WHERE id=9036;

-- From gossip_menu #7461 with text :9037 Hello, $c.$B$BOld man Kessel over there, he's a clever one. I'd be real careful in my dealings with him if I were you.$B$BHe offered me work 'caring for the elekk' and being the fool I was, I took it to mean feeding, training, and the like. Things became real clear when he handed me the shovel...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7461;
DELETE FROM npc_text WHERE id=9037;

-- From gossip_menu #7462 with text :9041 I am Kessel, lord of the elekk, disciple of the Hand of Argus. Are you the new recruit?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7462;
DELETE FROM npc_text WHERE id=9041;

-- From gossip_menu #7463 with text :9042 I am Achelus, chief expeditionary officer of Blood Watch.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7463;
DELETE FROM npc_text WHERE id=9042;

-- From gossip_menu #7464 with text :9043 I deliver the mail to and from Azuremyst, $c. If you need a message delivered, it'll more than likely be routed through me first.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7464;
DELETE FROM npc_text WHERE id=9043;

-- From gossip_menu #7465 with text :9076 You have served one of three with honor, $N. Our time is at an end. Kuros will call for you when he is ready.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7465;
DELETE FROM npc_text WHERE id=9076;

-- From gossip_menu #7467 with text :8785 Remember to always show your respect for the elements of the world.
-- Used by source: unknown
-- option #0 "Teach me the ways of the spirits."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7467;
DELETE FROM npc_text WHERE id=8785;
DELETE FROM gossip_menu_option WHERE menu_id=7467 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7467 AND id=1;

-- From gossip_menu #7468 with text :9051 Please, sit and make yourself comfortable.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "What can I do at an inn?" submenu #1221
-- option #4 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7468;
DELETE FROM npc_text WHERE id=9051;
DELETE FROM gossip_menu_option WHERE menu_id=7468 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7468 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7468 AND id=4;

-- From gossip_menu #7469 with text :9052 Good day, $c. Are you in need of a reliable hippogryph?
-- Used by source: unknown
-- option #0 "I desire to travel by hippogryph."


DELETE FROM gossip_menu WHERE entry=7469;
DELETE FROM npc_text WHERE id=9052;
DELETE FROM gossip_menu_option WHERE menu_id=7469 AND id=0;

-- From gossip_menu #7470 with text :9053 If you need to travel to the Exodar, I have just the hippogryph for you!
-- Used by source: unknown
-- option #0 "I wish to travel by hippogryph."


DELETE FROM gossip_menu WHERE entry=7470;
DELETE FROM npc_text WHERE id=9053;
DELETE FROM gossip_menu_option WHERE menu_id=7470 AND id=0;

-- From gossip_menu #7471 with text :9054 Shh! Be very quiet; I'm observing murlocs.$B$BLiving in an oversized turtle shell is a sacrifice I'm willing to make for science. After all, if the murlocs see me here, they'll react to my presence and contaminate my data!$B$BAs the first gnomish member of the Explorers' League, I'm boldly going places no dwarf has gone before!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7471;
DELETE FROM npc_text WHERE id=9054;

-- From gossip_menu #7484 with text :9071 I can help you establish a guild.
-- Used by source: unknown
-- option #0 "How do I form a guild?"
-- option #1 "I want to create a guild crest."


DELETE FROM gossip_menu WHERE entry=7484;
DELETE FROM npc_text WHERE id=9071;
DELETE FROM gossip_menu_option WHERE menu_id=7484 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7484 AND id=1;

-- From gossip_menu #7494 with text :9084 Good day, $c. If you wish to learn the smith's art, you've come to the right place.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7494;
DELETE FROM npc_text WHERE id=9084;

-- From gossip_menu #7495 with text :9085 None
-- Used by source: unknown
-- option #0 "Watcher Leesa'oh, why are you out here?" submenu #7526


DELETE FROM gossip_menu WHERE entry=7495;
DELETE FROM npc_text WHERE id=9085;
DELETE FROM gossip_menu_option WHERE menu_id=7495 AND id=0;
DELETE FROM gossip_menu WHERE entry=7526;
DELETE FROM npc_text WHERE id=9128;

-- From gossip_menu #7496 with text :9086 We Cenarion druids are the protectors of the balance of nature.  The main point being the balance.  When called for, we shouldn't wait too long before taking decisive action.  Don't let anyone tell you otherwise, especially those of us who only want to observe!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7496;
DELETE FROM npc_text WHERE id=9086;

-- From gossip_menu #7497 with text :9051 Please, sit and make yourself comfortable.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=7497;
DELETE FROM npc_text WHERE id=9051;
DELETE FROM gossip_menu_option WHERE menu_id=7497 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7497 AND id=2;

-- From gossip_menu #7499 with text :9090 Who are you?  Just leave me be.
-- Used by source: unknown
-- option #1 "We are ready to get you out of here, Thrall. Let's go!"


DELETE FROM gossip_menu WHERE entry=7499;
DELETE FROM npc_text WHERE id=9090;
DELETE FROM gossip_menu_option WHERE menu_id=7499 AND id=1;

-- From gossip_menu #7514 with text :9111 Filthy fungal giants!  What did we ever do to them?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7514;
DELETE FROM npc_text WHERE id=9111;

-- From gossip_menu #7517 with text :9130 <Vindicator Aesom salutes you.>$B$BHave you spoken with Admetius? I believe he was inquiring as to your whereabouts.
-- Used by source: unknown
-- option #0 "I would like to train further in the ways of the Light."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7517;
DELETE FROM npc_text WHERE id=9130;
DELETE FROM gossip_menu_option WHERE menu_id=7517 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7517 AND id=1;

-- From gossip_menu #7522 with text :8785 Remember to always show your respect for the elements of the world.
-- Used by source: unknown
-- option #0 "Teach me the ways of the spirits."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7522;
DELETE FROM npc_text WHERE id=8785;
DELETE FROM gossip_menu_option WHERE menu_id=7522 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7522 AND id=1;

-- From gossip_menu #7525 with text :9125 How embarrassing to be taken as a pet by a hunter!$B$BI owe you my life, but please, trouble yourself no longer with my welfare.  Now that you've freed me from Musel'ek, I'll be able to find my way out.  Maybe I'll pick up Rayge along the way.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7525;
DELETE FROM npc_text WHERE id=9125;

-- From gossip_menu #7529 with text :9131 The druids protect me from the naga and evil Lost Ones.  In exchange, I teach them about the plants and animals of the marsh.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7529;
DELETE FROM npc_text WHERE id=9131;

-- From gossip_menu #7531 with text :9134 Be thankful that I am locked inside this cage, $r.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7531;
DELETE FROM npc_text WHERE id=9134;

-- From gossip_menu #7533 with text :9141 Numerous? It has two weak points: The base of the structure on the west side and the base of the structure on the east side. Hey, wait a minute. How would you know anything about the Vector Coil? Didn't you say that you were captured before you even materialized?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7533;
DELETE FROM npc_text WHERE id=9141;

-- From gossip_menu #7534 with text :9140 Obviously. How else could she infiltrate their ranks and pass as a draenei? She had been living among them for a very long time. 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7534;
DELETE FROM npc_text WHERE id=9140;

-- From gossip_menu #7535 with text :9139 Sironas claims that certain eredar possess the ability to transform others of their race into man'ari. Draenei were supposedly once eredar and Sironas is a powerful eredar.$B$B<The agent laughs.>$B$BCan you believe it? These pathetic creatures were once all-powerful demons. What kind of fool rejects such power?$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7535;
DELETE FROM npc_text WHERE id=9139;

-- From gossip_menu #7536 with text :9138 It was Sironas' idea... The abomination is actually one of their own. He is a high ranking member of the draenei military order: Triumvirate or some such nonsense.$B$BWhatever that thing is, it's massive, powerful, and full of rage. Any attacks against the Vector Coil will most certainly result in failure as long as that abomination is around.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7536;
DELETE FROM npc_text WHERE id=9138;

-- From gossip_menu #7537 with text :9137 <The captured Sunhawk agent smirks.>$B$BDon't worry, new blood, there are many more portal controllers and many more suitable locations for portals. I am certain that Sironas will have a new gate up very soon. These blue skinned dogs are not long for this world. Sironas and the abomination will clean up whatever the Sunhawk forces leave behind.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7537;
DELETE FROM npc_text WHERE id=9137;

-- From gossip_menu #7538 with text :9142 The time has come to destroy the Vector Coil!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7538;
DELETE FROM npc_text WHERE id=9142;

-- From gossip_menu #7547 with text :9163 This is all for you, $N. You did this. You saved all of these people and thousands more.$B$BYou have risen above the strife and tragedy of this world and in doing so, elevated all of us with you.$B$BYou have done so much - more than many could do in ten lifetimes - yet your life has just begun. If only we had a thousand heroes like you.$B$BBut listen well, $N. Your destiny lies in the Outland. I have seen it in visions, a prophecy yet untold.$B$BFind our people, $N. Find them and bring them home...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7547;
DELETE FROM npc_text WHERE id=9163;

-- From gossip_menu #7550 with text :9167 Ysiel expected some enemy opposition to her foray into Outland.  That's why us wardens were brought along.$B$BWe never expected our opposition to come in the strength or numbers that the naga have shown.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7550;
DELETE FROM npc_text WHERE id=9167;

-- From gossip_menu #7559 with text :9176 Nature favors those willing to learn its secrets, $N.
-- Used by source: unknown
-- option #2 "Grant me your mark, wise ancient."
-- option #3 "Grant me your mark, wise ancient."


DELETE FROM gossip_menu WHERE entry=7559;
DELETE FROM npc_text WHERE id=9176;
DELETE FROM gossip_menu_option WHERE menu_id=7559 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7559 AND id=3;

-- From gossip_menu #7560 with text :9177 Nature is a powerful force, $r.  Those who seek to subdue never succeed in doing so permanently.
-- Used by source: unknown
-- option #2 "Grant me your mark, mighty ancient."
-- option #3 "Grant me your mark, mighty ancient."


DELETE FROM gossip_menu WHERE entry=7560;
DELETE FROM npc_text WHERE id=9177;
DELETE FROM gossip_menu_option WHERE menu_id=7560 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7560 AND id=3;

-- From gossip_menu #7562 with text :9180 The spirits are restless, $r. Be mindful of your surroundings while in Nagrand lest you be consumed by their fury.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7562;
DELETE FROM npc_text WHERE id=9180;

-- From gossip_menu #7563 with text :9181 The Earthen Ring seeks to preserve the strength and majesty of the elements.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7563;
DELETE FROM npc_text WHERE id=9181;

-- From gossip_menu #7565 with text :9183 I am Untrag of the Earthen Ring. Try not to upset the elements while you remain at the Throne of the Elements.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7565;
DELETE FROM npc_text WHERE id=9183;

-- From gossip_menu #7566 with text :9185 I apologize, $c. I mistook you for someone with a spine. Begone; our secrets are not for untrained ears.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7566;
DELETE FROM npc_text WHERE id=9185;

-- From gossip_menu #7567 with text :9194 This land has been ravaged by the crash. While you may not follow our philosophies, $c, I urge you to do whatever you can to aid in the healing process.
-- Used by source: unknown
-- option #0 "I seek training as a druid."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=7567;
DELETE FROM npc_text WHERE id=9194;
DELETE FROM gossip_menu_option WHERE menu_id=7567 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7567 AND id=1;

-- From gossip_menu #7572 with text :9201 I don't know what to think of your kind yet, $r.  Some of you can be violent and kill sporelings on sight.$B$BYou seem friendly... though maybe a little bit funny looking, I suppose.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7572;
DELETE FROM npc_text WHERE id=9201;

-- From gossip_menu #7573 with text :9202 I welcome you to Sporeggar, $r.  We don't normally see many of your kind around here, but you've proven your worth to us.  Make yourself at home.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7573;
DELETE FROM npc_text WHERE id=9202;

-- From gossip_menu #7574 with text :9203 The bog lords are devouring the spore sacs!  They've got to be stopped!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7574;
DELETE FROM npc_text WHERE id=9203;

-- From gossip_menu #7576 with text :9208 <The earth rumbles as Gordawg's movements come to a halt.>$B$BSpeak.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7576;
DELETE FROM npc_text WHERE id=9208;

-- From gossip_menu #7577 with text :9218 My father's off to more exotic locations in search of bigger prey.  Don't worry though, we're still on the hunt here!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7577;
DELETE FROM npc_text WHERE id=9218;
DELETE FROM npc_gossip WHERE npc_guid=532;

-- From gossip_menu #7579 with text :9219 Keep a sharp eye, $c.  You never know when some beastie is stalking you instead of the other way around.
-- Used by source: unknown
-- option #0 "Hemet Nesingwary, what are you doing here in the Outland?" submenu #7578


DELETE FROM gossip_menu WHERE entry=7579;
DELETE FROM npc_text WHERE id=9219;
DELETE FROM gossip_menu_option WHERE menu_id=7579 AND id=0;
DELETE FROM gossip_menu WHERE entry=7578;
DELETE FROM npc_text WHERE id=9220;

-- From gossip_menu #7587 with text :9235 Welcome to the Orebor Harborage, friend. You have nothing to fear here. We are Broken, but we are not your enemies.$B$BI am Ikuti of the Kurenai, a group of Broken who desire to reestablish ties with our draenei brothers and their newfound allies.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7587;
DELETE FROM npc_text WHERE id=9235;

-- From gossip_menu #7588 with text :9236 Maktu doesn't recognize you, $r, but he is pleased to meet you. If ever you need to buy or repair armor, look no further than Maktu.
-- Used by source: unknown
-- option #0 "Show me your wares, Maktu."


DELETE FROM gossip_menu WHERE entry=7588;
DELETE FROM npc_text WHERE id=9236;
DELETE FROM gossip_menu_option WHERE menu_id=7588 AND id=0;

-- From gossip_menu #7589 with text :9237 Memories of this temple shroud my mind like a thick haze, yet I cannot assemble them into a coherent story. This place meant something to me once. Until I can restore that memory, I will feel as though a part of me is missing.$B$BPerhaps the draenei can help me recover what I've lost.
-- Used by source: unknown
-- option #0 "I wish to browse your wares."


DELETE FROM gossip_menu WHERE entry=7589;
DELETE FROM npc_text WHERE id=9237;
DELETE FROM gossip_menu_option WHERE menu_id=7589 AND id=0;

-- From gossip_menu #7590 with text :9238 There are some who call me 'Tim,' but to my friends, I am 'the specialist.'
-- Used by source: unknown
-- option #0 "Let me browse your reagents and poison supplies."
-- option #1 "Specialist, eh? Just what kind of specialist are you, anyway?" submenu #7591


DELETE FROM gossip_menu WHERE entry=7590;
DELETE FROM npc_text WHERE id=9238;
DELETE FROM gossip_menu_option WHERE menu_id=7590 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7590 AND id=1;
DELETE FROM gossip_menu WHERE entry=7591;
DELETE FROM npc_text WHERE id=9239;

-- From gossip_menu #7592 with text :9240 Greetings, $c.  You seek to push yourself to the limits of your hunting prowess?  Look no further.$B$BHemet Nesingwary has assembled the finest expedition the remnant of this world has ever known.  Join us on safari if you dare.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7592;
DELETE FROM npc_text WHERE id=9240;

-- From gossip_menu #7595 with text :9244 Bounties for notorious criminals and vicious animals are posted here. It would be much too dangerous for you to pursue the bounty posted here right now, but check the board again as you gain strength.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7595;
DELETE FROM npc_text WHERE id=9244;

-- From gossip_menu #7607 with text :9258 There I was tumbling in a patch of prickly undergrowth with a talbuk stag, hand-to-hand, only my sharp knife...<cough>... and keen hunter's intellect to save me.$B$BAll of a sudden I'm jumped by a pair of fierce windroc hunters that came at me from the skies!  Their cowardly attack...<cough>... didn't help them any though.$B$BAnd while I have their beaks as trophies, I received an infected scratch out of the ordeal.  Kind of nasty, and I'm in a lot of pain, but I'm sure it'll heal up in a day or two.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7607;
DELETE FROM npc_text WHERE id=9258;

-- From gossip_menu #7610 with text :9261 Telredor was once a secluded retreat for draenei priests and pilgrims. The resident priests seldom received visitors.$B$BWhen the orcs started to attack draenei settlements, refugees began to arrive in larger numbers. Anchorite Ahuurn and the others transformed Telredor from a shrine into a safe haven. Many draenei, myself included, owe our survival to his efforts.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7610;
DELETE FROM npc_text WHERE id=9261;

-- From gossip_menu #7612 with text :9263 Welcome to Telredor, $c. If you need anything, don't hesitate to ask.
-- Used by source: unknown
-- option #0 "I wish to buy from you."


DELETE FROM gossip_menu WHERE entry=7612;
DELETE FROM npc_text WHERE id=9263;
DELETE FROM gossip_menu_option WHERE menu_id=7612 AND id=0;

-- From gossip_menu #7613 with text :9264 I've never seen so many different kinds of mushrooms in one place. Given enough time, I'm sure I could find a use for all of them.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7613;
DELETE FROM npc_text WHERE id=9264;

-- From gossip_menu #7614 with text :9265 Telredor has seen more change in the last 20 years than it did in prior centuries. I cannot complain, $N, for the world has changed far more in that time.$B$BThe Light has brought me friends and companions I could not have met as a cloistered priest. Learn what you can of the past in your time here. It will help you to understand where your journey is leading you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7614;
DELETE FROM npc_text WHERE id=9265;

-- From gossip_menu #7618 with text :9270 Hello, $c.  I am what is referred to as one of the Broken.  Like the Lost Ones, though not as badly as they, we were afflicted with fel energies that transformed us from our original draenei forms.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7618;
DELETE FROM npc_text WHERE id=9270;

-- From gossip_menu #7625 with text :9287 The Consortium has been planning this operation for months!  We were to dig Oshu'gun, the largest known diamond in the universe.$B$BMinutes before we were to begin, Nexus-Prince Haramaad sends word that we're to hold off until a political matter is resolved in Netherstorm.  I've transformed our operation into a clearing house for smuggled gems in the meantime, but this is slowly eating into our profits.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7625;
DELETE FROM npc_text WHERE id=9287;

-- From gossip_menu #7626 with text :9288 Gezhe is here to get a job done.  I'm here to make sure no one bothers him while he does it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7626;
DELETE FROM npc_text WHERE id=9288;

-- From gossip_menu #7631 with text :9312 You look like a reasonable $r.  Perhaps we could be of mutual assistance.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7631;
DELETE FROM npc_text WHERE id=9312;

-- From gossip_menu #7632 with text :9315 Be strong. Kael'thas has betrayed us and what we know is in flux, but do not lose heart. We will endure, as we always have. Arthas did not crush our spirit when he swept through our land, and neither will Kael'thas. Let it serve as a lesson to us all as we move forward to our prosperous future.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7632;
DELETE FROM npc_text WHERE id=9315;

-- From gossip_menu #7674 with text :9357 Get me out of here, $r!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7674;
DELETE FROM npc_text WHERE id=9357;

-- From gossip_menu #7683 with text :9370 No overgrown bug's gonna chase me out of Zangarmarsh! I'll show 'em what the Explorers' League is made of...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7683;
DELETE FROM npc_text WHERE id=9370;

-- From gossip_menu #7685 with text :9374 Registrants are required to speak with Warden Moi'bff Jill before posting any task.$B$BThose found making unapproved postings will be prosecuted.$B$BPost no bills.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7685;
DELETE FROM npc_text WHERE id=9374;

-- From gossip_menu #7696 with text :9391 Be careful going into the thicket, $c.  There is a harmful aura lingering about the place.  It must be the residue from whatever destroyed my fellow druids.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7696;
DELETE FROM npc_text WHERE id=9391;

-- From gossip_menu #7699 with text :9394 You're definitely strong, $r, but do you have what it takes to become the Warmaul champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7699;
DELETE FROM npc_text WHERE id=9394;

-- From gossip_menu #7713 with text :9417 The World's End Tavern has nothing to offer those of my kind.  However, I find that it attracts the type of clientele that are interested in what I have for sale.$B$BI specialize in exotic engineering goods acquired from far and wide.  From time to time I might even have a rare thing or two for purchase.$B$BWhat might I interest you in?
-- Used by source: unknown
-- option #0 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7713;
DELETE FROM npc_text WHERE id=9417;
DELETE FROM gossip_menu_option WHERE menu_id=7713 AND id=0;

-- From gossip_menu #7723 with text :9429 I think I'll make my own money on the side while the others try to decide whether it's okay to go into Oshu'gun.$B$BTime is profit!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7723;
DELETE FROM npc_text WHERE id=9429;

-- From gossip_menu #7725 with text :9435 <Sal'salabim growls at you, then goes back to drinking his frothy beverage.>
-- Used by source: unknown
-- option #0 "Altruis sent me. He said that you could help me."


DELETE FROM gossip_menu WHERE entry=7725;
DELETE FROM npc_text WHERE id=9435;
DELETE FROM gossip_menu_option WHERE menu_id=7725 AND id=0;

-- From gossip_menu #7735 with text :9457 
-- Used by source: unknown
-- option #0 "Who are the Sha'tar?" submenu #7736
-- option #1 "Isn't Shattrath a draenei city?  Why do you allow others here?" submenu #7737


DELETE FROM gossip_menu WHERE entry=7735;
DELETE FROM npc_text WHERE id=9457;
DELETE FROM gossip_menu_option WHERE menu_id=7735 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7735 AND id=1;
DELETE FROM gossip_menu WHERE entry=7736;
DELETE FROM npc_text WHERE id=9458;
DELETE FROM gossip_menu WHERE entry=7737;
DELETE FROM npc_text WHERE id=9459;

-- From gossip_menu #7738 with text :9471 Welcome to the Allerian Stronghold, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7738;
DELETE FROM npc_text WHERE id=9471;

-- From gossip_menu #7741 with text :9477 This is just horrible.$B$BI care not for our own discomforts here, but we must do something to ease the pain of the dead in the Bone Wastes!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7741;
DELETE FROM npc_text WHERE id=9477;

-- From gossip_menu #7747 with text :9486 I've been watching the Aldor working on the walls. They're gonna rebuild the whole city, you know.$B$BThey work much faster than old Foreman Oslow did back home in Lakeshire. He kept losing his tools in the lake, or the gnolls would take his supplies.$B$BI should ask the Aldor to send him some help. They'd have that bridge fixed faster'n anything.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7747;
DELETE FROM npc_text WHERE id=9486;

-- From gossip_menu #7753 with text :9493 Have you seen the way Ros'eleth winks at me whenever I go to pick up a garment or hat? When things settle down around here, I'm going to take her for a nice walk in the woods.$B$BFor once, I miss all those fancy taverns in Stormwind.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7753;
DELETE FROM npc_text WHERE id=9493;

-- From gossip_menu #7757 with text :9497 Yeah, what do you want?  Can't you see I'm busy here?  The Shadow Council isn't paying me by the hour!
-- Used by source: unknown
-- option #0 "Why are you fixing all of this up?" submenu #7755


DELETE FROM gossip_menu WHERE entry=7757;
DELETE FROM npc_text WHERE id=9497;
DELETE FROM gossip_menu_option WHERE menu_id=7757 AND id=0;
DELETE FROM gossip_menu WHERE entry=7755;
DELETE FROM npc_text WHERE id=9498;

-- From gossip_menu #7760 with text :9505 And what is it exactly that you think I can do for you?  Can't you see that I'm very busy here discussing matters of import with our illustrious leader?$B$BBe quick about your business or I'll have you beaten, dog!
-- Used by source: unknown
-- option #0 "Advisor, what's the latest news?" submenu #7761


DELETE FROM gossip_menu WHERE entry=7760;
DELETE FROM npc_text WHERE id=9505;
DELETE FROM gossip_menu_option WHERE menu_id=7760 AND id=0;
DELETE FROM gossip_menu WHERE entry=7761;
DELETE FROM npc_text WHERE id=9506;

-- From gossip_menu #7769 with text :9778 You must use the incendiary bombs at the barrels inside the internment lodges of Durnholde Keep. Once five bombs have been ignited and the diversion has been set, find Thrall in the basement prison of Durnholde and set him free. Follow him and make sure that he does not die!$B$BBrazen will fly you to Durnholde when you are ready.
-- Used by source: unknown
-- option #0 "I need a pack of incendiary bombs."


DELETE FROM gossip_menu WHERE entry=7769;
DELETE FROM npc_text WHERE id=9778;
DELETE FROM gossip_menu_option WHERE menu_id=7769 AND id=0;

-- From gossip_menu #7771 with text :9517 I'm going to figure out what this shadowy group is up to no matter what!
-- Used by source: unknown
-- option #0 "Private Weeks, I need another disguise."


DELETE FROM gossip_menu WHERE entry=7771;
DELETE FROM npc_text WHERE id=9517;
DELETE FROM gossip_menu_option WHERE menu_id=7771 AND id=0;

-- From gossip_menu #7775 with text :9523 Did you hear that they lost total control of Murmur in the Shadow Labyrinth?!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7775;
DELETE FROM npc_text WHERE id=9523;

-- From gossip_menu #7776 with text :9524 Who do you think you are that you can walk in here and address me?  I'm the leader of the Shadow Council in this village.  Get out of my sight!$B$BIf I see you again, I'll be the last person that you ever see.  Understand?$B$BPerhaps you'd like to be buried in the labyrinth of Auchindoun, or sacrificed to Murmur?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7776;
DELETE FROM npc_text WHERE id=9524;

-- From gossip_menu #7808 with text :9567 The Exodar's vaults are vast and well-protected. Your goods will come to no harm here.
-- Used by source: unknown
-- option #0 "I would like to check my deposit box."


DELETE FROM gossip_menu WHERE entry=7808;
DELETE FROM npc_text WHERE id=9567;
DELETE FROM gossip_menu_option WHERE menu_id=7808 AND id=0;

-- From gossip_menu #7815 with text :10846 I can instruct you in jewelcrafting.  Interested?
-- Used by source: unknown
-- option #0 "Train me."
-- option #1 "None"


DELETE FROM gossip_menu WHERE entry=7815;
DELETE FROM npc_text WHERE id=10846;
DELETE FROM gossip_menu_option WHERE menu_id=7815 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7815 AND id=1;

-- From gossip_menu #7826 with text :9575 I don't suppose you've come bearing news about the mines, have you?
-- Used by source: unknown
-- option #0 "I would like to train."
-- option #1 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7826;
DELETE FROM npc_text WHERE id=9575;
DELETE FROM gossip_menu_option WHERE menu_id=7826 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7826 AND id=1;

-- From gossip_menu #7829 with text :9579 What do you mean by this? Is Taretha in danger?
-- Used by source: unknown
-- option #0 "The situation is rather complicated, Thrall. It would be best for you to head into the mountains now, before more of Blackmoore's men show up. We'll make sure Taretha is safe."


DELETE FROM gossip_menu WHERE entry=7829;
DELETE FROM npc_text WHERE id=9579;
DELETE FROM gossip_menu_option WHERE menu_id=7829 AND id=0;

-- From gossip_menu #7830 with text :9578 Thank you friends, I owe my freedom to you. Where is Taretha? I hoped to see her one last time and thank her before leaving into the mountains.
-- Used by source: unknown
-- option #0 "Taretha cannot see you, Thrall."


DELETE FROM gossip_menu WHERE entry=7830;
DELETE FROM npc_text WHERE id=9578;
DELETE FROM gossip_menu_option WHERE menu_id=7830 AND id=0;

-- From gossip_menu #7831 with text :9580 I will do no such thing. I simply cannot leave Taretha in danger while I run off into the mountains. I am no coward. Now, where is she?
-- Used by source: unknown
-- option #0 "Tarren Mill."


DELETE FROM gossip_menu WHERE entry=7831;
DELETE FROM npc_text WHERE id=9580;
DELETE FROM gossip_menu_option WHERE menu_id=7831 AND id=0;

-- From gossip_menu #7832 with text :9584 <As you greet Ambassador Frasaboo in the furbolg language, he smiles.>$B$BYou must be the one spoken of in the prophecy. It is a great honor to meet you.$B$BI am Ambassador Frasaboo, High Chief Stillpine's representative in Blood Watch.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7832;
DELETE FROM npc_text WHERE id=9584;

-- From gossip_menu #7833 with text :9586 In my years as a member of Explorers' League, I've been all over Azeroth, but I've never seen anythin' quite like Bloodmyst. 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7833;
DELETE FROM npc_text WHERE id=9586;

-- From gossip_menu #7841 with text :9598 You may make purchases from me by using Halaa tokens of battle and research.
-- Used by source: unknown
-- option #0 "I wish to browse your wares."


DELETE FROM gossip_menu WHERE entry=7841;
DELETE FROM npc_text WHERE id=9598;
DELETE FROM gossip_menu_option WHERE menu_id=7841 AND id=0;

-- From gossip_menu #7855 with text :9617 Have a seat, $g brother:sister;. The ravages of Zangarmarsh can take a lot out of a $g man:woman;.
-- Used by source: unknown
-- option #0 "Make this inn your home."
-- option #1 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7855;
DELETE FROM npc_text WHERE id=9617;
DELETE FROM gossip_menu_option WHERE menu_id=7855 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7855 AND id=1;

-- From gossip_menu #7886 with text :9648 It will take a sharp blade and reinforced armor to bring tranquility back to Nagrand. Shall I repair your equipment so that you may mete justice?
-- Used by source: unknown
-- option #0 "I wish to browse your wares."


DELETE FROM gossip_menu WHERE entry=7886;
DELETE FROM npc_text WHERE id=9648;
DELETE FROM gossip_menu_option WHERE menu_id=7886 AND id=0;

-- From gossip_menu #7891 with text :9654 It's driving me crazy. I cannot reach those damned eggs!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7891;
DELETE FROM npc_text WHERE id=9654;

-- From gossip_menu #7892 with text :9656 
-- Used by source: unknown
-- option #0 "I have marks to redeem!"


DELETE FROM gossip_menu WHERE entry=7892;
DELETE FROM npc_text WHERE id=9656;
DELETE FROM gossip_menu_option WHERE menu_id=7892 AND id=0;

-- From gossip_menu #7940 with text :9733 Never look these Broken directly in the eyes. I think they can suck the soul right out of you if they're so inclined!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7940;
DELETE FROM npc_text WHERE id=9733;

-- From gossip_menu #7945 with text :9751 This old draenei board has been refurbished by the Kurenai and is now used to post announcements and bounties.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7945;
DELETE FROM npc_text WHERE id=9751;

-- From gossip_menu #7947 with text :11947 Ahaha, ya see this? Griftah's BACK! Back in my stall, back with my old wares, and ready to pass on the deals to ya!$b$bWant to be better, stronger, faster? Each one of these amulets be guaranteed to do just what I say they be doin'. Step up and buy one of these miraculous baubles! Cheap at twice the price!
-- Used by source: unknown
-- option #0 "I'll... take a look."


DELETE FROM gossip_menu WHERE entry=7947;
DELETE FROM npc_text WHERE id=11947;
DELETE FROM gossip_menu_option WHERE menu_id=7947 AND id=0;

-- From gossip_menu #7949 with text :8618 I offer what shelter I can in our shattered lands.
-- Used by source: unknown
-- option #2 "Make this inn your home."
-- option #3 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=7949;
DELETE FROM npc_text WHERE id=8618;
DELETE FROM gossip_menu_option WHERE menu_id=7949 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=7949 AND id=3;

-- From gossip_menu #7959 with text :9779 I can take you to Durnholde directly, if that is your wish.
-- Used by source: unknown
-- option #0 "I'm ready to go to Durnholde Keep."


DELETE FROM gossip_menu WHERE entry=7959;
DELETE FROM npc_text WHERE id=9779;
DELETE FROM gossip_menu_option WHERE menu_id=7959 AND id=0;

-- From gossip_menu #7960 with text :9781 Horrible... just horrible!$B$BWe were minding our own business on our way from Area 52 in Netherstorm and they shot us down!  I knew we shouldn't have taken that shortcut to get to Terokkar Forest!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7960;
DELETE FROM npc_text WHERE id=9781;

-- From gossip_menu #7961 with text :9784 Expedition Point is the Alliance's closest point of contact with the Legion Front. North of here is nothin' but demon, demon and more demon. Travel with a buddy.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7961;
DELETE FROM npc_text WHERE id=9784;

-- From gossip_menu #7964 with text :9787 The Illidari demons keep me here because of my knowledge of ancient draenei crystals and relics.$B$BThey've enslaved many of my people and use us to look for a powerful crystal... one that in all likelihood is not even here.
-- Used by source: unknown
-- option #0 "Why don't you escape?" submenu #7963


DELETE FROM gossip_menu WHERE entry=7964;
DELETE FROM npc_text WHERE id=9787;
DELETE FROM gossip_menu_option WHERE menu_id=7964 AND id=0;
DELETE FROM gossip_menu WHERE entry=7963;
DELETE FROM npc_text WHERE id=9788;

-- From gossip_menu #7965 with text :9789 I'll never take another shortcut again, I swear! How was I supposed to know the skies over Hellfire Peninsula were that dangerous?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7965;
DELETE FROM npc_text WHERE id=9789;

-- From gossip_menu #7966 with text :9800 <A soothing light fills you as you approach the naaru.  Slow musical chimes echo within your mind and, though a word is not uttered, you feel an assurance of safety.  You are welcome in Shattrath City.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7966;
DELETE FROM npc_text WHERE id=9800;

-- From gossip_menu #7982 with text :9832 Well. Look what the netherwinds swept in. Come in, sit down, and rest yourself a spell. The fee is modest; you can surely afford it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7982;
DELETE FROM npc_text WHERE id=9832;

-- From gossip_menu #7983 with text :9833 Do they never rest?!$B$BIf we're to secure a future for the people of the Lower City, we must deal with the Shadow Council before they cause an even greater cataclysm than the Bone Wastes!$B$BBecause the leadership of Shattrath City will not move quickly, we the free people of the Lower City have taken matters into our own hands.$B$BBut our spies have been discovered.  We will hold off the Shadow Council's agents while you slip into the labyrinth and see what you can uncover.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=7983;
DELETE FROM npc_text WHERE id=9833;

-- From gossip_menu #8006 with text :9871 For years I was convinced we were doing the right thing in Silvermoon - working to reach Outland so we could be reunited with Kael.$B$BHad I known what Kael'thas had in store for us, I would've stayed right in Falconwing Square.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8006;
DELETE FROM npc_text WHERE id=9871;

-- From gossip_menu #8021 with text :9896 Ah, I see you are a friend to the Consortium. Perhaps you would be interested in making a purchase?
-- Used by source: unknown
-- option #0 "Show me what you have for sale, "Slim.""


DELETE FROM gossip_menu WHERE entry=8021;
DELETE FROM npc_text WHERE id=9896;
DELETE FROM gossip_menu_option WHERE menu_id=8021 AND id=0;

-- From gossip_menu #8022 with text :9897 That Shaffar is a clever one. He's rigged the entrance with some sort of ward to prevent other ethereal groups from entering. We're working on breaking through his defenses so we can get in there and take what's ours. I've got top ethereals working on this around the clock. We'll have it open any minute now. I can feel it...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8022;
DELETE FROM npc_text WHERE id=9897;

-- From gossip_menu #8023 with text :9899 The control panel shifts and rotates on its axis.
-- Used by source: unknown
-- option #0 "<Push a random button.>"


DELETE FROM gossip_menu WHERE entry=8023;
DELETE FROM npc_text WHERE id=9899;
DELETE FROM gossip_menu_option WHERE menu_id=8023 AND id=0;

-- From gossip_menu #8030 with text :9916 When Rocket-Chief Fuselage was asking for volunteers to help out with building the X-52 Nether-Rocket, I submitted my resume for the security division.$B$BUnfortunately, the only position that was left was chief engineer.  Lucky for me, I have Xyrol here to look over my shoulder.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8030;
DELETE FROM npc_text WHERE id=9916;

-- From gossip_menu #8031 with text :9917 Welcome, friend of the free people of the Lower City, but do not tarry long.$B$BThere are sounds of battle coming from within.  My compatriots could use your assistance!
-- Used by source: unknown
-- option #0 "I would like to buy from you."


DELETE FROM gossip_menu WHERE entry=8031;
DELETE FROM npc_text WHERE id=9917;
DELETE FROM gossip_menu_option WHERE menu_id=8031 AND id=0;

-- From gossip_menu #8033 with text :9920 Beat it, kid. I got business to attend to...
-- Used by source: unknown
-- option #0 "Ezekiel said that you might have a certain book..."


DELETE FROM gossip_menu WHERE entry=8033;
DELETE FROM npc_text WHERE id=9920;
DELETE FROM gossip_menu_option WHERE menu_id=8033 AND id=0;

-- From gossip_menu #8034 with text :9921 It is said that those who are blessed by the spirits of Auchindoun possess the ability to capture powerful souls in the form of Spirit Shards. I have come across a few of these Spirit Shards throughout my travels but have yet to unlock their secrets. $B$BThe only thing I have been able to discern is that they seem to originate from the depths of Auchindoun itself. If you happen to come across any of these Spirit Shards I'm sure I could make it worth your while to allow me to take them off your hands...
-- Used by source: unknown
-- option #0 "Let's see what you have."


DELETE FROM gossip_menu WHERE entry=8034;
DELETE FROM npc_text WHERE id=9921;
DELETE FROM gossip_menu_option WHERE menu_id=8034 AND id=0;

-- From gossip_menu #8048 with text :9960 I have every confidence that we will recover that which Nexus-Prince Haramad desires.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8048;
DELETE FROM npc_text WHERE id=9960;

-- From gossip_menu #8050 with text :9942 About twenty years ago, the Alliance launched the first Expedition to this world in hopes of eradicating the orcs forever. It was a... terrible conflict. Many brave souls perished to assure Azeroth's safety.$B$BYet some souls remain...locked in eternal combat.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8050;
DELETE FROM npc_text WHERE id=9942;

-- From gossip_menu #8054 with text :9947 As a representative of the Consortium, I am always mindful of the ramifications that my interactions have upon our business dealings.$B$BIt is unfortunate that the blood elves do not treat their partnerships with such respect.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8054;
DELETE FROM npc_text WHERE id=9947;

-- From gossip_menu #8063 with text :9959 All things for sale, my friend!  Large and small, whatever you need, Hazzin will provide.$B$BIf you value your life, do not approach Manaforge Ultris without a resupply.  Hazzin is the last chance that you have.
-- Used by source: unknown
-- option #0 "Dealer Hazzin, what do you have to offer?"


DELETE FROM gossip_menu WHERE entry=8063;
DELETE FROM npc_text WHERE id=9959;
DELETE FROM gossip_menu_option WHERE menu_id=8063 AND id=0;

-- From gossip_menu #8069 with text :9969 The ground of this place is still warm from freshly shed blood.  Ah, I would have given my own eye to be here when the demons tore through that portal and clashed with Azeroth's heroes!  What a battle it was!$B$BBut now, even more fierce fighting rages on the other side!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8069;
DELETE FROM npc_text WHERE id=9969;

-- From gossip_menu #8070 with text :9970 If you have come all the way out here, then it must be that you dare to venture near Manaforge Ara.$B$BCare to buy or sell before you head over?
-- Used by source: unknown
-- option #0 "What do you have to sell, Tuluman?"


DELETE FROM gossip_menu WHERE entry=8070;
DELETE FROM npc_text WHERE id=9970;
DELETE FROM gossip_menu_option WHERE menu_id=8070 AND id=0;

-- From gossip_menu #8074 with text :9980 It is good to see a friend of the Aldor around these remote parts.  I fear I cannot stand for much more of these elves' insolent chatter.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8074;
DELETE FROM npc_text WHERE id=9980;

-- From gossip_menu #8083 with text :9993 Welcome to the Stormspire, $c.$B$BPlease do not be put off by my being present through this imaging device.  I have many enemies that would like to see me dead, so it is only a precaution.$B$BI assure you that you are perfectly safe here.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8083;
DELETE FROM npc_text WHERE id=9993;

-- From gossip_menu #8085 with text :9995 So you've recently arrived from Azeroth, eh? You'd best steel yourself, $c - there are perils in this land unlike anything the Horde has faced before. I am Nazgrel - right hand to our mighty warchief, Thrall. He honored me with the task of safeguarding this brave expedition and - by all the spirits - I shall!
-- Used by source: unknown
-- option #0 "Tell me more of our mission here, Nazgrel." submenu #8090


DELETE FROM gossip_menu WHERE entry=8085;
DELETE FROM npc_text WHERE id=9995;
DELETE FROM gossip_menu_option WHERE menu_id=8085 AND id=0;
DELETE FROM gossip_menu WHERE entry=8090;
DELETE FROM npc_text WHERE id=10003;
DELETE FROM gossip_menu_option WHERE menu_id=8090 AND id=0;
DELETE FROM gossip_menu WHERE entry=8089;
DELETE FROM npc_text WHERE id=10004;

-- From gossip_menu #8093 with text :10008 With some help, I believe Taerix may be close to a breakthrough.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8093;
DELETE FROM npc_text WHERE id=10008;

-- From gossip_menu #8104 with text :10024 You are not yet strong enough to do battle in the Eye of the Storm. Return when you have gained more experience.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=8104;
DELETE FROM npc_text WHERE id=10024;
DELETE FROM gossip_menu_option WHERE menu_id=8104 AND id=0;

-- From gossip_menu #8105 with text :10024 You are not yet strong enough to do battle in the Eye of the Storm. Return when you have gained more experience.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=8105;
DELETE FROM npc_text WHERE id=10024;
DELETE FROM gossip_menu_option WHERE menu_id=8105 AND id=0;

-- From gossip_menu #8107 with text :10032 Day in, day out, all we do is toil in this mine.  The blood elf male was not built for such manual labor.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8107;
DELETE FROM npc_text WHERE id=10032;

-- From gossip_menu #8110 with text :10043 
-- Used by source: unknown
-- option #0 "Teach me the ways of the spirits."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=8110;
DELETE FROM npc_text WHERE id=10043;
DELETE FROM gossip_menu_option WHERE menu_id=8110 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8110 AND id=1;

-- From gossip_menu #8111 with text :10041 
-- Used by source: unknown
-- option #0 "I would like to train further in the ways of the Light."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=8111;
DELETE FROM npc_text WHERE id=10041;
DELETE FROM gossip_menu_option WHERE menu_id=8111 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8111 AND id=1;

-- From gossip_menu #8116 with text :9922 This crystal-based construct hums with energy.  Strange glyphs are projected in front of you and scroll in rapid succession.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8116;
DELETE FROM npc_text WHERE id=9922;

-- From gossip_menu #8117 with text :10051 The Lightwarden's job is twofold.  Protect the priesthood at all costs first and foremost.  Destroy the enemies of the Light wherever they may hide second.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8117;
DELETE FROM npc_text WHERE id=10051;

-- From gossip_menu #8120 with text :10058 What do you know about ethereals, fleshling?$B$BYou undoubtedly view us all in the same light, oblivious to the conflicts and struggles between the differing factions.$B$BPerhaps it is time for an introduction. I am Commander Ameer of the Protectorate - also your only hope of resolving the infestation of both void creature and Ethereum in this area.$B
-- Used by source: unknown
-- option #0 "What are Ethereum?"


DELETE FROM gossip_menu WHERE entry=8120;
DELETE FROM npc_text WHERE id=10058;
DELETE FROM gossip_menu_option WHERE menu_id=8120 AND id=0;

-- From gossip_menu #8132 with text :10072 The Exodar's once-vast supply of textiles has dwindled dangerously low. Your reputation with the draenei here would increase were you to assist us by donating cloth.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8132;
DELETE FROM npc_text WHERE id=10072;

-- From gossip_menu #8140 with text :10079 What? You wish to donate cloth to Silvermoon?$B$BYou're merely after a Hawkstrider, aren't you? Very well, very well... do the city this service, and I will see to it that your reputation here rises.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8140;
DELETE FROM npc_text WHERE id=10079;

-- From gossip_menu #8167 with text :10113 This is the tower of Karazhan and residence of my master, Medivh. As a humble doorman, there is little else I can explain to you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8167;
DELETE FROM npc_text WHERE id=10113;

-- From gossip_menu #8168 with text :10114 All inquiries regarding Medivh should be directed to Moroes, the Tower Steward. I myself know very little about the Master's business. I believe several nobles are currently having an audience with Moroes in the Banquet Hall, if you wish to inquire further.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8168;
DELETE FROM npc_text WHERE id=10114;

-- From gossip_menu #8169 with text :10115 From here in the Gatehouse, you may travel in one of three directions. The stairs behind me lead to the Grand Ball Room, where guests are currently being entertained. I'm sure you can smell the nearby Stables, and the entrance to Servant's Quarters lies next to the Gatehouse door.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8169;
DELETE FROM npc_text WHERE id=10115;

-- From gossip_menu #8171 with text :10119 Oh yeah, I've never seen them personally, but sometimes I hear them in the distance. Keep a watchful eye out for them if you venture inside.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8171;
DELETE FROM npc_text WHERE id=10119;

-- From gossip_menu #8172 with text :10118 The damn spiders, the endlessly screeching bats, and those blasted demon beasts have all taken residence in the Servant's Quarters. It's not safe to walk around anymore, especially when the big ones come out of hiding.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8172;
DELETE FROM npc_text WHERE id=10118;

-- From gossip_menu #8179 with text :10127 Ah, such an odd place to find potential customers!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8179;
DELETE FROM npc_text WHERE id=10127;

-- From gossip_menu #8182 with text :10178 There are those who seek to lie and twist the truth.  Seers, on the other hand, bring the truth to light.$B$BThe purpose of this library, $N, is to make a seer out of everyone.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8182;
DELETE FROM npc_text WHERE id=10178;

-- From gossip_menu #8213 with text :10208 What are you after? Speak up.
-- Used by source: unknown
-- option #0 "What elekks are for sale?"


DELETE FROM gossip_menu WHERE entry=8213;
DELETE FROM npc_text WHERE id=10208;
DELETE FROM gossip_menu_option WHERE menu_id=8213 AND id=0;

-- From gossip_menu #8218 with text :10214 You don't have what it takes to fight in the Steamwheedle Fighting Circuit, $c. Stop wasting my time.
-- Used by source: unknown
-- option #0 "I would like to fight in an arena."


DELETE FROM gossip_menu WHERE entry=8218;
DELETE FROM npc_text WHERE id=10214;
DELETE FROM gossip_menu_option WHERE menu_id=8218 AND id=0;

-- From gossip_menu #8232 with text :10234 With the Allerian Stronghold surrounded by enemies on all sides it's time for us to take the fight to them.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8232;
DELETE FROM npc_text WHERE id=10234;

-- From gossip_menu #8236 with text :10246 If you haven't already, make sure that you offer your assistance to Rina Moonspring.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8236;
DELETE FROM npc_text WHERE id=10246;

-- From gossip_menu #8247 with text :10264 It's good to see a $r, such as yourself, contributing to the well-being of Sylvanaar.  We've done a lot here in a very short time, but the forces that surround us threaten our way of life.$B$BI would hear what you have to say.  Speak your mind, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8247;
DELETE FROM npc_text WHERE id=10264;

-- From gossip_menu #8251 with text :10270 As representatives of the Explorers' League, Bronwyn and I are here at the Alliance's behest to study these mountains.$B$BBut between you and me, after an extended stay in Silithus, we just needed a vacation.  This seems like a nice enough spot.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8251;
DELETE FROM npc_text WHERE id=10270;

-- From gossip_menu #8254 with text :10275 The Sons of Lothar have been fighting a war without end.  I'm amazed we've kept our equipment in as good a shape as it is!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8254;
DELETE FROM npc_text WHERE id=10275;

-- From gossip_menu #8296 with text :10349 <Nuainn Stormwing shakes his head.>$B$BWith the Legion on one side and Illidan's minions on the other, it's going to take everything we've got to defend the stronghold, and defend it we will! Every true Wildhammer would sooner die than surrender our home.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8296;
DELETE FROM npc_text WHERE id=10349;

-- From gossip_menu #8298 with text :10352 This land still bears the scars of the past. I wonder if they will ever heal.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8298;
DELETE FROM npc_text WHERE id=10352;

-- From gossip_menu #8345 with text :10413 <The water elemental is ready to surge.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8345;
DELETE FROM npc_text WHERE id=10413;

-- From gossip_menu #8346 with text :10414 <The charger stands proud, eager for battle.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8346;
DELETE FROM npc_text WHERE id=10414;

-- From gossip_menu #8347 with text :10416 <The cleric stares at you through the corner of its eye.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8347;
DELETE FROM npc_text WHERE id=10416;

-- From gossip_menu #8348 with text :10417 <The conjurer stands fierce, its gaze distant.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8348;
DELETE FROM npc_text WHERE id=10417;

-- From gossip_menu #8349 with text :10418 <Llane's true wisdom and strength burn bright, even in this likeness of the king.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8349;
DELETE FROM npc_text WHERE id=10418;

-- From gossip_menu #8354 with text :10425 <The grunt's mouth waters, anticipating bloodshed.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8354;
DELETE FROM npc_text WHERE id=10425;

-- From gossip_menu #8355 with text :10426 <The summoned daemon twitches, fighting against Medivh's rules of play.  He wants your soul!>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8355;
DELETE FROM npc_text WHERE id=10426;

-- From gossip_menu #8367 with text :10440 <Behind the warlock's eyes smolders a deep malevolence.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8367;
DELETE FROM npc_text WHERE id=10440;

-- From gossip_menu #8368 with text :10442 <Warchief Blackhand towers over the field.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8368;
DELETE FROM npc_text WHERE id=10442;

-- From gossip_menu #8375 with text :10450 Welcome to the Toshley's Station inn.  What can I do for you?
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=8375;
DELETE FROM npc_text WHERE id=10450;
DELETE FROM gossip_menu_option WHERE menu_id=8375 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8375 AND id=2;

-- From gossip_menu #8381 with text :10457 Creation of Jewelry and Gems is what I live for. Can I share my passion with you?
-- Used by source: unknown
-- option #1 "How do I use Prospecting?" submenu #8377


DELETE FROM gossip_menu WHERE entry=8381;
DELETE FROM npc_text WHERE id=10457;
DELETE FROM gossip_menu_option WHERE menu_id=8381 AND id=1;
DELETE FROM gossip_menu WHERE entry=8377;
DELETE FROM npc_text WHERE id=10452;

-- From gossip_menu #8384 with text :10465 Illidan's grasp on this land is slipping.  Can you feel it, $N?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8384;
DELETE FROM npc_text WHERE id=10465;

-- From gossip_menu #8389 with text :10470 Teron Gorefiend? Yes... I know of him.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8389;
DELETE FROM npc_text WHERE id=10470;

-- From gossip_menu #8391 with text :10475 Shaping the flow of time is a very difficult and quite delicate task, but you have performed admirably today.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8391;
DELETE FROM npc_text WHERE id=10475;

-- From gossip_menu #8404 with text :10506 To pass beyond my Hall, you must defeat me in a game of skill!  Control your king when you are ready to begin...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8404;
DELETE FROM npc_text WHERE id=10506;

-- From gossip_menu #8451 with text :10024 You are not yet strong enough to do battle in the Eye of the Storm. Return when you have gained more experience.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8451;
DELETE FROM npc_text WHERE id=10024;

-- From gossip_menu #8452 with text :10559 The mana cells within the Eye of the Storm are a precious thing; we cannot afford to lose them to the draenei! You there! Make yourself useful and aid us in the fight!
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=8452;
DELETE FROM npc_text WHERE id=10559;
DELETE FROM gossip_menu_option WHERE menu_id=8452 AND id=0;

-- From gossip_menu #8453 with text :10560 $N! Come here! Surely you know of the battle that rages within Alterac Valley back on Azeroth. We need every able-bodied fighter we can muster. Fight with the Stormpike Guard and defeat the Frostwolves!
-- Used by source: unknown
-- option #0 "I wish to join the battle!"


DELETE FROM gossip_menu WHERE entry=8453;
DELETE FROM npc_text WHERE id=10560;
DELETE FROM gossip_menu_option WHERE menu_id=8453 AND id=0;

-- From gossip_menu #8464 with text :10573 Save yourself, $r. Flee from this place! The Crimson Sigil will execute you on sight if you are discovered.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8464;
DELETE FROM npc_text WHERE id=10573;

-- From gossip_menu #8526 with text :10662 Auchindoun is home to my ancestor's spirits.  We might not look it, but all Broken were once draenei... our spirits are all the same.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8526;
DELETE FROM npc_text WHERE id=10662;

-- From gossip_menu #8532 with text :10673 If you're seeking patterns or knowledge about shadoweave tailoring, I'd be happy to help you.
-- Used by source: unknown
-- option #0 "Show me what you have for sale."
-- option #2 "I wish to unlearn Shadoweave Tailoring."


DELETE FROM gossip_menu WHERE entry=8532;
DELETE FROM npc_text WHERE id=10673;
DELETE FROM gossip_menu_option WHERE menu_id=8532 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8532 AND id=2;

-- From gossip_menu #8538 with text :10682 May the Light guide you, $n.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8538;
DELETE FROM npc_text WHERE id=10682;

-- From gossip_menu #8539 with text :10683 It is with solemn pride that I perform my services in Honor Hold.
-- Used by source: unknown
-- option #0 "I am ready, Anchorite.  Let us begin the exorcism."


DELETE FROM gossip_menu WHERE entry=8539;
DELETE FROM npc_text WHERE id=10683;
DELETE FROM gossip_menu_option WHERE menu_id=8539 AND id=0;

-- From gossip_menu #8567 with text :10736 Gezhe has been really nice letting me come here to apprentice and learn all of this fun stuff, $g mister : ma'am;.$B$B<Jheel hangs his head.>$B$BBut, I hate being away from my sister.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8567;
DELETE FROM npc_text WHERE id=10736;

-- From gossip_menu #8619 with text :10797 Grok look for help.  Little $r go to the mountains and help the Bloodmaul!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8619;
DELETE FROM npc_text WHERE id=10797;

-- From gossip_menu #8623 with text :10809 What do you think when you think Wildhammer, eh? Gryphon riders, if you've any sense! Shadowmoon is no Aerie Peak, but we've still got fine stock for you, aye, fine stock. Take a look at my beauties and see if one of 'em catches your eye!
-- Used by source: unknown
-- option #0 "Show me your gryphons, Brunn."


DELETE FROM gossip_menu WHERE entry=8623;
DELETE FROM npc_text WHERE id=10809;
DELETE FROM gossip_menu_option WHERE menu_id=8623 AND id=0;

-- From gossip_menu #8630 with text :10819 I don't care who you are or what you do outside of the Skyguard, but while you're here you will do as you're told.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8630;
DELETE FROM npc_text WHERE id=10819;

-- From gossip_menu #8646 with text :10846 I can instruct you in jewelcrafting.  Interested?
-- Used by source: unknown
-- option #0 "Train me."
-- option #2 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=8646;
DELETE FROM npc_text WHERE id=10846;
DELETE FROM gossip_menu_option WHERE menu_id=8646 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8646 AND id=2;

-- From gossip_menu #8647 with text :10847 Wut you want? Smell funny for fel orc...
-- Used by source: unknown
-- option #0 "Me want Gug fix armor. Maybe me buy someting."


DELETE FROM gossip_menu WHERE entry=8647;
DELETE FROM npc_text WHERE id=10847;
DELETE FROM gossip_menu_option WHERE menu_id=8647 AND id=0;

-- From gossip_menu #8649 with text :10849 Sometimes those damnable blood elves stop by and require some inane reagent or poison. I must keep my stock of such items full at all times lest Lord Illidan get word of the Dragonmaw not cooperating...$B$B<Rumpus swallows hard.>$B$BWe don't want that...
-- Used by source: unknown
-- option #0 "What do you have for sale, Rumpus?"


DELETE FROM gossip_menu WHERE entry=8649;
DELETE FROM npc_text WHERE id=10849;
DELETE FROM gossip_menu_option WHERE menu_id=8649 AND id=0;

-- From gossip_menu #8650 with text :10851 <The light surrounding Xi'ri pulses blue.  The naaru welcomes you as an ally in the field of battle.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8650;
DELETE FROM npc_text WHERE id=10851;

-- From gossip_menu #8658 with text :10886 Welcome to Keelen's Trustworthy Tailoring. I think you'll find my shop will suit your needs. If you wish to train with me, you need only ask; I'll be more than happy to teach you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8658;
DELETE FROM npc_text WHERE id=10886;

-- From gossip_menu #8664 with text :10894 If you need reagents, you've come to the right place. You won't find a finer selection in all of Shattrath.
-- Used by source: unknown
-- option #0 "Show me what you have for sale."


DELETE FROM gossip_menu WHERE entry=8664;
DELETE FROM npc_text WHERE id=10894;
DELETE FROM gossip_menu_option WHERE menu_id=8664 AND id=0;

-- From gossip_menu #8665 with text :10896 <Mudlump is polishing his boots.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8665;
DELETE FROM npc_text WHERE id=10896;

-- From gossip_menu #8679 with text :11028 We are humbled by your selflessness, $N.  If in the past we've seemed a bit conceited, realize that it is by your example that we were able to change our attitudes.$B$BWe thank you, and hope that you'll continue to assist us in our struggle against the forge camps.
-- Used by source: unknown
-- option #0 "Kronk, tell me about the charged crystal foci."


DELETE FROM gossip_menu WHERE entry=8679;
DELETE FROM npc_text WHERE id=11028;
DELETE FROM gossip_menu_option WHERE menu_id=8679 AND id=0;

-- From gossip_menu #8680 with text :11021 Us sure see yous here all da time!$B$BChu'a'lor say little $r our $g hero : heroine;!$B$B$N like one of us ogres now.  Only, Gahk confused because $N need to be bigger for dat!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8680;
DELETE FROM npc_text WHERE id=11021;

-- From gossip_menu #8681 with text :11011 First you became $g king : queen; of the ogres below, and now you have exalted yourself amongst us of Ogri'la.$B$BThis is unheard of for a $r, and yet, there you stand as living proof.  I thank you, $N, and we all owe you a debt that we will never truly be able to repay!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8681;
DELETE FROM npc_text WHERE id=11011;

-- From gossip_menu #8725 with text :11030 What is it that you want?
-- Used by source: unknown
-- option #0 "I am an envoy of Balthas. He has sent me to collect a flawless arcane essence."


DELETE FROM gossip_menu WHERE entry=8725;
DELETE FROM npc_text WHERE id=11030;
DELETE FROM gossip_menu_option WHERE menu_id=8725 AND id=0;

-- From gossip_menu #8751 with text :11083 Only the most seasoned hunters of Illidan's minions gain access to my wares.$B$BYou will be considered worthy when your status with the Sha'tar, Cenarion Expedition and the Aldor is exalted.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8751;
DELETE FROM npc_text WHERE id=11083;

-- From gossip_menu #8752 with text :11084 Only the most seasoned hunters of Illidan's minions gain access to my wares.$B$BYou will be considered worthy when your status with the Sha'tar, Cenarion Expedition and the Scryers is exalted.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8752;
DELETE FROM npc_text WHERE id=11084;

-- From gossip_menu #8753 with text :11089 Unseen arakkoa... they're all around us... watching us... waiting!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8753;
DELETE FROM npc_text WHERE id=11089;

-- From gossip_menu #8778 with text :11219 Oh come now, don't be ridiculous! I'm the one and only Budd Nedreck!$b$bI've been all over this land, from the top of Mount Hyjal to the depths of the Sunken Temple. In fact, I was the first to call it the Sunken Temple!$b$bYes, that was me. Don't give it a second thought.-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8778;
DELETE FROM npc_text WHERE id=11219;

-- From gossip_menu #8783 with text :11226 
-- Used by source: unknown
-- option #0 "What's with your crazy goggles?"
-- option #1 "What's the "Brew of the Month" club?"
-- option #2 "Ticket Exchange"
-- option #3 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=8783;
DELETE FROM npc_text WHERE id=11226;
DELETE FROM gossip_menu_option WHERE menu_id=8783 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8783 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8783 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8783 AND id=3;

-- From gossip_menu #8801 with text :11281 Brogg is glad Mudsprocket goblins have let him stay here, but sometimes thinks he hears them laughing at him.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8801;
DELETE FROM npc_text WHERE id=11281;

-- From gossip_menu #8804 with text :11289 Ok mon, a deal be a deal....$b$bIt was night when we all snuck in to Zul'Aman fer a look around.$b$bAll was quiet, til we be hearin' a rustlin' sound, like the wind through the trees. Before we know it, we be surrounded by these savages and their pets! Next day, I be wakin' up here, stuck in a cage.$b$bDay an' night, one by one, prisoners be gettin' killed. Every time one be dyin', that bear-troll be lookin' stronger.$b$bThat be all I know 'bout this place, mon. And I don't wanna be knowin' any more!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8804;
DELETE FROM npc_text WHERE id=11289;

-- From gossip_menu #8806 with text :11293 
-- Used by source: unknown
-- option #0 "I wish to browse your wares, Hazel."
-- option #1 "Make this inn your home."


DELETE FROM gossip_menu WHERE entry=8806;
DELETE FROM npc_text WHERE id=11293;
DELETE FROM gossip_menu_option WHERE menu_id=8806 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8806 AND id=1;

-- From gossip_menu #8807 with text :11295 That man be nuthin' but a fool!$b$bFame, fortune? Phooey! This place be nuthin' but a deathtrap, mon!$b$bI seen all kinds a' trolls in my day, but these, they be different - sneaky, strong, tricky.$b$bSeemed to me like they knew we was comin'....



-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8807;
DELETE FROM npc_text WHERE id=11295;

-- From gossip_menu #8808 with text :11297 Dealin' wit' *hic* poison and alco... *hic* booze ish dangeroush...
-- Used by source: unknown
-- option #0 "I require some components, Sorely."


DELETE FROM gossip_menu WHERE entry=8808;
DELETE FROM npc_text WHERE id=11297;
DELETE FROM gossip_menu_option WHERE menu_id=8808 AND id=0;

-- From gossip_menu #8811 with text :11309 If you need to speak with Apprentice Garion, you'll find him inside the cottage with Tabetha. At least there, he can't steal all the reagents.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8811;
DELETE FROM npc_text WHERE id=11309;

-- From gossip_menu #8813 with text :11316 Ahh, them - a sad tale, that one.$b$bThey have disappeared behind the walls of Zul'Aman. I haven't heard from them in days.$b$bI've seen it a hundred times; that overeager itch for fame and fortune. I tried to hold them back, told them they weren't prepared, but in the end they chose to face their peril....
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8813;
DELETE FROM npc_text WHERE id=11316;

-- From gossip_menu #8815 with text :11314 Oh, well, that all depends on which partners you mean. Many have come and gone over the years - always someone eager to ride the coat-tails of the legend that is Budd Nedreck!$b$bYou can rest assured that most of them have become wealthy and retired. That's simply not the path I've chosen. You see, I've always felt that I've been called to reveal the world's great mysteries. Alas, if I don't do it, who could?$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8815;
DELETE FROM npc_text WHERE id=11314;

-- From gossip_menu #8817 with text :11332 I'm a prisoner!$B$BThey shot me and my beautiful zeppelin out of the sky. And what for? Because I was ferrying men and materiel for the Horde? That's nothing new!$B$BNow they have me running her in circles around the bay so that they can bomb the pirates. I just don't have the parts to keep her going like this! I'm barely keeping her together on spit and bailing wire!$B$BIf you're determined to help them out, she's due to arrive back in port in less than $3078w minutes.$B$BIt's a crime I tell you!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8817;
DELETE FROM npc_text WHERE id=11332;

-- From gossip_menu #8818 with text :11315 Listen, $n, you should know by now that when fortune comes knocking, you open the door and ask questions later. Chances like this don't come along every day!$b$bNow, are you in or not, $c?$b$b<Budd doesn't wait for a reply>$b$bOf course you are! Now, there's work to be done, and so far I've seen a lot of talking and no action. I suggest you show me something before I find a replacement.$b$bThere are thousands who would kill for an opportunity like this, I assure you!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8818;
DELETE FROM npc_text WHERE id=11315;

-- From gossip_menu #8819 with text :11338 Patience, $n. I didn't become the renowned Budd Nedreck by being hasty.$b$bFinal preparations are being made and soon the treasures and secrets of Zul'Aman shall be mine! $b$b<Budd pauses and looks at you for a moment, then chuckles.>$b$b...ours I mean, of course.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8819;
DELETE FROM npc_text WHERE id=11338;

-- From gossip_menu #8822 with text :11362 For years beyond counting these woods have burned. They are fueled by an ancient magic and are the mating grounds for the brood mother and her proto-drake consorts.$B$BBut now a long-forgotten evil has reawakened and seeks once again to enslave the offspring of the brood mother for their own purposes.$B$BThese vrykul have caused a disturbance that is extending the boundary of the clutch, and threatens your people.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8822;
DELETE FROM npc_text WHERE id=11362;

-- From gossip_menu #8832 with text :11418 All o' this shootin' at Skorn and other places o'er the horizon, and what do ya think it's gotten me?$B$BCannonball recovery duty!$B$BNot exactly what I signed up fer, ya know?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8832;
DELETE FROM npc_text WHERE id=11418;

-- From gossip_menu #8833 with text :11419 
-- Used by source: unknown
-- option #0 "What do you have to eat, Celeste?"
-- option #1 "Make this inn your home."
-- option #2 "Trick or Treat!"


DELETE FROM gossip_menu WHERE entry=8833;
DELETE FROM npc_text WHERE id=11419;
DELETE FROM gossip_menu_option WHERE menu_id=8833 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8833 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8833 AND id=2;

-- From gossip_menu #8835 with text :11426 Lieutenant Aden always volunteers for gate duty. That's fine by me.$B$BI've got a post that allows me a good view of my guards AND the daughters of the tradesmen at the same time.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8835;
DELETE FROM npc_text WHERE id=11426;

-- From gossip_menu #8839 with text :11436 Captain Adams sent me out here to investigate what's happening at Halgrind. This is as close as I've been able to get, however; the abandoned Vrykul tower affords me some amount of cover from prying eyes.$B$BThe Forsaken are up to no good over there. I can feel it!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8839;
DELETE FROM npc_text WHERE id=11436;

-- From gossip_menu #8852 with text :11494 We shouldn't have left so many behind at Valgarde. Admiral Keller, that insufferable egomaniac!$B$BHow am I to fulfill my orders with so few? I need enough men to stay here at the keep and still properly garrison Fort Wildervar when it's ready!$B$BAt least we have a hope of dealing with our problems now that you're here.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8852;
DELETE FROM npc_text WHERE id=11494;

-- From gossip_menu #8856 with text :11504 I've seen a lot of things in my time, but the change that came over the Explorers' League in the Whisper Gulch takes the cake.$B$BI'm just glad that I got out of there with my skin intact!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8856;
DELETE FROM npc_text WHERE id=11504;

-- From gossip_menu #8875 with text :11580 A sad tale, that one - a wee bit embarrassin' too.$b$bMy people be know fer havin' a taste fer the ale, ya know. And I be no exception. Seems I been given more than me share of the thirst.$b$bSo I run inta ol' Budd ya see, an' he offers me all the grog I can swallow fer joinin' his crew - a move I've come to regret.$b$bOne night, after drinkin' enough grog to drop a Kodo, I was lured into followin' Budd's band o' misfits into Zul'Aman.$b$bThat be the last I recall before findin' meself in that cage.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8875;
DELETE FROM npc_text WHERE id=11580;

-- From gossip_menu #8898 with text :11688 Hail, stranger. If you are looking for a place in need of your help, you have found it.$B$BThe dead reawaken, walk the land, and arrive on ships from across the great ocean. The fjord grows too dangerous even for us, and soon we must leave for safer lands to the north.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8898;
DELETE FROM npc_text WHERE id=11688;

-- From gossip_menu #8903 with text :11714 Welcome to my Inn, weary traveler. What can I do for you?
-- Used by source: unknown
-- option #1 "Make this inn your home."


DELETE FROM gossip_menu WHERE entry=8903;
DELETE FROM npc_text WHERE id=11714;
DELETE FROM gossip_menu_option WHERE menu_id=8903 AND id=1;

-- From gossip_menu #8908 with text :11756 Perhaps it was a mistake to travel so close to the Rivenwood and Gjalerbron to get here.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8908;
DELETE FROM npc_text WHERE id=11756;

-- From gossip_menu #8914 with text :11808 How'd I ever let Petrov talk me into coming out here with these incompetent dwarves?!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8914;
DELETE FROM npc_text WHERE id=11808;

-- From gossip_menu #8916 with text :11283 Hooray! Tanzar be free, mon!$b$bWhat luck! All that an' not even a chipped tusk.$b$bCharmed, mon. That's what I be. No sense denyin' it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8916;
DELETE FROM npc_text WHERE id=11283;

-- From gossip_menu #8932 with text :11943 Let me guess, another group of Budd's riff-raff?$b$bAway with you, $r, before you get hurt - or worse.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8932;
DELETE FROM npc_text WHERE id=11943;

-- From gossip_menu #8948 with text :12046 An order is whispered upon the nether winds and Mah'duun hears.$B$BA $g man : woman; comes before Mah'duun, and they speak of those which the winds demand be slain today.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8948;
DELETE FROM npc_text WHERE id=12046;

-- From gossip_menu #8966 with text :12097 We built this place with our bare hands! Blood and tears, my friend.$B$BBelieve me when I tell you this: We have no plans on ever giving up our hold on Valgarde.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8966;
DELETE FROM npc_text WHERE id=12097;

-- From gossip_menu #8968 with text :12100 I saw you across the way and was hoping you were going to stop by.  So what can I do for you sweetie?
-- Used by source: unknown
-- option #0 "What's with your crazy goggles?"
-- option #1 "Brew of the Month Club?"
-- option #2 "Ticket Exchange"
-- option #3 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=8968;
DELETE FROM npc_text WHERE id=12100;
DELETE FROM gossip_menu_option WHERE menu_id=8968 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8968 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8968 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8968 AND id=3;

-- From gossip_menu #8975 with text :12112 <Ulfang howls and sniffs at you, and you can understand what he says.>$B$BThe strange white worg of the north, Garwal, has taken my pack from me. We must rip out his throat so that I will be the alpha worg once again.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8975;
DELETE FROM npc_text WHERE id=12112;

-- From gossip_menu #8984 with text :12122 So you're the new hot shot in town, eh?$B$B<Zorek spits on the ground.>$B$BYea...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8984;
DELETE FROM npc_text WHERE id=12122;

-- From gossip_menu #8985 with text :12124 <Old Icefin draws in the sand. From the crude pictures he traces you can make out that he wants your help.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8985;
DELETE FROM npc_text WHERE id=12124;

-- From gossip_menu #8988 with text :12134 No other holiday matches the feasting and drinking of Brewfest!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8988;
DELETE FROM npc_text WHERE id=12134;

-- From gossip_menu #8991 with text :12144 Yarp? Yar wannar fly? Narp... No-no-no-norp gonnarp ha-hap-hap-happen!
-- Used by source: unknown
-- option #0 "Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"
-- option #1 "Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"
-- option #2 "Walt sent me to pick up some dark iron ingots."


DELETE FROM gossip_menu WHERE entry=8991;
DELETE FROM npc_text WHERE id=12144;
DELETE FROM gossip_menu_option WHERE menu_id=8991 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8991 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8991 AND id=2;

-- From gossip_menu #8994 with text :12152 Welcome, friend, to the Brewfest Grounds! There's much to enjoy here while we celebrate the spirit of friendly competition between rival breweries. If you have any questions, let me know!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Brew of the Month Club"
-- option #5 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=8994;
DELETE FROM npc_text WHERE id=12152;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8994 AND id=5;

-- From gossip_menu #8995 with text :12154 Brewfest is all about enjoying the very best food and drink in the lands, and that's no exaggeration! Just take a gander at the many invigorating hand-crafted beers and holiday sausages, pretzels, and cheeses available. You'll find nothing better, and for so little coin!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Tokens & Souvenirs"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=8995;
DELETE FROM npc_text WHERE id=12154;
DELETE FROM gossip_menu_option WHERE menu_id=8995 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8995 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8995 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8995 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8995 AND id=4;

-- From gossip_menu #8996 with text :12155 Next to the beer and sausage, the most popular part of Brewfest is the souvenirs! From traditional holiday garb to mini-kegs of tasty brew, all sorts of Brewfest-themed items are available from Belbi Quikswitch. Just be sure to have plenty of Brewfest Prize Tokens on hand, as it's the only way to buy them! You can earn prize tokens by helping out around the Brewfest Grounds.
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=8996;
DELETE FROM npc_text WHERE id=12155;
DELETE FROM gossip_menu_option WHERE menu_id=8996 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8996 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8996 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8996 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8996 AND id=4;

-- From gossip_menu #8997 with text :12156 Ram racing is one of the great traditions of Brewfest. Speak to Pol Amberstill down by the ram stable if you want to learn more. It's a right hoot AND can be a great way to earn Brewfest Prize Tokens!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=8997;
DELETE FROM npc_text WHERE id=12156;
DELETE FROM gossip_menu_option WHERE menu_id=8997 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8997 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8997 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8997 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8997 AND id=4;

-- From gossip_menu #8998 with text :12153 Greetings, $r. I am Hidalgo, master of the hunt and world class falconer. This killing machine that you see perched atop my shoulder is Excelsior.$B$BYou might be thinking to yourself, "What does a falconer even do?" Well I'll tell you what we do - we hunt! Falconry is the art of using a bird of prey to hunt and catch game. Perhaps you are interested in learning to hunt with a trained raptor? Hidalgo can teach you such things!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=8998;
DELETE FROM npc_text WHERE id=12153;

-- From gossip_menu #8999 with text :12157 Hey there, welcome to Brewfest! There's a mess of ways to keep yourself entertained in there, so you got any questions, you let me know. Otherwise, go buy some beer and a pretzel!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Brew of the Month Club"
-- option #5 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=8999;
DELETE FROM npc_text WHERE id=12157;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=8999 AND id=5;

-- From gossip_menu #9000 with text :12158 Brewfest is all about the beer and the eats, and it don't get any better than what we're serving up. Think I'm lying? Just check out all the tasty brews, sausages, pretzels, and cheeses we got. You'll see: Best chow around, and it don't get any cheaper!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Tokens & Souvenirs"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9000;
DELETE FROM npc_text WHERE id=12158;
DELETE FROM gossip_menu_option WHERE menu_id=9000 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9000 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9000 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9000 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9000 AND id=4;

-- From gossip_menu #9001 with text :12160 Hey hey, don't forget to grab yourself some Brewfest souvenirs! We got everything from traditional holiday garb to mini-kegs of tasty brew. Just talk to Blix Fixwidget, but make sure you got plenty of Brewfest Prize Tokens on hand... it's the only way to buy them! You can earn prize tokens by helping out around the Brewfest Grounds.
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9001;
DELETE FROM npc_text WHERE id=12160;
DELETE FROM gossip_menu_option WHERE menu_id=9001 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9001 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9001 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9001 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9001 AND id=4;

-- From gossip_menu #9002 with text :12159 Everyone loves those crazy Brewfest racing rams. Want to know more? Talk to Driz Tumblequick down by the ram stable. Have a blast and earn some Brewfest Prize Tokens while you're at it!
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9002;
DELETE FROM npc_text WHERE id=12159;
DELETE FROM gossip_menu_option WHERE menu_id=9002 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9002 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9002 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9002 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9002 AND id=4;

-- From gossip_menu #9007 with text :12167 <The creature pecks at your hand.>
-- Used by source: unknown
-- option #0 "<Feed the grub to the rock falcon.>"


DELETE FROM gossip_menu WHERE entry=9007;
DELETE FROM npc_text WHERE id=12167;
DELETE FROM gossip_menu_option WHERE menu_id=9007 AND id=0;

-- From gossip_menu #9010 with text :12174 Blood elf treasure's unlike any other.  It's not just the gold or the silk or gems used as materials, sin'dorei craftsmanship is valuable in and of itself.
-- Used by source: unknown
-- option #0 "Taruk sent me to collect what you owe." submenu #9011
-- option #1 "Do you sell any of this stuff?"


DELETE FROM gossip_menu WHERE entry=9010;
DELETE FROM npc_text WHERE id=12174;
DELETE FROM gossip_menu_option WHERE menu_id=9010 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9010 AND id=1;
DELETE FROM gossip_menu WHERE entry=9011;
DELETE FROM npc_text WHERE id=12175;
DELETE FROM gossip_menu_option WHERE menu_id=9011 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9011 AND id=1;

-- From gossip_menu #9013 with text :12178 <This pirate has obviously had too much to drink.  He appears to be out cold for the time being.>
-- Used by source: unknown
-- option #0 "<Discreetly search the pirate's pockets for Taruk's payment.>"


DELETE FROM gossip_menu WHERE entry=9013;
DELETE FROM npc_text WHERE id=12178;
DELETE FROM gossip_menu_option WHERE menu_id=9013 AND id=0;

-- From gossip_menu #9017 with text :12182 Something's got those Dark Iron Dwarves riled up.  They show up almost every half-hour, break all the kegs, and leave!$b$bSo you're probably asking, "Why should I care?"$b$bI'll tell you...  Because the kegs they break stop us from giving out free brew!  You heard me right, free brew!$b$bSo if you are around when those dwarves show up, take a minute and help protect the kegs.
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Brew of the Month Club"


DELETE FROM gossip_menu WHERE entry=9017;
DELETE FROM npc_text WHERE id=12182;
DELETE FROM gossip_menu_option WHERE menu_id=9017 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9017 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9017 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9017 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9017 AND id=4;

-- From gossip_menu #9018 with text :12183 Brewfest is the perfect holiday!  But it's got one catch, Dark Iron dwarf attacks.  They happen nearly every half-hour!$b$bThe attackers target the kegs that dispense the FREE brew!  And it's really good brew that the brewmasters are giving out!$b$bLook, if you're around when the Dark Iron dwarves show up, lend a hand and protect the FREE brew.
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Brew of the Month Club"


DELETE FROM gossip_menu WHERE entry=9018;
DELETE FROM npc_text WHERE id=12183;
DELETE FROM gossip_menu_option WHERE menu_id=9018 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9018 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9018 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9018 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9018 AND id=4;

-- From gossip_menu #9020 with text :12188 Many changes come to the land and water: you, them... much change.$B$BKamagua's way of life is threatened by these changes. What will you do?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9020;
DELETE FROM npc_text WHERE id=12188;

-- From gossip_menu #9021 with text :12189 I'm out of my element, eh? Walt doesn't know what he's talking about! I single-handedly kicked the iron out of these dwarves and set up camp to observe the goings-on of the dig site.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9021;
DELETE FROM npc_text WHERE id=12189;

-- From gossip_menu #9024 with text :12194 Walt's work bench is ready for use.
-- Used by source: unknown
-- option #0 "<Get on the work bench and let Walt put you in the golem suit.>"
-- option #1 "<Get on the work bench and let Walt put you in the golem suit.>"
-- option #2 "<Get on the work bench and let Walt put you in the golem suit.>"
-- option #3 "<Get on the work bench and let Walt put you in the golem suit.>"


DELETE FROM gossip_menu WHERE entry=9024;
DELETE FROM npc_text WHERE id=12194;
DELETE FROM gossip_menu_option WHERE menu_id=9024 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9024 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9024 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9024 AND id=3;

-- From gossip_menu #9025 with text :12195 Twice a day, at six fifteen in the morning and six fifteen in the evening, High Tinker Mekkatorque himself comes out to the Brewfest grounds for the Tapping of the Keg ceremony. Don't miss it!
-- Used by source: unknown
-- option #0 "Food & Drink"
-- option #1 "Tokens & Souvenirs"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9025;
DELETE FROM npc_text WHERE id=12195;
DELETE FROM gossip_menu_option WHERE menu_id=9025 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9025 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9025 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9025 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9025 AND id=4;

-- From gossip_menu #9026 with text :12196 Twice a day, at six fifteen in the morning and six fifteen in the evening, Shadow Hunter Vol'jin himself comes out to the Brewfest grounds for the Tapping of the Keg ceremony. You'd be a fool to miss it!
-- Used by source: unknown
-- option #0 "Food & Drink"
-- option #1 "Tokens & Souvenirs"
-- option #2 "Ram Racing"
-- option #3 "Brew of the Month Club"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9026;
DELETE FROM npc_text WHERE id=12196;
DELETE FROM gossip_menu_option WHERE menu_id=9026 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9026 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9026 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9026 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9026 AND id=4;

-- From gossip_menu #9029 with text :12207 Cap'n Stash is the BEST!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9029;
DELETE FROM npc_text WHERE id=12207;

-- From gossip_menu #9034 with text :12212 Torgoley works us hard, but he's a good captain, aye.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9034;
DELETE FROM npc_text WHERE id=12212;

-- From gossip_menu #9036 with text :12214 I must keep my eyes on ship and crew, good $gsir:madame;. You must forgive my not pausing to speak with you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9036;
DELETE FROM npc_text WHERE id=12214;

-- From gossip_menu #9037 with text :12215 The Lady Mehley is in Theramore enough that we've been assigned to guard her passengers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9037;
DELETE FROM npc_text WHERE id=12215;

-- From gossip_menu #9038 with text :12216 Welcome to the majestic Lady Mehley. I am Captain Torgoley.$b$bIf you've questions about the ship, feel free to ask; otherwise, please, enjoy the journey, as I always do... After all, to quote a favorite scribe of mine: My experience of ships is that on them one makes an interesting discovery about the world. One finds one can do without it completely.
-- Used by source: unknown
-- option #0 "The Lady Mehley"
-- option #1 "Food & Drink"
-- option #2 "Goods & Gear"
-- option #3 ""Stash?""


DELETE FROM gossip_menu WHERE entry=9038;
DELETE FROM npc_text WHERE id=12216;
DELETE FROM gossip_menu_option WHERE menu_id=9038 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9038 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9038 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9038 AND id=3;

-- From gossip_menu #9045 with text :12222 I lucked out. Not many tauren get to be cabin boy on a frigate like this! Grezzix even lets me man these incredible battle canoes.
-- Used by source: unknown
-- option #0 "I don't have time for chit-chat, Lou. Take me to Scalawag Point."


DELETE FROM gossip_menu WHERE entry=9045;
DELETE FROM npc_text WHERE id=12222;
DELETE FROM gossip_menu_option WHERE menu_id=9045 AND id=0;

-- From gossip_menu #9053 with text :12242 Ahoy! Ye be lookin' to book passage board the Sister Mercy, matey? Ye've come to the right place...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9053;
DELETE FROM npc_text WHERE id=12242;

-- From gossip_menu #9061 with text :12251 Blessings of the naaru upon you, my friend.
-- Used by source: unknown
-- option #0 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=9061;
DELETE FROM npc_text WHERE id=12251;
DELETE FROM gossip_menu_option WHERE menu_id=9061 AND id=0;

-- From gossip_menu #9065 with text :12259 Our efforts have paid off.  We've captured the Sun's Reach Sanctum, $N.  Go there and see if there's anyone you can assist.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9065;
DELETE FROM npc_text WHERE id=12259;

-- From gossip_menu #9071 with text :12268 This greyin' seadog may be the oldest of the crew, but he's also the toughest of the lot! Eh? Eh? Arms like an ogre!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9071;
DELETE FROM npc_text WHERE id=12268;

-- From gossip_menu #9073 with text :12272 Yeah, that's her you're standing on. A beaut, isn't she? The Baron set me up as the captain a while back. She's not mine originally, so I didn't name her; if you want my opinion, kid, I think the sailor who named her spent a little too much time at sea and not enough time in port, if you catch my meaning.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9073;
DELETE FROM npc_text WHERE id=12272;

-- From gossip_menu #9074 with text :12271 Hey, kid. You're aboard the Maiden's Fancy. The name's Captain Wrenchnozzle, and you've got the privilege of sailing on the pride of the Blackwater Raiders. The Bloodsail don't come near us, not with my sharp crew and the large amount of gunpowder in the hold. Insurance, you know.$b$bIf you've got questions, kid, I'll answer 'em.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9074;
DELETE FROM npc_text WHERE id=12271;

-- From gossip_menu #9076 with text :12274 What's a Steamwheedle ship without an engineer, eh? Torquespindle can help you with anything you need. He's handy with repairing things quickly, too, if that's what you're after.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9076;
DELETE FROM npc_text WHERE id=12274;

-- From gossip_menu #9077 with text :12275 Welcome aboard the Feathermoon Ferry.  We travel between Feathermoon Stronghold and the Forgotten Coast looking for those lost at sea.  The sea can be a dangerous place if you are not prepared.$b$bIf you need to get prepared, please speak to our provisioners.  They are more than happy to help you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9077;
DELETE FROM npc_text WHERE id=12275;

-- From gossip_menu #9078 with text :12276 On behalf of the crew of the Moonspray, I welcome you $c.  I hope you take advantage of our provisions before parting with us.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9078;
DELETE FROM npc_text WHERE id=12276;

-- From gossip_menu #9089 with text :12288 Welcome aboard the Thundercaller!$b$bDon't pay attention to the people that complain about explosions or the like.  I mean really, everyone makes mistakes.  We should cut people some slack.$b$bLook, I'd understand if a captain managed to crash his ship 22 or 23 times... But anything less than that isn't worth mentioning.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9089;
DELETE FROM npc_text WHERE id=12288;

-- From gossip_menu #9091 with text :12292 You can't blame me for our mishaps... I can't even see where I'm going!$b$bThough maybe that means you can blame me...$b$bNo!  Wait!  I can dock this ship just fine... It's gotta be the orders the captain issues!  Maybe he likes pushing us to our limits and testing out our survival and repair skills.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9091;
DELETE FROM npc_text WHERE id=12292;

-- From gossip_menu #9096 with text :12294 I used to be known as Iolol until a secret vote was passed around town that resulted in me having to change my name. It was either change it or go the way of Corki. You would have done the same. What do you think of my new name? Huge improvement, right?$B$BBy the way, check the bulletin board if you're looking for work.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9096;
DELETE FROM npc_text WHERE id=12294;

-- From gossip_menu #9105 with text :12309 Should Kil'jaeden rise up through the Sunwell our world will be thrown into a war the likes of which has not been seen for 10,000 years!$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9105;
DELETE FROM npc_text WHERE id=12309;

-- From gossip_menu #9110 with text :12318 I run the tightest airship in Azeroth. She used to be fitted with twin light cannons and enough bombs to flatten a city, you know... her mere shadow was enough to rout armies.$b$bWhat? Of course it's true!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9110;
DELETE FROM npc_text WHERE id=12318;

-- From gossip_menu #9117 with text :12328 Relaxation is the key to being an efficient crew.  Let the crew relax, and they'll perform better.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9117;
DELETE FROM npc_text WHERE id=12328;

-- From gossip_menu #9118 with text :12329 The captain's great!  We get time to relax when we dock.  Those are the times I look forward to the most.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9118;
DELETE FROM npc_text WHERE id=12329;

-- From gossip_menu #9124 with text :12335 The Tauren Chieftains are staying in Silvermoon while I arrange their next tour. They often lounge on the balcony above me when they're not practicing. Feel free to wave... they love the attention.$B$BWe're not currently hiring for the show or the crew, but you can always check back later. Who knows what will arise?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9124;
DELETE FROM npc_text WHERE id=12335;

-- From gossip_menu #9125 with text :12336 Did you manage to see their show in Terokkar Forest? It was amazing!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9125;
DELETE FROM npc_text WHERE id=12336;

-- From gossip_menu #9128 with text :12341 I'm in charge of the workers that support the Tauren Chieftains.$B$BYou know: packing, driving, and unpacking the wagons, building and taking down the stage, setting up the pyrotechnics, all that sort of thing.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9128;
DELETE FROM npc_text WHERE id=12341;

-- From gossip_menu #9129 with text :12342 Schweitzer here is an old friend of mine... a valuable thing, that. Friendship, I mean. I thought I'd forgotten the feeling until we met again in Shattrath City.$B$BHe's not in Tirisfal so much these days, so I thought I'd take the Orb of Translocation here to give my hellos.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9129;
DELETE FROM npc_text WHERE id=12342;

-- From gossip_menu #9130 with text :12344 <Ahlurglgr looks surprised to be able to understand you.>
-- Used by source: unknown
-- option #0 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=9130;
DELETE FROM npc_text WHERE id=12344;
DELETE FROM gossip_menu_option WHERE menu_id=9130 AND id=0;

-- From gossip_menu #9133 with text :12350 You have learned a trick to speak with us, $r, but I am not impressed.$B$BThere are Winterfin betrayers across the water that need killing.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9133;
DELETE FROM npc_text WHERE id=12350;

-- From gossip_menu #9136 with text :12357 I recently came here to observe the Winterfin murlocs. Disguised as one of them, I kept my distance and took notes on their day-to-day life.$B$BHowever, not long after I arrived, that all changed.$B$BAn earthquake in Coldarra caused a landslide, which exposed the nearby caverns. Out came a strange makrura who stole away with the Winterfins' tadpoles. When the murlocs went into the caverns to rescue their young, they re-emerged, glowing and under the makrura's influence.$B$BNow the unaffected have retreated to here, and I have reluctantly assumed their leadership.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9136;
DELETE FROM npc_text WHERE id=12357;

-- From gossip_menu #9139 with text :12364 I am Atuik, chieftain of the Kalu'ak of Kamagua.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9139;
DELETE FROM npc_text WHERE id=12364;

-- From gossip_menu #9144 with text :12373 The razing of Orgrimmar was not just an attack against orcs, it was an affront to the Horde. An assault against our very existence!$B$BThe Lich King sought to sow the seeds of fear.$B$BThis...$B$B<Garrosh points to the fortified walls that surround him.>$B$BThis is the result of Arthas's campaign.$B$BThe Horde fears nothing...$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9144;
DELETE FROM npc_text WHERE id=12373;

-- From gossip_menu #9150 with text :12381 Fear has always been our greatest weapon. Entire wars have been won and lost upon the shifting shoulders of trepidation and doubt. So how, then, does one fight an enemy that knows no fear?$B$B<Saurfang shakes his head.>$B$BWe do not just fight the Scourge in Northrend, we fight to gain control of our senses before they tear us apart...$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9150;
DELETE FROM npc_text WHERE id=12381;

-- From gossip_menu #9155 with text :12388 Here lies the corpse of one of the Steeljaw's caravan guards.
-- Used by source: unknown
-- option #0 "Take their clothing."


DELETE FROM gossip_menu WHERE entry=9155;
DELETE FROM npc_text WHERE id=12388;
DELETE FROM gossip_menu_option WHERE menu_id=9155 AND id=0;

-- From gossip_menu #9156 with text :12389 Here lies the corpse of one of the Steeljaw's caravan workers.
-- Used by source: unknown
-- option #0 "Take their clothing."


DELETE FROM gossip_menu WHERE entry=9156;
DELETE FROM npc_text WHERE id=12389;
DELETE FROM gossip_menu_option WHERE menu_id=9156 AND id=0;

-- From gossip_menu #9165 with text :12423 
-- Used by source: unknown
-- option #1 "Crafty, I need another Warsong banner."


DELETE FROM gossip_menu WHERE entry=9165;
DELETE FROM npc_text WHERE id=12423;
DELETE FROM gossip_menu_option WHERE menu_id=9165 AND id=1;

-- From gossip_menu #9186 with text :12477 I am sworn by tuskarr law to avenge my kin... these murderers burned Pal'ea to the ground.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9186;
DELETE FROM npc_text WHERE id=12477;

-- From gossip_menu #9187 with text :12478 I've treated peasants, nobles, merchants' sons and beggars.  Allow me to share one piece of wisdom with you - we're all the same when staring death in the face.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9187;
DELETE FROM npc_text WHERE id=12478;

-- From gossip_menu #9188 with text :12485 Is your cause righteous and your heart true? If so, you are welcome here - among the druids for the ethical and humane treatment of animals. So long as you do not veer down the dark path of depravity and harm the animals that have allowed us to coexist within their world, D.E.H.T.A. will consider you an ally.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9188;
DELETE FROM npc_text WHERE id=12485;

-- From gossip_menu #9190 with text :12489 This recon pilot did not survive his squadron's crash.
-- Used by source: unknown
-- option #0 "Search for the pilot's insignia."


DELETE FROM gossip_menu WHERE entry=9190;
DELETE FROM npc_text WHERE id=12489;
DELETE FROM gossip_menu_option WHERE menu_id=9190 AND id=0;

-- From gossip_menu #9199 with text :12498 Do not be frightened, $r. Our ends are the same.
-- Used by source: unknown
-- option #0 "Who are you?" submenu #9200
-- option #1 "What brings you to the Sunwell?" submenu #9297


DELETE FROM gossip_menu WHERE entry=9199;
DELETE FROM npc_text WHERE id=12498;
DELETE FROM gossip_menu_option WHERE menu_id=9199 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9199 AND id=1;
DELETE FROM gossip_menu WHERE entry=9200;
DELETE FROM npc_text WHERE id=12500;
DELETE FROM gossip_menu_option WHERE menu_id=9200 AND id=0;
DELETE FROM gossip_menu WHERE entry=9297;
DELETE FROM npc_text WHERE id=12606;
DELETE FROM gossip_menu_option WHERE menu_id=9297 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9297 AND id=1;
DELETE FROM gossip_menu WHERE entry=9201;
DELETE FROM npc_text WHERE id=12502;
DELETE FROM gossip_menu WHERE entry=9295;
DELETE FROM npc_text WHERE id=12607;
DELETE FROM gossip_menu WHERE entry=9296;
DELETE FROM npc_text WHERE id=12608;

-- From gossip_menu #9212 with text :12523 Greetings, $N. I am Durkot Wolfbrother, protector of the pack.
-- Used by source: unknown
-- option #1 "I wish to make use of the stables."


DELETE FROM gossip_menu WHERE entry=9212;
DELETE FROM npc_text WHERE id=12523;
DELETE FROM gossip_menu_option WHERE menu_id=9212 AND id=1;

-- From gossip_menu #9214 with text :12525 The Scourge are everywhere!  This is... a nightmare!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9214;
DELETE FROM npc_text WHERE id=12525;

-- From gossip_menu #9215 with text :12526 Arthas thinks a few of his undead bugs are going to send us running back to the Eastern Kingdoms... he's got another thing coming.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9215;
DELETE FROM npc_text WHERE id=12526;

-- From gossip_menu #9216 with text :12527 Dark forces are at work in this land, $N.  Keep your eyes open and your courage strong.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9216;
DELETE FROM npc_text WHERE id=12527;

-- From gossip_menu #9261 with text :12575 The land is in great upheaval!$B$BThe Dark One rides forth again with his San'layn, the dragons fight in their great Nexus War, and the vrykul are reawakened.$B$BYour people sail north on your wooden ships to fight them and one another, and we Kalu'ak are caught in the middle.$B$BAnd now some great evil has been done so that the land explodes with the magical power of the world. We must find a safe haven where we will have a chance to survive.$B$BThese two ambassadors make my head hurt... perhaps you can help my people, $r?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9261;
DELETE FROM npc_text WHERE id=12575;

-- From gossip_menu #9262 with text :12576 
-- Used by source: unknown
-- option #0 "I am prepared to face Saragosa!"
-- option #1 "Keristrasa, I am finished here. Please return me to the Transitus Shield."


DELETE FROM gossip_menu WHERE entry=9262;
DELETE FROM npc_text WHERE id=12576;
DELETE FROM gossip_menu_option WHERE menu_id=9262 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9262 AND id=1;

-- From gossip_menu #9263 with text :12578 The Kvaldir are without mercy, $N.  But I cannot abandon sacred Kaskala.  If we don't abandon the spirits, the spirits will not abandon us either.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9263;
DELETE FROM npc_text WHERE id=12578;

-- From gossip_menu #9270 with text :12579 Kaskala's under attack!  We must hold them off until we can escape.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9270;
DELETE FROM npc_text WHERE id=12579;

-- From gossip_menu #9277 with text :12580 Cursed giant-men!  If they want a fight, a fight they'll get!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9277;
DELETE FROM npc_text WHERE id=12580;

-- From gossip_menu #9280 with text :12585 This young tuskarr appears to have been slain in combat rather than drowned.
-- Used by source: unknown
-- option #0 "<Search corpse for Issliruk's Totem.>"


DELETE FROM gossip_menu WHERE entry=9280;
DELETE FROM npc_text WHERE id=12585;
DELETE FROM gossip_menu_option WHERE menu_id=9280 AND id=0;

-- From gossip_menu #9301 with text :12617 <Budd holds very still, pretending not to hear you. Looking closely you see a bit of drool drip from under his mask.>
-- Used by source: unknown
-- option #0 "Come on, Budd. Time to play with the ice trolls!"


DELETE FROM gossip_menu WHERE entry=9301;
DELETE FROM npc_text WHERE id=12617;
DELETE FROM gossip_menu_option WHERE menu_id=9301 AND id=0;

-- From gossip_menu #9335 with text :12634 What ye be lookin' at, matey?
-- Used by source: unknown
-- option #0 "Ummm... the frog says you're a traitor, "matey.""


DELETE FROM gossip_menu WHERE entry=9335;
DELETE FROM npc_text WHERE id=12634;
DELETE FROM gossip_menu_option WHERE menu_id=9335 AND id=0;

-- From gossip_menu #9337 with text :12637 The great sea turtle Walker of Waves travels from this dock to Moa'ki Harbor in Dragonblight.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9337;
DELETE FROM npc_text WHERE id=12637;

-- From gossip_menu #9338 with text :12638 The steam-powered Alliance icebreaker Northspear sails from here to Menethil Harbor in the Wetlands, across the sea in the Eastern Kingdoms.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9338;
DELETE FROM npc_text WHERE id=12638;

-- From gossip_menu #9342 with text :12642 If you're looking to travel to Northrend, the icebreaker Northspear sails from here to Valgarde in the Howling Fjord.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9342;
DELETE FROM npc_text WHERE id=12642;

-- From gossip_menu #9347 with text :12647 Hey there. If you wanna get to Northrend, then The Mighty Wind is the way to go. She'll fly you straight to Warsong Hold in the Borean Tundra.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9347;
DELETE FROM npc_text WHERE id=12647;

-- From gossip_menu #9415 with text :12658 Hello there!  Fizzcrank's pilots are the best of the best.  We stay that way through constant training.  That includes parachute training.  You never know when you will need to use your chute, but you do know that one day you'll have to use it.$b$bSo what we have here is a teleporter to the top of this spire.  Once you get up there, the only way for a real soldier to get back down is with a parachute.  We've got another trooper stationed up top ready with the parachutes.$b$bIf you feel like trying it out, $c, I'll clear you for teleporter use.  Then just step onto the teleporter.
-- Used by source: unknown
-- option #0 "Clear me for the teleporter, I'm ready to go!"


DELETE FROM gossip_menu WHERE entry=9415;
DELETE FROM npc_text WHERE id=12658;
DELETE FROM gossip_menu_option WHERE menu_id=9415 AND id=0;

-- From gossip_menu #9416 with text :12659 G'day mate! Sit an' have yerself a sip, won't yeh?
-- Used by source: unknown
-- option #0 "I need some more of your fine grog, Mack."


DELETE FROM gossip_menu WHERE entry=9416;
DELETE FROM npc_text WHERE id=12659;
DELETE FROM gossip_menu_option WHERE menu_id=9416 AND id=0;

-- From gossip_menu #9422 with text :12668 There's money to be made!  Just like pops always said - no better time for raking in the cash than a time of war. 
-- Used by source: unknown
-- option #0 "I seem to have misplaced your Shredder Control Device... might you have another?"


DELETE FROM gossip_menu WHERE entry=9422;
DELETE FROM npc_text WHERE id=12668;
DELETE FROM gossip_menu_option WHERE menu_id=9422 AND id=0;

-- From gossip_menu #9428 with text :12678 We will crush Arthas! The Scourge cannot stand up to the might of the Horde!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9428;
DELETE FROM npc_text WHERE id=12678;

-- From gossip_menu #9451 with text :12706 Impressive, aren't they? These giants would be the perfect fodd... er, allies.  This one is their leader, but he continues to refuse to speak with me.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9451;
DELETE FROM npc_text WHERE id=12706;

-- From gossip_menu #9452 with text :12707 Hello, $r.  You are welcome to share this canyon with us as refuge from the dragons.  Beware the goblin runt though... his kind cannot be trusted.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9452;
DELETE FROM npc_text WHERE id=12707;

-- From gossip_menu #9455 with text :12713 Welcome to Wyrmrest Temple, traveler.$B$BHere the dragonflights confer in peace with one another amidst the bones of their honored ancestors.$B$BAt least, we were peaceful until the Blue Dragonflight launched a surprise attack upon the temple itself.$B$BEnter with our blessing, but know that we will brook no aggression within our walls.
-- Used by source: unknown
-- option #0 "Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple." submenu #10199
-- option #1 "Can you spare a drake to take me to Lord Afrasastrasz in the middle of the temple?"


DELETE FROM gossip_menu WHERE entry=9455;
DELETE FROM npc_text WHERE id=12713;
DELETE FROM gossip_menu_option WHERE menu_id=9455 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9455 AND id=1;
DELETE FROM gossip_menu WHERE entry=10199;
DELETE FROM npc_text WHERE id=14151;

-- From gossip_menu #9457 with text :12714 
-- Used by source: unknown
-- option #0 "Yes, please, I would like to return to the ground level of the temple."
-- option #1 "I would like to go to Lord Afrasastrasz in the middle of the temple."


DELETE FROM gossip_menu WHERE entry=9457;
DELETE FROM npc_text WHERE id=12714;
DELETE FROM gossip_menu_option WHERE menu_id=9457 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9457 AND id=1;

-- From gossip_menu #9466 with text :12726 There's no thrill like the thrill of a dragon hunt.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9466;
DELETE FROM npc_text WHERE id=12726;

-- From gossip_menu #9472 with text :12730 Why do you disturb me?
-- Used by source: unknown
-- option #0 "I'd like passage to the Transitus Shield." submenu #9626
-- option #1 "May I use a drake to fly elsewhere?"


DELETE FROM gossip_menu WHERE entry=9472;
DELETE FROM npc_text WHERE id=12730;
DELETE FROM gossip_menu_option WHERE menu_id=9472 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9472 AND id=1;
DELETE FROM gossip_menu WHERE entry=9626;
DELETE FROM npc_text WHERE id=13022;
DELETE FROM gossip_menu_option WHERE menu_id=9626 AND id=0;
DELETE FROM gossip_menu WHERE entry=10192;
DELETE FROM npc_text WHERE id=14138;

-- From gossip_menu #9475 with text :12733 Scourge aberrations... They'll get what's coming to them soon enough.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9475;
DELETE FROM npc_text WHERE id=12733;

-- From gossip_menu #9481 with text :12744 My S.T.O.U.T. is more than just a target for throwing steins, it's a valuable training asset.  If you can hit S.T.O.U.T. you can probably hit anything!$b$bJust try not to hit me.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9481;
DELETE FROM npc_text WHERE id=12744;

-- From gossip_menu #9484 with text :12752 Limpy Joe, it's you. It's really you!
-- Used by source: unknown
-- option #1 "Show me what you have for sale, trapper."


DELETE FROM gossip_menu WHERE entry=9484;
DELETE FROM npc_text WHERE id=12752;
DELETE FROM gossip_menu_option WHERE menu_id=9484 AND id=1;

-- From gossip_menu #9485 with text :12753 What brings you out here, little one?
-- Used by source: unknown
-- option #0 "What can you tell me about Loken and the iron dwarves?"


DELETE FROM gossip_menu WHERE entry=9485;
DELETE FROM npc_text WHERE id=12753;
DELETE FROM gossip_menu_option WHERE menu_id=9485 AND id=0;

-- From gossip_menu #9496 with text :12785 When I learned about my relatives here in the north, I came to learn more.  What I found was warring tribes acting against our very nature.$B$BI have no hope left, $r.  Even great Ursoc has been tainted by this cursed place.$B$BI've lost all hope.
-- Used by source: unknown
-- option #0 "We have the purified ashes of Vordrassil's sapling.  If we can subdue Ursoc, we might be able to heal his soul." submenu #9497


DELETE FROM gossip_menu WHERE entry=9496;
DELETE FROM npc_text WHERE id=12785;
DELETE FROM gossip_menu_option WHERE menu_id=9496 AND id=0;
DELETE FROM gossip_menu WHERE entry=9497;
DELETE FROM npc_text WHERE id=12787;
DELETE FROM gossip_menu_option WHERE menu_id=9497 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9497 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9497 AND id=2;

-- From gossip_menu #9498 with text :12789 
-- Used by source: unknown
-- option #0 "Make this inn your home."
-- option #1 "Make this inn your home."
-- option #2 "I would like to browse your goods, Illusia."


DELETE FROM gossip_menu WHERE entry=9498;
DELETE FROM npc_text WHERE id=12789;
DELETE FROM gossip_menu_option WHERE menu_id=9498 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9498 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9498 AND id=2;

-- From gossip_menu #9500 with text :12793 I once roamed the Grizzly Hills, son to the great Ursoc, who ruled over this land.$B$BBut now... now I'm doomed to spend the rest of my life in this cave.
-- Used by source: unknown
-- option #0 "You're free to go Orsonn, but first tell me what's wrong with the furbolg." submenu #9502


DELETE FROM gossip_menu WHERE entry=9500;
DELETE FROM npc_text WHERE id=12793;
DELETE FROM gossip_menu_option WHERE menu_id=9500 AND id=0;
DELETE FROM gossip_menu WHERE entry=9502;
DELETE FROM npc_text WHERE id=12794;
DELETE FROM gossip_menu_option WHERE menu_id=9502 AND id=0;
DELETE FROM gossip_menu WHERE entry=9503;
DELETE FROM npc_text WHERE id=12796;
DELETE FROM gossip_menu_option WHERE menu_id=9503 AND id=0;

-- From gossip_menu #9504 with text :12797 I am Kodian, daughter of Ursoc.  I watch over this once sacred shrine.$B$BI've not seen a stranger come here in a long time.
-- Used by source: unknown
-- option #0 "Who was this stranger?" submenu #9505


DELETE FROM gossip_menu WHERE entry=9504;
DELETE FROM npc_text WHERE id=12797;
DELETE FROM gossip_menu_option WHERE menu_id=9504 AND id=0;
DELETE FROM gossip_menu WHERE entry=9505;
DELETE FROM npc_text WHERE id=12798;
DELETE FROM gossip_menu_option WHERE menu_id=9505 AND id=0;

-- From gossip_menu #9511 with text :12810 
-- Used by source: unknown
-- option #0 "I am ready to be teleported to Dalaran."


DELETE FROM gossip_menu WHERE entry=9511;
DELETE FROM npc_text WHERE id=12810;
DELETE FROM gossip_menu_option WHERE menu_id=9511 AND id=0;

-- From gossip_menu #9512 with text :12811 Thane Torvald Eriksson's temperamental proto-drake is chained up here.
-- Used by source: unknown
-- option #0 "Unchain and control Flamebringer."


DELETE FROM gossip_menu WHERE entry=9512;
DELETE FROM npc_text WHERE id=12811;
DELETE FROM gossip_menu_option WHERE menu_id=9512 AND id=0;

-- From gossip_menu #9517 with text :12822 You know of the Spirits of Competition, yes?$B$BEvery two years they draw close to the mortal realm. During such times, members of both the Alliance and Horde wear Competitor's Tabards into the Battlegrounds to honor the spirits, seeking to defeat one another and earn their favor.$B$BI stockpile souvenirs from such turbulent times. If you've learned the proper word, I might be convinced to part with one...
-- Used by source: unknown
-- option #0 "I would like to enter the secret code to receive my Competitor's Souvenir."


DELETE FROM gossip_menu WHERE entry=9517;
DELETE FROM npc_text WHERE id=12822;
DELETE FROM gossip_menu_option WHERE menu_id=9517 AND id=0;

-- From gossip_menu #9519 with text :12824 Krenna must doubt my abilities. While our elite warriors march out to face the Alliance and their trapper allies, or wreak havoc among the trolls, I've been assigned to mop up those pesky Dragonflayer vrykul.$B$BPerhaps if we combine our efforts, we can both prove ourselves in the conqueror's sight.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9519;
DELETE FROM npc_text WHERE id=12824;

-- From gossip_menu #9520 with text :12825 Welcome to Amberpine Lodge, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9520;
DELETE FROM npc_text WHERE id=12825;

-- From gossip_menu #9529 with text :12842 What? Can't you see that I'm busy here?$B$BYou think this transmatter is going to fix itself?!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9529;
DELETE FROM npc_text WHERE id=12842;

-- From gossip_menu #9530 with text :12843 Highlord Bolvar Fordragon fights for us all, newcomer. Were it not for him, Arthas would be sitting upon the throne of Stormwind right this very moment.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9530;
DELETE FROM npc_text WHERE id=12843;

-- From gossip_menu #9542 with text :12857 The Argent Crusade is here in force, friend. We weren't going to let you have all the glory!
-- Used by source: unknown
-- option #0 "Orik, I need another murkweed elixir."


DELETE FROM gossip_menu WHERE entry=9542;
DELETE FROM npc_text WHERE id=12857;
DELETE FROM gossip_menu_option WHERE menu_id=9542 AND id=0;

-- From gossip_menu #9543 with text :12858 Those damned peasants need to work faster! I wanna get back home to Ironforge. I surely do miss my wife and children. 
-- Used by source: unknown
-- option #0 "I'm sure Arthas will be back any day now, soldier. Keep your chin up!"


DELETE FROM gossip_menu WHERE entry=9543;
DELETE FROM npc_text WHERE id=12858;
DELETE FROM gossip_menu_option WHERE menu_id=9543 AND id=0;

-- From gossip_menu #9544 with text :12859 When we saw that the ships had been burned by those savage beasts our hearts sank. Never have I felt so helpless...
-- Used by source: unknown
-- option #0 "I must be going now, soldier. Stay vigilant!"


DELETE FROM gossip_menu WHERE entry=9544;
DELETE FROM npc_text WHERE id=12859;
DELETE FROM gossip_menu_option WHERE menu_id=9544 AND id=0;

-- From gossip_menu #9545 with text :12860 <Forgotten footman shakes his head.>$B$BWe can't keep this up, friend. If Prince Arthas doesn't return soon we will all perish.
-- Used by source: unknown
-- option #0 "I'm sure everything will work out, footman."


DELETE FROM gossip_menu WHERE entry=9545;
DELETE FROM npc_text WHERE id=12860;
DELETE FROM gossip_menu_option WHERE menu_id=9545 AND id=0;

-- From gossip_menu #9546 with text :12862 Where can I send ya to today?
-- Used by source: unknown
-- option #0 "Where would you like to fly to?"
-- option #1 "Greer, I need a gryphon to ride and some bombs to drop on New Agamand!"
-- option #2 "I need to get to Wintergarde Keep fast!"


DELETE FROM gossip_menu WHERE entry=9546;
DELETE FROM npc_text WHERE id=12862;
DELETE FROM gossip_menu_option WHERE menu_id=9546 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9546 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9546 AND id=2;

-- From gossip_menu #9549 with text :13155 I'm sorry, our brews are exclusive to members of the "Brew of the Month Club."
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9549;
DELETE FROM npc_text WHERE id=13155;

-- From gossip_menu #9550 with text :12865 Howdy, $r!$b$bIf you're lookin' for a shredder to ride, you'll need to head on up into the hills.$b$bThis one's out of commission.
-- Used by source: unknown
-- option #0 "Why would I want to ride a shredder?" submenu #9555


DELETE FROM gossip_menu WHERE entry=9550;
DELETE FROM npc_text WHERE id=12865;
DELETE FROM gossip_menu_option WHERE menu_id=9550 AND id=0;
DELETE FROM gossip_menu WHERE entry=9555;
DELETE FROM npc_text WHERE id=12868;
DELETE FROM gossip_menu_option WHERE menu_id=9555 AND id=0;
DELETE FROM gossip_menu WHERE entry=9557;
DELETE FROM npc_text WHERE id=12871;

-- From gossip_menu #9558 with text :12873 With enough tokens you can join the "Brew of the Month" club.  Being in the Brew of the Month club is like having Brewfest all year round!$b$bEvery month you will receive mail with a new brew to try out.  If you like that brew, you can go to the Stonefire Tavern in Ironforge and buy more from the vendors there.  
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9558;
DELETE FROM npc_text WHERE id=12873;
DELETE FROM gossip_menu_option WHERE menu_id=9558 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9558 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9558 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9558 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9558 AND id=4;

-- From gossip_menu #9559 with text :12876 With enough tokens you can join the "Brew of the Month" club.  Being in the Brew of the Month club is like having Brewfest all year round!$b$bEvery month you will receive mail with a new brew to try out.  If you like that brew, you can go to the Darkbriar Lodge in Orgrimmar's Valley of Spirits and buy more from the vendors there.  
-- Used by source: unknown
-- option #0 "The Tapping of the Keg"
-- option #1 "Food & Drink"
-- option #2 "Tokens & Souvenirs"
-- option #3 "Ram Racing"
-- option #4 "Dark Iron Dwarf Attacks"


DELETE FROM gossip_menu WHERE entry=9559;
DELETE FROM npc_text WHERE id=12876;
DELETE FROM gossip_menu_option WHERE menu_id=9559 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9559 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9559 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9559 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9559 AND id=4;

-- From gossip_menu #9560 with text :12878 You haven't heard of the "Brew of the Month" club?  Those gals love to party.  If they had their way, Brewfest would never end!  Sometimes last year, it felt like it didn't.$b$bBut now they've figured, the best way to keep the Brewfest spirit going would be to allow people to join their club.$b$bFor a small fee, just a few tokens, you can join!  You get brew mailed to you every month and a chance to buy that same brew if you like it.  It's cutting edge stuff and a way to make sure that Brewfest's spirit is never really gone.
-- Used by source: unknown
-- option #0 "I have another question."


DELETE FROM gossip_menu WHERE entry=9560;
DELETE FROM npc_text WHERE id=12878;
DELETE FROM gossip_menu_option WHERE menu_id=9560 AND id=0;

-- From gossip_menu #9561 with text :12880 You haven't heard of the "Brew of the Month" club?  It's a bunch of really cute guys that want to celebrate Brewfest all year long!  They tried to bring Brewfest back in the past, but it never lasted very long.$b$bOnce you join the club you get mailed a different brew every month!  If you like that brew, you can talk to the vendors in Ironforge to get more brew.$b$bI think you are cute enough to join the club.  You give me a few prize tokens and I'll give you the forms.  Then maybe we can celebrate Brewfest together, all year round!
-- Used by source: unknown
-- option #0 "I have another question."


DELETE FROM gossip_menu WHERE entry=9561;
DELETE FROM npc_text WHERE id=12880;
DELETE FROM gossip_menu_option WHERE menu_id=9561 AND id=0;

-- From gossip_menu #9562 with text :12881 The dead rise from our very own crypt!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9562;
DELETE FROM npc_text WHERE id=12881;

-- From gossip_menu #9563 with text :12887 Queen Alexstrasza has placed me in charge of the defense of Wyrmrest Temple.$B$BAs you know, Malygos had his forces destroy a nearby ley line anchor. The forces of the dragonflight then redirected that power to the Azure Dragonshrine.$B$BThe blue dragons are using that power to strengthen themselves; so much so that they dare attack the temple itself! They're starting to win.$B$BAre you here to help us, $r?
-- Used by source: unknown
-- option #0 "My lord, I need to get to the top of the temple."
-- option #1 "Can I get a ride back to ground level, Lord Afrasastrasz?" submenu #9513


DELETE FROM gossip_menu WHERE entry=9563;
DELETE FROM npc_text WHERE id=12887;
DELETE FROM gossip_menu_option WHERE menu_id=9563 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9563 AND id=1;
DELETE FROM gossip_menu WHERE entry=9513;
DELETE FROM npc_text WHERE id=12812;

-- From gossip_menu #9570 with text :12904 The gryphons of the Northrend peaks are the most resilient of the species.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9570;
DELETE FROM npc_text WHERE id=12904;

-- From gossip_menu #9572 with text :12909 Hello. Squire Walter and I are responsible for taking care of Old Blanchy here, along with the rest of the mounts.
-- Used by source: unknown
-- option #0 "I'd like to use the stables."


DELETE FROM gossip_menu WHERE entry=9572;
DELETE FROM npc_text WHERE id=12909;
DELETE FROM gossip_menu_option WHERE menu_id=9572 AND id=0;

-- From gossip_menu #9574 with text :12917 Belgaristrasz speaks the truth; time is running out!$B$BI can grant you the power to call upon a drake from the Bronze Fight.  Speak to Belgaristrasz or Verdisa if you prefer to draw on the power of the Red or the Green.
-- Used by source: unknown
-- option #0 "What should we do next?"
-- option #1 "I want to fly on the wings of the Bronze Flight."
-- option #2 "I want to exchange my Emerald Essence for Amber Essence."
-- option #4 "What abilities do Amber Drakes have?"
-- option #5 "What is the ultimate ability of the Amber Drake?"


DELETE FROM gossip_menu WHERE entry=9574;
DELETE FROM npc_text WHERE id=12917;
DELETE FROM gossip_menu_option WHERE menu_id=9574 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9574 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9574 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9574 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=9574 AND id=5;

-- From gossip_menu #9580 with text :12930 Hrm? Oh. Pardon me if I seem distracted; I fear for the men of Northwatch. I should have sent some of my students to aid them...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9580;
DELETE FROM npc_text WHERE id=12930;

-- From gossip_menu #9582 with text :12934 Brewfest has undergone some changes since its first year.  We now issue Brewfest tokens instead of tickets.  If you have old tickets, I can exchange them for you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9582;
DELETE FROM npc_text WHERE id=12934;

-- From gossip_menu #9587 with text :12940 Thel'zan needs to die, if only to stop the incessant yammering!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9587;
DELETE FROM npc_text WHERE id=12940;

-- From gossip_menu #9588 with text :12941 Official postings by Wintergarde citizenry and officials.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9588;
DELETE FROM npc_text WHERE id=12941;

-- From gossip_menu #9595 with text :12950 
-- Used by source: unknown
-- option #0 "So how does the Infinite Dragonflight plan to interfere?"


DELETE FROM gossip_menu WHERE entry=9595;
DELETE FROM npc_text WHERE id=12950;
DELETE FROM gossip_menu_option WHERE menu_id=9595 AND id=0;

-- From gossip_menu #9598 with text :12954 In years past, the warlock Nekros Skullcrusher abused a powerful artifact to enslave Alexstrasza and much of the red dragonflight.  Zuluhed and Nekros are dead, but the debt we owe to the reds is far from repaid.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9598;
DELETE FROM npc_text WHERE id=12954;

-- From gossip_menu #9599 with text :12955 The Alliance has maintained this remote lodge for a while.  It's seen some use by our hunters and woodsmen.$B$BWith the war going on, you'd better believe the military is in charge here now, though.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9599;
DELETE FROM npc_text WHERE id=12955;

-- From gossip_menu #9603 with text :12965 Awaiting orders!
-- Used by source: unknown
-- option #0 "Wyrmbait, eh? Welp, go fetch us Icestorm!"


DELETE FROM gossip_menu WHERE entry=9603;
DELETE FROM npc_text WHERE id=12965;
DELETE FROM gossip_menu_option WHERE menu_id=9603 AND id=0;

-- From gossip_menu #9604 with text :12966 Welcome to Granite Springs, friend.$b$bIf you manage to catch any of these ice trolls alive, be sure to let me know. We're paying well for 'em.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9604;
DELETE FROM npc_text WHERE id=12966;

-- From gossip_menu #9615 with text :12998 <Drakuru extends his bleeding hand through the cage and looks at you with anticipation.>
-- Used by source: unknown
-- option #0 "Shake Drakuru's outstretched hand."
-- option #1 "I need another of your elixirs, Drakuru."


DELETE FROM gossip_menu WHERE entry=9615;
DELETE FROM npc_text WHERE id=12998;
DELETE FROM gossip_menu_option WHERE menu_id=9615 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9615 AND id=1;

-- From gossip_menu #9617 with text :13003 It is from this throne that I issue the command of Hellscream. His word is life and his word is death.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9617;
DELETE FROM npc_text WHERE id=13003;

-- From gossip_menu #9618 with text :13004 
-- Used by source: unknown
-- option #0 "Admiral Keller sent me, Emilune. Please send me to Westguard Keep!"


DELETE FROM gossip_menu WHERE entry=9618;
DELETE FROM npc_text WHERE id=13004;
DELETE FROM gossip_menu_option WHERE menu_id=9618 AND id=0;

-- From gossip_menu #9621 with text :13009 
-- Used by source: unknown
-- option #0 "Harry said I could take his bomber to Bael'gun's. I'm ready to go!"


DELETE FROM gossip_menu WHERE entry=9621;
DELETE FROM npc_text WHERE id=13009;
DELETE FROM gossip_menu_option WHERE menu_id=9621 AND id=0;

-- From gossip_menu #9628 with text :13025 You are welcome in Wyrmrest Temple, $r. Forgive the commotion outside; with Malygos' recent acts, we have found ourselves besieged. You may still rest here under our protection should you need it.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=9628;
DELETE FROM npc_text WHERE id=13025;
DELETE FROM gossip_menu_option WHERE menu_id=9628 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9628 AND id=2;

-- From gossip_menu #9636 with text :13043 Welcome to Argent Stand, $c.$b$bMake yourself at home, but don't get too comfortable. We're not out of the woods yet - far from it.$b$bIf we're going to make it out of here in one piece, everyone's going to have to do their share... including you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9636;
DELETE FROM npc_text WHERE id=13043;

-- From gossip_menu #9637 with text :13044 The Dread Captain DeMeza has pulled into Booty Bay and declared it Pirate's Day!$B$BShe's making anyone who's brave enough to share a drink with her an honorary crewmember.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9637;
DELETE FROM npc_text WHERE id=13044;

-- From gossip_menu #9639 with text :13046 The land is defiled by the presence of the Scourge on one side and the rituals of the Drakkari on the other.$B$BWe stand resolute betwixt the two.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9639;
DELETE FROM npc_text WHERE id=13046;

-- From gossip_menu #9641 with text :13048 Little hairier out here than you expected, $r?$b$bCan't say I'm surprised. I hear that from most everyone who makes it this far.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9641;
DELETE FROM npc_text WHERE id=13048;

-- From gossip_menu #9642 with text :13050 I am Ubungo. I represent the Zandalar tribe.$B$BBad things are afoot, $r. The Drakkari are going to be their own doom with what they're up to.$B$BSome trolls never learn.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9642;
DELETE FROM npc_text WHERE id=13050;

-- From gossip_menu #9649 with text :13068 Truly, the horrors here surpass those we've endured in the Plaguelands.$b$bThe Scourge are more powerful now than ever before.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9649;
DELETE FROM npc_text WHERE id=13068;

-- From gossip_menu #9650 with text :13069 I can't take it anymore....$b$bThey kill you, then eat you! And that's if you're lucky!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9650;
DELETE FROM npc_text WHERE id=13069;

-- From gossip_menu #9653 with text :13076 Are you ready to do whatever must be done to protect Lordaeron?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9653;
DELETE FROM npc_text WHERE id=13076;

-- From gossip_menu #9664 with text :13092 What are you looking down at?$B$BI'll have you know that the Pestlepots are a storied family with a long tradition of pestling.$B$BYes, that's a word!$B$BThere are no finer alchemists in all of Azeroth, or anywhere else for that matter, I can assure you!$B$BI may carry the title of apprentice at the moment, but my skill is second to none! One must endure such humilities though to get places in life.$B$BOf course, maybe you're just here to help me?$B$B<The diminuitive gnome grins arrogantly.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9664;
DELETE FROM npc_text WHERE id=13092;

-- From gossip_menu #9666 with text :13094 Hey, can't you see I'm busy here?!$B$BYou wanna watch the show? The band plays every night at eight.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9666;
DELETE FROM npc_text WHERE id=13094;

-- From gossip_menu #9669 with text :13100 Well now, I'm surprised to see other adventurers in a place such as this! If I'd known you were comin' I woulda tagged along with ye instead o' flying this infernal gnomish contraption. Now that you're here through, ye can help me get to the Tribunal! If my research theories about these halls is correct, information pertainin' to the creation o' the entire dwarven race lies within!
-- Used by source: unknown
-- option #0 "Brann, it would be our honor!"


DELETE FROM gossip_menu WHERE entry=9669;
DELETE FROM npc_text WHERE id=13100;
DELETE FROM gossip_menu_option WHERE menu_id=9669 AND id=0;

-- From gossip_menu #9670 with text :13101 Gaze upon it comrades! What a wondrous sight indeed! If only my dear brothers could be here with me at this moment in time. They would not believe what a discovery this will be! The Tribunal are the librarians for the Titan discs, which are stored in this very room. Look! You can see the discs beneath the floor! We must hurry, the greatest discovery of Dwarven kind is just up ahead!
-- Used by source: unknown
-- option #0 "Let's move Brann, enough of the history lesson!"


DELETE FROM gossip_menu WHERE entry=9670;
DELETE FROM npc_text WHERE id=13101;
DELETE FROM gossip_menu_option WHERE menu_id=9670 AND id=0;

-- From gossip_menu #9672 with text :13117 The last thing that we needed was for the crazy Drakkari trolls to shoot down a Scourge necropolis in our backyard.$B$BHow did they manage to do that?!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9672;
DELETE FROM npc_text WHERE id=13117;

-- From gossip_menu #9677 with text :13124 <The Injured Rainspeaker Oracle groans in pain.>
-- Used by source: unknown
-- option #0 "<Reach down and pull the Injured Rainspeaker Oracle to its feet.>"


DELETE FROM gossip_menu WHERE entry=9677;
DELETE FROM npc_text WHERE id=13124;
DELETE FROM gossip_menu_option WHERE menu_id=9677 AND id=0;

-- From gossip_menu #9678 with text :13137 Disgusting big-tongue friend, you no belong here. Go from Frenzyheart land or I call magic stuffs to kill you!
-- Used by source: unknown
-- option #0 "Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."


DELETE FROM gossip_menu WHERE entry=9678;
DELETE FROM npc_text WHERE id=13137;
DELETE FROM gossip_menu_option WHERE menu_id=9678 AND id=0;

-- From gossip_menu #9679 with text :13124 <The Injured Rainspeaker Oracle groans in pain.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9679;
DELETE FROM npc_text WHERE id=13124;

-- From gossip_menu #9680 with text :13125 You must be one of the brave soldiers who have been fighting the Scourge forces of Mal'Ganis. Well done.
-- Used by source: unknown
-- option #0 "We're only doing what is best for Lordaeron, your Highness."


DELETE FROM gossip_menu WHERE entry=9680;
DELETE FROM npc_text WHERE id=13125;
DELETE FROM gossip_menu_option WHERE menu_id=9680 AND id=0;

-- From gossip_menu #9681 with text :13126 Indeed. Mal'Ganis is commanding the Scourge from Crusaders' Square, but the gates leading there from the city entrance are closed. Little does he know that a small force can still reach the Square by moving through the Town Hall. Will you join me in this attack?
-- Used by source: unknown
-- option #0 "Lead the way, Prince Arthas."


DELETE FROM gossip_menu WHERE entry=9681;
DELETE FROM npc_text WHERE id=13126;
DELETE FROM gossip_menu_option WHERE menu_id=9681 AND id=0;

-- From gossip_menu #9683 with text :13132 
-- Used by source: unknown
-- option #0 "Do you think I could take a ride on one of those flying machines?"
-- option #1 "Kara, I need to be flown out to the Dens of Dying to find Bixie."


DELETE FROM gossip_menu WHERE entry=9683;
DELETE FROM npc_text WHERE id=13132;
DELETE FROM gossip_menu_option WHERE menu_id=9683 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9683 AND id=1;

-- From gossip_menu #9684 with text :13124 <The Injured Rainspeaker Oracle groans in pain.>
-- Used by source: unknown
-- option #0 "I am ready to travel to your village now."


DELETE FROM gossip_menu WHERE entry=9684;
DELETE FROM npc_text WHERE id=13124;
DELETE FROM gossip_menu_option WHERE menu_id=9684 AND id=0;

-- From gossip_menu #9686 with text :13138 Frenzyheart never be friends of big-tongues. You dumb to come back here traitor thing!
-- Used by source: unknown
-- option #0 "No no... I had no intentions of betraying your people. I was only defending myself. It was all a misunderstanding."


DELETE FROM gossip_menu WHERE entry=9686;
DELETE FROM npc_text WHERE id=13138;
DELETE FROM gossip_menu_option WHERE menu_id=9686 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=9686;

-- From gossip_menu #9687 with text :13139 
-- Used by source: unknown
-- option #0 "Great and powerful Har'koa, please call for one of your children that it might stealthily carry me into the Altar of Quetz'lun."


DELETE FROM gossip_menu WHERE entry=9687;
DELETE FROM npc_text WHERE id=13139;
DELETE FROM gossip_menu_option WHERE menu_id=9687 AND id=0;

-- From gossip_menu #9691 with text :13172 
-- Used by source: unknown
-- option #0 "I seek training, Lady Alistra."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=9691;
DELETE FROM npc_text WHERE id=13172;
DELETE FROM gossip_menu_option WHERE menu_id=9691 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9691 AND id=1;

-- From gossip_menu #9692 with text :13173 The blood is life... And as easily as the ebb and flow of blood is controlled, so too is the life of our enemies.
-- Used by source: unknown
-- option #0 "I seek training, Lord Thorval."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=9692;
DELETE FROM npc_text WHERE id=13173;
DELETE FROM gossip_menu_option WHERE menu_id=9692 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9692 AND id=1;

-- From gossip_menu #9693 with text :13174 We are what the cold wind carries. The icy chill of despair... The cold embrace of death...
-- Used by source: unknown
-- option #0 "I seek training, Amal'thazad."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=9693;
DELETE FROM npc_text WHERE id=13174;
DELETE FROM gossip_menu_option WHERE menu_id=9693 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9693 AND id=1;

-- From gossip_menu #9694 with text :13176 It saddens all of us to see the Drakkari destroying themselves this way.$B$BThe power that they gain from killing the natural gods of the land is transitory.$B$BWhat is gained in the short run will be lost to them for all eternity.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9694;
DELETE FROM npc_text WHERE id=13176;

-- From gossip_menu #9696 with text :13179 This isn't getting any easier. Stratholme is burning. We must brave the Scourge and the flames to reach Mal'Ganis. Prepare yourselves.
-- Used by source: unknown
-- option #0 "For Lordaeron!"


DELETE FROM gossip_menu WHERE entry=9696;
DELETE FROM npc_text WHERE id=13179;
DELETE FROM gossip_menu_option WHERE menu_id=9696 AND id=0;

-- From gossip_menu #9698 with text :13234 Ahunae's axe will be the end of the Drakkari.$B$BYou be takin' care of any that get past my axe!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9698;
DELETE FROM npc_text WHERE id=13234;

-- From gossip_menu #9701 with text :13256 Amber Drakes excel at dealing damage by manipulating time to their advantage.$B$BUsing Shock Lance, they can disrupt the flow of time around an enemy target, instantly damaging it.  The power of this effect is dramatically increased by Shock Charges on the target.$B$BWhen threatened, an Amber Drake can briefly stop the flow of time for its enemies.  This time disruption stores a large amount of Shock Energy on affected targets in the form of Shock Charges.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9701;
DELETE FROM npc_text WHERE id=13256;

-- From gossip_menu #9702 with text :13257 An Amber Drake at full power can perform Temporal Rift, which creates a bubble of compressed time around an enemy.  Spells that pass through the bubble deal double damage and can generate Shock Charges on the target.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9702;
DELETE FROM npc_text WHERE id=13257;

-- From gossip_menu #9706 with text :13262 What is it that you need from Corvus?
-- Used by source: unknown
-- option #0 "I require repairs and supplies, Corvus."


DELETE FROM gossip_menu WHERE entry=9706;
DELETE FROM npc_text WHERE id=13262;
DELETE FROM gossip_menu_option WHERE menu_id=9706 AND id=0;

-- From gossip_menu #9708 with text :13267 Malygos' most powerful agents protect the rings above.  Alone, you cannot hope to defeat them.  We can grant you power to call upon drakes from our dragon flights.  Mounted on the back of a drake, you will be able to fly here in the Oculus and command powerful dragon magic.
-- Used by source: unknown
-- option #0 "So where do we go from here?"


DELETE FROM gossip_menu WHERE entry=9708;
DELETE FROM npc_text WHERE id=13267;
DELETE FROM gossip_menu_option WHERE menu_id=9708 AND id=0;

-- From gossip_menu #9709 with text :13270 None know the Scourge better than we death knights.$b$bBelieve me, $r, there's nothing more effective than fighting fire with fire....
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9709;
DELETE FROM npc_text WHERE id=13270;

-- From gossip_menu #9710 with text :13282 Though my compatriots would have you take an active role in what is transpiring in Zul'Drak, we Zandalari are primarily here to witness what is occurring and to chronicle the end of an empire.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9710;
DELETE FROM npc_text WHERE id=13282;


-- From gossip_menu #9712 with text :13287 Are you ready to face Mal'Ganis with me?
-- Used by source: unknown
-- option #0 "I'm ready to battle the dreadlord, sire."


DELETE FROM gossip_menu WHERE entry=9712;
DELETE FROM npc_text WHERE id=13287;
DELETE FROM gossip_menu_option WHERE menu_id=9712 AND id=0;

-- From gossip_menu #9713 with text :13288 Everything is set up and ready to go.
-- Used by source: unknown
-- option #0 "I'm ready to start the distillation, uh, Tipsy."


DELETE FROM gossip_menu WHERE entry=9713;
DELETE FROM npc_text WHERE id=13288;
DELETE FROM gossip_menu_option WHERE menu_id=9713 AND id=0;

-- From gossip_menu #9715 with text :13291 The Drakkari are keeping my body close to death up in the altar building. They cannot see my spirit though.$B$BWe must work together to prevent them from getting my power.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9715;
DELETE FROM npc_text WHERE id=13291;

-- From gossip_menu #9717 with text :13300 Awww... look at da purty lil' gool.$b$bJump, lil' gool! Jump!$b$bHa, ha, ha.... Attsa guud lil' gool.
-- Used by source: unknown
-- option #0 "What are you hiding under that fold of flesh?"


DELETE FROM gossip_menu WHERE entry=9717;
DELETE FROM npc_text WHERE id=13300;
DELETE FROM gossip_menu_option WHERE menu_id=9717 AND id=0;

-- From gossip_menu #9721 with text :13304 
-- Used by source: unknown
-- option #0 "You can trust me.  I am no friend of the Lich King's." submenu #9722


DELETE FROM gossip_menu WHERE entry=9721;
DELETE FROM npc_text WHERE id=13304;
DELETE FROM gossip_menu_option WHERE menu_id=9721 AND id=0;
DELETE FROM gossip_menu WHERE entry=9722;
DELETE FROM npc_text WHERE id=13305;

-- From gossip_menu #9723 with text :13306 This outpost is a cog-free zone. Persons employing cogs in the construction of mechanical devices will be subject to unrelenting mockery.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9723;
DELETE FROM npc_text WHERE id=13306;

-- From gossip_menu #9728 with text :13318 The mosswalker looks severely injured.
-- Used by source: unknown
-- option #0 "<Check for a pulse...>"


DELETE FROM gossip_menu WHERE entry=9728;
DELETE FROM npc_text WHERE id=13318;
DELETE FROM gossip_menu_option WHERE menu_id=9728 AND id=0;

-- From gossip_menu #9731 with text :13325 Ya be on da path, mortal....$b$bEndure, and ya be gettin' great power!
-- Used by source: unknown
-- option #0 "I am ready to accompany you, Drakuru."
-- option #4 "The Drakkari Chieftains have been captured! What more would you have me do?" submenu #10406


DELETE FROM gossip_menu WHERE entry=9731;
DELETE FROM npc_text WHERE id=13325;
DELETE FROM gossip_menu_option WHERE menu_id=9731 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9731 AND id=4;
DELETE FROM gossip_menu WHERE entry=10406;
DELETE FROM npc_text WHERE id=14444;

-- From gossip_menu #9732 with text :13326 Mphmm rmphhimm rrhumghph?
-- Used by source: unknown
-- option #0 "Uhh, can you send me on the tour of Zul'Drak?"


DELETE FROM gossip_menu WHERE entry=9732;
DELETE FROM npc_text WHERE id=13326;
DELETE FROM gossip_menu_option WHERE menu_id=9732 AND id=0;

-- From gossip_menu #9739 with text :13355 We will take everything from them, death knight.
-- Used by source: unknown
-- option #0 "Salanar, I must return to the Realm of Shadows."


DELETE FROM gossip_menu WHERE entry=9739;
DELETE FROM npc_text WHERE id=13355;
DELETE FROM gossip_menu_option WHERE menu_id=9739 AND id=0;

-- From gossip_menu #9740 with text :13359 Frenzyheart will take land for own. Big-tongues will leave or we kill them good.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9740;
DELETE FROM npc_text WHERE id=13359;

-- From gossip_menu #9741 with text :13360 Frenzyheart can be vicious, but we good people. You see if you stay long, we friends with smart and strong just fine.$B$BWe just don't like dumb.
-- Used by source: unknown
-- option #1 "I need to find Goregek, do you have his shackles?"
-- option #3 "I need to find Dajik, do you have his worn chalk?"
-- option #5 "I need to find Zepik, do you have his hunting horn?"


DELETE FROM gossip_menu WHERE entry=9741;
DELETE FROM npc_text WHERE id=13360;
DELETE FROM gossip_menu_option WHERE menu_id=9741 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9741 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9741 AND id=5;

-- From gossip_menu #9742 with text :13361 This the Great Rain Stone. We keep it safe and bring it shinies and it take care of us.$B$BHave more shinies for stone maybe?
-- Used by source: unknown
-- option #1 "I need to find Lafoo, do you have his bug bag?"
-- option #2 "I need to find Jaloot, do you have his favorite crystal?"
-- option #3 "I need to find Jaloot, do you have his favorite crystal?"
-- option #5 "I need to find Moodle, do you have his stress ball?"


DELETE FROM gossip_menu WHERE entry=9742;
DELETE FROM npc_text WHERE id=13361;
DELETE FROM gossip_menu_option WHERE menu_id=9742 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9742 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9742 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9742 AND id=5;

-- From gossip_menu #9743 with text :13362 What I not have in height I make up for in magics. I take care of Great Mist Stone good... most of time anyway.$B$BDumb puppy-men.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9743;
DELETE FROM npc_text WHERE id=13362;

-- From gossip_menu #9744 with text :13363 Puppy-men been attacking us for days now. Great Lightning Stone is still safe though.$B$BSoo-holu come to help us like many times before... puppy-men not stand a chance.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9744;
DELETE FROM npc_text WHERE id=13363;

-- From gossip_menu #9746 with text :13365 Hello, dryskin.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9746;
DELETE FROM npc_text WHERE id=13365;

-- From gossip_menu #9754 with text :13395 It might look like an ordinary pumpkin patch now, but once the plague cauldron is placed it will become a source of disease, rot and plague!
-- Used by source: unknown
-- option #0 "Noth, where is Heigan?"


DELETE FROM gossip_menu WHERE entry=9754;
DELETE FROM npc_text WHERE id=13395;
DELETE FROM gossip_menu_option WHERE menu_id=9754 AND id=0;

-- From gossip_menu #9758 with text :13419 Crusaders...$B$B<Rivendare shakes his head.>$B$BI am convinced that they are a unique lot amongst the humans. My theory is that they lack higher brain function, unable to logically assess a situation and calculate an outcome. One has only to make mention of the Light to get them frothing and battle ready - at which point they will rush headlong into any engagement with complete disregard for their own well being.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9758;
DELETE FROM npc_text WHERE id=13419;

-- From gossip_menu #9760 with text :13425 I'm badly injured, but I'll do what I can to help. Try and stay inside of my anti-magic barrier or the acolytes' magic will tear you apart.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9760;
DELETE FROM npc_text WHERE id=13425;

-- From gossip_menu #9761 with text :13426 What can I do for you, $r?
-- Used by source: unknown
-- option #0 "I require water breathing, Garren."


DELETE FROM gossip_menu WHERE entry=9761;
DELETE FROM npc_text WHERE id=13426;
DELETE FROM gossip_menu_option WHERE menu_id=9761 AND id=0;

-- From gossip_menu #9762 with text :13430 <Koltira groans.>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9762;
DELETE FROM npc_text WHERE id=13430;

-- From gossip_menu #9764 with text :13432 The Scarlet Crusade will serve a new master - in death...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9764;
DELETE FROM npc_text WHERE id=13432;

-- From gossip_menu #9765 with text :13433 Are you challenging me, $g brother:sister;?
-- Used by source: unknown
-- option #0 "I challenge you, death knight!"


DELETE FROM gossip_menu WHERE entry=9765;
DELETE FROM npc_text WHERE id=13433;
DELETE FROM gossip_menu_option WHERE menu_id=9765 AND id=0;

-- From gossip_menu #9767 with text :13439 Trying to reach Auberdine or Valiance Keep?  You can find Stormwind Harbor if you head through the Canals, between the Cathedral District and the Park.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9767;
DELETE FROM npc_text WHERE id=13439;

-- From gossip_menu #9768 with text :13441 Greetings, $c. I trust that you bring me good news concerning the Worldwide Invitational event? If you are, then surely that means you were given a secret code to tell me. In return for your code I will give you a gift, Tyrael's Hilt.$B$BJust whisper it in my ear when you are ready.
-- Used by source: unknown
-- option #0 "I would like to whisper my secret code to you to receive Tyrael's Hilt."


DELETE FROM gossip_menu WHERE entry=9768;
DELETE FROM npc_text WHERE id=13441;
DELETE FROM gossip_menu_option WHERE menu_id=9768 AND id=0;

-- From gossip_menu #9769 with text :13444 We are the chosen ones, $N. Death knights of the Scourge, sent to sow the seeds of the master's destruction.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9769;
DELETE FROM npc_text WHERE id=13444;

-- From gossip_menu #9775 with text :13452 Great battle still going on at Sparktouched Haven.$B$BMaybe you find time to help sometime?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9775;
DELETE FROM npc_text WHERE id=13452;

-- From gossip_menu #9776 with text :13454 Greetings, $c!  Stormwind Harbor is quite a sight to behold.  It's even better seen from the air.  How would you like a bird's eye view of the harbor?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9776;
DELETE FROM npc_text WHERE id=13454;

-- From gossip_menu #9778 with text :13457 You have time?  Soo-nee teach you good song!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9778;
DELETE FROM npc_text WHERE id=13457;

-- From gossip_menu #9780 with text :13458 Greetings, $c.
-- Used by source: unknown
-- option #0 "I am ready to be teleported to Dalaran."


DELETE FROM gossip_menu WHERE entry=9780;
DELETE FROM npc_text WHERE id=13458;
DELETE FROM gossip_menu_option WHERE menu_id=9780 AND id=0;

-- From gossip_menu #9781 with text :13459 Welcome, friend, to the barbershop! Come for a cut? A coloring? Something else, perhaps?$B$BWe can groom facial hair, perform piercings, ink night elf tattoos, and even reshape draenei horns and tendrils!$B$BHave a seat and we'll get right to work. You're only a few coins away from a new, more attractive you...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9781;
DELETE FROM npc_text WHERE id=13459;

-- From gossip_menu #9782 with text :13462 Grab a pint!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9782;
DELETE FROM npc_text WHERE id=13462;

-- From gossip_menu #9783 with text :7778 Where would you like to fly to?
-- Used by source: unknown
-- option #0 "Show me where I can fly."


DELETE FROM gossip_menu WHERE entry=9783;
DELETE FROM gossip_menu_option WHERE menu_id=9783 AND id=0;

-- From gossip_menu #9784 with text :7778 Where would you like to fly to?
-- Used by source: unknown
-- option #0 "Show me where I can fly."


DELETE FROM gossip_menu WHERE entry=9784;
DELETE FROM gossip_menu_option WHERE menu_id=9784 AND id=0;

-- From gossip_menu #9786 with text :13466 Varos Cloudstrider and his ring guardians protect the second ring.  Your drakes are more than a match for the Ring Guardians, but Varos stands behind an impenetrable shield created from the energy of the Oculus itself.  Ten Centrifuge Constructs power the shield from the ring and platforms above.  Destroy them and Varos will be vulnerable.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9786;
DELETE FROM npc_text WHERE id=13466;

-- From gossip_menu #9792 with text :13174 We are what the cold wind carries. The icy chill of despair... The cold embrace of death...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9792;
DELETE FROM npc_text WHERE id=13174;

-- From gossip_menu #9794 with text :13173 The blood is life... And as easily as the ebb and flow of blood is controlled, so too is the life of our enemies.
-- Used by source: unknown
-- option #0 "I seek training, Lord Thorval."
-- option #1 "I wish to unlearn my talents." submenu #4463


DELETE FROM gossip_menu WHERE entry=9794;
DELETE FROM npc_text WHERE id=13173;
DELETE FROM gossip_menu_option WHERE menu_id=9794 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9794 AND id=1;

-- From gossip_menu #9795 with text :13482 Here is where I sacrificed everything to free my father. Now I come to destroy it...
-- Used by source: unknown
-- option #0 "I am ready, Highlord. Let the siege of Light's Hope begin!"


DELETE FROM gossip_menu WHERE entry=9795;
DELETE FROM npc_text WHERE id=13482;
DELETE FROM gossip_menu_option WHERE menu_id=9795 AND id=0;

-- From gossip_menu #9799 with text :13504 Look sharp, $r.$b$bIt's life or death out here!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9799;
DELETE FROM npc_text WHERE id=13504;

-- From gossip_menu #9804 with text :13517 What can Korg do for you today?
-- Used by source: unknown
-- option #0 "Show me what you have for sale."


DELETE FROM gossip_menu WHERE entry=9804;
DELETE FROM npc_text WHERE id=13517;
DELETE FROM gossip_menu_option WHERE menu_id=9804 AND id=0;

-- From gossip_menu #9821 with text :13557 Greetings, $c. I can help stable your pets or assist you in recovering lost companions.
-- Used by source: unknown
-- option #0 "I'd like to stable my pet here."
-- option #1 "I've lost Miniwing."


DELETE FROM gossip_menu WHERE entry=9821;
DELETE FROM npc_text WHERE id=13557;
DELETE FROM gossip_menu_option WHERE menu_id=9821 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9821 AND id=1;

-- From gossip_menu #9822 with text :13565 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9822;
DELETE FROM npc_text WHERE id=13565;

-- From gossip_menu #9823 with text :13572 Hey $c, if you've lost a key I might be able to help you out.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9823;
DELETE FROM npc_text WHERE id=13572;

-- From gossip_menu #9827 with text :13575 This is a portal to the Arathi Basin battleground.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=9827;
DELETE FROM npc_text WHERE id=13575;
DELETE FROM gossip_menu_option WHERE menu_id=9827 AND id=0;

-- From gossip_menu #9828 with text :13576 This is a portal to the Alterac Valley battleground.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=9828;
DELETE FROM npc_text WHERE id=13576;
DELETE FROM gossip_menu_option WHERE menu_id=9828 AND id=0;

-- From gossip_menu #9829 with text :13577 This is a portal to the Eye of the Storm battleground.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=9829;
DELETE FROM npc_text WHERE id=13577;
DELETE FROM gossip_menu_option WHERE menu_id=9829 AND id=0;

-- From gossip_menu #9830 with text :13579 This is a portal to the Warsong Gulch battleground.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=9830;
DELETE FROM npc_text WHERE id=13579;
DELETE FROM gossip_menu_option WHERE menu_id=9830 AND id=0;

-- From gossip_menu #9832 with text :13583 Looking for a tabard?
-- Used by source: unknown
-- option #0 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=9832;
DELETE FROM npc_text WHERE id=13583;
DELETE FROM gossip_menu_option WHERE menu_id=9832 AND id=0;

-- From gossip_menu #9834 with text :13593 Too long have I been gone, fighting my way across Azeroth to rediscover my past and reclaim my throne. With all the challenges that have tested the Alliance in my absence, it warms my heart to see heroes such as yourself defending our coalition.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9834;
DELETE FROM npc_text WHERE id=13593;

-- From gossip_menu #9838 with text :13349 Welcome to Dalaran's Guild Registry offices. How may I help you?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9838;
DELETE FROM npc_text WHERE id=13349;

-- From gossip_menu #9839 with text :13607 You're wasting time. Go kill the minions of the Lich King, $c!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9839;
DELETE FROM npc_text WHERE id=13607;

-- From gossip_menu #9840 with text :13608 How fare your efforts against the Lich King, $c?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9840;
DELETE FROM npc_text WHERE id=13608;

-- From gossip_menu #9845 with text :13615 Look around and let the devastation sink in, $c. Every last troll that lived here is either dead or has fled to the upper levels.$B$BIt gets worse.$B$BIn an act of desperation, the living Drakkari trolls sacrificed their own animal gods so that they could drink from the blood of the gods and gain untold power. While they succeeded in keeping the Scourge at bay with their newfound strength, the results were catastrophic. The ancient empire of Zul'Drak lies in ruin as proof.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9845;
DELETE FROM npc_text WHERE id=13615;

-- From gossip_menu #9846 with text :13616 Do keep out of sight, will you? I'm trying to pretend that I'm still under the Lich King's control!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9846;
DELETE FROM npc_text WHERE id=13616;

-- From gossip_menu #9848 with text :13619 Gerk, Burr, Dargath: all gone... It's just MacKellar and I left out here. I hope you've brought some good news.
-- Used by source: unknown
-- option #0 "Can you repair my gear?"


DELETE FROM gossip_menu WHERE entry=9848;
DELETE FROM npc_text WHERE id=13619;
DELETE FROM gossip_menu_option WHERE menu_id=9848 AND id=0;

-- From gossip_menu #9850 with text :13628 Please to be quiet! Pups asleeping!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9850;
DELETE FROM npc_text WHERE id=13628;

-- From gossip_menu #9852 with text :13639 With my freedom comes the vengeance of storm!
-- Used by source: unknown
-- option #0 "Gymer, where are Algar, Navarius and Thrym?"
-- option #1 "Gymer, what do I need to know? I've never ridden on a giant."
-- option #2 "I'm ready, Gymer. Let's go!"


DELETE FROM gossip_menu WHERE entry=9852;
DELETE FROM npc_text WHERE id=13639;
DELETE FROM gossip_menu_option WHERE menu_id=9852 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9852 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9852 AND id=2;

-- From gossip_menu #9855 with text :13647 The Ymirjar battle lord, Algar the Chosen, rouses his Vargul armies at the Reliquary of Pain, northeast of this cage.$B$BPrince Navarius is across the Dead Fields, east of here, near the great steps leading up to the second level of Zul'Drak.$B$BThrym's location is currently unknown, which is curious considering his size.$B$BAll must be dealt with!
-- Used by source: unknown
-- option #0 "I have a few more questions, Gymer."


DELETE FROM gossip_menu WHERE entry=9855;
DELETE FROM npc_text WHERE id=13647;
DELETE FROM gossip_menu_option WHERE menu_id=9855 AND id=0;

-- From gossip_menu #9857 with text :13651 Let me know when you're ready. I'd prefer sooner than later... what with the slowly dying from poison and all.
-- Used by source: unknown
-- option #0 "I'm ready - lets get you out of here."


DELETE FROM gossip_menu WHERE entry=9857;
DELETE FROM npc_text WHERE id=13651;
DELETE FROM gossip_menu_option WHERE menu_id=9857 AND id=0;

-- From gossip_menu #9858 with text :13654 We must strike at Jotunheim continuously. Never give them a chance to catch their breath, never a chance to sleep, and never accept surrender!$B$BTirion Fordring with all the might of Ashbringer and the Argent Crusade behind him cannot hope to accomplish what you are doing!$B$BNow, be quick about your business, $N. There is too much occurring for idle chit-chat.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9858;
DELETE FROM npc_text WHERE id=13654;

-- From gossip_menu #9859 with text :13650 Poison... my insides are churning...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9859;
DELETE FROM npc_text WHERE id=13650;

-- From gossip_menu #9860 with text :13656 When you are ready I will place you atop my head and we will march into the heart of the Scourge in Zul'Drak. You must direct me to smash and destroy our enemies!
-- Used by source: unknown
-- option #0 "I have a few more questions, Gymer."


DELETE FROM gossip_menu WHERE entry=9860;
DELETE FROM npc_text WHERE id=13656;
DELETE FROM gossip_menu_option WHERE menu_id=9860 AND id=0;

-- From gossip_menu #9862 with text :13659 The Ebon Blade is indebted to you for your help in taking The Shadow Vault. We are lucky to have you.$B$BWhile the Alliance and the Horde fight each other, doing the Lich King's job for him, we will stay focused on the task at hand.$B$BWhere the Argent Crusade might falter and think twice about how best to crush the enemy, we will have no such moral difficulties.$B$BYou shall be our instrument of vengeance, $N.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9862;
DELETE FROM npc_text WHERE id=13659;

-- From gossip_menu #9863 with text :13679 You look like you could make us some money. How about a spin inside the Amphitheater of Anguish, pal?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9863;
DELETE FROM npc_text WHERE id=13679;

-- From gossip_menu #9865 with text :13660 
-- Used by source: unknown
-- option #0 "Let's do this, sister."


DELETE FROM gossip_menu WHERE entry=9865;
DELETE FROM npc_text WHERE id=13660;
DELETE FROM gossip_menu_option WHERE menu_id=9865 AND id=0;

-- From gossip_menu #9867 with text :13671 If there's nothing else that you can do, kill these things!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9867;
DELETE FROM npc_text WHERE id=13671;

-- From gossip_menu #9870 with text :13678 
-- Used by source: unknown
-- option #0 "I've heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try." submenu #9878


DELETE FROM gossip_menu WHERE entry=9870;
DELETE FROM npc_text WHERE id=13678;
DELETE FROM gossip_menu_option WHERE menu_id=9870 AND id=0;
DELETE FROM gossip_menu WHERE entry=9878;
DELETE FROM npc_text WHERE id=13701;
DELETE FROM gossip_menu_option WHERE menu_id=9878 AND id=0;
DELETE FROM gossip_menu WHERE entry=9869;
DELETE FROM npc_text WHERE id=13674;
DELETE FROM gossip_menu_option WHERE menu_id=9869 AND id=0;
DELETE FROM gossip_menu WHERE entry=9875;
DELETE FROM npc_text WHERE id=13694;
DELETE FROM gossip_menu_option WHERE menu_id=9875 AND id=0;
DELETE FROM gossip_menu WHERE entry=9979;
DELETE FROM npc_text WHERE id=13831;

-- From gossip_menu #9871 with text :13681 This unit is busy. Please inquire later.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9871;
DELETE FROM npc_text WHERE id=13681;

-- From gossip_menu #9872 with text :13685 This likeness of the Horn of Hodir stands in memorial of King Arngrim and all others lost in the battle of Thunderfall.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9872;
DELETE FROM npc_text WHERE id=13685;

-- From gossip_menu #9873 with text :13690 What can I do for you?
-- Used by source: unknown
-- option #0 "Train me."
-- option #1 "May I browse your epic gem recipes?"


DELETE FROM gossip_menu WHERE entry=9873;
DELETE FROM npc_text WHERE id=13690;
DELETE FROM gossip_menu_option WHERE menu_id=9873 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9873 AND id=1;

-- From gossip_menu #9874 with text :13691 
-- Used by source: unknown
-- option #0 "Skip the warmup, sister... or are you too scared to face someone your own size?"


DELETE FROM gossip_menu WHERE entry=9874;
DELETE FROM npc_text WHERE id=13691;
DELETE FROM gossip_menu_option WHERE menu_id=9874 AND id=0;

-- From gossip_menu #9876 with text :13697 Fjorn's Anvil now stands prominently in Dun Niffelem as a symbol of their victory over Fjorn and his armies.$b$bYou can't help but smile, knowing that your actions have had such a lasting impact on the world.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9876;
DELETE FROM npc_text WHERE id=13697;

-- From gossip_menu #9882 with text :13707 I had it all, once. Fame, fortune, a full set of the very best gladiator's gear... and then I threw it all away.$B$BOnce the Cartel caught me rigging fights... trading wins... it was all over.$B$BNow I've got nothing but these rags and a bad liver.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9882;
DELETE FROM npc_text WHERE id=13707;

-- From gossip_menu #9883 with text :13709 Who are you?$B$BGo away... I'm exhausted from working so hard on the Harbor Road. It's time to drink some dwarven ale, have a good cry, and take a nap.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9883;
DELETE FROM npc_text WHERE id=13709;

-- From gossip_menu #9891 with text :13733 Where there are frostborn, there are eagles. They've been our allies for longer than I've walked the land... and I'm not exactly young anymore, $G laddy:lass;.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9891;
DELETE FROM npc_text WHERE id=13733;

-- From gossip_menu #9893 with text :13735 How you be doin' mon?
-- Used by source: unknown
-- option #0 "Train me."


DELETE FROM gossip_menu WHERE entry=9893;
DELETE FROM npc_text WHERE id=13735;
DELETE FROM gossip_menu_option WHERE menu_id=9893 AND id=0;

-- From gossip_menu #9897 with text :13740 You are welcome here, as a friend and ally of the earthen.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9897;
DELETE FROM npc_text WHERE id=13740;

-- From gossip_menu #9900 with text :13747 You are permitted to visit our stronghold, little $r.$b$bDo not bring us dishonor!
-- Used by source: unknown
-- option #1 "If it please you, King Jokkum, may I know what has become of Krolmir?" submenu #9899


DELETE FROM gossip_menu WHERE entry=9900;
DELETE FROM npc_text WHERE id=13747;
DELETE FROM gossip_menu_option WHERE menu_id=9900 AND id=1;
DELETE FROM gossip_menu WHERE entry=9899;
DELETE FROM npc_text WHERE id=13749;
DELETE FROM gossip_menu_option WHERE menu_id=9899 AND id=0;

-- From gossip_menu #9911 with text :13782 Leave me to my shame, $r.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9911;
DELETE FROM npc_text WHERE id=13782;

-- From gossip_menu #9917 with text :13795 
-- Used by source: unknown
-- option #0 "I am ready to head further into Storm Peaks."


DELETE FROM gossip_menu WHERE entry=9917;
DELETE FROM npc_text WHERE id=13795;
DELETE FROM gossip_menu_option WHERE menu_id=9917 AND id=0;

-- From gossip_menu #9919 with text :13793 Pleased to meet you, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9919;
DELETE FROM npc_text WHERE id=13793;

-- From gossip_menu #9920 with text :13794 The mountains are rich with history... don't forget to stop and take it all in, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9920;
DELETE FROM npc_text WHERE id=13794;

-- From gossip_menu #9923 with text :13786 Sorry, friend. I'm afraid we've used all of the parts we can spare at the moment.
-- Used by source: unknown
-- option #0 "I'd like to build a catapult."
-- option #1 "I'd like to build a demolisher."
-- option #2 "I'd like to build a siege engine."


DELETE FROM gossip_menu WHERE entry=9923;
DELETE FROM npc_text WHERE id=13786;
DELETE FROM gossip_menu_option WHERE menu_id=9923 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9923 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9923 AND id=2;

-- From gossip_menu #9924 with text :13799 Speak, $c.
-- Used by source: unknown
-- option #0 "Can you tell me what became of Sif?"


DELETE FROM gossip_menu WHERE entry=9924;
DELETE FROM npc_text WHERE id=13799;
DELETE FROM gossip_menu_option WHERE menu_id=9924 AND id=0;

-- From gossip_menu #9925 with text :13803 Who are you, little one?  To come speak these words to the mighty Thorim...$B$BI should... crush you!$B$BYet, you've delivered me from my stupor.  Your presence here is a sign!$B$BIt was no accident that I mistook you for Sif.  What would she think of me?  I must prepare for battle.$B$BI must avenge her death and liberate the titans' sacred grounds from my brother's madness!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9925;
DELETE FROM npc_text WHERE id=13803;

-- From gossip_menu #9926 with text :13802 Ulduar... I was sworn to protect Ulduar.$B$BSworn to protect the Terrace of the Makers.$B$BSworn to protect the pacts between the races of frost.$B$BBut I failed!  I let my brother trick me.  I let him turn me against my allies.  He tricked me into blaming Sif's death on a dear friend, Arngrim, the king of the frost giants.$B$BAfter I realized what I'd done... I... gave in to despair.
-- Used by source: unknown
-- option #0 "It needn't end this way."


DELETE FROM gossip_menu WHERE entry=9926;
DELETE FROM npc_text WHERE id=13802;
DELETE FROM gossip_menu_option WHERE menu_id=9926 AND id=0;

-- From gossip_menu #9927 with text :13801 For a moment I thought you were my beloved Sif... that strand of hair... but no!  It can't be... Sif is dead....$B$BMy... my brother.... killed her!
-- Used by source: unknown
-- option #0 "He did more than that, Thorim.  He controls Ulduar now."


DELETE FROM gossip_menu WHERE entry=9927;
DELETE FROM npc_text WHERE id=13801;
DELETE FROM gossip_menu_option WHERE menu_id=9927 AND id=0;

-- From gossip_menu #9928 with text :13800 I've hidden from my destiny long enough.  What I must do has never been clearer.$B$BLoken must be destroyed by my hand.
-- Used by source: unknown
-- option #0 "I'm with you, Thorim."


DELETE FROM gossip_menu WHERE entry=9928;
DELETE FROM npc_text WHERE id=13800;
DELETE FROM gossip_menu_option WHERE menu_id=9928 AND id=0;

-- From gossip_menu #9929 with text :13804 Welcome to the Storm Peaks, $r.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9929;
DELETE FROM npc_text WHERE id=13804;

-- From gossip_menu #9930 with text :13806 Elder Arp spends time at the D.E.H.T.A camp in Borean Tundra.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9930;
DELETE FROM npc_text WHERE id=13806;

-- From gossip_menu #9931 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Arp?"
-- option #1 "Where is Elder Pamuya?"
-- option #2 "Where is Elder Igasho?"
-- option #3 "Where is Elder Northal?"


DELETE FROM gossip_menu WHERE entry=9931;
DELETE FROM gossip_menu_option WHERE menu_id=9931 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9931 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9931 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9931 AND id=3;

-- From gossip_menu #9934 with text :13809 You'll find Elder Northal inside the Transitus Shield in Coldarra.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9934;
DELETE FROM npc_text WHERE id=13809;

-- From gossip_menu #9935 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Pamuya?"


DELETE FROM gossip_menu WHERE entry=9935;
DELETE FROM gossip_menu_option WHERE menu_id=9935 AND id=0;

-- From gossip_menu #9937 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Arp?"
-- option #1 "Where is Elder Northal?"
-- option #2 "Where is Elder Sardis?"


DELETE FROM gossip_menu WHERE entry=9937;
DELETE FROM gossip_menu_option WHERE menu_id=9937 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9937 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9937 AND id=2;

-- From gossip_menu #9938 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Igasho?"
-- option #1 "Where is Elder Arp?"
-- option #2 "Where is Elder Sardis?"


DELETE FROM gossip_menu WHERE entry=9938;
DELETE FROM gossip_menu_option WHERE menu_id=9938 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9938 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9938 AND id=2;

-- From gossip_menu #9941 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Pamuya?"


DELETE FROM gossip_menu WHERE entry=9941;
DELETE FROM gossip_menu_option WHERE menu_id=9941 AND id=0;

-- From gossip_menu #9945 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #1 "Where is Elder Bluewolf?"
-- option #3 "Where is Elder Pamuya?"


DELETE FROM gossip_menu WHERE entry=9945;
DELETE FROM gossip_menu_option WHERE menu_id=9945 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9945 AND id=3;

-- From gossip_menu #9946 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Wanikaya?"
-- option #1 "Where is Elder Bluewolf?"
-- option #2 "Where is Elder Arp?"


DELETE FROM gossip_menu WHERE entry=9946;
DELETE FROM gossip_menu_option WHERE menu_id=9946 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9946 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9946 AND id=2;

-- From gossip_menu #9948 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Bluewolf?"
-- option #2 "Where is Elder Thoim?"
-- option #3 "Where is Elder Skywarden?"


DELETE FROM gossip_menu WHERE entry=9948;
DELETE FROM gossip_menu_option WHERE menu_id=9948 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9948 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9948 AND id=3;

-- From gossip_menu #9953 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Nurgen?"
-- option #1 "Where is Elder Morthie?"
-- option #2 "Where is Elder Skywarden?"
-- option #3 "Where is Elder Whurain?"


DELETE FROM gossip_menu WHERE entry=9953;
DELETE FROM gossip_menu_option WHERE menu_id=9953 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9953 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9953 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9953 AND id=3;

-- From gossip_menu #9954 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Nurgen?"
-- option #1 "Where is Elder Thoim?"
-- option #2 "Where is Elder Skywarden?"
-- option #3 "Where is Elder Pamuya?"
-- option #4 "Where is Elder Whurain?"


DELETE FROM gossip_menu WHERE entry=9954;
DELETE FROM gossip_menu_option WHERE menu_id=9954 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9954 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9954 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9954 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9954 AND id=4;

-- From gossip_menu #9955 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Chogan'gada?"
-- option #1 "Where is Elder Whurain?"
-- option #2 "Where is Elder Lunaro?"
-- option #3 "Where is Elder Beldak?"


DELETE FROM gossip_menu WHERE entry=9955;
DELETE FROM gossip_menu_option WHERE menu_id=9955 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9955 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9955 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9955 AND id=3;

-- From gossip_menu #9959 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #1 "Where is Elder Whurain?"
-- option #2 "Where is Elder Lunaro?"
-- option #3 "Where is Elder Beldak?"


DELETE FROM gossip_menu WHERE entry=9959;
DELETE FROM gossip_menu_option WHERE menu_id=9959 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9959 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9959 AND id=3;

-- From gossip_menu #9961 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Jarten?"
-- option #1 "Where is Elder Chogan'gada?"
-- option #2 "Where is Elder Lunaro?"
-- option #3 "Where is Elder Beldak?"
-- option #4 "Where is Elder Kilias?"


DELETE FROM gossip_menu WHERE entry=9961;
DELETE FROM gossip_menu_option WHERE menu_id=9961 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9961 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9961 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9961 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9961 AND id=4;

-- From gossip_menu #9963 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Jarten?"
-- option #1 "Where is Elder Chogan'gada?"
-- option #2 "Where is Elder Skywarden?"
-- option #3 "Where is Elder Beldak?"
-- option #4 "Where is Elder Kilias?"


DELETE FROM gossip_menu WHERE entry=9963;
DELETE FROM gossip_menu_option WHERE menu_id=9963 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9963 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9963 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9963 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9963 AND id=4;

-- From gossip_menu #9964 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Lunaro?"
-- option #1 "Where is Elder Whurain?"
-- option #2 "Where is Elder Kilias?"
-- option #3 "Where is Elder Tauros?"


DELETE FROM gossip_menu WHERE entry=9964;
DELETE FROM gossip_menu_option WHERE menu_id=9964 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9964 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9964 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9964 AND id=3;

-- From gossip_menu #9966 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Beldak?"
-- option #1 "Where is Elder Lunaro?"
-- option #2 "Where is Elder Whurain?"
-- option #3 "Where is Elder Skywarden?"
-- option #4 "Where is Elder Tauros?"
-- option #5 "Where is Elder Ohanzee?"


DELETE FROM gossip_menu WHERE entry=9966;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=9966 AND id=5;

-- From gossip_menu #9968 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Lunaro?"
-- option #1 "Where is Elder Ohanzee?"
-- option #2 "Where is Elder Skywarden?"
-- option #3 "Where is Elder Beldak?"
-- option #4 "Where is Elder Kilias?"
-- option #5 "Where is Elder Graymane?"
-- option #6 "Where is Elder Muraco?"


DELETE FROM gossip_menu WHERE entry=9968;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=9968 AND id=6;

-- From gossip_menu #9971 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Lunaro?"
-- option #1 "Where is Elder Skywarden?"
-- option #2 "Where is Elder Beldak?"
-- option #5 "Where is Elder Muraco?"


DELETE FROM gossip_menu WHERE entry=9971;
DELETE FROM gossip_menu_option WHERE menu_id=9971 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9971 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9971 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9971 AND id=5;

-- From gossip_menu #9972 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Fargal?"
-- option #1 "Where is Elder Stonebeard?"
-- option #2 "Where is Elder Muraco?"
-- option #3 "Where is Elder Graymane?"
-- option #4 "Where is Elder Tauros?"
-- option #5 "Where is Elder Ohanzee?"


DELETE FROM gossip_menu WHERE entry=9972;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=9972 AND id=5;

-- From gossip_menu #9975 with text :7933 Now is the time when the year is new and the moon shines bright.$B$BIt is our time... when the ancients awake.
-- Used by source: unknown
-- option #0 "Where is Elder Yurauk?"
-- option #1 "Where is Elder Stonebeard?"
-- option #2 "Where is Elder Muraco?"
-- option #3 "Where is Elder Graymane?"


DELETE FROM gossip_menu WHERE entry=9975;
DELETE FROM gossip_menu_option WHERE menu_id=9975 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9975 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9975 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=9975 AND id=3;

-- From gossip_menu #9980 with text :7935 In days long past, we lived for the hunt.  We hunted for glory, for honor...$B$BIs it so different now?
-- Used by source: unknown
-- option #0 "Where is Elder Ohanzee?"
-- option #1 "Where is Elder Stonebeard?"
-- option #2 "Where is Elder Fargal?"


DELETE FROM gossip_menu WHERE entry=9980;
DELETE FROM gossip_menu_option WHERE menu_id=9980 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9980 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9980 AND id=2;

-- From gossip_menu #9981 with text :13832 You are not yet strong enough to do battle in the Strand of the Ancients. Return when you have gained more experience.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=9981;
DELETE FROM npc_text WHERE id=13832;
DELETE FROM gossip_menu_option WHERE menu_id=9981 AND id=0;

-- From gossip_menu #9985 with text :13839 I'M COOKIN HERE!
-- Used by source: unknown
-- option #0 "Train me."


DELETE FROM gossip_menu WHERE entry=9985;
DELETE FROM npc_text WHERE id=13839;
DELETE FROM gossip_menu_option WHERE menu_id=9985 AND id=0;

-- From gossip_menu #9986 with text :13840 Another hungry recruit?
-- Used by source: unknown
-- option #0 "Train me."


DELETE FROM gossip_menu WHERE entry=9986;
DELETE FROM npc_text WHERE id=13840;
DELETE FROM gossip_menu_option WHERE menu_id=9986 AND id=0;

-- From gossip_menu #9988 with text :13842 What brings you to me?
-- Used by source: unknown
-- option #0 "Train me."


DELETE FROM gossip_menu WHERE entry=9988;
DELETE FROM npc_text WHERE id=13842;
DELETE FROM gossip_menu_option WHERE menu_id=9988 AND id=0;

-- From gossip_menu #9990 with text :13845 Greetings, mage.  Shall I provide you with further insight into the world of magic?
-- Used by source: unknown
-- option #0 "I am interested in mage training."
-- option #1 "I wish to unlearn my talents." submenu #4461


DELETE FROM gossip_menu WHERE entry=9990;
DELETE FROM npc_text WHERE id=13845;
DELETE FROM gossip_menu_option WHERE menu_id=9990 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9990 AND id=1;

-- From gossip_menu #9993 with text :13848 Dis be a dark day in troll history, mon.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9993;
DELETE FROM npc_text WHERE id=13848;

-- From gossip_menu #9994 with text :13850 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=9994;
DELETE FROM npc_text WHERE id=13850;

-- From gossip_menu #9997 with text :13853 
-- Used by source: unknown
-- option #0 "Activate the crystals when we get in trouble, right." submenu #9998


DELETE FROM gossip_menu WHERE entry=9997;
DELETE FROM npc_text WHERE id=13853;
DELETE FROM gossip_menu_option WHERE menu_id=9997 AND id=0;
DELETE FROM gossip_menu WHERE entry=9998;
DELETE FROM npc_text WHERE id=13854;
DELETE FROM gossip_menu_option WHERE menu_id=9998 AND id=0;
DELETE FROM gossip_menu WHERE entry=10275;
DELETE FROM npc_text WHERE id=14271;
DELETE FROM gossip_menu_option WHERE menu_id=10275 AND id=0;

-- From gossip_menu #10005 with text :13869 Ancient magic swirls within the depths of the eye. It gives you a feeling of vertigo, as if you might accidentally tumble into its iris and fall forever.
-- Used by source: unknown
-- option #0 "Grasp the Eye of the Lich King and focus your will upon it to scry for important information." submenu #9884


DELETE FROM gossip_menu WHERE entry=10005;
DELETE FROM npc_text WHERE id=13869;
DELETE FROM gossip_menu_option WHERE menu_id=10005 AND id=0;
DELETE FROM gossip_menu WHERE entry=9884;
DELETE FROM npc_text WHERE id=13715;

-- From gossip_menu #10008 with text :13871 The vrykul rests peacefully in his magical slumbering.
-- Used by source: unknown
-- option #0 "Waken the slumbering mjordin to see if it is really the ancient hero, Iskalder." submenu #9884


DELETE FROM gossip_menu WHERE entry=10008;
DELETE FROM npc_text WHERE id=13871;
DELETE FROM gossip_menu_option WHERE menu_id=10008 AND id=0;
DELETE FROM gossip_menu WHERE entry=9884;
DELETE FROM npc_text WHERE id=13715;

-- From gossip_menu #10009 with text :13873 <hic>$b$bIt be lonely in here without me mateys, $g lad:lass;.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10009;
DELETE FROM npc_text WHERE id=13873;

-- From gossip_menu #10010 with text :13881 Seek out Catarina Stanford in the canals southwest of The Stockade.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10010;
DELETE FROM npc_text WHERE id=13881;

-- From gossip_menu #10011 with text :13882 Jelinik's Barber Shop is in the northern section of the Trade District.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10011;
DELETE FROM npc_text WHERE id=13882;

-- From gossip_menu #10012 with text :13883 There you are! I think I've just about got this door figured out. Let me know when you're ready and I'll open'er up!
-- Used by source: unknown
-- option #0 "We're with you Brann! Open it!"


DELETE FROM gossip_menu WHERE entry=10012;
DELETE FROM npc_text WHERE id=13883;
DELETE FROM gossip_menu_option WHERE menu_id=10012 AND id=0;

-- From gossip_menu #10013 with text :13884 Elise Brightletter is near the Great Forge adjacent to the Flight Master.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10013;
DELETE FROM npc_text WHERE id=13884;

-- From gossip_menu #10014 with text :13885 You can find the barber shop on the west portion of The Commons.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10014;
DELETE FROM npc_text WHERE id=13885;

-- From gossip_menu #10015 with text :13886 Feyden Darkin is on the second floor in the center of the Craftsman's Terrace.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10015;
DELETE FROM npc_text WHERE id=13886;

-- From gossip_menu #10016 with text :13887 Thoth can teach you Inscription in The Crystal Hall.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10016;
DELETE FROM npc_text WHERE id=13887;

-- From gossip_menu #10017 with text :13888 Jo'mah is in a building on the second floor of The Drag.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10017;
DELETE FROM npc_text WHERE id=13888;

-- From gossip_menu #10018 with text :13889 The barber is in the Cleft of Shadow.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10018;
DELETE FROM npc_text WHERE id=13889;

-- From gossip_menu #10019 with text :13890 You go find Margaux Parchley. She pretty lady in The Apothecarium.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10019;
DELETE FROM npc_text WHERE id=13890;

-- From gossip_menu #10020 with text :13891 Barber? That is Naznik! He on top floor of Trade Quarter, near bank.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10020;
DELETE FROM npc_text WHERE id=13891;

-- From gossip_menu #10021 with text :13892 Seek out Poshken Hardbinder in The Pools of Vision, below the Spirit Rise.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10021;
DELETE FROM npc_text WHERE id=13892;

-- From gossip_menu #10022 with text :13893 You can find the scribe, Zantasia in the Court of the Sun.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10022;
DELETE FROM npc_text WHERE id=13893;

-- From gossip_menu #10024 with text :13897 Welcome to Dalaran, $c.
-- Used by source: unknown
-- option #0 "I'm ready to fly to Sholazar Basin."


DELETE FROM gossip_menu WHERE entry=10024;
DELETE FROM npc_text WHERE id=13897;
DELETE FROM gossip_menu_option WHERE menu_id=10024 AND id=0;

-- From gossip_menu #10025 with text :13901 The Skybreaker patrols Icecrown.  You will find no finer ship in all of the realms.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10025;
DELETE FROM npc_text WHERE id=13901;

-- From gossip_menu #10027 with text :13903 <Highlord Darion Mograine nods.>
-- Used by source: unknown
-- option #0 "I require training, Highlord."


DELETE FROM gossip_menu WHERE entry=10027;
DELETE FROM npc_text WHERE id=13903;
DELETE FROM gossip_menu_option WHERE menu_id=10027 AND id=0;

-- From gossip_menu #10028 with text :13906 The blood red pool within the eye swirls, betraying images of a massing army of Scourge. The eye seems to pull at you, willing its way into your mind and triggering you to pull back instinctively. You feel very uneasy in the presence of this object.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10028;
DELETE FROM npc_text WHERE id=13906;

-- From gossip_menu #10038 with text :13932 The time of judgement is nigh. In your heart, you know justice is the only true path.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10038;
DELETE FROM npc_text WHERE id=13932;

-- From gossip_menu #10040 with text :13940 Uhnhh.... It is too late for me, $g brother:sister;.$b$bI am... finished...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10040;
DELETE FROM npc_text WHERE id=13940;

-- From gossip_menu #10041 with text :13947 We attacked under cover of a blizzard....$b$bThe Scourge were caught off guard... our victory was certain....$b$bThen... from behind us... the Horde came from nowhere.$b$bThey cost us... everything....
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10041;
DELETE FROM npc_text WHERE id=13947;

-- From gossip_menu #10043 with text :14013 Welcome to Dalaran, traveler.$B$BIs there something I might help you find?
-- Used by source: unknown
-- option #0 "Arena" submenu #10057
-- option #1 "Auction House" submenu #10092
-- option #2 "Bank" submenu #10089
-- option #4 "Battlemasters" submenu #10058
-- option #5 "Capital Portals" submenu #10058
-- option #6 "Flight Master" submenu #10086
-- option #7 "Guild Master" submenu #10095
-- option #8 "Inn" submenu #10084
-- option #9 "Locksmith" submenu #10262
-- option #10 "Mailbox" submenu #10090
-- option #11 "Points of Interest" submenu #10056
-- option #12 "Stable Master" submenu #10083
-- option #13 "Trainers" submenu #10082
-- option #14 "Vendors" submenu #10173


DELETE FROM gossip_menu WHERE entry=10043;
DELETE FROM npc_text WHERE id=14013;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=13;
DELETE FROM gossip_menu_option WHERE menu_id=10043 AND id=14;
DELETE FROM gossip_menu WHERE entry=10057;
DELETE FROM npc_text WHERE id=13976;
DELETE FROM gossip_menu_option WHERE menu_id=10057 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10057 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10057 AND id=2;
DELETE FROM gossip_menu WHERE entry=10092;
DELETE FROM npc_text WHERE id=14010;
DELETE FROM gossip_menu_option WHERE menu_id=10092 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10092 AND id=1;
DELETE FROM gossip_menu WHERE entry=10089;
DELETE FROM npc_text WHERE id=14007;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=2;
DELETE FROM gossip_menu WHERE entry=10058;
DELETE FROM npc_text WHERE id=13977;
DELETE FROM gossip_menu_option WHERE menu_id=10058 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10058 AND id=1;
DELETE FROM gossip_menu WHERE entry=10058;
DELETE FROM npc_text WHERE id=13977;
DELETE FROM gossip_menu_option WHERE menu_id=10058 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10058 AND id=1;
DELETE FROM gossip_menu WHERE entry=10086;
DELETE FROM npc_text WHERE id=14004;
DELETE FROM gossip_menu WHERE entry=10095;
DELETE FROM npc_text WHERE id=14015;
DELETE FROM gossip_menu WHERE entry=10084;
DELETE FROM npc_text WHERE id=14002;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=2;
DELETE FROM gossip_menu WHERE entry=10262;
DELETE FROM npc_text WHERE id=14251;
DELETE FROM gossip_menu WHERE entry=10090;
DELETE FROM npc_text WHERE id=14008;
DELETE FROM gossip_menu_option WHERE menu_id=10090 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10090 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10090 AND id=2;
DELETE FROM gossip_menu WHERE entry=10056;
DELETE FROM npc_text WHERE id=13975;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10056 AND id=10;
DELETE FROM gossip_menu WHERE entry=10083;
DELETE FROM npc_text WHERE id=14001;
DELETE FROM gossip_menu WHERE entry=10082;
DELETE FROM npc_text WHERE id=14000;
DELETE FROM gossip_menu_option WHERE menu_id=10082 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10082 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10082 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10082 AND id=4;
DELETE FROM gossip_menu WHERE entry=10173;
DELETE FROM npc_text WHERE id=14117;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=8;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=13;
DELETE FROM gossip_menu_option WHERE menu_id=10173 AND id=14;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10053;
DELETE FROM npc_text WHERE id=13972;
DELETE FROM gossip_menu WHERE entry=10087;
DELETE FROM npc_text WHERE id=14005;
DELETE FROM gossip_menu WHERE entry=10088;
DELETE FROM npc_text WHERE id=14006;
DELETE FROM gossip_menu WHERE entry=10055;
DELETE FROM npc_text WHERE id=13974;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=2;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10053;
DELETE FROM npc_text WHERE id=13972;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10053;
DELETE FROM npc_text WHERE id=13972;
DELETE FROM gossip_menu WHERE entry=10074;
DELETE FROM npc_text WHERE id=13992;
DELETE FROM gossip_menu WHERE entry=10075;
DELETE FROM npc_text WHERE id=13993;
DELETE FROM gossip_menu WHERE entry=10055;
DELETE FROM npc_text WHERE id=13974;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=2;
DELETE FROM gossip_menu WHERE entry=10084;
DELETE FROM npc_text WHERE id=14002;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10084 AND id=2;
DELETE FROM gossip_menu WHERE entry=10089;
DELETE FROM npc_text WHERE id=14007;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10089 AND id=2;
DELETE FROM gossip_menu WHERE entry=10091;
DELETE FROM npc_text WHERE id=14009;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10053;
DELETE FROM npc_text WHERE id=13972;
DELETE FROM gossip_menu WHERE entry=10052;
DELETE FROM npc_text WHERE id=13971;
DELETE FROM gossip_menu WHERE entry=10051;
DELETE FROM npc_text WHERE id=13970;
DELETE FROM gossip_menu WHERE entry=10055;
DELETE FROM npc_text WHERE id=13974;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=2;
DELETE FROM gossip_menu WHERE entry=10062;
DELETE FROM npc_text WHERE id=13980;
DELETE FROM gossip_menu WHERE entry=10091;
DELETE FROM npc_text WHERE id=14009;
DELETE FROM gossip_menu WHERE entry=10049;
DELETE FROM npc_text WHERE id=13968;
DELETE FROM gossip_menu WHERE entry=10048;
DELETE FROM npc_text WHERE id=13967;
DELETE FROM gossip_menu WHERE entry=10047;
DELETE FROM npc_text WHERE id=13966;
DELETE FROM gossip_menu WHERE entry=10046;
DELETE FROM npc_text WHERE id=13965;
DELETE FROM gossip_menu WHERE entry=10097;
DELETE FROM npc_text WHERE id=14018;
DELETE FROM gossip_menu_option WHERE menu_id=10097 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10097 AND id=1;
DELETE FROM gossip_menu WHERE entry=10081;
DELETE FROM npc_text WHERE id=13999;
DELETE FROM gossip_menu WHERE entry=10078;
DELETE FROM npc_text WHERE id=13996;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=13;
DELETE FROM gossip_menu WHERE entry=10170;
DELETE FROM npc_text WHERE id=14114;
DELETE FROM gossip_menu_option WHERE menu_id=10170 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10170 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10170 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10170 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10170 AND id=4;
DELETE FROM gossip_menu WHERE entry=10167;
DELETE FROM npc_text WHERE id=14112;
DELETE FROM gossip_menu WHERE entry=10160;
DELETE FROM npc_text WHERE id=14108;
DELETE FROM gossip_menu_option WHERE menu_id=10160 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10160 AND id=1;
DELETE FROM gossip_menu WHERE entry=10159;
DELETE FROM npc_text WHERE id=14107;
DELETE FROM gossip_menu WHERE entry=10158;
DELETE FROM npc_text WHERE id=14106;
DELETE FROM gossip_menu WHERE entry=10157;
DELETE FROM npc_text WHERE id=14105;
DELETE FROM gossip_menu WHERE entry=10169;
DELETE FROM npc_text WHERE id=13984;
DELETE FROM gossip_menu WHERE entry=10155;
DELETE FROM npc_text WHERE id=14103;
DELETE FROM gossip_menu WHERE entry=10154;
DELETE FROM npc_text WHERE id=14102;
DELETE FROM gossip_menu WHERE entry=10156;
DELETE FROM npc_text WHERE id=14104;
DELETE FROM gossip_menu WHERE entry=10152;
DELETE FROM npc_text WHERE id=14100;
DELETE FROM gossip_menu WHERE entry=10153;
DELETE FROM npc_text WHERE id=14101;
DELETE FROM gossip_menu_option WHERE menu_id=10153 AND id=0;
DELETE FROM gossip_menu WHERE entry=10162;
DELETE FROM npc_text WHERE id=14110;
DELETE FROM gossip_menu WHERE entry=10168;
DELETE FROM npc_text WHERE id=14113;
DELETE FROM gossip_menu_option WHERE menu_id=10168 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10168 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10168 AND id=2;
DELETE FROM gossip_menu WHERE entry=10148;
DELETE FROM npc_text WHERE id=14095;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10074;
DELETE FROM npc_text WHERE id=13992;
DELETE FROM gossip_menu WHERE entry=10075;
DELETE FROM npc_text WHERE id=13993;
DELETE FROM gossip_menu WHERE entry=10055;
DELETE FROM npc_text WHERE id=13974;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=2;
DELETE FROM gossip_menu WHERE entry=10087;
DELETE FROM npc_text WHERE id=14005;
DELETE FROM gossip_menu WHERE entry=10088;
DELETE FROM npc_text WHERE id=14006;
DELETE FROM gossip_menu WHERE entry=10055;
DELETE FROM npc_text WHERE id=13974;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10055 AND id=2;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10077;
DELETE FROM npc_text WHERE id=13995;
DELETE FROM gossip_menu WHERE entry=10076;
DELETE FROM npc_text WHERE id=13994;
DELETE FROM gossip_menu WHERE entry=10073;
DELETE FROM npc_text WHERE id=13991;
DELETE FROM gossip_menu_option WHERE menu_id=10073 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10073 AND id=1;
DELETE FROM gossip_menu WHERE entry=10072;
DELETE FROM npc_text WHERE id=13990;
DELETE FROM gossip_menu WHERE entry=10071;
DELETE FROM npc_text WHERE id=13989;
DELETE FROM gossip_menu WHERE entry=10070;
DELETE FROM npc_text WHERE id=13988;
DELETE FROM gossip_menu WHERE entry=10069;
DELETE FROM npc_text WHERE id=13987;
DELETE FROM gossip_menu WHERE entry=10068;
DELETE FROM npc_text WHERE id=13986;
DELETE FROM gossip_menu WHERE entry=10066;
DELETE FROM npc_text WHERE id=13984;
DELETE FROM gossip_menu WHERE entry=10064;
DELETE FROM npc_text WHERE id=13982;
DELETE FROM gossip_menu WHERE entry=10065;
DELETE FROM npc_text WHERE id=13983;
DELETE FROM gossip_menu WHERE entry=10064;
DELETE FROM npc_text WHERE id=13982;
DELETE FROM gossip_menu WHERE entry=10063;
DELETE FROM npc_text WHERE id=13981;
DELETE FROM gossip_menu WHERE entry=10166;
DELETE FROM npc_text WHERE id=14112;
DELETE FROM gossip_menu WHERE entry=10054;
DELETE FROM npc_text WHERE id=13973;
DELETE FROM gossip_menu WHERE entry=10053;
DELETE FROM npc_text WHERE id=13972;
DELETE FROM gossip_menu WHERE entry=10078;
DELETE FROM npc_text WHERE id=13996;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=6;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=7;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=9;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=10;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=11;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=12;
DELETE FROM gossip_menu_option WHERE menu_id=10078 AND id=13;
DELETE FROM gossip_menu WHERE entry=10151;
DELETE FROM npc_text WHERE id=14098;
DELETE FROM gossip_menu WHERE entry=10150;
DELETE FROM npc_text WHERE id=14097;
DELETE FROM gossip_menu WHERE entry=10149;
DELETE FROM npc_text WHERE id=14096;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10045;
DELETE FROM npc_text WHERE id=13961;
DELETE FROM gossip_menu WHERE entry=10044;
DELETE FROM npc_text WHERE id=13960;
DELETE FROM gossip_menu WHERE entry=10050;
DELETE FROM npc_text WHERE id=13969;
DELETE FROM gossip_menu WHERE entry=10074;
DELETE FROM npc_text WHERE id=13992;
DELETE FROM gossip_menu WHERE entry=10075;
DELETE FROM npc_text WHERE id=13993;
DELETE FROM gossip_menu WHERE entry=10077;
DELETE FROM npc_text WHERE id=13995;
DELETE FROM gossip_menu WHERE entry=10076;
DELETE FROM npc_text WHERE id=13994;
DELETE FROM gossip_menu WHERE entry=10073;
DELETE FROM npc_text WHERE id=13991;
DELETE FROM gossip_menu_option WHERE menu_id=10073 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10073 AND id=1;
DELETE FROM gossip_menu WHERE entry=10072;
DELETE FROM npc_text WHERE id=13990;
DELETE FROM gossip_menu WHERE entry=10071;
DELETE FROM npc_text WHERE id=13989;
DELETE FROM gossip_menu WHERE entry=10070;
DELETE FROM npc_text WHERE id=13988;
DELETE FROM gossip_menu WHERE entry=10069;
DELETE FROM npc_text WHERE id=13987;
DELETE FROM gossip_menu WHERE entry=10068;
DELETE FROM npc_text WHERE id=13986;
DELETE FROM gossip_menu WHERE entry=10066;
DELETE FROM npc_text WHERE id=13984;
DELETE FROM gossip_menu WHERE entry=10064;
DELETE FROM npc_text WHERE id=13982;
DELETE FROM gossip_menu WHERE entry=10065;
DELETE FROM npc_text WHERE id=13983;
DELETE FROM gossip_menu WHERE entry=10064;
DELETE FROM npc_text WHERE id=13982;
DELETE FROM gossip_menu WHERE entry=10063;
DELETE FROM npc_text WHERE id=13981;
DELETE FROM gossip_menu WHERE entry=10074;
DELETE FROM npc_text WHERE id=13992;
DELETE FROM gossip_menu WHERE entry=10075;
DELETE FROM npc_text WHERE id=13993;

-- From gossip_menu #10061 with text :13979 Amongst the Kirin Tor, it is my duty to see to the strategic interests of the magocracy.$B$BThere is much yet to be done this week. Will you assist me, $N?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10061;
DELETE FROM npc_text WHERE id=13979;

-- From gossip_menu #10067 with text :13985 Seek out The Scribe's Sacellum in the Magus Commerce Exchange, northwest Dalaran.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10067;
DELETE FROM npc_text WHERE id=13985;

-- From gossip_menu #10080 with text :13998 The high elf Hira Snowdawn teaches Cold Weather Flying.$B$BShe can be found upon her dragonhawk at Krasus' Landing in eastern Dalaran.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10080;
DELETE FROM npc_text WHERE id=13998;

-- From gossip_menu #10085 with text :14003 The city's best-known barber shop is located in northern Dalaran.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10085;
DELETE FROM npc_text WHERE id=14003;

-- From gossip_menu #10096 with text :14017 I foresee that you will speak with Archmage Lan'dalock, $N.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10096;
DELETE FROM npc_text WHERE id=14017;

-- From gossip_menu #10098 with text :14019 There is a black market of sorts in the northeastern portion of the sewers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10098;
DELETE FROM npc_text WHERE id=14019;

-- From gossip_menu #10099 with text :14020 A tunnel leads out to the bottom of the city in the western sewers, just north of the Cantrips and Crows Tavern.$B$BSome of the more adventurous sorts use it to fly in and out of Dalaran.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10099;
DELETE FROM npc_text WHERE id=14020;

-- From gossip_menu #10100 with text :14021 You're looking for the Cantrips and Crows Tavern in the western sewers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10100;
DELETE FROM npc_text WHERE id=14021;

-- From gossip_menu #10101 with text :14022 There is a goblin-run bank down here, just north of the Cantrips and Crows Tavern in the western sewers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10101;
DELETE FROM npc_text WHERE id=14022;

-- From gossip_menu #10102 with text :14023 The Steamwheedle Cartel hosts an entire arena circuit in the central sewers of Dalaran.$B$BYou'll find dueling rings there, too, at the Circle of Wills.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10102;
DELETE FROM npc_text WHERE id=14023;

-- From gossip_menu #10103 with text :14024 A ramp leads up to just outside Krasus' Landing in the eastern sewers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10103;
DELETE FROM npc_text WHERE id=14024;

-- From gossip_menu #10104 with text :14025 A ramp leads up to near the Violet Citadel in the western sewers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10104;
DELETE FROM npc_text WHERE id=14025;

-- From gossip_menu #10106 with text :14027 Welcome to the Underbelly. Something I can help you find?
-- Used by source: unknown
-- option #3 "Sewer Exits" submenu #10105


DELETE FROM gossip_menu WHERE entry=10106;
DELETE FROM npc_text WHERE id=14027;
DELETE FROM gossip_menu_option WHERE menu_id=10106 AND id=3;
DELETE FROM gossip_menu WHERE entry=10105;
DELETE FROM npc_text WHERE id=14026;

-- From gossip_menu #10109 with text :14034 For too long I tolerated my brother.  It is time to set things right.  It is time to destroy him and his followers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10109;
DELETE FROM npc_text WHERE id=14034;

-- From gossip_menu #10112 with text :14038 Arthas's weakness is his pride. That weakness only grows as his power does. The Ebon Blade will have its chance to strike at the once-prince - of that I have no doubt.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10112;
DELETE FROM npc_text WHERE id=14038;

-- From gossip_menu #10118 with text :14045 Good day to you!
-- Used by source: unknown
-- option #0 "Train me."
-- option #2 "Tell me about the Wispcloak Recipe."
-- option #4 "Tell me about the Deathchill Cloak Recipe."


DELETE FROM gossip_menu WHERE entry=10118;
DELETE FROM npc_text WHERE id=14045;
DELETE FROM gossip_menu_option WHERE menu_id=10118 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10118 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10118 AND id=4;

-- From gossip_menu #10120 with text :14047 Sorta busy.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10120;
DELETE FROM npc_text WHERE id=14047;

-- From gossip_menu #10126 with text :14056 The Assurance has somehow become inundated with bugs and we are unable to set sail to Northrend.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10126;
DELETE FROM npc_text WHERE id=14056;

-- From gossip_menu #10128 with text :14063 How I can guide your path, young one?
-- Used by source: unknown
-- option #0 "Guide me to the Fortress Graveyard."
-- option #1 "Guide me to the Sunken Ring Graveyard."
-- option #2 "Guide me to the Broken Ring Graveyard."
-- option #3 "Guide me to the Westspark Graveyard."
-- option #4 "Guide me to the Eastspark Graveyard."
-- option #5 "Guide me back to the Alliance landing camp. "


DELETE FROM gossip_menu WHERE entry=10128;
DELETE FROM npc_text WHERE id=14063;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10128 AND id=5;

-- From gossip_menu #10130 with text :14064 Lives depend on the actions we take here.  Be quick with what you have to say, $c.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10130;
DELETE FROM npc_text WHERE id=14064;

-- From gossip_menu #10135 with text :14071 My men are ready. Let's draw some Vrykul blood!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10135;
DELETE FROM npc_text WHERE id=14071;

-- From gossip_menu #10139 with text :14077 You! COME! Drink, feast, rest for the next battle.$B$BBut do not fight! Or I will feed you to my wolves.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=10139;
DELETE FROM npc_text WHERE id=14077;
DELETE FROM gossip_menu_option WHERE menu_id=10139 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10139 AND id=2;

-- From gossip_menu #10140 with text :14161 Welcome to the home of the Kirin Tor.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10140;
DELETE FROM npc_text WHERE id=14161;

-- From gossip_menu #10141 with text :14083 Greetings, $c.$B$BWhen the Alliance controls Wintergrasp Fortress, I will open a portal for those who wish to travel there.$B$BThe next battle begins in $3975w:$3976w$3782w:$3784w$3785w.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10141;
DELETE FROM npc_text WHERE id=14083;

-- From gossip_menu #10147 with text :14091 Only a fool would mock the appearance of my battle-garb.$B$BThis raiment of well-worn steel is from an ancient place of learning!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10147;
DELETE FROM npc_text WHERE id=14091;

-- From gossip_menu #10161 with text :14109 Tanks for Everything in northern Dalaran is the city's most popular plate armor and shield merchant.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10161;
DELETE FROM npc_text WHERE id=14109;

-- From gossip_menu #10163 with text :14109 Tanks for Everything in northern Dalaran is the city's most popular plate armor and shield merchant.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10163;
DELETE FROM npc_text WHERE id=14109;

-- From gossip_menu #10164 with text :14111 Langrom's Leather & Links in southern Dalaran should have what you seek.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10164;
DELETE FROM npc_text WHERE id=14111;

-- From gossip_menu #10165 with text :14111 Langrom's Leather & Links in southern Dalaran should have what you seek.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10165;
DELETE FROM npc_text WHERE id=14111;

-- From gossip_menu #10172 with text :14116 Come to make yourself useful?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10172;
DELETE FROM npc_text WHERE id=14116;

-- From gossip_menu #10179 with text :14123 
-- Used by source: unknown
-- option #0 "Alexstrasza, can you show me what happened here?"


DELETE FROM gossip_menu WHERE entry=10179;
DELETE FROM npc_text WHERE id=14123;
DELETE FROM gossip_menu_option WHERE menu_id=10179 AND id=0;

-- From gossip_menu #10180 with text :14082 Welcome to the Wonderworks!$B$BPlease take your time and browse the shop. We have wonderful toys for people young and old!
-- Used by source: unknown
-- option #1 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=10180;
DELETE FROM npc_text WHERE id=14082;
DELETE FROM gossip_menu_option WHERE menu_id=10180 AND id=1;

-- From gossip_menu #10189 with text :14131 
-- Used by source: unknown
-- option #0 "Lady Proudmoore, I am ready to go to Orgrimmar. Please open a portal."


DELETE FROM gossip_menu WHERE entry=10189;
DELETE FROM npc_text WHERE id=14131;
DELETE FROM gossip_menu_option WHERE menu_id=10189 AND id=0;

-- From gossip_menu #10194 with text :14140 Stand ready, $N. We attack when all of our forces have arrived!
-- Used by source: unknown
-- option #0 "Reporting for duty, your majesty! Let the assault begin!"


DELETE FROM gossip_menu WHERE entry=10194;
DELETE FROM npc_text WHERE id=14140;
DELETE FROM gossip_menu_option WHERE menu_id=10194 AND id=0;

-- From gossip_menu #10201 with text :14162 Welcome to the Legerdemain Lounge, $c. I do hope you'll enjoy your stay.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=10201;
DELETE FROM npc_text WHERE id=14162;
DELETE FROM gossip_menu_option WHERE menu_id=10201 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10201 AND id=2;

-- From gossip_menu #10202 with text :14163 Welcome to the Cantrips and Crows Tavern, $r.$B$BWatch your back while you're here, hmmm? Narisa doesn't like scrubbing blood off the floor.
-- Used by source: unknown
-- option #1 "Make this inn your home."
-- option #2 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=10202;
DELETE FROM npc_text WHERE id=14163;
DELETE FROM gossip_menu_option WHERE menu_id=10202 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10202 AND id=2;

-- From gossip_menu #10203 with text :14165 If you're shot down and caught, don't tell them your real name.  Use a codename.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10203;
DELETE FROM npc_text WHERE id=14165;

-- From gossip_menu #10204 with text :14168 
-- Used by source: unknown
-- option #0 "I... I think so...."
-- option #1 "I am ready, Lady Corastrasza."


DELETE FROM gossip_menu WHERE entry=10204;
DELETE FROM npc_text WHERE id=14168;
DELETE FROM gossip_menu_option WHERE menu_id=10204 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10204 AND id=1;

-- From gossip_menu #10205 with text :14174 The ancient tomes are always found near inscription trainers.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10205;
DELETE FROM npc_text WHERE id=14174;

-- From gossip_menu #10206 with text :14176 We did it! Can you believe what we're hearing? This is incredible!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10206;
DELETE FROM npc_text WHERE id=14176;

-- From gossip_menu #10208 with text :14178 It's a mighty good day, is it not? I do hope we see a few fireworks before this day is through.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10208;
DELETE FROM npc_text WHERE id=14178;

-- From gossip_menu #10214 with text :14197 Treasure huntin' and some hearty ale - doesn't get no better than this, $G lad:lass;.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10214;
DELETE FROM npc_text WHERE id=14197;

-- From gossip_menu #10215 with text :14198 The Emerald Dream has become a dangerous place. I grow increasingly concerned for those who have sacrificed their waking life in Azeroth in hopes of saving it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10215;
DELETE FROM npc_text WHERE id=14198;

-- From gossip_menu #10216 with text :14203 The hammers of the earthen stand united behind Bouldercrag. We will oppose Loken's minions to the end.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10216;
DELETE FROM npc_text WHERE id=14203;

-- From gossip_menu #10218 with text :14205 <The engine rumbles loudly.>
-- Used by source: unknown
-- option #0 "<Get in the bomber and return to Scalawag Point.>"


DELETE FROM gossip_menu WHERE entry=10218;
DELETE FROM npc_text WHERE id=14205;
DELETE FROM gossip_menu_option WHERE menu_id=10218 AND id=0;

-- From gossip_menu #10220 with text :14208 Finally!$b$bDa $r $c foretold in da prophecies has arrived!
-- Used by source: unknown
-- option #0 "I am ready to return to the realm of the living."


DELETE FROM gossip_menu WHERE entry=10220;
DELETE FROM npc_text WHERE id=14208;
DELETE FROM gossip_menu_option WHERE menu_id=10220 AND id=0;

-- From gossip_menu #10225 with text :14216 Be wary, $r.$b$bThis is no place for the meek.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10225;
DELETE FROM npc_text WHERE id=14216;

-- From gossip_menu #10228 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10228;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10229 with text :14221 Lok'tar! Have you come to serve the Horde in battle?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10229;
DELETE FROM npc_text WHERE id=14221;

-- From gossip_menu #10231 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10231;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10232 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10232;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10235 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10235;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10236 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10236;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10239 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10239;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10241 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10241;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10242 with text :12374 You've reached a Horde bonfire! Desecrate this bonfire and stamp it out!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10242;
DELETE FROM npc_text WHERE id=12374;

-- From gossip_menu #10245 with text :14228 The time has come for Noblegarden once again! Time to thank the Light for the rebirth of the world.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10245;
DELETE FROM npc_text WHERE id=14228;

-- From gossip_menu #10249 with text :14232 Noblegarden time! I've already found a lot of eggs. Great weather for the hunt, eh?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10249;
DELETE FROM npc_text WHERE id=14232;

-- From gossip_menu #10252 with text :14235 Now is the time in which we pay homage to the birth of life, and the eggs are symbols representing the spring and rebirth. May you enjoy the spring.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10252;
DELETE FROM npc_text WHERE id=14235;

-- From gossip_menu #10256 with text :14238 Hail, friend! Have you come to serve the sons of Azeroth in battle?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10256;
DELETE FROM npc_text WHERE id=14238;

-- From gossip_menu #10257 with text :14239 Well met, friend. Enjoying Noblegarden, I hope? Why not join in the fun?
-- Used by source: unknown
-- option #0 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=10257;
DELETE FROM npc_text WHERE id=14239;
DELETE FROM gossip_menu_option WHERE menu_id=10257 AND id=0;

-- From gossip_menu #10273 with text :14266 The frost leopard lays here tranquilized.
-- Used by source: unknown
-- option #0 "Lift the frost leopard's tail to check if it's a male or a female."


DELETE FROM gossip_menu WHERE entry=10273;
DELETE FROM npc_text WHERE id=14266;
DELETE FROM gossip_menu_option WHERE menu_id=10273 AND id=0;

-- From gossip_menu #10274 with text :14267 The icepaw bear lays here tranquilized.
-- Used by source: unknown
-- option #0 "Lift the icepaw bear's tail to check if it's a male or a female."


DELETE FROM gossip_menu WHERE entry=10274;
DELETE FROM npc_text WHERE id=14267;
DELETE FROM gossip_menu_option WHERE menu_id=10274 AND id=0;

-- From gossip_menu #10276 with text :14272 I know, I know... "fishing in a sewer?" But you'd be surprised by what you can catch down here. I've even heard stories of sharks, if you can believe it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10276;
DELETE FROM npc_text WHERE id=14272;

-- From gossip_menu #10280 with text :7778 Where would you like to fly to?
-- Used by source: unknown
-- option #0 "Show me where I can fly."


DELETE FROM gossip_menu WHERE entry=10280;
DELETE FROM gossip_menu_option WHERE menu_id=10280 AND id=0;

-- From gossip_menu #10281 with text :14281 I do not judge others by their stature, $r, but by their courage and loyalty.
-- Used by source: unknown
-- option #0 "I would like to buy from you."


DELETE FROM gossip_menu WHERE entry=10281;
DELETE FROM npc_text WHERE id=14281;
DELETE FROM gossip_menu_option WHERE menu_id=10281 AND id=0;

-- From gossip_menu #10282 with text :14284 This is a fine mess we've gotten ourselves into. We're overdue to join up with our forces in Icecrown and now we're entangled in this debacle, stuck between the Scourge and the Drakkari.$B$BI told the highlord it was a mistake to come here.$B$BSee what you can do to help out there.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10282;
DELETE FROM npc_text WHERE id=14284;

-- From gossip_menu #10283 with text :14285 Can you hear it, $c? The elements cry out that this land is almost dead. The Drakkari are stealing the power of their gods by killing them just to defend themselves against the Scourge.$B$BThey are short-sighted and will be their own undoing in the end.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10283;
DELETE FROM npc_text WHERE id=14285;

-- From gossip_menu #10314 with text :14317 Welcome, champions! All of our attempts at bringing her down have failed. We could use a hand in bringing her down with these harpoon guns.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10314;
DELETE FROM npc_text WHERE id=14317;

-- From gossip_menu #10335 with text :14326 Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.$B$BI can grant you and your friends the Fortitude of Frost, increasing your damage and reducing damage taken from enemy attacks. Should one of you be about to fall in battle, I can freeze you in a block of ice, protecting you from all damage for a short time. Know that this ability taxes my power, and I must rest after using it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10335;
DELETE FROM npc_text WHERE id=14326;

-- From gossip_menu #10340 with text :14407 Are you prepared to fight a valiant of the Argent Crusade?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10340;
DELETE FROM npc_text WHERE id=14407;

-- From gossip_menu #10343 with text :14335 Are you sure you are ready for mounted combat?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10343;
DELETE FROM npc_text WHERE id=14335;

-- From gossip_menu #10346 with text :14359 Glory to Stormwind and King Wrynn!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10346;
DELETE FROM npc_text WHERE id=14359;

-- From gossip_menu #10352 with text :14365 Here I have amassed what may well be the greatest depository of lore in all of Outland. Even the grand libraries of Silvermoon City pale in comparison.$B$BPlease... look, read, browse to your heart's content. You'll find everything organized and clearly labeled.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10352;
DELETE FROM npc_text WHERE id=14365;

-- From gossip_menu #10354 with text :14367 We were in luck to find enough parts to get these babies working again!$BHow can I help you?
-- Used by source: unknown
-- option #0 "Tell me about demolishers."
-- option #1 "I want to browse your goods."


DELETE FROM gossip_menu WHERE entry=10354;
DELETE FROM npc_text WHERE id=14367;
DELETE FROM gossip_menu_option WHERE menu_id=10354 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10354 AND id=1;

-- From gossip_menu #10367 with text :14379 The Silver Covenant welcomes you to the tournament. The Argent Crusade has asked us to register and train those interested in competing.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10367;
DELETE FROM npc_text WHERE id=14379;

-- From gossip_menu #10371 with text :14391 The Dual Talent Specialization allows you to keep two active talent sets. You will be able to easily switch between these two specializations. When you switch between sets, you will also gain access to a second glyph pane and a second set of action bars. Switching cannot be performed while in combat, and will consume your available resources. 
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10371;
DELETE FROM npc_text WHERE id=14391;

-- From gossip_menu #10373 with text :14393 Congratulations, your mind has been expanded.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10373;
DELETE FROM npc_text WHERE id=14393;

-- From gossip_menu #10374 with text :14395 We have come to compete for honor, renown, and the right to fight the Scourge alongside the brothers of the Argent Crusade.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10374;
DELETE FROM npc_text WHERE id=14395;

-- From gossip_menu #10376 with text :14398 Gnomeregan's finest have come to compete in the tournament. Wish us luck!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10376;
DELETE FROM npc_text WHERE id=14398;

-- From gossip_menu #10377 with text :14399 We of Darnassus look forward to competing in the tournament.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10377;
DELETE FROM npc_text WHERE id=14399;

-- From gossip_menu #10383 with text :14409 This is the ring where the champions practice fighting each other. It's my job to summon the knights to their practice battles.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10383;
DELETE FROM npc_text WHERE id=14409;

-- From gossip_menu #10389 with text :14424 The teleporter appears to be active and stable.
-- Used by source: unknown
-- option #0 "Teleport to the Expedition Base Camp."
-- option #1 "Teleport to the Formation Grounds."
-- option #3 "Teleport to the Colossal Forge."
-- option #4 "Teleport to the Scrapyard."
-- option #5 "Teleport to the Antechamber of Ulduar."
-- option #6 "Teleport to the Shattered Walkway."


DELETE FROM gossip_menu WHERE entry=10389;
DELETE FROM npc_text WHERE id=14424;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=5;
DELETE FROM gossip_menu_option WHERE menu_id=10389 AND id=6;

-- From gossip_menu #10390 with text :14425 On behalf of the Argent Crusade, I welcome you to the Argent Tournament.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10390;
DELETE FROM npc_text WHERE id=14425;

-- From gossip_menu #10391 with text :14426 No one builds it faster, cheaper, and better than the Blastbolt brothers!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10391;
DELETE FROM npc_text WHERE id=14426;

-- From gossip_menu #10398 with text :14453 You must be riding a tournament mount before I can instruct you.$B$BEquip a lance and find a tournament mount outside your faction's pavilion.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10398;
DELETE FROM npc_text WHERE id=14453;

-- From gossip_menu #10402 with text :14453 You must be riding a tournament mount before I can instruct you.$B$BEquip a lance and find a tournament mount outside your faction's pavilion.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10402;
DELETE FROM npc_text WHERE id=14453;

-- From gossip_menu #10408 with text :14446 I was here visiting relatives when Lordaeron fell, and then... well. I suppose I won't ever be returning to Westfall, now.$B$BSometimes I wonder if my family is still alive. More often, though, I wonder why I no longer care.
-- Used by source: unknown
-- option #0 "I want to browse your goods."
-- option #1 "Train me."


DELETE FROM gossip_menu WHERE entry=10408;
DELETE FROM npc_text WHERE id=14446;
DELETE FROM gossip_menu_option WHERE menu_id=10408 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10408 AND id=1;

-- From gossip_menu #10417 with text :14456 Only champions of Stormwind may purchase what I have to offer.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10417;
DELETE FROM npc_text WHERE id=14456;

-- From gossip_menu #10418 with text :14457 Not so fast, $r!$B$BOnly champions of Ironforge can purchase what I got ta offer.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10418;
DELETE FROM npc_text WHERE id=14457;

-- From gossip_menu #10424 with text :14463 Alas, only champions of Darnassus may purchase what I have to offer.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10424;
DELETE FROM npc_text WHERE id=14463;

-- From gossip_menu #10435 with text :14472 Welcome to the tournament, $N.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10435;
DELETE FROM npc_text WHERE id=14472;

-- From gossip_menu #10451 with text :14487 Welcome to our little chapel of the Light. Please, take a seat. Enjoy a respite from the world's ills.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10451;
DELETE FROM npc_text WHERE id=14487;

-- From gossip_menu #10453 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- option #0 "I am ready to fight!"


DELETE FROM gossip_menu WHERE entry=10453;
DELETE FROM npc_text WHERE id=14421;
DELETE FROM gossip_menu_option WHERE menu_id=10453 AND id=0;

-- From gossip_menu #10454 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10454;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10455 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10455;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10456 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- option #0 "I am ready to fight!"


DELETE FROM gossip_menu WHERE entry=10456;
DELETE FROM npc_text WHERE id=14421;
DELETE FROM gossip_menu_option WHERE menu_id=10456 AND id=0;

-- From gossip_menu #10457 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10457;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10458 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10458;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10459 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10459;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10460 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- option #0 "I am ready to fight!"


DELETE FROM gossip_menu WHERE entry=10460;
DELETE FROM npc_text WHERE id=14421;
DELETE FROM gossip_menu_option WHERE menu_id=10460 AND id=0;

-- From gossip_menu #10461 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- option #0 "I am ready to fight!"


DELETE FROM gossip_menu WHERE entry=10461;
DELETE FROM npc_text WHERE id=14421;
DELETE FROM gossip_menu_option WHERE menu_id=10461 AND id=0;

-- From gossip_menu #10462 with text :14421 Are you sure you are ready to fight a champion?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10462;
DELETE FROM npc_text WHERE id=14421;

-- From gossip_menu #10463 with text :14491 Are you here for the confessor's sermon? Good luck findin' a place to sit...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10463;
DELETE FROM npc_text WHERE id=14491;

-- From gossip_menu #10464 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10464;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10465 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10465;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10466 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10466;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10467 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10467;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10468 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10468;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10469 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10469;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10470 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10470;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10471 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10471;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10472 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10472;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10473 with text :14384 Are you sure you are ready to fight a valiant?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10473;
DELETE FROM npc_text WHERE id=14384;

-- From gossip_menu #10475 with text :14495 It is an honor to represent the Argent Crusade in this tournament.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10475;
DELETE FROM npc_text WHERE id=14495;

-- From gossip_menu #10478 with text :14500 The Argent Tournament has begun in the northern reaches of Icecrown, $c. If you've yet to find your way there, I can pay your way.$B$BThe more we have participating in the melee, the stronger we'll be when we strike against the Lich King.
-- Used by source: unknown
-- option #0 "I'll take the flight."


DELETE FROM gossip_menu WHERE entry=10478;
DELETE FROM npc_text WHERE id=14500;
DELETE FROM gossip_menu_option WHERE menu_id=10478 AND id=0;

-- From gossip_menu #10503 with text :14535 We can has aged yolk?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10503;
DELETE FROM npc_text WHERE id=14535;

-- From gossip_menu #10504 with text :14536 You should stay away from walrus-men. They could pup-nap you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10504;
DELETE FROM npc_text WHERE id=14536;

-- From gossip_menu #10557 with text :14613 I'm going deaf. That big green harpy won't shut up for five seconds. I know how to drive this thing, all right? I'm not an idiot!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10557;
DELETE FROM npc_text WHERE id=14613;

-- From gossip_menu #10559 with text :14615 It's a pretty smooth ride if you don't mind the dust.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10559;
DELETE FROM npc_text WHERE id=14615;

-- From gossip_menu #10562 with text :14618 Welcome aboard the Zephyr, the smoothest ride you're likely to get across the Barrens. Sit back and enjoy the flight, eh, kid? Ain't nothing like that sweet, dry air mixed with the scent of oil.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10562;
DELETE FROM npc_text WHERE id=14618;

-- From gossip_menu #10563 with text :14619 I be Tolwe. Job be to keep da peace an' watch. So I be watchin'.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10563;
DELETE FROM npc_text WHERE id=14619;

-- From gossip_menu #10566 with text :14622 Can you believe it? They finally opened this place up for us to fly a zeppelin through here! No fly zone no more, am I right? We only crashed one zeppelin into a cliff on the test run. I don't see why they were so worried.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10566;
DELETE FROM npc_text WHERE id=14622;

-- From gossip_menu #10597 with text :14659 The true crusader is more than just a hero in the battle against evil... he is an exemplar, a rallier to the cause, a champion in the eyes of all his people.$B$BAs High Crusader, it is my duty to task such men and women with worthy quests.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10597;
DELETE FROM npc_text WHERE id=14659;

-- From gossip_menu #10599 with text :14664 Welcome, champion! Have you gathered your forces in preparation for the challenges of the Trials of the Crusader?
-- Used by source: unknown
-- option #1 "Yes. We are prepared for the challenges ahead of us." submenu #10600


DELETE FROM gossip_menu WHERE entry=10599;
DELETE FROM npc_text WHERE id=14664;
DELETE FROM gossip_menu_option WHERE menu_id=10599 AND id=1;
DELETE FROM gossip_menu WHERE entry=10600;
DELETE FROM npc_text WHERE id=14665;
DELETE FROM gossip_menu_option WHERE menu_id=10600 AND id=0;

-- From gossip_menu #10601 with text :14669 You are not yet strong enough to do battle on the Isle of Conquest. Return when you have gained more experience.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10601;
DELETE FROM npc_text WHERE id=14669;

-- From gossip_menu #10602 with text :14669 You are not yet strong enough to do battle on the Isle of Conquest. Return when you have gained more experience.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10602;
DELETE FROM npc_text WHERE id=14669;

-- From gossip_menu #10605 with text :14673 You are not yet seasoned enough to enter a battleground, $c. Return when you have gained more experience.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=10605;
DELETE FROM npc_text WHERE id=14673;
DELETE FROM gossip_menu_option WHERE menu_id=10605 AND id=0;

-- From gossip_menu #10606 with text :14673 You are not yet seasoned enough to enter a battleground, $c. Return when you have gained more experience.
-- Used by source: unknown
-- option #0 "I would like to go to the battleground."


DELETE FROM gossip_menu WHERE entry=10606;
DELETE FROM npc_text WHERE id=14673;
DELETE FROM gossip_menu_option WHERE menu_id=10606 AND id=0;

-- From gossip_menu #10614 with text :14688 Are you ready for your first challenge, $c?
-- Used by source: unknown
-- option #0 "I am ready."
-- option #2 "I am ready."


DELETE FROM gossip_menu WHERE entry=10614;
DELETE FROM npc_text WHERE id=14688;
DELETE FROM gossip_menu_option WHERE menu_id=10614 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10614 AND id=2;

-- From gossip_menu #10615 with text :14689 You come to learn how to ride?
-- Used by source: unknown
-- option #0 "Train me."


DELETE FROM gossip_menu WHERE entry=10615;
DELETE FROM npc_text WHERE id=14689;
DELETE FROM gossip_menu_option WHERE menu_id=10615 AND id=0;

-- From gossip_menu #10616 with text :14692 <The Hippogryph looks anxious and ready to go!>
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10616;
DELETE FROM npc_text WHERE id=14692;

-- From gossip_menu #10630 with text :14723 The spirits of the elements are wise. They've been here long before us and will persist long after we're gone. When they speak to us, we must listen.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10630;
DELETE FROM npc_text WHERE id=14723;

-- From gossip_menu #10631 with text :14724 The spirits of the elements surround us. We must always listen. I have seen firsthand the consequences when we ignore their warnings...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10631;
DELETE FROM npc_text WHERE id=14724;

-- From gossip_menu #10638 with text :14736 There are some who desire to stop gaining experience from their actions; to forever remain at the level of strength they are now, and never grow stronger.$B$BI can make this possible... for a fee, of course.$B$BBut understand this: Once you pay me, you will NO LONGER GAIN EXPERIENCE. None. Not one whit.$B$BShould you change your mind afterwards and want to start gaining experience again, I can undo the process for the same fee.
-- Used by source: unknown
-- option #0 "I no longer wish to gain experience."


DELETE FROM gossip_menu WHERE entry=10638;
DELETE FROM npc_text WHERE id=14736;
DELETE FROM gossip_menu_option WHERE menu_id=10638 AND id=0;

-- From gossip_menu #10648 with text :14751 The wind fiercely cuts across this bluff, and most life has long since fled this corner of Icecrown. However, all it takes is a bit of coaxing for it to return, and that is why I walk these grounds. One day these trees will tower over us all.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10648;
DELETE FROM npc_text WHERE id=14751;

-- From gossip_menu #10656 with text :14764 Good day, $N.  If you require my services as an auctioneer, I regret to inform you: no.  Only grand master engineers possess the minimum intellectual capacity to interface with my superior functions.$b$bMore importantly, why are you still talking to me?
-- Used by source: unknown
-- option #0 "What's on the auction house today?"


DELETE FROM gossip_menu WHERE entry=10656;
DELETE FROM npc_text WHERE id=14764;
DELETE FROM gossip_menu_option WHERE menu_id=10656 AND id=0;

-- From gossip_menu #10662 with text :14775 Greetings, $c.$B$BThe Horde currently control Wintergrasp Fortress.  When the battle is about to begin, talk to me to enter the battle.$B$BThe next battle begins in $4354k.
-- Used by source: unknown
-- option #0 "Queue for Wintergrasp."


DELETE FROM gossip_menu WHERE entry=10662;
DELETE FROM npc_text WHERE id=14775;
DELETE FROM gossip_menu_option WHERE menu_id=10662 AND id=0;

-- From gossip_menu #10666 with text :14775 Greetings, $c.$B$BThe Horde currently control Wintergrasp Fortress.  When the battle is about to begin, talk to me to enter the battle.$B$BThe next battle begins in $4354k.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10666;
DELETE FROM npc_text WHERE id=14775;

-- From gossip_menu #10667 with text :14783 Good day, $gsir:madam;!  How may I be of assistance?
-- Used by source: unknown
-- option #0 "I would like to check my deposit box."
-- option #1 "Let me browse your goods."


DELETE FROM gossip_menu WHERE entry=10667;
DELETE FROM npc_text WHERE id=14783;
DELETE FROM gossip_menu_option WHERE menu_id=10667 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10667 AND id=1;

-- From gossip_menu #10668 with text :14785 This tear in the fabric of time and space looks ominous.  Different scenes flash by at terrifying speed.  A very brave person might try to jump through at the right time...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10668;
DELETE FROM npc_text WHERE id=14785;

-- From gossip_menu #10679 with text :14819 We suffered a lot of casualties when capturing your next challenge!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10679;
DELETE FROM npc_text WHERE id=14819;

-- From gossip_menu #10709 with text :14865 Now that you have completed the Trial of the Crusader, you should consider returning to take part in the Trial of the Grand Crusader. Only the strongest adventurers can hope to complete the Trial, but you will be rewarded well for your efforts.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10709;
DELETE FROM npc_text WHERE id=14865;

-- From gossip_menu #10710 with text :14866 Congratulations, please take the portal to Dalaran when you're ready!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10710;
DELETE FROM npc_text WHERE id=14866;

-- From gossip_menu #10739 with text :14902 Naznik's the local barber. He set up shop on the top ring of the Trade Quarter.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10739;
DELETE FROM npc_text WHERE id=14902;

-- From gossip_menu #10751 with text :14914 The scribe of the city is in the Apothecarium, someone named Margaux Parchley.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10751;
DELETE FROM npc_text WHERE id=14914;

-- From gossip_menu #10772 with text :14934 This pit stinks and I'm surrounded by snakes, but I'm here to do a job.$b$bEver since Putress pulled his stunt at the Wrath Gate, the Warchief doesn't trust these people as far as he can throw them. That's why we're here. The apothecaries can't do a thing without me.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10772;
DELETE FROM npc_text WHERE id=14934;

-- From gossip_menu #10775 with text :14940 It's true our new... guests are limiting our work somewhat, but it is only natural to be wary when a genocidal attempt is made. Perhaps in time they will be convinced that Putress was an unfortunate anomaly and allow us to continue our work in peace.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10775;
DELETE FROM npc_text WHERE id=14940;

-- From gossip_menu #10777 with text :15319 Varimathras? No, he hasn't reported in for some time. No doubt he's off on an errand of importance for his queen.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10777;
DELETE FROM npc_text WHERE id=15319;

-- From gossip_menu #10807 with text :14984 I suppose I should not be surprised at this cold reception. We have long been in hiding, and the separation from our brethren was necessary.$b$bThat time, however, is done. Whether the residents of this young tree come to accept us or not, the Highborne are returning to light, and we will not turn our backs on what we are.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10807;
DELETE FROM npc_text WHERE id=14984;

-- From gossip_menu #10813 with text :15320 While Varimathras is, uh... away, I've been assigned to assist Captain Bragor in his duties.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10813;
DELETE FROM npc_text WHERE id=15320;

-- From gossip_menu #10822 with text :15005 You'll want to look in the Undercity.  In the old Ruins of Lordaeron, south of here, you'll find an elevator down. Once you're there, ask an Undercity Guardian for further directions.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10822;
DELETE FROM npc_text WHERE id=15005;

-- From gossip_menu #10845 with text :15037 There are some who do not believe in the legendary Night Elf Mohawks.$B$BI pity the fools.
-- Used by source: unknown
-- option #0 "I believe in you."


DELETE FROM gossip_menu WHERE entry=10845;
DELETE FROM npc_text WHERE id=15037;
DELETE FROM gossip_menu_option WHERE menu_id=10845 AND id=0;

-- From gossip_menu #10847 with text :15040 A few weeks in this pathetic castle will give us time to work on some new products and let others forget about the unfortunate... misunderstanding in Dragonblight.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10847;
DELETE FROM npc_text WHERE id=15040;

-- From gossip_menu #10854 with text :15066 Are you surprised to see me here? Everyone needs clean laundry, and what better way to do it than with your own water elemental?$B$BSimply bring your laundry, pay a nominal fee, and before you know it, everything will be fresh and clean!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10854;
DELETE FROM npc_text WHERE id=15066;

-- From gossip_menu #10858 with text :15076 Never trust the Sunreavers. They are hard at work undermining us in the eyes of our Argent Crusade allies.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10858;
DELETE FROM npc_text WHERE id=15076;

-- From gossip_menu #10875 with text :15101 The old wounds still linger, $g lad:lass;. I can feel 'em in me bones, even now. Aye, I got a score to settle with Arthas and ye can believe I'm gonna give that boy the beatin' I shoulda given 'im when he was a wee lad. Always knew there was something wrong with 'im.$B$BTell me when yer crew is ready and we'll lift off for the top o' the citadel.$B$BArthas won't be expectin' this!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10875;
DELETE FROM npc_text WHERE id=15101;

-- From gossip_menu #10876 with text :15103 This is our final stand. What happens here will echo through the ages. Regardless of outcome, they will know that we fought with honor. That we fought for the freedom and safety of our people.$B$BRemember, hero, fear is your greatest enemy in these befouled halls. Steel your heart and your soul will shine brighter than a thousand suns. The enemy will falter at the sight of you. They will fall as the light of righteousness envelops them!
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10876;
DELETE FROM npc_text WHERE id=15103;

-- From gossip_menu #10885 with text :15123 Lost your Rocket Pack? Have you checked your bags?
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10885;
DELETE FROM npc_text WHERE id=15123;

-- From gossip_menu #10910 with text :15158 Ready yourself, $c.$b$bThe time has come for the Lich King's reign to come to an end.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10910;
DELETE FROM npc_text WHERE id=15158;

-- From gossip_menu #10921 with text :15170 Yo! I'm here representing the Crown Chemical Company.$B$BYou looking for a gift? A job? Maybe a little something for yourself? Well, you've come to the right place, friend.$B$BIf I don't have what you need, our mascot Kwee or the Lovely Merchant beside me will.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10921;
DELETE FROM npc_text WHERE id=15170;

-- From gossip_menu #10922 with text :15171 We'll make use of these supplies to get everyone ready for a fight.$B$BContinue on. We'll meet you ahead.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10922;
DELETE FROM npc_text WHERE id=15171;

-- From gossip_menu #10925 with text :15174 We will follow your lead, heroes. The Scourgelord will die this eve.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10925;
DELETE FROM npc_text WHERE id=15174;

-- From gossip_menu #10929 with text :15188 Hey, pal, I don't know who you are or why you've been following me around, but I'm about to board a ship and I want to be left alone, got it?
-- Used by source: unknown
-- option #0 "I have a rocket here with your mark on it, Snivel." submenu #10945


DELETE FROM gossip_menu WHERE entry=10929;
DELETE FROM npc_text WHERE id=15188;
DELETE FROM gossip_menu_option WHERE menu_id=10929 AND id=0;
DELETE FROM gossip_menu WHERE entry=10945;
DELETE FROM npc_text WHERE id=15209;
DELETE FROM gossip_menu_option WHERE menu_id=10945 AND id=0;
DELETE FROM gossip_menu WHERE entry=10946;
DELETE FROM npc_text WHERE id=15210;

-- From gossip_menu #10933 with text :15194 'Twas a fierce battle, $N! Take a moment to rest and gather yer forces. Who knows what lies beyond that door?$B$BLet me know when yer ready and we'll begin our ascent into the upper reaches of the citadel.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10933;
DELETE FROM npc_text WHERE id=15194;

-- From gossip_menu #10948 with text :15212 Did you know about our "Charitable Charms" program?$B$BOfficial Crown event mascots like myself are authorized to distribute Lovely Charm Collector's Kits.$B$BYou can then use the Lovely Charms you gather to create Lovely Charm Bracelets for friends and loved ones, or turn them in to Lovely Merchants for Love Tokens!$B$BOne popular activity is making bracelets for your favorite leaders to let them know they're appreciated and adored...
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10948;
DELETE FROM npc_text WHERE id=15212;

-- From gossip_menu #10976 with text :15256 I don't like the look of this 'Crown Chemical Co.' one bit.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=10976;
DELETE FROM npc_text WHERE id=15256;

-- From gossip_menu #10996 with text :15298 I was once a paladin, $N.  Now the Light shuns me, for my sins are too great.$B$BI will aid my allies as best I can, but never again will I wield the powers of darkness.
-- Used by source: unknown
-- option #0 "Ormus, what happened to your eyes?"


DELETE FROM gossip_menu WHERE entry=10996;
DELETE FROM npc_text WHERE id=15298;
DELETE FROM gossip_menu_option WHERE menu_id=10996 AND id=0;

-- From gossip_menu #11007 with text :15310 Finally, the backup I've been waiting for! I prepared the paperwork that Snagglebolt requested. All that remains is for someone to serve it.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11007;
DELETE FROM npc_text WHERE id=15310;

-- From gossip_menu #11013 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11013;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11014 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11014;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11015 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11015;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11016 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11016;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11017 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11017;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11018 with text :15221 The transporter glimmers with a crystalline light.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11018;
DELETE FROM npc_text WHERE id=15221;

-- From gossip_menu #11097 with text :15446 Greetings, hero. I craft and sell Frost Witch armor for shaman.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11097;
DELETE FROM npc_text WHERE id=15446;

-- From gossip_menu #11098 with text :15447 Greetings, hero. I craft and sell Shadowblade armor for rogues.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11098;
DELETE FROM npc_text WHERE id=15447;

-- From gossip_menu #11101 with text :15451 Greetings, hero. I craft and sell Lightsworn armor for paladins.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11101;
DELETE FROM npc_text WHERE id=15451;

-- From gossip_menu #11102 with text :15452 Greetings, hero. I craft and sell Crimson Acolyte armor for priests.$B
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11102;
DELETE FROM npc_text WHERE id=15452;

-- From gossip_menu #11194 with text :15578 At last it is time for the exiled gnomes to return.$B$BOnce again Gnomeregan will be our home!
-- Used by source: unknown
-- option #0 "What is going on here?" submenu #11191


DELETE FROM gossip_menu WHERE entry=11194;
DELETE FROM npc_text WHERE id=15578;
DELETE FROM gossip_menu_option WHERE menu_id=11194 AND id=0;
DELETE FROM gossip_menu WHERE entry=11191;
DELETE FROM npc_text WHERE id=15580;
DELETE FROM gossip_menu_option WHERE menu_id=11191 AND id=0;
DELETE FROM gossip_menu WHERE entry=11192;
DELETE FROM npc_text WHERE id=15581;

-- From gossip_menu #11211 with text :15615 Looks just powerful enough to carry one gnome.  Maybe two.
-- Used by source: unknown
-- option #0 "Board the Flying Machine."
-- option #1 "Take me to Mekkatorque!"


DELETE FROM gossip_menu WHERE entry=11211;
DELETE FROM npc_text WHERE id=15615;
DELETE FROM gossip_menu_option WHERE menu_id=11211 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=11211 AND id=1;

-- From gossip_menu #11387 with text :15858 Ye've got some stones, $glad:lass;, comin' in here unannounced.
-- What do ye want?
-- Used by source: unknown
-- option #0 "Insult Coren Direbrew's brew."


DELETE FROM gossip_menu WHERE entry=11387;
DELETE FROM npc_text WHERE id=15858;
DELETE FROM gossip_menu_option WHERE menu_id=11387 AND id=0;

-- From gossip_menu #11422 with text :15906 You will find a pair of draenei conversing with Tyrande Whisperwind in the upper level of The Temple of the Moon.$B$BThey will know how to help you.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11422;
DELETE FROM npc_text WHERE id=15906;

-- From gossip_menu #11431 with text :15921 Dedicated to those that fell to the Scourge during the war in the frozen wastes.
-- Used by source: unknown
-- No gossip option


DELETE FROM gossip_menu WHERE entry=11431;
DELETE FROM npc_text WHERE id=15921;


-- From gossip_menu #10129 with text :14063 How I can guide your path, young one?
-- Used by source: gossip option menu #10129 id #2
-- option #0 "Guide me to the Fortress Graveyard." submenu #10129
-- option #1 "Guide me to the Sunken Ring Graveyard."
-- option #2 "Guide me to the Broken Temple Graveyard." submenu #10129
-- option #3 "Guide me to the Westspark Graveyard."
-- option #4 "Guide me to the Eastspark Graveyard."
-- option #5 "Guide me back to the Horde landing camp. " submenu #4326

DELETE FROM gossip_menu WHERE entry=10129;
DELETE FROM npc_text WHERE id=14063;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=3;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=4;
DELETE FROM gossip_menu_option WHERE menu_id=10129 AND id=5;

-- From gossip_menu #9868 with text :11714 Welcome to my Inn, weary traveler. What can I do for you?
-- Used by source: creature #22922 (Innkeeper Aelerya)
-- option #0 "Trick or Treat!"
-- option #1 "Make this inn your home."
-- option #2 "Let me browse your goods."

DELETE FROM gossip_menu WHERE entry=9868;
DELETE FROM npc_text WHERE id=11714;
DELETE FROM gossip_menu_option WHERE menu_id=9868 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9868 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=9868 AND id=2;

-- From gossip_menu #7948 with text :9051 Please, sit and make yourself comfortable.
-- Used by source: unknown
-- option #0 "Make this inn your home."
-- option #2 "I want to browse your goods."

DELETE FROM gossip_menu WHERE entry=7948;
DELETE FROM npc_text WHERE id=9051;
DELETE FROM gossip_menu_option WHERE menu_id=7948 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7948 AND id=2;

-- From gossip_menu #7896 with text :9051 Please, sit and make yourself comfortable.
-- Used by source: unknown
-- option #2 "Make this inn your home."

DELETE FROM gossip_menu WHERE entry=7896;
DELETE FROM npc_text WHERE id=9051;
DELETE FROM gossip_menu_option WHERE menu_id=7896 AND id=2;

-- From gossip_menu #7481 with text :9051 Please, sit and make yourself comfortable.
-- Used by source: creature #16739 (Caregiver Breel)
-- option #1 "Make this inn your home."
-- option #2 "I want to browse your goods."

DELETE FROM gossip_menu WHERE entry=7481;
DELETE FROM npc_text WHERE id=9051;
DELETE FROM gossip_menu_option WHERE menu_id=7481 AND id=1;
DELETE FROM gossip_menu_option WHERE menu_id=7481 AND id=2;

-- From gossip_menu #20000 with text :14783 Good day, $gsir:madam;!  How may I be of assistance?
-- Used by source: unknown
-- option #0 "I would like to check my deposit box."
-- option #1 "Let me browse your goods."

DELETE FROM gossip_menu WHERE entry=20000;
DELETE FROM npc_text WHERE id=14783;
DELETE FROM gossip_menu_option WHERE menu_id=20000 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=20000 AND id=1;

-- From gossip_menu #9793 with text :13172 
-- Used by source: unknown
-- No gossip option

DELETE FROM gossip_menu WHERE entry=9793;
DELETE FROM npc_text WHERE id=13172;

-- Frenzyheart kill you if you come back. You no welcome here no more! <- WotLK content
DELETE FROM db_script_string WHERE entry=2000000163;

-- Gossip option for hunter pet trainers introduced in WotLK
DELETE FROM gossip_menu_option WHERE menu_id=4783 AND id=0;

-- Now, we optimize the gossip_menu table after all the changes made to it
ALTER TABLE gossip_menu ORDER BY entry ASC;
-- Now, we optimize the npc_text table after all the changes made to it
ALTER TABLE npc_text ORDER BY ID ASC;
-- Now, we optimize the gossip_menu_option table after all the changes made to it
ALTER TABLE gossip_menu_option ORDER BY menu_id ASC;
-- Now, we optimize the dbscripts_on_gossip table after all the changes made to it
ALTER TABLE dbscripts_on_gossip ORDER BY id ASC;
-- Now, we optimize the gossip_menu table after all the changes made to it
ALTER TABLE creature_loot_template ORDER BY entry ASC;

-- Now the update is complete, with drop the temporary column we added to the db_version table
ALTER TABLE db_version DROP COLUMN condition_update_11;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;