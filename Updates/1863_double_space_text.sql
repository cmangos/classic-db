-- Remove extra spaces in text. In theory there is never a reason in English why two spaces would follow one another.
-- I have sampled some of the texts and compared them with the official ones.
-- No double spaces were found in Title, Details and Objectives.
-- OfferRewardText and RequestItemsText did however have double spaces in the official texts.
-- Therefore, I did not touch these two columns: OfferRewardText and RequestItemsText.
-- If required, I can add these two columns to the script.

-- Remove extra spaces from text in quest_template.Title.
UPDATE `quest_template` SET `Title` = REPLACE(Title, '  ', ' ') WHERE `Title` LIKE '%  %'; 
-- Remove extra spaces from text in quest_template.Details.
UPDATE `quest_template` SET `Details` = REPLACE(Details, '  ', ' ') WHERE `Details` LIKE '%  %'; 
-- Remove extra spaces from text in quest_template.Details. Needs to be executed twice.
UPDATE `quest_template` SET `Details` = REPLACE(Details, '  ', ' ') WHERE `Details` LIKE '%  %';

-- One specific case where there should be no spaces before "Nagaz". http://www.wowhead.com/quest=551/deprecated-the-ensorcelled-parchment#comments
UPDATE `quest_template` SET `Details` = 'This parchment is enchanted with a spell, rendering it indecipherable. But one word at the top of the paper can be read:$B$B$BNagaz$B$B' WHERE `entry` = 551; 
-- Remove extra spaces from text in quest_template.Objectives.
UPDATE `quest_template` SET `Objectives` = REPLACE(Objectives, '  ', ' ') WHERE `Objectives` LIKE '%  %';
