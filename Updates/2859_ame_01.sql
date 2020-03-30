-- Remove StandState for A-Me 01 9623 should be handled in Core
UPDATE creature_template_addon SET bytes1=0, b2_1_flags=16 WHERE entry=9623;
