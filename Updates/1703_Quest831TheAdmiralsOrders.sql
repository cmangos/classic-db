-- See
-- https://github.com/cmangos/classic-db/issues/62
-- https://www.youtube.com/watch?v=YcEqpVfrE7U&feature=youtu.be&t=55m31s
-- https://www.youtube.com/watch?v=YcEqpVfrE7U&feature=youtu.be&t=10m21s
-- Update quest set Vol'Jin to Nazgrel and fix spelling error
UPDATE
	`quest_template`
SET
	`Objectives` = 'Deliver Admiral Proudmoore\'s Orders to Nazgrel in Thrall\'s chamber in Orgrimmar.', -- Vol'Jin -> Nazgrel
	`Details` = 'Humans cannot be trusted. We fought alongside them with a weary heart, knowing they would betray us one day.$B$BAdmiral Proudmoore\'s death was not enough to stop his legacy of deceit. The human scum had his plans well laid out before he ever met his demise.$B$BHis reign won\'t even die with Benedict it seems. Who knows how long it will be before the next waves of Proudmoore\'s men land upon our shores.$B$BWe need to get these orders to Nazgrel in Orgrimmar immediately! He can be found in Thrall\'s chamber.', -- Vol'Jin -> Nazgrel
	`RequestItemsText` = 'Can you not see that I am busy? This had better be pressing...', -- .... -> ...
	`OfferRewardText` = 'Countless times I urged the Warchief not to trust the humans, but personal pride is not what is at stake here.$B$BYou have served the Horde honorably, young $C.$B$BNow excuse me, I must counsel Thrall on these matters at once...' -- .... -> ...
WHERE
	`entry` = 831;

-- Update quest ender to Nazgrel
UPDATE
	`creature_involvedrelation`
SET
	`id` = 3230
WHERE
	`quest` = 831;
