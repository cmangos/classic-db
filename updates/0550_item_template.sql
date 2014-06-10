-- Duration of High Potency Radioactive Fallout should be 2 hours
-- Thanks Neotmiren for pointing and fixing. This closes #469  
-- Source: http://www.wowwiki.com/High_Potency_Radioactive_Fallout?oldid=2256958
UPDATE `item_template` SET `Duration` = 7200 WHERE `entry` = 9365;
