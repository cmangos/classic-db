-- Align creature_template.SpellList, creature_spell_list.Id, creature_spell_list_entry.Id
-- Shows that Gurubashi Bat Rider has wrong spelllist assigned to it 1451501 instead of 1475001.
-- timers corrected from this commit https://github.com/cmangos/tbc-db/commit/5ab31b93ff02648c78ba738bc670f2710c9acf95
UPDATE creature_spell_list SET InitialMin=InitialMin * 1000, InitialMax=InitialMax * 1000, RepeatMin=RepeatMin * 1000, RepeatMax=RepeatMax * 1000, Id=Id * 100 + 1 WHERE Id IN (4543,14682,14686,14697,16141,16298,16299,16379,16380,16438);
UPDATE creature_spell_list SET Id=Id * 100 + 1 WHERE Id IN (589,595);
UPDATE creature_spell_list_entry SET Id=Id * 100 + 1 WHERE Id IN (589,595);
UPDATE creature_template SET SpellList=entry * 100 + 1 WHERE entry IN (4543,14682,14686,14697,16141,16298,16299,16379,16380,16438,589,595);
UPDATE creature_template SET SpellList=1475001 WHERE entry=14750; -- 1451501
