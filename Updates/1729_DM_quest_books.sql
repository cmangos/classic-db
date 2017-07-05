-- Fix Dire Maul books quests to be class specific

-- Garona: A Study on Stealth and Treachery quest is Rogue only
-- http://www.wowhead.com/quest=7498/garona-a-study-on-stealth-and-treachery
UPDATE quest_template SET RequiredClasses=8 WHERE entry=7498;

-- Codex of Defense quest is Warrior only
-- http://www.wowhead.com/quest=7499/codex-of-defense
UPDATE quest_template SET RequiredClasses=1 WHERE entry=7499;

-- The Arcanist's Cookbook quest is Mage only
-- http://www.wowhead.com/quest=7500/the-arcanists-cookbook
UPDATE quest_template SET RequiredClasses=128 WHERE entry=7500;

-- The Light and How To Swing It quest is Paladin only
-- http://www.wowhead.com/quest=7501/the-light-and-how-to-swing-it
UPDATE quest_template SET RequiredClasses=2, RequiredRaces=255 WHERE entry=7501;

-- Harnessing Shadows quest is Warlock only
-- http://www.wowhead.com/quest=7502/harnessing-shadows
UPDATE quest_template SET RequiredClasses=256 WHERE entry=7502;

-- The Greatest Race of Hunters quest is Hunter only
-- http://www.wowhead.com/quest=7503/the-greatest-race-of-hunters
UPDATE quest_template SET RequiredClasses=4 WHERE entry=7503;

-- Holy Bologna: What the Light Won't Tell You quest is Priest only
-- http://www.wowhead.com/quest=7504/holy-bologna-what-the-light-wont-tell-you
UPDATE quest_template SET RequiredClasses=16 WHERE entry=7504;

-- Frost Shock and You quest is Shaman only	
-- http://www.wowhead.com/quest=7505/frost-shock-and-you
UPDATE quest_template SET RequiredClasses=64, RequiredRaces=255 WHERE entry=7505;

-- The Emerald Dream quest is Druid only	
-- http://www.wowhead.com/quest=7506/the-emerald-dream#comments
UPDATE quest_template SET RequiredClasses=1024 WHERE entry=7506;
