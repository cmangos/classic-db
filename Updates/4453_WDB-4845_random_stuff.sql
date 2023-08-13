
-- more stuff

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1217, 1284, 1377, 2151, 3657, 3936, 4048, 4080, 4088, 5393, 5637, 5694, 5892, 5906, 6019, 7877, 7907, 11036, 15297, 16281, 16494, 27337);

-- Glorin Steelbrow
INSERT INTO `questgiver_greeting` VALUES (1217, 0, 'Harumph!  As if I don''t have enough to do out here in the muck, without all these distractions!', 0, 0);

-- Archbishop Benedictus
INSERT INTO `questgiver_greeting` VALUES (1284, 0, 'My blessings go to you, $c, and I pray they may guide and protect you during these times of trouble.  Be vigilant, but remain hopeful for peace, for hope is our greatest weapon against the darkness.', 0, 0);

-- Pilot Stonegear
INSERT INTO `questgiver_greeting` VALUES (1377, 0, 'Driving a Steam Tank isn''t for everyone.  It takes an iron grip and nerves of steel...lucky I have both!  How about you?  How''s your mettle?  Want to prove it to me?', 0, 0);

-- Moon Priestess Amara
INSERT INTO `questgiver_greeting` VALUES (2151, 0, 'Hail, $C.  The roads of our fair forest are not entirely without peril.  Tread cautiously.', 0, 0);

-- Sentinel Elissa Starbreeze
INSERT INTO `questgiver_greeting` VALUES (3657, 0, 'I must keep vigilant watch, $n. Auberdine is surrounded by enemies, new and old. Watch your step when you leave this town for I cannot protect you outside of it. That is why I need help with tasks that would take me outside.', 0, 0);

-- Shandris Feathermoon
INSERT INTO `questgiver_greeting` VALUES (3936, 0, 'In the name of Elune, the Sentinels keep vigilant watch over all our lands, from the cobbled streets of Darnassus to the edge of Ashenvale Forest.', 2, 0);

-- Falfindel Waywarder
INSERT INTO `questgiver_greeting` VALUES (4048, 0, 'You look as though you have traveled from afar, $r.', 2, 0);

-- Kaela Shadowspear
INSERT INTO `questgiver_greeting` VALUES (4080, 0, 'Gaxim is so focused on trying to convince the night elves that his methods are superior that I had no choice but to focus his energies on something--so I unleashed him on the Venture Co.$B$BI remain focused on helping the Charred Vale to the northwest.', 0, 0);

-- Elanaria
INSERT INTO `questgiver_greeting` VALUES (4088, 0, 'A warrior''s path is one of determination, $gbrother:sister;.  It may begin with strength of arms, but it endures through force of will.', 1, 0);

-- Quartermaster Lungertz
INSERT INTO `questgiver_greeting` VALUES (5393, 0, 'Nethergarde keep always needs more supplies - supplies to help our mages in their research, and supplies to keep our defenders in top fighting shape.', 1, 0);

-- Roetten Stonehammer
INSERT INTO `questgiver_greeting` VALUES (5637, 0, 'Pleased to meetcha, $c. Me name''s Roetten. I lead Reclaimers Incorporated.$B$BMe guild and I specialize in aquiring lost goods. We usually hire brave adventurers and send them off to finish tasks for those who aren''t able, or don''t have the time.', 2, 0);

-- High Sorcerer Andromath
INSERT INTO `questgiver_greeting` VALUES (5694, 0, ' ', 0, 0);

-- Searn Firewarder
INSERT INTO `questgiver_greeting` VALUES (5892, 0, ' ', 0, 0);

-- Xanis Flameweaver
INSERT INTO `questgiver_greeting` VALUES (5906, 0, 'Hello, shaman. It is good to see one of my $gbrothers:sisters; here. May I aid you somehow?', 1, 0);

-- Hornizz Brimbuzzle
INSERT INTO `questgiver_greeting` VALUES (6019, 0, ' ', 0, 0);

-- Latronicus Moonspear
INSERT INTO `questgiver_greeting` VALUES (7877, 0, ' ', 0, 0);

-- Daryn Lightwind
INSERT INTO `questgiver_greeting` VALUES (7907, 0, ' ', 0, 0);

-- Leonid Barthalomew the Revered
INSERT INTO `questgiver_greeting` VALUES (11036, 0, 'Through knowledge, may we find salvation.', 1, 0);

-- Arcanist Helion
-- INSERT INTO `questgiver_greeting` VALUES (15297, 0, 'Knowledge is power - TRUE power, my young friend.  You''ll be wise to acquire as much of it as you can, and pay proper heed to those who have already done so.', 0, 0);

-- Keeper of the Rolls
INSERT INTO `questgiver_greeting` VALUES (16281, 0, 'The Argent Dawn will turn away none who are willing to sacrifice for our cause.', 1, 0);

-- Lieutenant Rukag
INSERT INTO `questgiver_greeting` VALUES (16494, 0, 'Good day to you, citizen. Have you come to aid us against the Scourge?', 1, 0);

-- --------------------------------------------------------------------------- --

-- https://www.wowhead.com/wotlk/quest=176/wanted-hogger
-- 2nd Questgiver for "Wanted: "Hogger"" (Wanted Poster)
DELETE FROM `gameobject_questrelation` WHERE `id` = 156561 AND `quest` = 176;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (156561, 176);

-- https://tbc.wowhead.com/quest=467/stonegears-search
-- 2nd Questgiver for "Stonegear's Search" (Pilot Longbeard)
DELETE FROM `creature_questrelation` WHERE `id` = 2092 AND `quest` = 467;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2092, 467);

-- https://tbc.wowhead.com/quest=1919/report-to-jennea
-- 2nd Questgiver for "Report to Jennea" (Zaldimar Wefhellt)
DELETE FROM `creature_questrelation` WHERE `id` = 328 AND `quest` = 1919; -- tbcmangos exists
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (328, 1919);
-- and a 3rd Questgiver for "Report to Jennea" (Magis Sparkmantle) -- even Wowhead isn't uptodate
DELETE FROM `creature_questrelation` WHERE `id` = 1228 AND `quest` = 1919;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1228, 1919);

-- https://tbc.wowhead.com/quest=1698/yorus-barleybrew
-- 2nd Questgiver for "Yorus Barleybrew" (Darnath Bladesinger)
DELETE FROM `creature_questrelation` WHERE `id` = 7315 AND `quest` = 1698;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (7315, 1698);

-- https://www.wowhead.com/wotlk/quest=9292/cracked-necrotic-crystal
-- Missing Questtaker for "Cracked Necrotic Crystal" (Lieutenant Orrin)
DELETE FROM `creature_involvedrelation` WHERE `id` = 16478 AND `quest` = 9292; -- tbcmangos exists
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16478, 9292);

-- https://www.wowhead.com/wotlk/quest=9310/faint-necrotic-crystal
-- Missing Questtaker for "Faint Necrotic Crystal" (Lieutenant Rukag)
DELETE FROM `creature_involvedrelation` WHERE `id` = 16494 AND `quest` = 9310; -- tbcmangos exists
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16494, 9310);

-- https://www.wowhead.com/wotlk/quest=1684/elanaria
-- 2nd Questgiver for "Elanaria" (Moon Priestess Amara)
DELETE FROM `creature_questrelation` WHERE `id` = 2151 AND `quest` = 1684;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2151, 1684);
-- 3rd Questgiver for "Elanaria" (Sentinel Elissa Starbreeze)
DELETE FROM `creature_questrelation` WHERE `id` = 3657 AND `quest` = 1684;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (3657, 1684);

-- --------------------------------------------------------------------------- --

-- text fix (Seeping Corruption)
UPDATE quest_template SET
OfferRewardText = 'I never dreamed the elixir would take hold that quickly. Thank you, $n. I will get to work on the rest of these samples right away. I''m sure they''ll be usable by the Lady Sylvanas and the Forsaken soon enough.'
WHERE entry = 3570;

-- text fix (The Sparklematic 5200!)
UPDATE quest_template SET
OfferRewardText = 'You insert the grime-encrusted item and three silver coins into the Sparklematic 5200.  The machine surges to life in an almost frenzied attempt to purge the grime from the unknown item.  Loud, violent churning sounds beat from the heart of the machine.  The metal frame of the beast creaks and groans as it lurches from side to side...',
RequestItemsText = 'It would seem that the device needs some sort of grime-encrusted object to clean and three silver coins to get the contraption working.  So long as both are present, the Sparklematic 5200 should work...'
WHERE entry = 4602;

-- text fix (Letter from the Front)
UPDATE quest_template SET
RequestItemsText = 'Yes? What do you have there?'
WHERE entry = 9295;

-- text fix (Page from the Front)
UPDATE quest_template SET
RequestItemsText = 'Yes? What do you have there?'
WHERE entry = 9300;

-- text fix (Missive from the Front)
UPDATE quest_template SET
RequestItemsText = 'Yes? What do you have there?'
WHERE entry = 9302;

-- --------------------------------------------------------------------------- --

-- several text fixes but almost class/race/name placeholder stuff

-- Explanation in case you think this isn't really needed:
-- In most cases (in Class-Quests etc), the NPC is not talking directly about your class but about the class itself, so no placeholder is needed.
-- In English this makes no real difference because male and female class indications are the same word, but in other languages there are in most cases 2 words for it.
-- In the case of a translation, you can now see that they are not placeholders but real words.

-- text fix (The Binding)
UPDATE quest_template SET
OfferRewardText = 'Again, you have done well, $N. It has been quite some time since I have seen a young warlock with as much potential as you. Be assured that I will continue to watch your progress, and prepare and assist you in your future trials.$B$BFor now, let me show you the summoning spell for your newly dominated succubus.'
WHERE entry = 1474;

-- text fix (Vile Familiars)
UPDATE quest_template SET
OfferRewardText = 'Throughout your training as a warlock, you will learn to call forth beings of many sorts. Some may not seem it, but all are useful tools.$B$BDo not be fooled by the imp''s small size. As you no doubt noticed, it is still a formidable adversary.',
RequestItemsText = 'It is important that you can control the beings that you summon through your magic. There are few enough interested in learning the ways of the warlock that I would risk throwing your life away by teaching you something before you are ready.'
WHERE entry = 1485;

-- text fix (Devourer of Souls)
UPDATE quest_template SET
OfferRewardText = 'Hm... $n. You are still new to your path, but I sense the possibility for greatness in you.$B$BYou were born with gifts, $n. See that they do not go to waste.'
WHERE entry = 1507;

-- text fix (Beginnings)
UPDATE quest_template SET
OfferRewardText = 'Very good, very good! You''ve done well, $n. Perhaps the interest that is being shown in you is deserved, after all.$B$BThat''ll be for the others to decide--assuming your imp doesn''t overpower you and nip your career in the bud. For now, I''m satisfied that you''ll probably survive your first few months as a warlock.$B$BA word about the imp, $n. As a gnome knows, don''t let its size fool you, its magic can be very dangerous.'
WHERE entry = 1599;

-- text fix (Vejrek)
UPDATE quest_template SET
OfferRewardText = 'Vejrek sure was an ugly one, eh?  Nicely done, $n!  You have what it takes, now let''s start your lesson...$B$BYou may not know it, but a strong defense is very important to a warrior.  It keeps him standing against foes that''d fell others, and that''s what your allies need.',
RequestItemsText = 'Have you been to Vejrek''s hut, $n?  Is that troll stink I smell on you?'
WHERE entry = 1678;

-- text fix (Tormus Deepforge)
UPDATE quest_template SET
OfferRewardText = 'Muren sent you, did he?  Yes, I can make you a nice weapon... but before I do that, I have a favor to ask of you.$B$BDon''t worry.  It''s plenty dangerous and could mean your death; it''s exactly the sort of job a warrior wants.'
WHERE entry = 1680;

-- text fix (Elanaria)
UPDATE quest_template SET
OfferRewardText = 'I bid you greetings, $n.  Your name rings loudly in Darnassus, for you show promise.  But we shall soon see if you possess the strength of will to follow the path of the warrior.'
WHERE entry = 1684;

-- text fix (Surena Caledon)
UPDATE quest_template SET
OfferRewardText = 'Surena was talented, but not enough so to gain mastery of warlock magic on her own. It''s a shame to see talent wasted, but sometimes it is necessary.$B$BI hope my investment in you will bear different results.'
WHERE entry = 1688;

-- text fix (Smith Mathiel)
UPDATE quest_template SET
RequestItemsText = 'Greetings, young warrior.  How might my skills serve you?'
WHERE entry = 1692;

-- text fix (The Shieldsmith)
UPDATE quest_template SET
OfferRewardText = 'Ah, Barleybrew Scalder.  Great stuff!  So you''ve been to see Yorus, eh?$B$BI can get you a shield, yes $gsir:ma''am;!  You won''t find a better one, and that''s no lying!'
WHERE entry = 1702;

-- text fix (Mathiel)
UPDATE quest_template SET
OfferRewardText = 'I bid you greetings, warrior.'
WHERE entry = 1703;

-- text fix (The Windwatcher)
UPDATE quest_template SET
OfferRewardText = 'You have traveled far, young warrior.  I see fire in your eyes.  You seek a weapon of great power, yes?$B$BI can help you with your quest.  And you can help me with mine.'
WHERE entry = 1791;

-- text fix (The Binding)
UPDATE quest_template SET
RequestItemsText = 'Every warlock should have a felhunter at his command. Though it be difficult to tame, the powers it brings to its master far outweigh the cost.'
WHERE entry = 1795;

-- text fix (Fragments of the Orb of Orahil)
UPDATE quest_template SET
RequestItemsText = 'And obviously not being a mage, I wonder if I can trust you at all. I can smell the power of the arcane on you, but you seem to have eluded the stank of corruption that comes so willingly with your kind.$B$BYes, a warlock... a warlock has come to ask for my help.$B$BWell, what is it I can do for you, $n?'
WHERE entry = 1799;

-- text fix (Tome of the Cabal) Alliance
UPDATE quest_template SET
OfferRewardText = 'Well done! The Tome of the Cabal and three pristine--slightly scratched, I suppose--rods of channeling.$B$BThis will be interesting. It''s been some time since a young warlock took on a felhunter to make his own.'
WHERE entry = 1804;

-- text fix (Tome of the Cabal) Horde
UPDATE quest_template SET
OfferRewardText = 'Well done! The Tome of the Cabal and three pristine--slightly scratched, I suppose--rods of channeling.$B$BThis will be interesting. It''s been some time since a young warlock took on a felhunter to make his own.'
WHERE entry = 1805;

-- text fix (Ulag the Cleaver)
UPDATE quest_template SET
OfferRewardText = 'Well done, $n.  Ulag was no minor agent of the Scourge.  You have shown the Deathguards, and hence the Dark Lady, that you are a warrior of skill and resolve, and are worthy of further instruction.',
RequestItemsText = 'Your task is yet undone, $n.  It is not wise for a warrior to show fear...'
WHERE entry = 1819;

-- text fix (Trial at the Field of Giants)
UPDATE quest_template SET
OfferRewardText = 'Nicely done, $N! In passing the trial at the Field of Giants, you take one more step down the warrior''s path.'
WHERE entry = 1824;

-- text fix (Ula'elek and the Brutal Gauntlets)
UPDATE quest_template SET
OfferRewardText = 'Greetings, $n.  Old Thun''grim sent word to me of your coming, but had he kept silent your presence here would not have surprised me.$B$BThe spirits follow your progress, young warrior, and they tell me that many foes have fallen before you.'
WHERE entry = 1839;

-- text fix (Orm Stonehoof and the Brutal Helm)
UPDATE quest_template SET
OfferRewardText = 'Greetings, warrior.  I am Orm, and Thun''grim tells me you wish a helm made?'
WHERE entry = 1840;

-- text fix (Speak with Bink)
UPDATE quest_template SET
OfferRewardText = 'Oh, I can see you have promise, yes you do! But it takes more than promise to be a good mage.  And if you''re not a good mage, then you''re a bad mage.  And bad mages are part of the problem, yes they are!$B$BOops, I''m getting ahead of things.  Let''s begin at the start!'
WHERE entry = 1879;

-- text fix (Mage-tastic Gizmonitor)
UPDATE quest_template SET
OfferRewardText = 'Oh, splendid day!  When I made the gizmonitor I never realized how dependent on it I would become.  Now I can begin my studies anew!$B$BThank you, $n!  And here--these were my first tools as a mage.  They''re a little scratched but they''re well tested.  Take your pick--I''m sure you''ll find either of them useful.'
WHERE entry = 1880;

-- text fix (Report to Jennea)
UPDATE quest_template SET
OfferRewardText = '$N, I have a mission for you, here in the mage district. Listen closely, for there is no time to waste.'
WHERE entry = 1919;

-- text fix (Gathering Materials)
UPDATE quest_template SET
OfferRewardText = 'Yes, these are great pieces of linen.  I can make a fine robe with them.  And after I weave the rift gems into it, we''ll have a garment fit for a mage!'
WHERE entry = 1921;

-- text fix (Nether-lace Garment)
UPDATE quest_template SET
OfferRewardText = 'Here is your nether-lace, $n.  It is both comfortable and durable, and holds the magic of the laughing sisters'' hair.$B$BEnjoy, and if you find it amenable, please mention so to Deino.  She is a mage on whose good side I wish to stay...'
WHERE entry = 1946;

-- text fix (Simple Parchment)
UPDATE quest_template SET
OfferRewardText = 'Ah, that''s my parchment.  I heard you''d be coming to the Valley, $n.  I''m glad to see you made it--let''s hope you survive the trials ahead. Like I said, as you gain in power, come to me--I will do what I can to train you in the ways of the warrior.$B$BGood luck, $n, and return to me whenever you feel ready.'
WHERE entry = 2383;

-- text fix (Simple Tablet)
UPDATE quest_template SET
OfferRewardText = 'You''ll find this place fitting as you continue to train in the warrior ways. If you have any questions, feel free to ask anyone around, and when you feel you''re ready, come back to me for training. I''ve mastered as much as any warrior here in the Valley and can pass that knowledge on to you... for a price.',
RequestItemsText = 'Another troll to bolster the ranks. Good enough for me.$B$BYou''ll probably have a hard time hefting a good weapon like an axe, but a spear''s just as good as anything else.$B$BWelcome to the Valley of Trials.'
WHERE entry = 3065;

-- text fix (Simple Note)
UPDATE quest_template SET
RequestItemsText = 'Ah, at last, you''ve arrived, warrior. I did not lie in my note, $n. We are a special breed also, not unlike the druids or shamans of our tribe. You are just as important. We are the ones called upon to defend our borders, to hunt the centaur, and to go to war.'
WHERE entry = 3091;

-- text fix (Simple Letter)
UPDATE quest_template SET
OfferRewardText = 'Get yourself squared away, learn the layout of the land, and come back to me whenever you need training. I''ll be here night or day.$B$BThe Knights of the Silver Hand have done well in making this place fairly safe, but as you meet the other citizens, I think you''ll find they all have problems they could use some help with--help a warrior can give them. Good luck.'
WHERE entry = 3100;

-- text fix (Simple Rune)
UPDATE quest_template SET
OfferRewardText = 'Other things you''ll probably see too, just so yer in the know: dwarves usin'' magic in a fight ''stead of a rifle. Some of us takin'' to worshippin'' the Holy Light like some of the humans, and, last but not least, troggs. You''ll learn more ''bout them later, but what you need to know now is that I''m here to help ya.$B$BI be here to teach ya how to be a real warrior. Anytime ya think ya need more trainin'', come back to me and I''ll see what I can do.'
WHERE entry = 3106;

-- text fix (Simple Memorandum)
UPDATE quest_template SET
RequestItemsText = 'Ah, well, another memorandum from a gnome on a mission... isn''t this quaint.$B$BNo, no, I ain''t teasin'' ya, little one. Gotta respect your tenacity, that much is fer sure. I''d be just as peeved if Ironforge was taken by Dark Iron dwarves, so don''t be thinkin'' I don''t feel for your plight...'
WHERE entry = 3112;

-- text fix (Glyphic Memorandum)
UPDATE quest_template SET
RequestItemsText = 'Yeah, what''s that, gnome? Speak up, if you don''t mind. I don''t hear so good after a few ales.'
WHERE entry = 3114;

-- text fix (Tainted Memorandum)
UPDATE quest_template SET
OfferRewardText = 'But none of that matters. What matters is that you''ve seen your own Holy Light! You know where power truly comes from. You realize that having our own allies is much more... prudent. Special allies. Allies that, no matter the task, will obey till their last breath.$B$BAnd that''s where I come in, $n. I can train you in the beginnings of those special powers. Seek me out often and I will do what I can to teach you more spells.',
RequestItemsText = 'Wonderful! You got my memorandum obviously.$B$BIgnore the fools around you, $n. The Holy Light?! The sword and shield?! These aren''t paths for ones as open minded as us. Look at what \"normal\" magic did to our home. Coupled with  those damned tinkerers, our race almost became extinct. And now we have to rely on the dwarves-- they''d rather spend time allying with humans than help us rebuild our own home. We''re like second-class citizens. Have you seen the way they look at us?'
WHERE entry = 3115;

-- text fix (Simple Sigil)
UPDATE quest_template SET
OfferRewardText = 'Soon you will see others from different races in the boughs of our home--do not let it cause any prejudice within you. They are welcome. They will aid us when they can. Not all of them will be altruistic, but they should be granted some amount of trust.$B$BBut none of this matters now. Now we must focus on you, and how you can aid our people. I am here for that very purpose. I will train you in the ways of a warrior as you become stronger. Return to me whenever you wish and I will do what I can to aid you.'
WHERE entry = 3116;

-- text fix (Shard of a Felhound)
UPDATE quest_template SET
RequestItemsText = 'Yes, $n? Have you chosen? Infernal or felhound?$B$BEach choice is personal and should reflect your strengths and weaknesses. It is not unheard of for a warlock to enhance themselves further instead of making up in areas they lack. Sometimes overpowering an enemy is just as strong a tactic than becoming a more balanced spell caster.'
WHERE entry = 4962;

-- text fix (Shard of an Infernal)
UPDATE quest_template SET
RequestItemsText = 'Yes, $n? Have you chosen? Infernal or felhound?$B$BEach choice is personal and should reflect your strengths and weaknesses. It is not unheard of for a warlock to enhance themselves further instead of making up in areas they lack. Sometimes overpowering an enemy is just as strong a tactic than becoming a more balanced spell caster.'
WHERE entry = 4963;

-- text fix (Lord Banehollow)
UPDATE quest_template SET
OfferRewardText = 'My patience spans the millenia, warlock.  But do not think that allows you more than an instant of my time...'
WHERE entry = 7623;

-- text fix (Ulathek the Traitor)
UPDATE quest_template SET
OfferRewardText = 'Ah, how splendid!  After rotting a week, this heart will prove a succulent treat!  Perhaps I will send for Ulathek''s head and place it before me as I eat...$B$BYou have done me a service, warlock, and so my patience for you has grown.  Marginally.'
WHERE entry = 7624;

-- text fix (Magecraft)
UPDATE quest_template SET
OfferRewardText = '<Sanath sneers at you.>$B$BArchmage Xylem awaits your arrival.'
WHERE entry = 8250;

-- text fix (Report to Lanthan Perilon)
UPDATE quest_template SET
OfferRewardText = 'Magistrix Erona told me you''d be along quick enough, $N. The Falthrien Academy to our west - the huge floating building with the ornate spires - is in bad shape. You''re going to be leading the effort to recapture it from one of the Wretched - a blood elf who has forever succumbed to their basest cravings.$b$bI hope you''re ready to work. This is not only going to be a lesson about danger, but also of what happens when you forsake the realities of who you are.'
WHERE entry = 8327;

-- text fix (Felendren the Banished)
UPDATE quest_template SET
OfferRewardText = 'Felendren''s head... you are to be commended, $N.  You''ve succeeded where others, like Felendren, have utterly failed.  Perhaps you are truly ready to be a contributing member of blood elf society.$b$bYour success here means that you are capable of surviving the greater threats that lurk in Eversong... and believe me, there are plenty to face.'
WHERE entry = 8335;

-- text fix (Windows to the Source)
UPDATE quest_template SET
OfferRewardText = 'Well done!  Yes, this should be enough essence to get started on my research.  I have a strong feeling that this tainted essence will be just the thing... the window, as I mentioned.$B$BFollowing the orders of your masters is highly recommended as a young warlock.  As I promised you, here is the reward for obeying instructions and completing them in a competent manner - the knowledge to summon and bind your own imp.$B$BUse it well, $n.',
RequestItemsText = 'The essences of the wraiths will serve me well as sources of experimentation.  Much like your life as a warlock, it is important to learn from what we find in the world... before twisting it to our will.  With demons as the richest source of power, it will be quite the boon if such a taint is truly present on the isle.$B$BWell... a boon for us warlocks, that is.'
WHERE entry = 8344;

-- text fix (Thirst Unending)
UPDATE quest_template SET
OfferRewardText = 'You''ve done well today, $n.  Your willingness to learn shows that you may very well rise above the unyielding cravings you must endure as a blood elf.$b$bRest not on your laurels, young one, but instead seek to master what you have learned.  Only through diligence will we as a race survive.$b$bTake this - it may be of some use to you.  Go now, and bring glory once more to our people.',
RequestItemsText = 'It is not an option or a choice... you must quench your magical thirst.  To fail in this is to fail as a blood elf.  Those who thought they could control their needs without tutoring now find themselves as one of the Wretched.$b$bYou do NOT want to end up as an insane addict.  Believe me.'
WHERE entry = 8346;

-- text fix (Aiding the Outrunners)
UPDATE quest_template SET
OfferRewardText = 'Well hello there, $C! I heard that a resourceful young blood elf formerly in the service of Magistrix Erona might be making their way down here to help us Outrunners out. We certainly welcome the help, especially from someone who''s proven to be so competent.$b$bI hope you''re interested in running an errand or two for us.'
WHERE entry = 8347;

-- text fix (An Imp's Request)
UPDATE quest_template SET
OfferRewardText = 'What a splendid warlock you are!$B$B<Impsy holds the felcloth to his face.>$B$BOh how I love the feel of it, the way it burns your skin and weaves evil thoughts through the mind...'
WHERE entry = 8419;

-- text fix (Hot and Itchy)
UPDATE quest_template SET
OfferRewardText = 'Wow! You are too kind. Especially for a warlock!$B$B<Impsy holds the felcloth to his face.>$B$BOh how I love the feel of it, the way it burns your skin and weaves evil thoughts through the mind...'
WHERE entry = 8420;

-- text fix (Warrior Kinship)
UPDATE quest_template SET
OfferRewardText = 'I need no proof to know what you have done, warrior.  I can see the determination etched in your expression.'
WHERE entry = 8423;

-- text fix (War on the Shadowsworn)
UPDATE quest_template SET
OfferRewardText = 'Already you have subdued my pain and honored me.  Thank you, warrior.'
WHERE entry = 8424;

-- text fix (Warlock Training)
UPDATE quest_template SET
OfferRewardText = '$N - your name has passed my ears as one seeking out a master in the ways of the warlock.  You look capable enough, but I seek more than just looks from my students.  You must be ready to delve where others fear to look to gain your power.  I will teach you, but I will not tolerate failure.$B$BThere will be monetary costs associated with your training, but you should be more concerned with the cost your mind is willing to make.  If you are ready, we shall begin.'
WHERE entry = 8563;

-- text fix (Warrior Training)
UPDATE quest_template SET
OfferRewardText = 'It is good that you seek my guidance.  For centuries I have taught young draenei warriors, so I may know a thing or two on how you should begin.  I see in you the makings of a great warrior, but only if you listen carefully to what I have to teach.$B$BAre you ready to learn, young warrior?'
WHERE entry = 9289;

-- text fix (Fetch!)
UPDATE quest_template SET
OfferRewardText = 'Oh, well done...  I told you to jump in a pond, and you did.  I can only imagine what you''d do if one of your good friends asked it of you.$B$BIf you want a reward for your efforts, it is this: never lift a finger without first knowing what''s in it for you.  The mage''s mind is his greatest weapon.  Remember that and try to use yours a bit more.'
WHERE entry = 9402;

-- text fix (Behomat)
UPDATE quest_template SET
OfferRewardText = 'Ah, so you''ve finally come. I am Behomat, and I will instruct you in the ways of the warrior arts. Ruada told me of your trial against the ravager, and I am impressed. And I have a gift for you.$B$BWhat we have scavenged from the wreckage of the Exodar is little, and must be given to those most able. Please take a weapon suited to your fighting style and carry it with the knowledge you have earned it.$B$BAnd speaking of fighting styles, it''s time you learned something new.'
WHERE entry = 10350;

-- text fix (Carendin Summons)
UPDATE quest_template SET
OfferRewardText = 'Ah, yet another power hungry initiate.  Wonderful!$B$BWouldn''t be much of a warlock if you didn''t thirst for power, now would you $gboy:girl;?  Let''s get on with it.'
WHERE entry = 10605;

