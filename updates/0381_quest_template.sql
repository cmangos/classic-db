-- Fixed quest 1046 (Raene's Cleansing) which was not completable
-- due to missing source item when accepting quest (item 5388 is provided)
-- Source: http://www.wowwiki.com/Quest:Raene%27s_Cleansing_(11)
UPDATE `quest_template` SET `SrcItemId` = 5388, `SrcItemCount` = 1 WHERE `entry` = 1046;
