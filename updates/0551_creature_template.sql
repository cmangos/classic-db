-- Fire Roc (Tanaris) cannot cast Flamespit due to zero mana pool
-- Thanks Neotmiren for pointing and fixing. This closes #466 
-- Source: http://www.wowwiki.com/Fire_Roc
UPDATE `creature_template` SET `MinLevelMana` = 1432, `MaxLevelMana` = 1534 WHERE `Entry` = 5429; -- Fire Roc

UPDATE `creature` SET `curmana` = 1432 WHERE `id` = 5429;
