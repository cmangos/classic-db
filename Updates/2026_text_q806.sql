-- Fixed double "and" in text
-- http://www.wowhead.com/quest=806/dark-storms
UPDATE quest_template SET RequestItemsText='Did you find Fizzle, $N? He, and rest of the Burning Blade, must be scoured from our lands!' WHERE entry=806;
