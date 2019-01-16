-- Fix upper case in RequestItemsText for quest 8302 (The Hand of the Righteous)
UPDATE quest_template SET RequestItemsText="Perhaps one day the whole of Cenarion Hold will be working under your command." WHERE entry=8302;
