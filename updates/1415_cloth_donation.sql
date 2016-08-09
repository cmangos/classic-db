
-- quest id 7802 and 7807 changed
UPDATE `quest_template` SET `RewRepFaction1` = 47 WHERE `entry` = 7802;
UPDATE `creature_involvedrelation` SET `quest` = 7802 WHERE `id` = 14723 AND `quest` = 7807;
UPDATE `creature_questrelation` SET `quest` = 7802 WHERE `id` = 14723 AND `quest` = 7807;

UPDATE `quest_template` SET `RewRepFaction1` = 54 WHERE `entry` = 7807;
UPDATE `creature_involvedrelation` SET `quest` = 7807 WHERE `id` = 14724 AND `quest` = 7802;
UPDATE `creature_questrelation` SET `quest` = 7807 WHERE `id` = 14724 AND `quest` = 7802;


-- quest id 7803 and 7808 changed
UPDATE `quest_template` SET `RewRepFaction1` = 47 WHERE `entry` = 7803;
UPDATE `creature_involvedrelation` SET `quest`= 7803 WHERE `id` = 14723 AND `quest` = 7808;
UPDATE `creature_questrelation` SET `quest` = 7803 WHERE `id` = 14723 AND `quest` = 7808;

UPDATE `quest_template` SET `RewRepFaction1` = 54 WHERE `entry` = 7808;
UPDATE `creature_involvedrelation` SET `quest` = 7808 WHERE `id` = 14724 AND `quest` = 7803;
UPDATE `creature_questrelation` SET `quest` = 7808 WHERE `id` = 14724 AND `quest` = 7803;

-- quest id 7824 and 7836 changed
UPDATE `quest_template` SET `RewRepFaction1` = 76 WHERE `entry` = 7824;
UPDATE `creature_involvedrelation` SET `quest` = 7824 WHERE `id` = 14726 AND `quest` = 7836;
UPDATE `creature_questrelation` SET `quest` = 7824 WHERE `id` = 14726 AND `quest` = 7836;

UPDATE `quest_template` SET `RewRepFaction1` = 530 WHERE `entry` = 7836;
UPDATE `creature_involvedrelation` SET `quest` = 7836 WHERE `id` = 14727 AND `quest` = 7824;
UPDATE `creature_questrelation` SET `quest` = 7836 WHERE `id` = 14727 AND `quest` = 7824;


-- quest id 7832 and 7837 changed
UPDATE `quest_template` SET `RewRepFaction1` = 76 WHERE `entry` = 7832;
UPDATE `creature_involvedrelation` SET `quest` = 7832 WHERE `id` = 14726 AND `quest` = 7837;
UPDATE `creature_questrelation` SET `quest` = 7832 WHERE `id` = 14726 AND `quest` = 7837;

UPDATE `quest_template` SET `RewRepFaction1` = 530 WHERE `entry` = 7837;
UPDATE `creature_involvedrelation` SET `quest` = 7837 WHERE `id` = 14727 AND `quest` = 7832;
UPDATE `creature_questrelation` SET `quest` = 7837 WHERE `id` = 14727 AND `quest` = 7832;


-- add missing description quests
UPDATE `quest_template` SET 
	`RequestItemsText`='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Stormwind for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7791;

UPDATE `quest_template` SET 
	`OfferRewardText`='Our thanks for your donation, $n.', 
	`RequestItemsText`='We are currently gathering wool. A donation of sixty pieces of wool cloth will net you full recognition by our people for your generous actions.$B$BIf you currently have sixty pieces, you may donate them now.' 
WHERE `entry` = 7792;

UPDATE `quest_template` SET 
	`RequestItemsText`='As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7793;

UPDATE `quest_template` SET 
	`RequestItemsText`='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by Stormwind, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7794;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7795;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of Stormwind, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Stormwind.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7796;

UPDATE `quest_template` SET 
	`OfferRewardText`='Our thanks for your donation, $n.', 
	`RequestItemsText`='We are currently gathering silk. A donation of sixty pieces of silk cloth will net you full recognition by our people for your generous actions$B$BIf you currently have sixty pieces, you may donate them now.' 
WHERE `entry` = 7798;

UPDATE `quest_template` SET 
	`RequestItemsText`='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed Darnassus, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7799;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7800;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of Darnassus, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Darnassus.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7801;

UPDATE `quest_template` SET 
	`RequestItemsText`='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Ironforge for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7802;

UPDATE `quest_template` SET 
	`RequestItemsText`='As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7803;

UPDATE `quest_template` SET 
	`RequestItemsText`='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by Ironforge, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7804;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7805;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of Ironforge, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Ironforge.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7806;

UPDATE `quest_template` SET 
	`RequestItemsText`='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Gnomeregan Exiles for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7807;

UPDATE `quest_template` SET 
	`RequestItemsText`='As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7808;

UPDATE `quest_template` SET 
	`RequestItemsText`='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by the Gnomeregan Exiles, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7809;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7811;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of the gnomes, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Gnomeregan Exiles.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7812;

UPDATE `quest_template` SET 
	`RequestItemsText`='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by the Undercity for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7813;

UPDATE `quest_template` SET 
	`RequestItemsText`='As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7814;

UPDATE `quest_template` SET 
	`RequestItemsText`='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by the Undercity, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7817;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7818;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of the Forsaken, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Undercity.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7819;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7823;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7824;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of Thunder Bluff, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Thunder Bluff.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7825;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of Orgrimmar, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Orgrimmar.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7832;

UPDATE `quest_template` SET 
	`RequestItemsText`='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Darkspear Trolls for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE `entry` = 7833;

UPDATE `quest_template` SET 
	`RequestItemsText`='$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE `entry` = 7836;

UPDATE `quest_template` SET 
	`OfferRewardText`='$N - without heroes like you working on behalf of the trolls, we\'d surely suffer. Thank you for your continued efforts!', 
	`RequestItemsText`='Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Darkspear Trolls.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE `entry` = 7837;
