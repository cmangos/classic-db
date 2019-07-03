-- Add missing OfferRewardText for quest Speak with Jennea (1860)
UPDATE quest_template SET OfferRewardText="You have been sent to aid me in my task, $N? Good. It is heartening to see young mages eager to help in our cause...$B$BWhat cause, you ask? In time, young one. You shall know... in time." WHERE entry=1860;
