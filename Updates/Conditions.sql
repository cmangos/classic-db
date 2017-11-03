-- ********************************Conditions**********************************************************

/* Adding condition support for requiring Love is in the Air to be active and NOT active */

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (500, 12, 8, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (501, 25, 8, 0);

-- Condition to have perfume aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (502, 1, 26682, 0);

-- Condition to have cologne aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (503, 1, 26681, 0);

-- Condition to have adored aura 
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (504, 1, 26680, 0);

-- Conditions to have and not have heartbroken aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (505, 1, 26898, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (506, 11, 26898, 0);

-- Condition Love is in the Air Active and NOT heartbroken
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (507, -1, 500, 506);

-- Condition Love is in the Air Active and heartbroken
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (508, -1, 500, 505);

-- Condition to have Love is in the Air Aura (NPC)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (509, 32, 27741, 0);

-- To have Cologne Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (510, -1, 500, 503);

-- Conditions to not have perfume or cologne auras
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (511, 11, 26681, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (512, 11, 26682, 0);

-- Conditions to have/not have Love Tokens in inventory
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (513, 23, 21815, 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (514, 24, 21815, 1);

-- Creating multiple conditon entry for love token gossip (cologne only)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (515, -1, 506, 509);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (516, -1, 510, 513);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (517, -1, 515, 516);

-- Adored and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (518, -1, 500, 504);

-- No Cologne Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (519, -1, 500, 511);

-- No Perfume Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (520, -1, 500, 512);

-- To have Perfume Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (521, -1, 500, 502);

-- Creating multiple conditon entry for love token gossip (perfume only)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (522, -1, 513, 521);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (523, -1, 515, 522);

-- No tokens in inventory and event active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (524, -1, 500, 514);

-- To have perfume or cologne aura and love is in the air active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (525, -2, 502, 503);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (526, -1, 500, 525);

-- Creating multiple conditon entry for love token gossip (cologne or perfume for UC Guardians)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (527, -1, 513, 526);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (528, -1, 515, 527);

-- To Not have perfume or cologne aura and Love is in the air active(530)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (529, -3, 525, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (530, -1, 500, 529);
