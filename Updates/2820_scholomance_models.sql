-- 11134 human female
-- 11135 human male
-- 11136 gnome male
-- 11161 elf female

-- human model corrections
UPDATE creature_model_info SET modelid_other_gender=11135 WHERE modelid=11134; -- 11161
UPDATE creature_model_info SET modelid_other_gender=11134 WHERE modelid=11135; -- 11136

-- gnome model correction
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=11136; -- 11135
