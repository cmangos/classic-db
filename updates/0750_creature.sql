-- Synced spawned creatures stats with fixed creature template stats
UPDATE `creature`, `creature_template` SET creature.curhealth = creature_template.MinLevelHealth,creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats = 1;
