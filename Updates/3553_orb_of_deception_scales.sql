-- vanilla only scaling due to orb not adjusting itself clientside because of wrong data for orb of deception
-- gnomes and taurens were too small
-- other things dont seem to be affected
UPDATE creature_template SET Scale=1.35 WHERE entry IN(10785); -- tauren male
UPDATE creature_template SET Scale=1.25 WHERE entry IN(10786); -- tauren female
UPDATE creature_template SET Scale=1.15 WHERE entry IN(10793,10794); -- gnomes


