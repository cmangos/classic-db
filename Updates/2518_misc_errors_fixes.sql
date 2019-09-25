-- Error fixes

-- Remove DB script string moved to SD2
DELETE FROM dbscript_string WHERE entry=2000000031;

-- Update script 4974 by using change stand state command instead of state emote (resolve use of unexisting emote in Classic)
UPDATE dbscripts_on_quest_end SET command=28, datalong=0 WHERE id=4974 AND delay=1;
UPDATE dbscripts_on_quest_end SET command=28, datalong=1 WHERE id=4974 AND delay=15;

-- Remove TBC creature that slipped through backports
DELETE FROM creature WHERE guid=91795;
