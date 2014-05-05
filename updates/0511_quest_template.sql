-- AQ40 - Mortal Champions
UPDATE `quest_template` SET `OfferRewardText`='I see that you\'re no ordinary mortal, $n. Your chances against the Old God, however infinitely small, are greater than ours at this point. After all, while he expects dragons at his doorstep, he is not prepared for someone like you.$b$bJust as Anachronos and Staghelm defeated the Qiraji a thousand years ago through the alliance of mortal and dragon races, we too shall form a pact. Gain the trust of the Bronze Dragonflight and you\'ll gain our trust. Only then we shall make a true champion out of you.' WHERE `entry`='8579';
UPDATE `quest_template` SET `RequestItemsText`='We sense the presence of our enslaved brethren deeper inside Ahn\'Qiraj; yet not even an army of dragons would be enough to rescue them, $r.$b$bThe same spell that imprisoned them would place us firmly under C\'Thun\'s control should we come any closer to him.$b$bThe Old God has foreseen our arrival. All hope is lost. What difference could a mere mortal like you possibly make?' WHERE `entry`='8579';
UPDATE `quest_template` SET `RewRepFaction1`='910', `RewRepFaction2`='609', `RewRepValue1`='500', `RewRepValue2`='100' WHERE `entry`='8579';
UPDATE `quest_template` SET `Details`='' WHERE `entry`='8595';

-- 'AQ40 - Path of the Invoker
UPDATE `quest_template` SET `OfferRewardText`='Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$b$bThe signet ring of the invoker will greatly enhance your magical and natural abilities.$b$bBe warned, once you have chosen your path, you will have no recourse should you change your mind.', `RequestItemsText`='' WHERE `entry`='8757';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the invoker!' WHERE `entry`='8758';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the invoker!' WHERE `entry`='8759';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the invoker!' WHERE `entry`='8760';
UPDATE `quest_template` SET `Details`='', `OfferRewardText`='Rise, Grand Invoker! Rise and be recognized!', `RequestItemsText`='Never have I seen such tenacity! The Bronze Flight grants you one final enchantment. The Timeless One himself has requested it so!$b$bHand me your signet ring so that I may make the necessary adjustments.' WHERE `entry`='8761';

-- AQ40 - Path of the Conqueror
UPDATE `quest_template` SET `OfferRewardText`='Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$b$bThe signet ring of the conqueror will greatly enhance your physical attacks.$b$bBe warned, once you have chosen your path, you will have no recourse should you change your mind.', `RequestItemsText`='' WHERE `entry`='8752';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the conqueror!' WHERE `entry`='8753';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the conqueror!' WHERE `entry`='8754';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the conqueror!' WHERE `entry`='8755';
UPDATE `quest_template` SET `Details`='', `OfferRewardText`='Rise, Qiraji Conqueror! Rise and be recognized!', `RequestItemsText`='Never have I seen such tenacity! The Bronze Flight grants you one final enchantment. The Timeless One himself has requested it so!$b$bHand me your signet ring so that I may make the necessary adjustments.' WHERE `entry`='8756';

-- AQ40 - Path of the Protector
UPDATE `quest_template` SET `OfferRewardText`='Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$b$bThe signet ring of the protector will offer superior protection against the forces of evil.$b$bBe warned, once you have chosen your path, you will have no recourse should you change your mind.', `RequestItemsText`='' WHERE `entry`='8747';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the protector!' WHERE `entry`='8748';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the protector!' WHERE `entry`='8749';
UPDATE `quest_template` SET `OfferRewardText`='Your rise amongst the rank of the Brood is most impressive, $n. May you never stray from the path of the protector!' WHERE `entry`='8750';
UPDATE `quest_template` SET `Details`='', `OfferRewardText`='Rise, Protector of Kalimdor! Rise and be recognized!', `RequestItemsText`='Never have I seen such tenacity! The Bronze Flight grants you one final enchantment. The Timeless One himself has requested it so!$b$bHand me your signet ring so that I may make the necessary adjustments.' WHERE `entry`='8751';

-- AQ40 - The Changing of Paths- x no more
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE `entry` IN ('8764', '8765', '8766');

-- AQ40 - The Path of x
UPDATE `quest_template` SET `ExclusiveGroup`='8747' WHERE `entry` IN ('8747', '8752', '8757'); -- step 1 neutral
UPDATE `quest_template` SET `ExclusiveGroup`='8748' WHERE `entry` IN ('8748', '8753', '8758'); -- step 2 friendly
UPDATE `quest_template` SET `ExclusiveGroup`='8749' WHERE `entry` IN ('8749', '8754', '8759'); -- step 3 honored
UPDATE `quest_template` SET `ExclusiveGroup`='8750' WHERE `entry` IN ('8750', '8755', '8760'); -- step 4 revered
UPDATE `quest_template` SET `ExclusiveGroup`='8751' WHERE `entry` IN ('8751', '8756', '8761'); -- final step exalted
