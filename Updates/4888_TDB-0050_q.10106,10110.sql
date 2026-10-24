-- Epic/Superior Armaments of Battle & The Dread Citadel - Naxxramas should be doable at exalted rep
UPDATE `quest_template` SET `RequiredMaxRepValue` = 42000 WHERE `RequiredMaxRepValue` = 41999 AND `entry` IN (
9122, -- The Dread Citadel - Naxxramas
9225, -- Epic Armaments of Battle - Revered Amongst the Dawn
9226); -- Superior Armaments of Battle - Revered Amongst the Dawn

