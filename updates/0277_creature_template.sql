-- Faction Fix for Heartrazor (rare elite in Thousand Needles). He is neutral now, but should be hostile to players
-- source: http://www.wowwiki.com/Heartrazor_(mob)?oldid=1537014
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE  `entry` = 5934;
