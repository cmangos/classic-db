-- Add missing aura 6923 (Growl of Fortitude Proc)
-- Elder Ashenvale Bear
-- Giant Ashenvale Bear
UPDATE creature_template_addon SET auras='6923' WHERE entry IN (3810, 3811);
