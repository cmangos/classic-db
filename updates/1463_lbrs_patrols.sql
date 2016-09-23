-- Top room near Bijou
DELETE FROM creature WHERE guid=43559;
DELETE FROM creature_addon WHERE guid=43559;
DELETE FROM creature_movement WHERE id=43559;
DELETE FROM game_event_creature WHERE guid=43559;
DELETE FROM game_event_creature_data WHERE guid=43559;
DELETE FROM creature_battleground WHERE guid=43559;
DELETE FROM creature_linking WHERE guid=43559 OR master_guid=43559;
DELETE FROM creature WHERE guid=43559;
INSERT INTO creature VALUES (43559,9239,229,0,0,-39.0271,-547.342,16.1255,4.97512,2*60*60,0,0,6477,2163,0,2); -- patrol
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43559,1, -39.107231,-547.148987,16.125872, 4.97512, 60*1000),
(43559,2, -39.597519,-523.890381,4.992621, 1.545995, 30*1000);

-- Entrance room (ramp from Hordemar City)
-- Added patrol
DELETE FROM creature_movement WHERE id=40154;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime) VALUES
(40154,1, -48.089626,-460.303558,16.398632, 100, 0),
(40154,2, -8.386492,-461.059998,16.728352, 100, 0),
(40154,3, -47.694778,-460.330566,16.402576, 100, 0),
(40154,4, -47.758339,-472.839417,16.333258, 100, 0),
(40154,5, -40.366806,-493.487183,16.186602, 100, 0),
(40154,6, -39.576500,-509.575165,5.856623, 4.753645, 30*1000),
(40154,7, -39.994362,-493.414276,16.188383, 100, 0),
(40154,8, -47.637386,-472.980103,16.333862, 100, 0);
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=40154;

-- Entrance: added movement to caster
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43527,1, 0.260554,-461.397125,16.094440, 100, 0),
(43527,2, -15.068926,-460.352875,16.579485, 100, 0),
(43527,3, -18.807304,-451.509888,16.537537, 100, 0),
(43527,4, -18.807304,-451.509888,16.537537, 1.912761, 30*1000);
UPDATE creature SET MovementType=2 WHERE guid=43527;


-- Big bottom room patrols
-- 2x Headhunters + Berserkers or 2x Headhunters + Shadowhunters
-- First patrol counter-clockwise headhunter+berserker
DELETE FROM creature WHERE guid=43560;
DELETE FROM creature_addon WHERE guid=43560;
DELETE FROM creature_movement WHERE id=43560;
DELETE FROM game_event_creature WHERE guid=43560;
DELETE FROM game_event_creature_data WHERE guid=43560;
DELETE FROM creature_battleground WHERE guid=43560;
DELETE FROM creature_linking WHERE guid=43560 OR master_guid=43560;
DELETE FROM creature WHERE guid=43560;
INSERT INTO creature VALUES (43560,9241,229,0,0,-72.9836,-517.218,-7.14286,4.7285,2*60*60,0,0,8352,0,0,2);
DELETE FROM creature WHERE guid=43561;
DELETE FROM creature_addon WHERE guid=43561;
DELETE FROM creature_movement WHERE id=43561;
DELETE FROM game_event_creature WHERE guid=43561;
DELETE FROM game_event_creature_data WHERE guid=43561;
DELETE FROM creature_battleground WHERE guid=43561;
DELETE FROM creature_linking WHERE guid=43561 OR master_guid=43561;
DELETE FROM creature WHERE guid=43561;
INSERT INTO creature VALUES (43561,9268,229,0,0,-76.7771,-517.279,-7.14286,4.7285,2*60*60,0,0,8613,0,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(43560,1, -73.970467,-517.234009,-7.142864, 100),
(43560,2, -73.874817,-523.169250,-7.142920, 100),
(43560,3, -73.265968,-540.061218,-18.795183, 100),
(43560,4, -73.173820,-545.779480,-18.800999, 100),
(43560,5, -63.243862,-549.406189,-18.812057, 100),
(43560,6, -18.329285,-549.121521,-18.785419, 100),
(43560,7, -5.791784,-542.450745,-18.793913, 100),
(43560,8, -5.484589,-523.005493,-7.142718, 100),
(43560,9, -5.638316,-512.436646,-7.142718, 100),
(43560,10, -5.917571,-493.237671,-18.795147, 100),
(43560,11, -14.509295,-487.841888,-18.789783, 100),
(43560,12, -66.097374,-487.162323,-18.788757, 100),
(43560,13, -73.520866,-493.968750,-18.793919, 100),
(43560,14, -73.070999,-511.362244,-7.242242, 100);
DELETE FROM creature_linking WHERE guid=43561;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(43561, 43560, 515);
-- Second patrol clockwise headhunter+berserker
DELETE FROM creature WHERE guid=660086;
INSERT INTO creature VALUES (660086,9241,229,0,0,-1.07454,-517.358,-7.14288,4.66332,2*60*60,0,0,8097,0,0,2);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES 
(660086,1, -1.074543,-517.357666,-7.142882, 100),
(660086,2, -1.361253,-523.195618,-7.142882, 100),
(660086,3, -2.209020,-540.457825,-18.794813, 100),
(660086,4, -14.493629,-549.850037,-18.783758, 100),
(660086,5, -70.614700,-550.551331,-18.814631, 100),
(660086,6, -78.049995,-539.914062,-18.797049, 100),
(660086,7, -77.572678,-522.835510,-7.142952, 100),
(660086,8, -77.398697,-511.906830,-7.142952, 100),
(660086,9, -77.585686,-494.313660,-18.794872, 100),
(660086,10, -66.142632,-485.177856,-18.778864, 100),
(660086,11, -9.206081,-485.379852,-18.786659, 100),
(660086,12, -1.510508,-494.902344,-18.793882, 100),
(660086,13, -1.005701,-511.030334,-7.501270, 100);
DELETE FROM creature_linking WHERE guid=43565;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(43565, 660086, 515);

DELETE FROM creature WHERE guid=660088;
INSERT INTO creature VALUES (660088,9265,229,0,0,-76.7771,-517.279,-7.14286,4.7285,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature_linking WHERE guid=660088;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(660088, 43560, 515);
DELETE FROM creature WHERE guid=660087;
INSERT INTO creature VALUES (660087,9265,229,0,0,-4.98251,-517.704,-7.14246,4.70072,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature_linking WHERE guid=660087;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(660087, 660086, 515);

DELETE FROM pool_creature WHERE guid IN (43561, 43565, 660088, 660087);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(43561, 25573, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(660088, 25573, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(43565, 25574, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(660087, 25574, 0, 'Lower Blackrock Spire - Tazz Alaor patrol');

DELETE FROM pool_template WHERE entry IN (25573, 25574);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25573, 1, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(25574, 1, 'Lower Blackrock Spire - Tazz Alaor patrol');