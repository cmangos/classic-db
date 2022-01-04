-- Fix incorrect alternate gender model for model ID 3912 used by Male Dark Iron dwarf
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=3912; -- was 4098 (male darkiron dwarf and male troll)
