-- Add missing pickpocketing_loot_template comment
UPDATE pickpocketing_loot_template SET comments='';
UPDATE pickpocketing_loot_template ct JOIN item_template it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE pickpocketing_loot_template ct JOIN reference_loot_template_names rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);
