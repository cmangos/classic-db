/* Kwee Changes */

-- Correcting Gift Giving quests

UPDATE quest_template SET MinLevel=1, QuestLevel=60, RequiredRaces=178, SpecialFlags=1, OfferRewardText='Wonderful! Wonderful! I will add this to the pile of other gifts.$B$BI didn\'t expect so many! You must truly love your leaders.$B$BNow, let me just add one more to the count...', RequestItemsText='Have you come to deliver a present of love and adoration to your favorite leader?', CompleteEmote=6, OfferRewardEmote1=1 WHERE entry=8981;
UPDATE quest_template SET QuestLevel=60, SpecialFlags=1 WHERE entry=8993;

INSERT INTO creature_involvedrelation (id, quest) VALUES (16075, 8981);
INSERT INTO creature_questrelation (id, quest) VALUES (16075, 8981);

INSERT INTO game_event_quest (quest, event) VALUES (8981, 8);
INSERT INTO game_event_quest (quest, event) VALUES (8993, 8);
