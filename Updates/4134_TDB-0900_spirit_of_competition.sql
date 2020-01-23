-- aligning game_event will never work if we dont reserve entries
REPLACE INTO `game_event` (`entry`, `schedule_type`, `occurence`, `length`, `holiday`, `linkedTo`, `description`) VALUES
(85, 1, 52560, 20160, 0, 0, 'Spirit of Competition (TBC+)'); -- `game_event` game event id (85) have length 0 and can't be used.

