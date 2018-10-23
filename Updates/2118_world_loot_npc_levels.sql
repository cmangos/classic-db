-- Remove TBC only reference loot tables
DELETE FROM reference_loot_template_names WHERE entry IN (60345, 60346);
DELETE FROM reference_loot_template WHERE entry IN (60345, 60346);

-- Clean-up reference table names that were Classic only
UPDATE reference_loot_template_names SET name="NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)" WHERE entry=60008;

UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58)" WHERE entry=60199;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58)" WHERE entry=60290;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59)" WHERE entry=60291;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59)" WHERE entry=60292;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60)" WHERE entry=60293;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60)" WHERE entry=60294;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61)" WHERE entry=60295;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61)" WHERE entry=60296;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62)" WHERE entry=60297;
UPDATE reference_loot_template_names SET name="NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62)" WHERE entry=60298;

UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 55-60) - (NPC Levels: 57-58)" WHERE entry=60275;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58)" WHERE entry=60276;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58-59)" WHERE entry=60277;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59)" WHERE entry=60278;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59-60)" WHERE entry=60279;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60)" WHERE entry=60280;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60-61)" WHERE entry=60281;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61)" WHERE entry=60282;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61-62)" WHERE entry=60283;
UPDATE reference_loot_template_names SET name="NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 62)" WHERE entry=60284;

UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 56-59) - (NPC Levels: 57-58)" WHERE entry=60335;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 57-59) - (NPC Levels: 58)" WHERE entry=60336;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 57-60) - (NPC Levels: 58-59)" WHERE entry=60337;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 58-60) - (NPC Levels: 59)" WHERE entry=60338;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 58-61) - (NPC Levels: 59-60)" WHERE entry=60339;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60)" WHERE entry=60340;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 59-62) - (NPC Levels: 60-61)" WHERE entry=60341;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 60-62) - (NPC Levels: 61)" WHERE entry=60342;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 60-64) - (NPC Levels: 61-62)" WHERE entry=60343;
UPDATE reference_loot_template_names SET name="NPC LOOT (Purple World Drop) - (Item Levels: 61-65) - (NPC Levels: 62)" WHERE entry=60344;

-- Clean-up comments after renaming
UPDATE creature_loot_template AS c, reference_loot_template_names AS r SET c.comments=r.name WHERE c.item=r.entry AND c.mincountOrRef<0;
