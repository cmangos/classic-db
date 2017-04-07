-- Fixed reward text of quest 33 (Wolves Across the Border)
-- This closes https://github.com/cmangos/classic-db/issues/43 and closes https://github.com/classicdb/database/issues/918
UPDATE quest_template SET OfferRewardText='You\'ve been busy! I can\'t wait to cook up that wolf meat...$B$BI have some things here you want - take your pick!' WHERE entry=33;
