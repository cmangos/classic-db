-- Warlord's Command is only available through gossipoption item 12563 "Warlord Goretooth's Command"
-- was hacked like this befor gossip was working
DELETE FROM `creature_questrelation` WHERE `id` = 9077 AND `quest` = 4903; -- "what roles gossip option"

