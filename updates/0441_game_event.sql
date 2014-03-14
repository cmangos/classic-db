-- Improved start date of Lunar Festival event
-- Start date in 2006 was 01/27/2006 and not 02/12/2006.
-- Note to server administrators:
-- the start date of the event will have to be adjusted _manually_ every year to
-- match the actual Lunar New Year, like Blizzard does for the retail event.
-- Until 2010, the start date would be 2 days before the actual New Year.
-- Source: http://www.wowwiki.com/Lunar_Festival  
-- This closes #278 
UPDATE `game_event` SET `start_time` = '2006-01-27 22:00:00' WHERE `entry` = 7;
