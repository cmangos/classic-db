-- Improve gossip menu options for NPC 9543 (Ribbly Screwspigot) in Blackrock Depths
-- Option text should be different depending on the player being on the quest or not
-- Thanks @ratkosrb for confirming, this reverts https://github.com/cmangos/classic-db/commit/fd66f5eb7501fe7e0165f4c43b3db732d168ba37
DELETE FROM gossip_menu_option WHERE menu_id=1970 AND id=0;
INSERT INTO `gossip_menu_option` VALUES
(1970, 0, 0, 'Your family says hello, Ribbly.  And they want your head!', 4971, 1, 1, -1, 0, 197001, 0, 0, '', 0, 844);

UPDATE gossip_menu_option SET condition_id=848 WHERE menu_id=1970 AND id=1;

-- Update existing conditions
UPDATE conditions SET value2=1, comments="Quest ID 4136 Taken AND NOT Rewarded" WHERE condition_entry=844;
DELETE FROM conditions WHERE condition_entry=848;
INSERT INTO conditions VALUES
(848, -3, 844, 0, 0, 0, 0, 'NOT (Quest ID 4136 Taken AND NOT Rewarded)');

-- Remove no longer used condition
DELETE FROM conditions WHERE condition_entry=850;
