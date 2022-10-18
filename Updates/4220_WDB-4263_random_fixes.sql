
-- random fixes

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1740,1938,1952,2055,2229,2277,2500,2934,3050,3428,4454,4630,5598,5636,5675,5878,6868,7802,10428,11259,11596,14567,19936);
-- backup
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (1740, 1, 'This collection of scrolls contains various logistic and strategic information, as well as coded correspondences.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (1938, 0, 'The Kirin Tor did not heed my warnings!  The Alliance is a sham.  Arugal is a wreckless fool.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (1952, 0, 'Hello, $c.  If you\'re here, then you must know that Silverpine is saturated with our enemies.  To survive, the Forsaken must drive them back!', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (2055, 0, 'The Royal Apothecary Society shall heed The Dark Lady\'s call to uncover the New Plague and drive Arthas and his heathen Scourge Army from the world once and for all.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (2229, 0, 'To think, the place the Warchief was born and raised lies so close.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (2277, 0, 'I have a great deal of work to do.  Are you here to aid me with my research?', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (2500, 0, 'They\'re out there!  I can hear them at night, laughing.  Oh, they\'ll pay!  They...will...pay!!', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (2934, 0, 'Knowledge is both tool and weapon to those with the will to use it.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (3050, 0, 'The tauren are sons and daughters of the Earthmother, and we show respect to all her children.  Even the beasts we slay are cherished, as their bodies give nourishment and their skins provide warmth.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (3428, 0, 'The dust of the Barrens parches my throat more and more every day, $N. But it is worth the sacrifice to remain here if it helps the Horde and the warchief.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (4454, 0, 'Aha!  Did you see that!  I think this new auto-spanner is going to do just the trick for my new influx manifold design.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (4630, 0, 'What a great day for racing! Oh, who am I kidding? Every day\'s a great day for racing!', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (5598, 0, 'What do you ask of me?', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (5636, 0, 'What do you want? I\'d be a whole lot happier up in the skies than grounded and yapping with a $r right now.$b$bGuess we can\'t all get what we want.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (5675, 0, 'The summoning of beings from the chaos that lies beyond our world is essential to the mastery of the warlock arts, $N. I am glad to see the progress you have made.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (5878, 0, 'My vision has darkened, but there are many kinds of sight...', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (6868, 0, 'Whatcha need, $c?  I trust that you\'ve come out to this wasteland for a reason other than idle chit chat.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (7802, 0, 'So few make it this far, even fewer make it past. Do not become a statistic, $N.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (10428, 0, 'Whitereach Post started off as a small hunting camp... Now, everyone wants to set up shop and call this home.$b$b<Motega shrugs his shoulder>', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (11259, 0, 'Desolace is not such a bad place, if you don\'t mind the constant harassments from the centaurs.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (11596, 0, 'My business plan never accounted for housing giant kodos... maybe I should have gone into the underwater basket weaving business instead.', 0, 0);
-- INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES (14567, 0, 'These Mithril Order guys are sissies.', 0, 0);

-- Rok Orhan
UPDATE `questgiver_greeting` SET `Text` = 'The Gordunni Ogres encroach upon our lands.  We send as many as are willing to face them in the desecrated ruins of Feralas. ' WHERE `Entry` = 7777 AND `Type` = 0;

-- Syndicate Documents
INSERT INTO `questgiver_greeting` VALUES (1740, 1, 'This collection of scrolls contains various logistic and strategic information, as well as coded correspondences.', 0, 0);

-- Dalar Dawnweaver
INSERT INTO `questgiver_greeting` VALUES (1938, 0, 'The Kirin Tor did not heed my warnings!  The Alliance is a sham.  Arugal is a wreckless fool.', 0, 0);

-- High Executor Hadrec
INSERT INTO `questgiver_greeting` VALUES (1952, 0, 'Hello, $c.  If you''re here, then you must know that Silverpine is saturated with our enemies.  To survive, the Forsaken must drive them back!', 0, 0);

-- Master Apothecary Faranell
INSERT INTO `questgiver_greeting` VALUES (2055, 0, 'The Royal Apothecary Society shall heed The Dark Lady''s call to uncover the New Plague and drive Arthas and his heathen Scourge Army from the world once and for all.', 0, 0);

-- Krusk
INSERT INTO `questgiver_greeting` VALUES (2229, 0, 'To think, the place the Warchief was born and raised lies so close.', 0, 0);

-- Loremaster Dibbs
INSERT INTO `questgiver_greeting` VALUES (2277, 0, 'I have a great deal of work to do.  Are you here to aid me with my research?', 0, 0);

-- Captain Hecklebury Smotts
INSERT INTO `questgiver_greeting` VALUES (2500, 0, 'They''re out there!  I can hear them at night, laughing.  Oh, they''ll pay!  They...will...pay!!', 0, 0);

-- Keeper Bel'dugur
INSERT INTO `questgiver_greeting` VALUES (2934, 0, 'Knowledge is both tool and weapon to those with the will to use it.', 0, 0);

-- Veren Tallstrider
INSERT INTO `questgiver_greeting` VALUES (3050, 0, 'The tauren are sons and daughters of the Earthmother, and we show respect to all her children.  Even the beasts we slay are cherished, as their bodies give nourishment and their skins provide warmth.', 0, 0);

-- Korran
INSERT INTO `questgiver_greeting` VALUES (3428, 0, 'The dust of the Barrens parches my throat more and more every day, $N. But it is worth the sacrifice to remain here if it helps the Horde and the warchief.', 0, 0);

-- Fizzle Brassbolts
INSERT INTO `questgiver_greeting` VALUES (4454, 0, 'Aha!  Did you see that!  I think this new auto-spanner is going to do just the trick for my new influx manifold design.', 0, 0);

-- Pozzik
INSERT INTO `questgiver_greeting` VALUES (4630, 0, 'What a great day for racing! Oh, who am I kidding? Every day''s a great day for racing!', 0, 0);

-- Atal'ai Exile
INSERT INTO `questgiver_greeting` VALUES (5598, 0, 'What do you ask of me?', 0, 0);

-- Gryphon Master Talonaxe
INSERT INTO `questgiver_greeting` VALUES (5636, 0, 'What do you want? I''d be a whole lot happier up in the skies than grounded and yapping with a $r right now.$b$bGuess we can''t all get what we want.', 0, 0);

-- Carendin Halgar
INSERT INTO `questgiver_greeting` VALUES (5675, 0, 'The summoning of beings from the chaos that lies beyond our world is essential to the mastery of the warlock arts, $N. I am glad to see the progress you have made.', 0, 0);

-- Thun'grim Firegaze
INSERT INTO `questgiver_greeting` VALUES (5878, 0, 'My vision has darkened, but there are many kinds of sight...', 0, 0);

-- Jarkal Mossmeld
INSERT INTO `questgiver_greeting` VALUES (6868, 0, 'Whatcha need, $c?  I trust that you''ve come out to this wasteland for a reason other than idle chit chat.', 0, 0);

-- Galvan the Ancient
INSERT INTO `questgiver_greeting` VALUES (7802, 0, 'So few make it this far, even fewer make it past. Do not become a statistic, $N.', 0, 0);

-- Motega Firemane
INSERT INTO `questgiver_greeting` VALUES (10428, 0, 'Whitereach Post started off as a small hunting camp... Now, everyone wants to set up shop and call this home.$b$b<Motega shrugs his shoulder>', 0, 0);

-- Nataka Longhorn
INSERT INTO `questgiver_greeting` VALUES (11259, 0, 'Desolace is not such a bad place, if you don''t mind the constant harassments from the centaurs.', 0, 0);

-- Smeed Scrabblescrew
INSERT INTO `questgiver_greeting` VALUES (11596, 0, 'My business plan never accounted for housing giant kodos... maybe I should have gone into the underwater basket weaving business instead.', 0, 0);

-- Derotain Mudsipper
INSERT INTO `questgiver_greeting` VALUES (14567, 0, 'These Mithril Order guys are sissies.', 0, 0);

-- Arazmodu
-- INSERT INTO `questgiver_greeting` VALUES (19936, 0, ' ', 0, 0);

UPDATE `questgiver_greeting` SET `Text` = ' ' WHERE `Text` = '';

-- --------------------------------------------------------------------------- --

-- Quest stuff fixes

-- pre-quest added
-- https://www.wowhead.com/classic/quest=1559/flash-bomb-recipe#comments:id=3126659
UPDATE quest_template SET PrevQuestId = 705 WHERE entry = 1559;

-- --------------------------------------------------------------------------- --

-- these quests have no RequestItemsText
UPDATE quest_template SET
RequestItemsText = NULL
WHERE entry IN (5, 109, 163, 1361, 1464, 1489, 1679, 3570);
-- backup
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (5, '');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (109, 'An... Any luck??');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (163, '');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (1361, '');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (1464, 'Speak to Telf Joolam for another Fire Sapta.');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (1489, '');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (1679, 'Did you make the switch?');
-- `quest_template` (`entry`, `RequestItemsText`) VALUES (3570, 'You know where this is leading, don\'t you, $N? There\'s no way she can survive... look at her. The best thing for her now is to aid us in finding a cure for the plague. This water she drank might have a clue that helps us figure out how. She\'s going to die anyway--she might as well die doing something noble for our people before she does. Don\'t you agree?');

-- text fixes / missing texts added

-- text fix (Missing In Action)
UPDATE quest_template SET RequestItemsText = 'Yes?' WHERE entry = 219; -- ''

-- text fix (Protecting the Shipment)
UPDATE quest_template SET RequestItemsText = 'Where is my powder, $N? My need grows more desperate every day.' WHERE entry = 309; -- ''

-- text fix (Proving Your Worth)
UPDATE quest_template SET RequestItemsText = 'Battle hard, $N. And do not despair, for despair is evil''s greatest weapon.' WHERE entry = 323; -- Battle hard, $Nn. And do not despair, for despair is evil's greatest weapon.

-- text fix (Escorting Erland)
UPDATE quest_template SET RequestItemsText = 'Please be brief.  There is much danger about and we cannot stand idle in conversation.' WHERE entry = 435; -- ''

-- text fix (Hints of a New Plague?)
UPDATE quest_template SET RequestItemsText = 'The time for talk is done. Protect Kinelory if you care about the people of Hillsbrad at all.' WHERE entry = 660; -- ''

-- text fix (Sunken Treasure)
UPDATE quest_template SET RequestItemsText = 'This is no time to talk! The goggles need to be charged with the power of the stone!' WHERE entry = 665; -- ''

-- text fix (Winterhoof Cleansing)
UPDATE quest_template SET RequestItemsText = 'Do not delay, $N.  The Winterhoof Well''s taint must be removed!' WHERE entry = 754; -- ''

-- text fix (Thunderhorn Cleansing)
UPDATE quest_template SET RequestItemsText = 'The Thunderhorn Water Well is still tainted, $N.  Please, you must perform the ritual!' WHERE entry = 758; -- ''

-- text fix (Wildmane Cleansing)
UPDATE quest_template SET RequestItemsText = 'The last water well remains fetid and poisonous, $N.  You must not delay!' WHERE entry = 760; -- ''

-- text fix (The Forgotten Pools)
UPDATE quest_template SET RequestItemsText = 'Have you been to the Forgotten Pools, $N?  Did you find anything?' WHERE entry = 870; -- ''

-- text fix (Galen's Escape)
UPDATE quest_template SET RequestItemsText = 'The keyhole of this strongbox is filled with black resin.  It is impossible to open.' WHERE entry = 1393; -- ''

-- text fix (The Missing Diplomat)
UPDATE quest_template SET
Details = 'Yeah, you''re obviously not the smartest $c to come into Stormwind, but you''re about to be one of the dumbest to never leave.$b$bHave you met me friends?'
WHERE entry = 1447; -- I didn't mean anything by the comment 'bout you being a stupid $C. We're friends, right? No hard feelings?

-- text fix (To The Hinterlands)
UPDATE quest_template SET
OfferRewardText = 'What do you want, $gladdy:missy;? Can''t you see I''ve got problems to take care of here? Who has time to stand around yapping with some $R chatterbox?$b$bThere are trolls coming out of the woodwork! Make it snappy.'
WHERE entry = 1449; -- ''

-- text fix (Earth Sapta)
UPDATE quest_template SET
OfferRewardText = 'I give you one in good faith. You already proved yourself once, but me tinkin'' you should be more careful in the future.'
WHERE entry = 1463; -- ''

-- text fix (Devourer of Souls)
UPDATE quest_template SET
OfferRewardText = 'You were sent by Carendin? $N, then.$b$bDo not think light of me because my sight is gone. I see things that lie behind now, with clarity I had never known. What I once thought a curse, is now a boon.'
WHERE entry = 1472; -- ''

-- text fix (Tooga's Quest)
UPDATE quest_template SET RequestItemsText = 'Where is Tooga?' WHERE entry = 1560; -- ''

-- text fix (Beat Bartleby)
UPDATE quest_template SET RequestItemsText = 'The only way you''ll get this mug is if you pry it from my cold, dead fingers...' WHERE entry = 1640; -- ''

-- text fix (The Tome of Valor)
UPDATE quest_template SET RequestItemsText = 'We''ll make our stand at the house!' WHERE entry = 1651; -- ''

-- text fix (The Rethban Gauntlet)
UPDATE quest_template SET RequestItemsText = 'Time is wasting, $N.  If I were you, I''d get going...' WHERE entry = 1699; -- ''

-- text fix (The Affray)
UPDATE quest_template SET RequestItemsText = 'Have you completed your challenge?' WHERE entry = 1719; -- ''

-- text fix (Scarlet Diversions)
UPDATE quest_template SET
RequestItemsText = 'A surprise raid on the Scarlet Crusade''s tenuous forward position will give us a buffer of time to be able to march on Andorhal.  I trust you are here to report success!$b$bOnce this is successfully executed, we will need to work diligently and quickly.  We do not have the materiel and manpower to fight both the Scourge and the Scarlet Crusade at the same time if they do not buy our little ruse.'
WHERE entry = 5096; -- ''

-- text fix (Lorax's Tale)
UPDATE quest_template SET RequestItemsText = '...' WHERE entry = 5126; -- ''

-- text fix (The Key to Scholomance) Alliance
UPDATE quest_template SET
OfferRewardText = 'Well, here you are, $n - the completed Skeleton Key.  I am certain as I can be that this key will allow you within the confines of the Scholomance.  There''s only one way to be absolutely sure it works, though.  Waste no time in trying it out, I say.$b$bGood luck, mighty hero.  May you continue to bring light unto the darkness!',
RequestItemsText = NULL
WHERE entry = 5505; -- Well, here you are, $n - the completed Skeleton Key. I am certain as I can be that this key will allow you within the confines of the Scholomance. There's only one way to be absolutely sure it works, though. Waste no time in trying it out, I say.

-- text fix (The Key to Scholomance) Horde
UPDATE quest_template SET
OfferRewardText = 'Well, here you are, $n - the completed Skeleton Key.  I am certain as I can be that this key will allow you within the confines of the Scholomance.  There''s only one way to be absolutely sure it works, though.  Waste no time in trying it out, I say.$b$bGood luck, mighty hero.  May your victories continue to bring you fame and power as you lay waste to Scholomance!',
RequestItemsText = NULL
WHERE entry = 5511; -- Well, here you are, $n - the completed Skeleton Key. I am certain as I can be that this key will allow you within the confines of the Scholomance. There's only one way to be absolutely sure it works, though. Waste no time in trying it out, I say.

-- text fix (Mold Rhymes With...)
UPDATE quest_template SET
OfferRewardText = 'Arbington said you''d deliver the goods, and deliver you have! A deal is a deal; let me pack the fragments into the mold for you.$b$bDid Arbington imbue them already? Excellent... otherwise, it would have been a long trip back to the Chillwind Point for you.',
RequestItemsText = 'Yeah, I know who you are, and I know why you''re here. Arbington sent word to me before you arrived. Let''s cut to deal at hand, now shall we?$b$bI''ve got a mold you can use for the skeleton key, but it will cost you - fifteen gold, up front, no negotiation. I''ll pack the skeletal fragments into the mold for you, and I''ll also teach you on how to forge the stem of the key without any knowledge of blacksmithing... all free of charge no less.$b$bWho says mercenaries don''t offer competitive deals!'
WHERE entry = 5538; -- Yeah, I know who you are, and I know why you're here. Arbington sent word to me before you arrived. Let's cut to deal at hand, now shall we?$B$BI've got a mold you can use for the skeleton key, but it will cost you - fifteen gold, up front, no negotiation. I'll pack the skeletal fragments into the mold for you, and I'll also teach you on how to forge the stem of the key without any knowledge of blacksmithing... all free of charge no less.$B$BWho says mercenaries don't offer competitive deals!

-- text fix (Rise and Be Recognized) Horde
UPDATE quest_template SET
OfferRewardText = 'This new insignia reflects your rank amongst the Frostwolf. Keep it on you at all times.$b$bAnd $c... Die with honor!',
RequestItemsText = '<Warmaster Laggrond salutes you.>$b$bIt is your time, $N. You have done much for the Frostwolf Clan and in doing so, earned a place as not only a soldier of Frostwolf but also as a friend.$b$bWell done! Present your initiate''s insignia.'
WHERE entry = 7163; -- ''

-- text fix (Rise and Be Recognized) Alliance
UPDATE quest_template SET
RequestItemsText = 'Most do not live long enough to rise above their own mediocrity. You have proven yourself to be an exemplary soldier, $c. The time has come.$b$bPresent your insignia.'
WHERE entry = 7168; -- ''

-- text fix (Honored Amongst the Clan) Horde
UPDATE quest_template SET
RequestItemsText = 'It is good to see you again, $c. I had not expected you to return. Alas, you have proven yourself a brave and honorable soldier of the Frostwolf.$b$bYour time has come again, $N. You have earned a new ranking and as such, a new insignia denoting this rise in stature.$b$bPresent your insignia.'
WHERE entry = 7164; -- ''

-- text fix (Honored Amongst the Guard) Alliance
UPDATE quest_template SET
RequestItemsText = 'The base buzzes with news of your exploits in the Field of Strife! You have struck mighty blows against our enemy - crushing their morale! For this, you have earned a rank of honor among the Stormpike.$b$bPresent your insignia.'
WHERE entry = 7169; -- ''

-- text fix (Earned Reverence) Horde
UPDATE quest_template SET
OfferRewardText = '<Warmaster Laggrond roars.>$b$bThey have already begun telling tales of your deeds, soldier. The Stormpike shakes in fear when your name is uttered. Carry on!',
RequestItemsText = 'So many slain. Blood drenches the fields. Yet... You live... You have persevered. You have led our armies to many victories. For this, then, soldier, you have earned a new rank.$b$bPresent your insignia.'
WHERE entry = 7165; -- ''

-- text fix (Earned Reverence) Alliance
UPDATE quest_template SET
RequestItemsText = 'I must know, $N. When you look directly into the eyes of the enemy, do you see fear? Do they now cower in your presence? They must realize that they are defeated!$b$bYou have earned reverence among the Guard. Present your insignia!'
WHERE entry = 7170; -- ''

-- text fix (Legendary Heroes) Horde
UPDATE quest_template SET
RequestItemsText = 'Your radiate command and power, $c. Exalted in the eyes of Frostwolf - the enemy cowers at the mention of your name.$b$bRise, Hero of Frostwolf. Rise and be honored!$b$bPresent your insignia.'
WHERE entry = 7166; -- ''

-- text fix (Legendary Heroes) Alliance
UPDATE quest_template SET
OfferRewardText = 'Surely it will be you who carries the Eye of Command!',
RequestItemsText = 'Before me stands an exalted hero of the Alliance.$b$b<Lieutenant Haggerdin salutes.>$b$bFew have earned such a rank among the Stormpike. I have watched the enemy fall before you. I have seen their resolve crumble in your presence. When you enter the fray, you become the beacon of hope for our forces!$b$bPresent your insignia.'
WHERE entry = 7171; -- ''

-- text fix (The Eye of Command) Horde
UPDATE quest_template SET
RequestItemsText = 'Drek''Thar sings your praises. Kalimdor is abuzz with tales of your heroics. The Warchief glows - your stalwart defense of our clan has pleased him greatly.$b$bYou have earned the Eye of Command.$b$bPresent your insignia, Commander $N.'
WHERE entry = 7167; -- ''

-- text fix (The Eye of Command) Alliance
UPDATE quest_template SET
OfferRewardText = 'It is you who must lead our troops to victory, Commander! The soldiers are under your command. They will follow your direct orders. Lead them.... Crush the Frostwolf.',
RequestItemsText = 'Let them hear your voice, Commander $N! Let them know fear. Show them what power the Stormpike holds in their rank!$b$bPresent your insignia.'
WHERE entry = 7172; -- ''

-- text fix (A Gallon of Blood)
UPDATE quest_template SET RequestItemsText = 'You have the option of offering larger quantities of the blood taken from our enemies. I will be glad to accept gallon sized offerings, $N.'
WHERE entry = 7385; -- You must strike down our enemies and bring to me their blood.

-- text fix (Crystal Cluster)
UPDATE quest_template SET RequestItemsText = 'There are times which you may be entrenched in battle for days or weeks on end. During those longer periods of activity you may end up collecting large clusters of the Frostwolf''s storm crystals.$b$bThe Circle accepts such offerings, $N.'
WHERE entry = 7386; -- The Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals, $N!

-- --------------------------------------------------------------------------- --

-- Slagg <Superior Butcher>
UPDATE trainer_greeting SET Text = 'There is no treat finer than Barbecued Buzzard Wing.' WHERE Entry = 2818; -- Can I teach you how to turn the meat you find on beasts into a feast?

-- Grumnus Steelshaper <Armorsmith Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 5164; -- ''

-- Shayis Steelfury <Armorsmith Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7230; -- Care to learn how to turn the ore that you find into weapons and metal armor?

-- Kelgruk Bloodaxe <Weaponsmith Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7231; -- Care to learn how to turn the ore that you find into weapons and metal armor?

-- Borgus Steelhand <Weaponsmith Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7232; -- Care to learn how to turn the ore that you find into weapons and metal armor?

-- Oglethorpe Obnoticus <Gnomish Engineering Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7406; -- ''

-- Peter Galen <Dragonscale Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7866; -- ''

-- Thorkaf Dragoneye <Dragonscale Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7867; -- ''

-- Sarah Tanner <Elemental Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7868; -- ''

-- Brumn Winterhoof <Elemental Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7869; -- ''

-- Caryssia Moonhunter <Tribal Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7870; -- ''

-- Se'Jib <Tribal Leatherworking Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7871; -- ''

-- Tinkmaster Overspark <Gnomish Engineering Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 7944; -- ''

-- Nixx Sprocketspring <Goblin Engineering Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 8126; -- ''

-- Ironus Coldsteel <Weaponsmith Trainer>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11146; -- ''

-- Okothos Ironrager <Armorsmith>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11177; -- ''

-- Borgosh Corebender <Weaponsmith>
UPDATE trainer_greeting SET Text = '' WHERE Entry = 11178; -- ''

-- --------------------------------------------------------------------------- --

