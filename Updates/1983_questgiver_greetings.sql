-- https://github.com/TrinityCore/TrinityCore/issues/20903
DELETE FROM `questgiver_greeting` WHERE `entry` IN (264, 344, 392, 900, 2080, 3337, 3339, 3390, 3519, 3567, 3847, 3995, 4049, 5767, 11862);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
(264, 0, 'At ease, $c. If you are just passing though I suggest you stick to the roads and only travel by day. If your business is here in Darkshire, consider lending your abilities to the Night Watch. Our Skill is unquestionable but our numbers are small.', 0, 0), -- Commander Althea Ebonlocke
(344, 0, 'Redridge is awash in chaos!', 5, 0), -- Magistrate Solomon
(392, 0, 'Do not be alarmed, $r.  I have long since passed from this land but I intend no harm to your kind.  I have witnessed too much death in my time.  My only wish now is for peace.  Perhaps you can help my cause.', 0, 0), -- Captain Grayson
(900, 0, 'What business brings you before the Court of Lakeshire and the Honorable Magistrate Solomon?', 6, 0), -- Bailiff Conacher, only 1 quest though
(2080, 0, 'The creation of Teldrassil was a grand achievement, but now the world must shift to regain its balance.', 1, 0), -- Denalan
(3337, 0, 'The heft of an axe, the battlecry of your allies, the spray of blood in your face. These are the things a warrior craves, $n. I will carve out The Barrens with my sword in the name of the Horde.', 0, 0), -- Kargal Battlescar, only 1 quest though
(3339, 0, 'This had better be good...', 0, 0), -- Captain Thalo'thas Brightsun
(3390, 0, 'The Barrens holds a variety of substances for which we, the apothecaries of Lordaeron may find use.', 1, 1), -- Apothecary Helbrim
(3519, 0, 'I, Arynia Cloudsbreak, have been tasked with protecting the sanctity of the Oracle Grove.', 0, 0), -- Sentinel Arynia Cloudsbreak
(3567, 0, 'Well met, $n. It is good to see that $cs like yourself are taking an active part in protecting the groves.', 1, 0), -- Tallonkai Swiftroot
(3847, 0, 'Ashenvale is a lush forest, brimming with life. It is a pleasure to walk down its secret paths in search of herbs, but one must take care. The forest is not without its dangers.', 0, 0), -- Orendil Broadleaf
(3995, 0, 'The spirits are restless!', 5, 0), -- Witch Doctor Jin'Zil
(4049, 0, 'The spirit of Stonetalon weeps... It weeps from its mountain peaks, to its rivers, to its severed, dying trees.', 0, 0), -- Seereth Stonebreak
(5767, 0, 'Our only hope is to create something good from an already bad situation.', 1, 0), -- Nalpak
(11862, 0, '', 0, 0); -- Tsunaman

-- https://github.com/TrinityCore/TrinityCore/issues/20997
DELETE FROM `questgiver_greeting` WHERE `entry` IN (2216, 2706, 2817, 4046, 4452, 4498, 5412, 5641, 10537);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
-- valid for TBC?
(2216, 0, 'We are but so close to developing the New Plague that our Dark Lady desires with such fervor.', 0, 0), -- Apothecary Lydon

(2706, 0, 'Thanks to the Warchief, even here in the ruins of our former prison some hope remains, and the Horde rises anew.', 0, 0), -- Tor'gan
(2817, 0, 'You must be hard up to be wandering this Badlands, $c. A hard up like me.$B$BOr maybe you\'re here because you\'re crazy. Crazy, like me.', 0, 0), -- Rigglefuzz
(4046, 0, 'You must listen, young $c.  Listen to the whisperings in the darkness, for they offer guidance in these troubled times.', 1, 0), -- Magatha Grimtotem
(4452, 0, 'Come a little closer.  We have important matters to discuss, you and I.$B$BAnd some of them we don\'t want everyone to hear...', 0, 0), -- Kravel Koalbeard
(4498, 0, 'Greetings, $c.', 0, 0), -- Maurin Bonesplitter
(5412, 0, 'The centaur clans rule the wastes of Desolace. If united, they would be a terrible force. It is then good that the centaur clans are not united but instead bicker and war amongst themselves.', 0, 0), -- Gurda Wildmane
(5641, 0, 'The main threat Thrall wishes dealt with is the Burning Blade---members of the Horde that have given their loyalty to the demons. They seek to practice their dark magic and care little for Thrall\'s visions of the Horde\'s future here in Kalimdor.', 1, 0), -- Takata Steelblade
(10537, 0, 'We cannot take care of all the threats in this area alone. We could use another fighting hand, $n.', 0, 0); -- Cliffwatcher Longhorn

-- https://github.com/TrinityCore/TrinityCore/issues/21547
DELETE FROM `questgiver_greeting` WHERE `entry` IN (1776, 1950, 3441, 4485, 4500, 6986, 7777, 7825, 9536, 5204);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
(1776, 0, 'We spent so much of our lives in fight, memories of peaceful times grow evermore distant.', 0, 0), -- Magtoor
(1950, 0, 'My brother and I are on a scouting mission, but we are holed up in this farmhouse. The Deathstalkers need your help!', 0, 0), -- Rane Yorick
(3441, 0, 'To hunt a beast, one must know that beast.  One must learn and respect its ways.$B$BTo do otherwise is not to hunt.  To do otherwise is merely to kill.', 0, 0), -- Melor Stonehoof
(4485, 0, 'The days grow long, and still no end to the conflicts of these lands can be seen. It takes no spell caster to know that much. Take up a blade while you can, $c. War can come to our doors at any time, and if I\'m not mistaken, you look to be one who revels in it.', 1, 0), -- Belgrom Rockmaul
(4500, 0, 'Overlord Mok\'Morokk boss. You do what I say.', 0, 0), -- Overlord Mok'Morokk
(7777, 0, '', 0, 0), -- Rok Orhan
(7825, 0, '', 0, 0), -- Oran Snakewrithe
(6986, 0, 'My name is Dran Droffers, and this over here is my dummy son Malton.  If you need salvage, or are looking to sell salvage, then we\'re who you need to be talking to!', 1, 0), -- Dran Droffers
(9536, 0, 'The quest for wealth is the only goal for a respectable goblin.$B$BWell, maybe wealth... and a big, loud death!', 0, 0), -- Maxwort Uberglint
(5204, 0, 'If we are to make our place in this world, then we will do so through study, and through the will to ignore our fading human instincts.', 0, 0); -- Apothecary Zinge

UPDATE questgiver_greeting SET EmoteId=1 WHERE Entry IN (9536,3391,4077,4452,5887);

-- +74
REPLACE INTO questgiver_greeting (Entry, Type, Text, EmoteId, EmoteDelay) VALUES
(239,0,'Sometimes I think there''s a big gray cloud in the sky, just raining down bad luck upon us.  First, we''re driven off our land, and now we can''t even get out of Westfall.  Everything''s a mess.  Something needs to be done.',0,0),
(240,0,'Ach, it''s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $N...',0,0),
(265,0,'I have sensed your coming for quite some time, $n.  It was written in the pattern of the stars.',0,0),
(267,0,'Welcome to the town of Darkshire.  Clerk Daltry at your service.  Can I be of some assistance?',0,0),
(272,0,'Hello, hello!  Welcome to my kitchen, $g sir : m''lady;!  This is where all of the Scarlet Raven Tavern''s finest delicacies are made.  Ah, just smell the wonderful aroma!',0,0),
(273,0,'Keep the door closed, $C.  Never know when the Dark Riders will be passing through again.',0,0),
(278,0,'Hello, good $gsir:lady;.  Have a seat, and a meal if you''re hungry.  Don''t fret if I look busy with my needlework - I''m listening to you...',0,0),
(288,0,'Huh?!?  Oh.  You don''t look like a Defias thief...or a member of the Night Watch.  Take pity on a poor soul, will ya?',0,0),
(294,0,'Hail, traveler.  My eyesight may be poor but I can sense the footsteps of a $c from a mile away.  For years I defended Stormwind with pride but once my eyes failed me, I was forced to retire.',0,0),
(313,0,'Welcome to the Tower of Azora, young $C.  I am Theocritus.$B$BDo you have business with me?  Or...do I have business with you, perhaps?',0,0),
(341,0,'I don''t have much time for idle talk, $N.  I''ve got to get this bridge rebuilt before the rains come.  I''ve finished every project on-time and under budget and I''m not about to start slipping now.',0,0),
(342,0,'Hail, $N!  Welcome to my humble garden.  The weather has been perfect lately.  Let us hope it holds steady for a ripe harvest.',0,0),

-- replaces "Redridge is awash in chaos!", emoteid 5 - possibly from a later expansion/quest?
(344,0,'Who is this $c who goes before the Court of Lakshire in the Kingdom of Stormwind?  State your business within this township, $R.  The orc threat to the Kingdom is far too great to squander time in idle conversation.',0,0),

(381,0,'Well met, $C.  If you''re here for business, then get yourself a brew and we''ll have ourselves a talk.',0,0),
(382,0,'I don''t have time to chat, citizen, but if you''re willing to give us a hand against the orcs, then I''ll find a use for you.',0,0),
(415,0,'Hey $Gbuddy:ma''am;, do you think you could give me a hand with something?  I''m really in dire straits here...',0,0),
(464,0,'Hail, $C.  Ill times these are, my friend, for our town is besieged!  The Blackrock Orcs attack from Stonewatch Keep, the Shadowhides loom over the Tower of Ilgalar, and the Redridge Gnoll Pack gathers strength.  I hope you''re not here for a holiday...',0,0),
(469,0,'Greetings, $c.  If you''re a friend of Colonel Kurzen then I''ll have you cut down where you stand! but if you''ve come to aid us, then lend an ear...',0,0),
(633,0,'It''s dark times that have come, $c... All too soon will we lose everything... When the Light will forsake all but those who truly walk under the Light.',0,0),
(656,0,'There were thieves everywhere! $b$bIt was horrible.  The cave came down on us.  I think the mining company is all dead, including my brother, the Foreman.',0,0),
(715,0,'Another fine day in the jungle!  It''s going to be quite a hunt, I can feel it.  Once Barnil is done cleaning the guns, I''m taking the hunting party deep into the twisting vines.  Not such a bad way for an old war vet to spend his retirement, eh?',0,0),
(733,0,'You watch where you step around here, $Gson:lass;.  You might not be a part of our outfit, but that doesn''t mean I won''t take a cane to you if you fall out of line!',0,0),
(9081,0,'I never miss...',25,0),
(9177,0,'Stand at attention, soldier!$B$BWINKY! SOUND OFF!',5,0),
(9562,0,'Greetings, $R.',2,0),
(10260,0,'Welcome to Kibler''s Exotic Pets! How can you help me today??',5,0),
(16361,0,'The Lich King has brought war against us from the frozen north, and only we of the Argent Dawn stand in his way.',1,0),
(16478,0,'Good day to you, citizen. Have you come to aid us against the Scourge?',1,0),
(16786,0,'Greetings, $n. If you bring me necrotic stones from the undead invaders, I can give you access to the stores of the Argent Dawn.',66,0),
(16788,0,'Greetings, $c. I am the Flamekeeper. During the Midsummer Fire Festival, it is my duty to keep this fire beside me burning brightly. It is an honor to be selected for such a task; I fill it gladly.$b$b How can I help you?',1,0),
(1071,0,'If there''s one thing time has taught me it''s that no assignment is a dull one.  Protecting the Thandol Span should have been an easy task.  But with the brunt of the army fighting alongside the alliance, we were overwhelmed here and Dun Modr has fallen.',0,0),
(1105,0,'You know, I always wanted to be a Prospector, but I was born with a head for numbers and the Guild decided I would be best suited to keep the books! Studying, studying, every day of my youth...',0,0),
(1139,0,'Well hello there, citizen. The name''s Bluntnose, Magistrate Bluntnose, to be precise. I''m charged with overseeing the well-being of Thelsamar, and believe you me, we could always use another strong set of arms around here!',0,0),
(1141,0,'If you''re here for the food, then welcome!  You won''t find finer dining in all of Stormwind...or Azeroth!$B$BIf you''re here on other matters, then please be brief.  I have a dozen dishes in preparation, and must care for each.',0,0),
(1239,0,'If you''re willing to endure tales that will shiver your timbers and sog your skivvies, then get yourself a drink and sit for a spell...',1,0),
(1267,0,'Welcome to the Thunderbrew Distillery, founded by dear ol'' pappy, Arkilus Thunderbrew.  I''ve been keeping the place running ever since my older brother, Grimbooze, disappeared in a drunken haze a few harvests ago.',0,0),
(1344,0,'Although we''re trudging through a slow period at these ruins, I''m confident it won''t last long.  But in the meantime, I could use someone like you.  Would you like to aid the Dwarven Explorers'' Guild?',0,0),
(1356,0,'I''m in the middle of a very important task.  Prospector business.  Unless you have something equally important to say, which I doubt, then you''ll have to excuse me.',0,0),
(1440,0,'You''ll not find a greater cache of knowledge than in the Royal Library of Stormwind!',1,0),
(1646,0,'Greetings, I am Baros Alexston, City Architect of Stormwind.',0,0),
(1719,0,'Over here, you worthless...! If you want to do something useful, listen quick!',0,0),
(1748,0,'I am Bolvar Fordragon, Highlord of Stormwind.',66,0),
(2092,0,'Siege engines are the pride of every pilot!',0,0),
(2094,0,'Greetings, $c. I''m in a bit of a pinch right now, running very low on hides.',0,0),
(2263,0,'I hope you''re here to work, $C.  We have a lot to do and the Horde, the Syndicate and the Ogres aren''t going to help us.',0,0),
(2497,0,'Eh?  You have business with Nimboya?',0,0),
(2501,0,'Oy!  You here for a game of knuckles?',0,0),
(2700,0,'We at Refuge Pointe hold one of the few remaining patches of Stromgarde territory in the Arathi Highlands.  And we''re losing ground...$B$BIf you have words for me, then I hope they are good tidings.',0,0),
(2713,0,'This wooden board holds roughly-made wanted posters.',0,0),
(2785,0,'Back away!  Stay back!  I have a pack full of blastpowder and I''m not afraid to use it!  I''ll blow us all away!$B$BOh, never mind.  I thought you were someone else....',0,0),
(2786,0,'Welcome to Bonegrip''s Runes and Dooms, $c.  You may look, but do not touch.$B$BSome of the knowledge here is not meant for the...uninitiated.',0,0),
(2860,0,'It was quite a departure, let me tell you, $c. We were grabbing whatever wasn''t nailed down or could be removed quickly. We''re a little spare on supplies because of it.',0,0),
(2910,0,'Bastards came right at us at night, after we''d gotten a few drinks in us. Otherwise, we could''ve taken ''em, count on it.$B$BEveryone''s dead now... except a few of us.',1,0),
(2920,0,'Hey there, $N.$B$BLotwil''s not the most perceptive boss I''ve had. He actually gets really involved with his work. So much so that sometimes his servants don''t eat, or get paid.$B$B<Lucien frowns over at Lotwil.>$B$BBut that doesn''t mean you should suffer.',1,0),
(2981,0,'Hail, $c. In my years I have seen many eager tauren who wish to prove their worth to the tribe. It should not be forgotten that eagerness is no substitute for wisdom and experience.',0,0),
(2993,0,'The land has been good to our people, $c. We must be thankful for our good fortune.',0,0),
(3663,0,'Good day, $glad:lass;! Perhaps you could help me with some things that need to be taken care of.',0,0),
(3666,0,'Hmm... I can plug this wire in here and that will power the fizzletan gear, but then the hydrophlange will need an alternate power source... Maybe I can... Oh, hello! Hey, want to help me try a new invention?',0,0),
(3848,0,'The balance of nature is a delicate one, and easily tipped.  Are you brave enough to make things right?',1,0),
(4078,0,'Hello, friend. What can I do for you?',6,0),
(4453,0,'Be careful where you put that foot of yours, $gmister:ma''am;.  We''re not all blessed with the lofty height of a $r.',0,0),
(4456,0,'No, Longears isn''t my real name.  And I''m not going to tell you what it is, so don''t ask.',0,0),
(5396,0,'The Alliance has many stakes in Desolace, and our hold here is unstable.$B$BWill you help us?',0,0),
(5638,0,'I''ve got a lot going on out here in Desolace, $N. Roetten wants us to pick up some reagents for one of our clients as well as fetch some of these lost items.$B$BSeein'' as you''re here to help out, why don''t we get started?',1,0),
(6031,0,'Some can''t stand the heat of the Great Forge, but I think the heat is just right.  And it''s the best place to do some serious smithwork.',1,0),
(6179,0,'Many tests await a paladin of the Light, $N. Be assured, our paths will cross many times in the future if you remain passionate and hold to those virtues that we praise.',1,0),
(6569,0,'Where Troggs and Leper Gnomes roam stands our home - Gnomeregan.$B$BOur families lost, our homes displaced. Scattered.$B$BOh how I long for the days of carefree Gnomeregan life, but those days are no more. We must make our stand! We must save Gnomeregan!',0,0),
(6579,0,'For Gnomeregan!',0,0),

-- replaces blank text
(7777,0,'The Gordunni Ogres encroach upon our lands.  We send as many as are willing to face them in the desecrated ruins of Feralas.',1,0),

(663,0,'The Carevin family fights for victory under the Light. My duty under the Light is to give my life in their battle against against the undead. Master Carevin has tasked me with the extermination of the vile worgen in Duskwood. Perhaps you would assit me?',0,0),
(289,0,'Eh?  Greetings, young $C.  You''re a brave one to find your way here with all those wandering creatures about!$B$BWell now that you are here, maybe you can help an old hermit...',0,0),
(1977,0,'I was bred and educated for public service. A representative of the people. My skill was not in arms or crafts, but in words and persuasion',0,0),
(1254,0,'Troggs! I swear the gods put them in this land only to torment me! Four inches deeper into the mines, then two feet back from the troggs!',0,0),
(4792,0,'Some people think the swamp''s no good... no good, they say.',0,0);
