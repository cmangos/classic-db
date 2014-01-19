-- Backport from YTDB missing DB scrpit from previous update

SET @STRING1 := 2000000031;

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 1882;
INSERT INTO `dbscripts_on_gossip` VALUES
(1882, 1, 0, 0, 0, 3389, 5, 0, @STRING1, 0, 0, 0, 0, 0, 0, 0, ''),
(1882, 2, 10, 9457, 300000, 0, 0, 0, 0, 0, 0, 0, -280.703, -1908.01, 91.6668, 1.77351, 'Counterattack!: Summon Horde Axe Thrower 1'),
(1882, 2, 10, 9457, 300000, 0, 0, 0, 0, 0, 0, 0, -286.384, -1910.99, 91.6668, 1.59444, 'Counterattack!: Summon Horde Defender 2'),
(1882, 2, 10, 9457, 300000, 0, 0, 0, 0, 0, 0, 0, -297.373, -1917.11, 91.6746, 1.81435, 'Counterattack!: Summon Horde Defender 3'),
(1882, 2, 10, 9458, 300000, 0, 0, 0, 0, 0, 0, 0, -293.212, -1912.51, 91.6673, 1.42794, 'Counterattack!: Summon Horde Axe Thrower 1'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -280.037, -1888.35, 92.2549, 2.28087, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -292.107, -1899.54, 91.667, 4.78158, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -305.57, -1869.88, 92.7754, 2.45131, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -289.972, -1882.76, 92.5714, 3.43148, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -277.454, -1873.39, 92.7773, 4.75724, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -271.581, -1847.51, 93.4329, 4.39124, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9524, 300000, 0, 0, 0, 0, 0, 0, 0, -269.982, -1828.6, 92.4754, 4.68655, 'Counterattack!: Summon Kolkar Invader'),
(1882, 2, 10, 9523, 300000, 0, 0, 0, 0, 0, 0, 0, -279.267, -1827.92, 92.3128, 1.35332, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 2, 10, 9523, 300000, 0, 0, 0, 0, 0, 0, 0, -297.42, -1847.41, 93.2295, 5.80967, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 2, 10, 9523, 300000, 0, 0, 0, 0, 0, 0, 0, -310.607, -1831.89, 95.9363, 0.371571, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 2, 10, 9523, 300000, 0, 0, 0, 0, 0, 0, 0, -329.177, -1842.43, 95.3891, 0.516085, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 2, 10, 9523, 300000, 0, 0, 0, 0, 0, 0, 0, -324.448, -1860.63, 94.3221, 4.97793, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 62, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -290.588, -1858, 92.5026, 4.14698, 'Counterattack!: Summon Kolkar Invader'),
(1882, 62, 10, 9523, 240000, 0, 0, 0, 0, 0, 0, 0, -286.103, -1846.18, 92.544, 6.11047, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 62, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -304.978, -1844.7, 94.4432, 1.61721, 'Counterattack!: Summon Kolkar Invader'),
(1882, 62, 10, 9523, 240000, 0, 0, 0, 0, 0, 0, 0, -308.105, -1859.08, 93.8039, 2.80709, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 62, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -297.089, -1867.68, 92.5601, 2.21804, 'Counterattack!: Summon Kolkar Invader'),
(1882, 62, 10, 9523, 240000, 0, 0, 0, 0, 0, 0, 0, -286.988, -1876.47, 92.7447, 1.39494, 'Counterattack!: Summon Kolkar Stormseer'),
(1882, 62, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -291.86, -1893.04, 92.0213, 1.96121, 'Counterattack!: Summon Kolkar Invader'),
(1882, 62, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -298.297, -1846.85, 93.3672, 4.97792, 'Counterattack!: Summon Kolkar Invader'),
(1882, 102, 10, 9524, 240000, 0, 0, 0, 0, 0, 0, 0, -294.942, -1845.88, 93.0999, 4.86797, 'Counterattack!: Summon Kolkar Invader'),
(1882, 102, 10, 9456, 240000, 0, 0, 0, 0, 0, 0, 0, -296.718, -1846.38, 93.2334, 5.02897, 'Counterattack!: Summon Warlord Kromzar');

DELETE FROM `db_script_string` WHERE `entry` = @STRING1;
INSERT INTO `db_script_string` VALUES
(@STRING1, 'Beware, $n! Look to the west!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (43, 44, 45, 46, 47, 48, 49, 50, 51, 524, 6690, 6691, 50041, 50120, 50232);
INSERT INTO `dbscripts_on_gossip` VALUES
(43, 0, 17, 21408, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Unending Life'),
(44, 0, 17, 21414, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Vaulted Secrets'),
(45, 0, 17, 21405, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Veiled Shadows'),
(46, 0, 17, 21396, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Eternal Justice'),
(47, 0, 17, 21411, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Infinite Wisdom'),
(48, 0, 17, 21399, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of the Gathering Storm'),
(49, 0, 17, 21417, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Unspoken Names'),
(50, 0, 17, 21402, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Signet of the Unseen Path'),
(51, 0, 17, 21393, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Signet of Unyielding Strength'),
(524, 0, 15, 9977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Conjure E.C.A.C'),
(6690, 0, 15, 25843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Hive\'Zora Scout Report'),
(6691, 0, 15, 25845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Hive\'Ashi Scout Report'),
(50041, 0, 15, 9949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Thieves\' Tool Rack Conjure'),
(50120, 0, 17, 12563, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(50232, 0, 17, 7586, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

