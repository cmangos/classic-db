-- Update RequestItemsText for quests 521 & 1361 that were mixed up
-- Thanks @M2us for pointing, this closes #116
UPDATE quest_template SET RequestItemsText='I note that your task is unfinished, $N. Shall I inform Sharlindra of your ineptitude?' WHERE entry=521;
UPDATE quest_template SET RequestItemsText='' WHERE entry=1361;
