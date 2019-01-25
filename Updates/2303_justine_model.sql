-- Fix Justine Demalier 12481 having random male model
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=3167; -- male guard model
UPDATE creature_model_info SET gender=1, modelid_other_gender=0 WHERE modelid=5446; -- female guard model
UPDATE creature_template SET Modelid2=5446 WHERE entry=16396;
UPDATE creature_template SET Modelid2=3257 WHERE entry=1642;
