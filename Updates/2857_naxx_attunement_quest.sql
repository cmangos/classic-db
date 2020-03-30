-- main quests do this already so child quest shouldnt
UPDATE quest_template SET RewSpellCast=0 WHERE entry IN(9378);
