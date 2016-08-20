
DELETE FROM `creature_battleground` WHERE `guid` IN (150952, 151009, 150895);

UPDATE `dbscripts_on_quest_start` SET `search_radius`=27290 WHERE `id`=5821 AND `search_radius`=28290;
UPDATE `dbscripts_on_quest_start` SET `search_radius`=27290 WHERE `id`=5943 AND `search_radius`=28290;

UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;
