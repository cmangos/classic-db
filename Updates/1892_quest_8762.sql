-- Fixed RequestItemsText for quet 8762
-- Typo fix: "that" -> "what".
-- http://www.wowhead.com/quest=8762/metzen-the-reindeer
-- This closes #158
UPDATE quest_template SET RequestItemsText="$N!  Were the notes in the satchel I gave you enough information to locate Metzen?  I hate to think of what those cruel thugs might do to him... but there's no way we can afford to pay such an exorbitant ransom!" WHERE entry=8762;
