-- Switch quest givers for NE racial priest quests 5673 and 5675 (Elune's Grace)
-- As the dwarf version was wrongly given by human priest (376) and human version by dwarf priest (11406)
UPDATE `creature_questrelation` SET `id` = 376 WHERE `quest` = 5673;
UPDATE `creature_questrelation` SET `id` = 11406 WHERE `quest` = 5675;

