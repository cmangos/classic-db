DELETE FROM questgiver_greeting WHERE Entry=2546;
INSERT INTO questgiver_greeting (Entry, Type, Text, EmoteId, EmoteDelay) VALUES
('2546', '0', 'Yarrr... ye best not be trifling with my time, matey!', '0', '0');

-- https://github.com/TrinityCore/TrinityCore/commit/9cbacb56da20b4242d6acd65c4a1babfec4e8158
UPDATE quest_template SET RequestItemsText= 'You have something for me, $N?$b$b' WHERE entry IN (8496,8810);

-- https://github.com/TrinityCore/TrinityCore/commit/20fe8cad9427a9769eb8f0e7d378919869f05cf9
-- they -> the
UPDATE quest_template SET OfferRewardText= "Yes, $C, the High Executor mentioned you might be the one to trust in the matter of the key. I've dedicated a fair portion of my recent studies to the Scholomance, and I believe I know a means by which you can acquire one that will let you past the front door at will.$b$bThis task will not be easy, but such tasks seldom are. You most assuredly look like the type to know this as fact." WHERE entry=838;

-- https://github.com/TrinityCore/TrinityCore/commit/e70531bc2ec218985475ae4b43bfbdddf944690e
UPDATE quest_template SET OfferRewardEmote1=1, OfferRewardText="A young $c, I see. Yes, I can bestow you with the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go forth. May the Earthmother guide you on your path. We shall speak again, at a later date." WHERE entry=6089;

-- https://github.com/TrinityCore/TrinityCore/commit/f6a4065f5ec0d5f263e31b080a395a98ee31ec4f
-- Put "claw" instead of "head" in the Progress gossip of quest 6162, A Husband's Last Battle
UPDATE quest_template SET RequestItemsText="Do you have the beast's claw yet, $N? It will pay for its crimes. I don't care if it's corrupt or just angry for living in such a dismal forest. No furbolg will live for long committing such crimes against my family!" WHERE entry=6162;

-- https://github.com/TrinityCore/TrinityCore/commit/60e6f2ba901ef3441667505196c5fc68c282ab09
-- Show the complete text for page 11 in the book 'Legacy of the Aspects'
UPDATE page_text SET next_page=466 WHERE next_page=459 AND entry=458;

-- https://github.com/TrinityCore/TrinityCore/commit/b135663dd9a7e866d647199cd64b4e50960e8978
-- RewardText contains typos and invalid text suggesting multiple item rewards.
UPDATE quest_template SET OfferRewardText="Sweet, mon! Good news, perhaps we will have fewer unwanted dinner guests tonight.$b$bMany thanks, $N. We are forever in your debt." WHERE entry=6461;
-- "released them" instead of "released us" (Tor'gan is a Darkspear troll, not an orc).
UPDATE quest_template SET OfferRewardText="My restless nights will turn to peaceful slumber when I have destroyed this orb. Thank you, $N. It is a chilling reminder of the terrible power the demons held over the orcs before Hellscream released them from their curse." WHERE entry=673;
-- Orgrimmar, Delivery to Jes'rimon (3541), misunderstood use of gender alternatives ($gdad:mon). "mon" is a troll slang word, like "dude":
UPDATE quest_template SET RequestItemsText= "Yes, what you be needin', mon? I got many tings to be takin' care of today, and you not be on me agenda as one of them. Pester me, and I make sure that changes." WHERE entry=3541;
-- Blasted Lands, quest "To Serve Kum'Isha" (2521), CompletionText cuts short at the end, as well as 'tau(ren)' is referenced instead of player race.
UPDATE quest_template SET RequestItemsText= "I have dedicated my life to the search of flawless draenethyst spheres. A lifetime, $r!" WHERE entry=2521;

-- https://github.com/TrinityCore/TrinityCore/commit/a41dae09add74ca1f6389906da4a91680597dfb3
UPDATE page_text SET Text="Diary - Day 4$B$BI have been stranded on the Island now for 4 days, left alone with my thoughts.   Bananas are pretty tasty, but what a long climb to reach them.  When I am not getting food or protecting myself from the periodic rain, all my thoughts are of rescue.$B$BI would not be so hopeful if it were not for the boxes of paper and bottles that washed ashore with me.  I laugh now to think of all the time I spent on that ship cursing that I was stuck with a boatload of Alchemists and Scribes." WHERE entry=696;
UPDATE page_text SET Text="Diary - Day 512$B$BThe bananas have started talking to me and I have learned a great deal about their culture.  I have ceased my senseless destruction of their homes and consumption of the young.  How little I knew then of the great civilization that I was destroying.$B$BOn another topic I seem to be running low on bottles and paper.  When I first looked at those huge stacks of paper that washed ashore I thought they would be inexhaustible.  Woe with me, my diary must end soon." WHERE entry=697;

-- https://github.com/TrinityCore/TrinityCore/commit/4c069dfd8aae87cb1bb3bb82701e41597f1522ed
-- quest 'The Shattered Hand (2)' (ID 1858)
UPDATE quest_template SET OfferRewardText="Hmmm, now this is interesting. You've more than proved your worth with this, $N. I am quite impressed. Consider yourself the newest member of the Shattered Hand. And take this, it will be a great help to you in the future, I think." WHERE entry=1858;

-- https://github.com/TrinityCore/TrinityCore/commit/96df58c4f9661a8cc0ee68482dd44137c77704a5
-- The Essence of Aku'Mai (6563)
UPDATE quest_template SET OfferRewardText="Well done, $N. These are the crystals I spoke of. Intriguing...$B$BI can feel the power within them. The spirits of water cling to them. Whatever the naga were going to use these for... well, let us be glad they are no longer in their hands." WHERE entry= 6563;
-- King of the Foulweald (6621)
UPDATE quest_template SET OfferRewardText="Good work, $N. Issuing that challenge to the Foulwealds and defeating their leader sends them a strong message:$B$BThe Horde is not to be trifled with.$B$BI don't believe that tribe will be giving us much trouble for a long time." WHERE entry= 6621;

-- https://github.com/TrinityCore/TrinityCore/commit/0dc42c4185b0d41b665d1a31e1e3f4eea5393e72
-- quest 787 "The New Horde" completion text
UPDATE quest_template SET OfferRewardText= "Another one of Eitrigg's recruits, hm?$B$BA sorry state of affairs we find ourselves in if this is the best the Horde can produce.  No matter.  By the time we think you're ready to leave the Valley, you'll be a proud warrior of the Horde." WHERE entry=787;
