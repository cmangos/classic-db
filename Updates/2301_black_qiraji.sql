-- Fix spell for item 21176 (Black Qiraji Resonating Crystal) that was using a previous version
UPDATE item_template SET spellid_1=26656 WHERE entry=21176;
