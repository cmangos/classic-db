-- Fixed RequestItemsText for quest 2201 (Find the Gems)
-- This closes #64
UPDATE quest_template SET RequestItemsText='Talvash\'s image comes into focus from the waters of the scrying bowl.$B$B"Wow, you\'re still alive! Did you manage to find the gems? Are you truly the savior of my reputation I have hoped for? Please tell me you didn\'t waste a charge on the phial just to chat; those things are NOT cheap, and I\'m already in dire financial straits."' WHERE entry=2201;
