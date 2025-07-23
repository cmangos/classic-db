-- duplicates
DELETE FROM `gameobject` WHERE `guid` = 20556;

-- only one of this GOs is used and NOT for the night-event
-- there is a mini-event that needs to be implemented.. wip
DELETE FROM `game_event_gameobject` WHERE `guid` IN (20556, 20557);

-- -------------------------------------------------------------- --

-- position update
UPDATE `gameobject` SET `position_x` = -1108.1640625, `position_y` = -11.2956752777099609, `position_z` = 148.6290130615234375, `orientation` = 1.841320514678955078, `rotation2` = 0.796001434326171875, `rotation3` = 0.605294704437255859 WHERE `guid` = 20428;
UPDATE `gameobject` SET `position_x` = -1123.4056396484375, `position_y` = 66.322113037109375, `position_z` = 149.444488525390625, `orientation` = 4.424408435821533203, `rotation2` = -0.8012542724609375, `rotation3` = 0.598324000835418701 WHERE `guid` = 20427;
UPDATE `gameobject` SET `position_x` = -1221.873779296875, `position_y` = -18.0720767974853515, `position_z` = 165.411224365234375, `orientation` = 3.115387916564941406, `rotation2` = 0.999914169311523437, `rotation3` = 0.013101960532367229 WHERE `guid` = 27887;
UPDATE `gameobject` SET `position_x` = -1240.5225830078125, `position_y` = 104.84375, `position_z` = 128.5923309326171875, `orientation` = 2.809975385665893554, `rotation2` = 0.986285209655761718, `rotation3` = 0.165049895644187927 WHERE `guid` = 18126;
-- UPDATE `gameobject` SET `position_x` = -1257.8052978515625, `position_y` = 64.37353515625, `position_z` = 127.625152587890625, `orientation` = 1.48352813720703125, `rotation2` = 0.675589561462402343, `rotation3` = 0.737277925014495849 WHERE `guid` = 20621; -- tbc+ 187295 Guild Vault
UPDATE `gameobject` SET `position_x` = -1207.6324462890625, `position_y` = -66.4388580322265625, `position_z` = 157.490264892578125, `orientation` = 3.24634718894958496, `rotation2` = -0.99862861633300781, `rotation3` = 0.052353221923112869 WHERE `guid` = 20557;
UPDATE `gameobject` SET `position_x` = -1278.974365234375, `position_y` = 49.23550033569335937, `position_z` = 135.3255767822265625, `orientation` = 0.471238493919372558, `rotation2` = 0.233445167541503906, `rotation3` = 0.972369968891143798 WHERE `guid` = 20471;
UPDATE `gameobject` SET `position_x` = -1240.232666015625, `position_y` = 112.1875, `position_z` = 129.6535491943359375, `orientation` = 3.45575571060180664, `rotation2` = -0.98768806457519531, `rotation3` = 0.156436234712600708 WHERE `guid` = 18124;
UPDATE `gameobject` SET `position_x` = -1179.5897216796875, `position_y` = -93.413299560546875, `position_z` = 168.539215087890625, `orientation` = 2.539447784423828125, `rotation2` = 0.955018997192382812, `rotation3` = 0.296544641256332397 WHERE `guid` = 20437;
UPDATE `gameobject` SET `position_x` = -1237.657470703125, `position_y` = -90.5948486328125, `position_z` = 169.032867431640625, `orientation` = 0.488691210746765136, `rotation2` = 0.241921424865722656, `rotation3` = 0.970295846462249755 WHERE `guid` = 20442;
UPDATE `gameobject` SET `position_x` = -1053.654541015625, `position_y` = -288.59375, `position_z` = 159.0303497314453125, `orientation` = 3.071766138076782226, `rotation2` = 0.999390602111816406, `rotation3` = 0.034906134009361267 WHERE `guid` = 27874;
UPDATE `gameobject` SET `position_x` = -1052.0816650390625, `position_y` = -310.696197509765625, `position_z` = 159.030548095703125, `orientation` = 3.22885894775390625, `rotation2` = -0.99904823303222656, `rotation3` = 0.043619260191917419 WHERE `guid` = 27876;
UPDATE `gameobject` SET `position_x` = -1204.249267578125, `position_y` = 134.8046875, `position_z` = 140.6939239501953125, `orientation` = 3.839725255966186523, `rotation2` = -0.93969249725341796, `rotation3` = 0.34202045202255249 WHERE `guid` = 20465;
-- UPDATE `gameobject` SET `position_x` = -993.115234375, `position_y` = 218.00885009765625, `position_z` = 106.5692367553710937, `orientation` = 4.939284324645996093, `rotation2` = -0.6225137710571289, `rotation3` = 0.78260880708694458 WHERE `guid` = 63171; -- 193981 Lexicon of Power
-- UPDATE `gameobject` SET `position_x` = -944.06427001953125, `position_y` = 274.859375, `position_z` = 111.7099990844726562 WHERE `guid` = 520952; -- 195142 Portal to Blasted Lands


-- missing objects (free guids used and 1 deleted guid reused)
DELETE FROM `gameobject` WHERE `guid` IN (20556, 18117, 18118, 18119); -- 11115, 11116, 11117 taken
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(20556, 152583, 1, 1, -1257.8424072265625, 24.41799354553222656, 128.217498779296875, 2.888511419296264648, 0, 0, 0.99200439453125, 0.126203224062919616, 120, 120),
(18117, 185004, 1, 1, -1049.5347900390625, -290.34722900390625, 159.0303497314453125, 0.209439441561698913, 0, 0, 0.104528427124023437, 0.994521915912628173, 120, 120),
(18118, 185004, 1, 1, -1050.2257080078125, -290.552093505859375, 159.0303497314453125, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358, 120, 120),
(18119, 182257, 1, 1, -1049.82470703125, -286.196197509765625, 159.0303497314453125, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 120, 120);

-- fire is always off by default
UPDATE `gameobject_addon` SET `state` = 1 WHERE `guid` = 20557;
INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES (20556, 255, 1);
