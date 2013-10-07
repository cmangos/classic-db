UPDATE `quest_template` SET `PrevQuestId` = 0, `nextquestinchain` = 1687  WHERE `entry` = 1468;     -- Children's Week -> Spooky Lighthouse
UPDATE `quest_template` SET `PrevQuestId` = 1468, `nextquestinchain` = 1558  WHERE `entry` = 1687;  -- Spooky Lighthouse -> The Stonewrought Dam
UPDATE `quest_template` SET `PrevQuestId` = 1687, `nextquestinchain` = 1479  WHERE `entry` = 1558;  -- The Stonewrought Dam -> The Bough of the Eternals
UPDATE `quest_template` SET `PrevQuestId` = 1558, `nextquestinchain` = 4822  WHERE `entry` = 1479;  -- The Bough of the Eternals -> You Scream, I Scream...
UPDATE `quest_template` SET `PrevQuestId` = 1479, `nextquestinchain` = 558  WHERE `entry` = 4822;   -- You Scream, I Scream... -> Jaina's Autograph
UPDATE `quest_template` SET `PrevQuestId` = 4822, `nextquestinchain` = 171  WHERE `entry` = 558;    -- Jaina's Autograph --> A Warden of the Alliance
UPDATE `quest_template` SET `PrevQuestId` = 558  WHERE `entry` = 171;

UPDATE `creature_questrelation` SET `id` = 14305 WHERE `quest` = 171; -- Human Orphan as questgiver (instead of Watcher Callahan)
