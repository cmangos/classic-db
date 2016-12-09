-- Fixed requirements of quest 9078 (Bonescythe Legplates)
-- Thanks @trulynullified for pointing and providing a fix
-- This closes #19
UPDATE quest_template SET RequiredClasses=8 WHERE entry=9078;
