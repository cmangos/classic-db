-- Fixed a few inconsitencies for class quests "The Hunter's Path"
-- This closes #31 
-- Fields were Null
UPDATE quest_template SET RequestItemsText='', EndText='' WHERE entry='6072';
-- Had no reward text and wrong category. Equalised with other Night Elf quests
UPDATE quest_template SET ZoneOrSort='-261', OfferRewardText='Yes, it is time, $C.' WHERE entry='6722';
-- Had wrong category and was falsely available to Dwarfs, leading them to a 
-- follow up quest they cannot accept
UPDATE quest_template SET ZoneOrSort='-261', RequiredRaces='8' WHERE `entry`='6721';
