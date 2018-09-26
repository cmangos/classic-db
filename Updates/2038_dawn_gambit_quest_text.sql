-- Fixed reward text of quest 4771 (Dawn'S Gambit) and added missing reputation reward
-- Sources:
-- https://wow.gamepedia.com/Quest:Dawn%27s_Gambit
-- 
UPDATE quest_template SET OfferRewardText="You did it! Vectus is defeated! And Dawn's Gambit... did it work?$B$B
Hm... maybe my device wasn't the success I had hoped, but I'm glad you were able to handle things anyway. Well done, $N!$B$B
The Argent Dawn, and the good people of Azeroth, are in your debt.", RewRepFaction1=529, RewRepValue1=500 WHERE entry=4771;
