-- Fix Alterac Valley Quest Reputation 
-- https://github.com/vmangos/core/commit/2156b2b6ac72fd9eb34154dd28c5badc44e47b24
-- https://github.com/vmangos/core/commit/9aab8cd3b325a9003464a54db8193cda490b1b89
-- https://github.com/vmangos/core/pull/1766/files#diff-b17e46701527e3b9b7328f9204ab7069cf20bdc090ce821653c001c06e03d9ae
-- https://www.wowhead.com/classic/faction=47/ironforge
-- https://www.wowhead.com/classic/faction=54/gnomeregan-exiles
-- https://www.wowhead.com/classic/faction=68/undercity
-- https://www.wowhead.com/classic/faction=69/darnassus
-- https://www.wowhead.com/classic/faction=72/stormwind
-- https://www.wowhead.com/classic/faction=76/orgrimmar
-- https://www.wowhead.com/classic/faction=81/thunder-bluff
-- https://www.wowhead.com/classic/faction=509/the-league-of-arathor
-- https://www.wowhead.com/classic/faction=510/the-defilers
-- https://www.wowhead.com/classic/faction=530/darkspear-trolls
-- https://www.wowhead.com/classic/faction=729/frostwolf-clan
-- https://www.wowhead.com/classic/faction=730/stormpike-guard
-- https://www.wowhead.com/classic/faction=889/warsong-outriders
-- https://www.wowhead.com/classic/faction=890/silverwing-sentinels
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 6846;
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=0, `RewRepValue1`=75, `RewRepValue2`=0 WHERE `entry`= 6847; -- tbc+ 150
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=0, `RewRepValue1`=75, `RewRepValue2`=0 WHERE `entry`= 6848; -- tbc+ 150
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=25, `RewRepValue2`=10 WHERE `entry`= 6861;
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=25, `RewRepValue2`=10 WHERE `entry`= 6862;
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 6901;
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7081; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7082; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7101; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7102; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 7121;
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7122; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 7123;
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7124; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7141; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7142; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7161; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7162; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7163; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7164; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=150, `RewRepValue2`=150 WHERE `entry`= 7165; -- tbc+ 350
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7166; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7167; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7168; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7169; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=150, `RewRepValue2`=150 WHERE `entry`= 7170; -- tbc+ 350
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7171; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=200, `RewRepValue2`=200 WHERE `entry`= 7172; -- tbc+ 500
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=200, `RewRepValue2`=100 WHERE `entry`= 7181; -- tbc+ 500/250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=200, `RewRepValue2`=100 WHERE `entry`= 7202; -- tbc+ 500/250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7223; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7224; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7241; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7261; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=68, `RewRepFaction3`=76, `RewRepValue1`=100, `RewRepValue2`=100, `RewRepValue3`=100 WHERE `entry`= 7281; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepFaction3`=72, `RewRepValue1`=100, `RewRepValue2`=100, `RewRepValue3`=100 WHERE `entry`= 7282; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7301; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7302; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=530, `RewRepFaction2`=729, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7361; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepFaction2`=729, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7362; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=68, `RewRepFaction2`=729, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7363; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=54, `RewRepFaction2`=730, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7364; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=69, `RewRepFaction2`=730, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7365; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=730, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7366; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7367; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`= 7368; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=25, `RewRepValue2`=25 WHERE `entry`= 7381; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=25, `RewRepValue2`=25 WHERE `entry`= 7382; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=729, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7401; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=730, `RewRepValue1`=500, `RewRepValue2`=500 WHERE `entry`= 7402; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=47, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 8271;
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=76, `RewRepValue1`=10, `RewRepValue2`=10 WHERE `entry`= 8272;
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=889, `RewRepFaction3`=510, `RewRepValue1`=200, `RewRepValue2`=150, `RewRepValue3`=150 WHERE `entry` = 8367; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=0, `RewRepValue1`=150, `RewRepValue2`=0 WHERE `entry`= 8369; -- tbc+ 350
UPDATE `quest_template` SET `RewRepFaction1`=509, `RewRepFaction2`=730, `RewRepFaction3`=890, `RewRepValue1`=150, `RewRepValue2`=200, `RewRepValue3`=150 WHERE `entry` = 8371; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=0, `RewRepValue1`=150, `RewRepValue2`=0 WHERE `entry` = 8375; -- tbc+ 350
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=0, `RewRepValue1`=100, `RewRepValue2`=0 WHERE `entry`= 8383; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=730, `RewRepFaction2`=509, `RewRepFaction3`=890, `RewRepValue1`=150, `RewRepValue2`=100, `RewRepValue3`=100 WHERE `entry` = 8385; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=0, `RewRepValue1`=100, `RewRepValue2`=0 WHERE `entry`= 8387; -- tbc+ 250
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepFaction2`=889, `RewRepFaction3`=510, `RewRepValue1`=150, `RewRepValue2`=100, `RewRepValue3`=100 WHERE `entry` = 8388; -- tbc+ 0
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=25, `RewRepValue2`=0 WHERE `entry`= 5892;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=25, `RewRepValue2`=0 WHERE `entry`= 5893;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6741;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6781;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6801;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6825;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6826;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6827;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6881;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6941;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6942;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 6943;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=25, `RewRepValue2`=0 WHERE `entry`= 6982;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=25, `RewRepValue2`=0 WHERE `entry`= 6985;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 7002;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 7026;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=10, `RewRepValue2`=0 WHERE `entry`= 7027;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=0, `RewRepValue1`=50, `RewRepValue2`=0 WHERE `entry`= 7385; -- tbc+ 75
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=0, `RewRepValue1`=50, `RewRepValue2`=0 WHERE `entry`= 7386; -- tbc+ 75
UPDATE `quest_template` SET `RewRepFaction1`=509, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepValue1`=200, `RewRepValue2`=0, `RewRepValue3`=0 WHERE `entry` = 9039; -- tbc+ 500

-- End of migration.

