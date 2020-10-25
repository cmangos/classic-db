-- Add your query below.
-- https://github.com/vmangos/core/commit/f0a1fbfc87d97d8a876bf569ca9eb09729714cdd

-- Correct attack speed for Lord Skwol.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15305;
-- Correct attack speed for Prince Skaldrenox.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=15203;
-- Correct attack speed for High Marshal Whirlaxis.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15204;
-- Correct attack speed for Baron Kazum.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=15205;
-- Correct attack speed for Infernal.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=89;
-- Correct attack speed for Colossus of Zora.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=15740;
-- Correct attack speed for Colossus of Ashi.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=15742;
-- Correct attack speed for Senior Sergeant Kai'jin.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=15704;
-- Correct attack speed for Anubisath Warrior.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=15537;
-- Correct attack speed for Vem.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500, `RangedBaseAttackTime`=2000 WHERE `entry`=15544;
-- Correct attack speed for Zealot Zath.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=11348;
-- Correct attack speed for Herald of Thrall.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=10719;
-- Correct attack speed for Anachronos the Ancient.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000, `RangedBaseAttackTime`=2000 WHERE `entry`=15381;

-- Mass melee attack speed updates.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=60;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=603;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=873;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=954;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1089;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1090;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1091;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1092;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1115;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1116;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1117;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=1118;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1134;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1154;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1155;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1156;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1161;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1165;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1167;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1178;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1179;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=1180;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1181;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1183;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1187;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1214;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1222;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1237;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1254;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1255;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1256;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1271;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1277;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1281;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1282;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1283;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1329;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1330;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1344;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1345;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1355;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1358;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1360;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1374;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1375;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1393;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1433;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1679;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1685;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1686;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1687;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1697;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1698;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1701;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1959;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1977;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2225;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2745;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3162;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3343;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3545;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3625;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4969;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5314;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5441;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=5809;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry`=5824;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5826;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5832;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5838;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5849;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6071;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6123;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6124;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=6143;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6177;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8508;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10364;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10367;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10930;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10991;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11347;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=11370;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11373;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11387;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11388;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11391;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11583;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11725;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11726;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11728;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11729;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11807;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11837;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11838;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11839;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11840;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11946;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12097;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12474;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12475;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12476;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12498;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13085;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry`=13089;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13328;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13441;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13448;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13616;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14185;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14186;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=14448;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14480;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14487;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14515;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14768;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14769;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14825;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=800 WHERE `entry`=14880;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry`=14882;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14883;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14946;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14948;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15042;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15067;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=15083;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=15084;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15111;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15114;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15117;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15119;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15206;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15208;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15209;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15211;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15212;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15220;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15307;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15354;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=16107;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=16110;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2630;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2675;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2983;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3270;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3451;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3455;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3844;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3902;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3911;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4509;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5780;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=5786;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5830;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5841;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=5859;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5873;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5874;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5879;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5919;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5921;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5932;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6111;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=6867;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7399;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7403;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7413;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7416;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7466;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7484;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7560;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7845;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9526;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11101;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11901;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12123;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14842;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15102;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=16085;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=17041;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=17048;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=17049;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=17050;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=17051;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry`=678;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=679;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=680;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=710;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=775;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1700 WHERE `entry`=813;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=815;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=875;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1060;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1388;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1492;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry`=1559;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2184;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2541;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2624;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2667;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3903;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=5359;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=5360;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=5361;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5916;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7666;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7772;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7851;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8019;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8609;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11690;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15224;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15807;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15808;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=314;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=575;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry`=1119;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1205;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1206;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1207;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1376;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1377;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1378;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1694;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1702;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1755;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1827;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1832;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1834;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1843;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1846;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1855;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1871;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1893;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1896;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2191;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2299;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2345;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2346;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2447;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2523;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2583;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2585;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2602;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2603;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2623;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2671;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2678;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2773;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2779;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=2992;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3414;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3470;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3527;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3529;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3531;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3560;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3573;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3579;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3799;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3906;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3907;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3908;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3909;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3912;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3984;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=3985;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4504;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4789;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4795;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5392;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5848;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5913;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5920;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5922;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5923;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5925;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5926;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5927;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5929;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5933;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5934;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5935;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6016;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6017;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6021;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6066;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6110;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6112;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6238;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6240;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=6243;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6490;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6650;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=6651;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7016;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7044;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=7137;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7360;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7366;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7367;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7368;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7398;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7400;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7402;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7412;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7414;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7415;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7425;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7464;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7465;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7469;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7483;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7486;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7487;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7527;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry`=7769;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7844;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7918;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7977;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8018;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8204;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8219;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8281;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8297;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8317;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8392;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8446;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8978;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry`=8979;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9297;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9398;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9459;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=9462;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9477;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9516;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=9683;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9687;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9689;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10183;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10323;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10383;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10557;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=250 WHERE `entry`=10577;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10581;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10608;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=10639;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10697;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10699;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10720;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10807;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1700 WHERE `entry`=10836;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10876;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10919;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=10925;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10929;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry`=10943;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=10988;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10996;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11064;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11141;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11196;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11197;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=11521;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11721;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11723;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11730;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11731;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11732;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11733;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11734;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11876;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11886;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11887;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12116;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12140;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=12257;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=12265;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12369;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12416;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12420;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12422;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12578;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12581;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12921;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12940;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13096;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13136;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13421;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13540;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13542;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13543;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13545;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13546;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13553;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13556;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=13777;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2300 WHERE `entry`=14101;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14223;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14227;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14262;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14264;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14278;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14281;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14302;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14337;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14347;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14433;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14474;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14475;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14527;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14528;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14529;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry`=14605;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14668;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14754;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14781;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14862;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14884;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14986;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14987;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry`=14988;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15009;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15047;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry`=15068;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15077;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15088;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15112;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15168;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15196;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15229;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15230;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15233;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15235;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15236;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15240;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15247;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry`=15249;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15263;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15264;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15276;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15277;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15286;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15288;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15290;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1300 WHERE `entry`=15299;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15311;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15316;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15317;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15318;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15319;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15320;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=800 WHERE `entry`=15323;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15324;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15325;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15327;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15333;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15335;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15336;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15338;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry`=15339;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15340;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15341;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1300 WHERE `entry`=15344;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15348;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15355;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15362;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=15369;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=15370;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15378;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15379;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15380;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15385;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15386;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15387;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15388;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15389;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15390;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15391;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15392;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=4000 WHERE `entry`=15428;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15459;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15460;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15461;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15462;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15464;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15469;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=15473;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15477;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15500;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15502;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15504;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=15505;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15508;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15509;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15510;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=15511;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15512;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15515;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=15516;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15521;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15522;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15525;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15527;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15528;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15529;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15532;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15533;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15534;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15535;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1300 WHERE `entry`=15538;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15540;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15541;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15543;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry`=15546;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15555;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry`=15589;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15614;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=15621;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15622;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15630;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15634;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15696;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15699;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15700;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15702;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15707;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15708;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15727;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15739;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15743;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15744;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15748;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15749;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15751;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15752;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15754;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15756;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15758;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15759;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15810;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15811;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15818;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15852;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15853;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15854;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15857;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15858;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15859;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry`=15860;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15861;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15862;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15866;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15868;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15869;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15870;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15964;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry`=15984;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=16031;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=16091;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry`=16093;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1000;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1001;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9437;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9445;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=9637;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14122;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15146;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry`=15163;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15275;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15963;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=639;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=1531;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7667;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7728;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=7729;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8304;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1400 WHERE `entry`=9708;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10217;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10218;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=11263;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12141;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=12143;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14350;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14500;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=895;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=912;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=916;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=926;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=945;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry`=1104;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=4277;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=5352;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=8416;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=10467;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14362;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15741;

-- Mass ranged attack speed upates.
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=60;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=603;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=691;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=696;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=873;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=954;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1089;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1090;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1091;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1092;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1115;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1116;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1117;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1118;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1134;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1154;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1155;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1156;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1161;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1165;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1167;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1178;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1179;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1180;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1181;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1183;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1185;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1187;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1189;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1192;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1194;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1214;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1222;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1237;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1254;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1255;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1256;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1271;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1277;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1281;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1282;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1283;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1329;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1330;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1344;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1345;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1355;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1358;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1360;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1374;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1375;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1393;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1433;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1558;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1679;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1685;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1686;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1687;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1689;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1697;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1698;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1701;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1959;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1977;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2225;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3101;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3102;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3112;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3119;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3121;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3128;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3129;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3160;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3162;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3192;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3205;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3206;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3207;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3343;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3545;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3625;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4969;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5809;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5824;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5826;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5832;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5941;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6071;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6123;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6124;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6177;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8508;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10364;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10367;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10930;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10991;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11583;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11807;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11837;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11838;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11839;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11840;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11946;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12097;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12121;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12122;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13089;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13153;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13176;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13218;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13328;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13439;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13441;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13448;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13616;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13798;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14029;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14031;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14185;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14186;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14448;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14480;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14487;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14515;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14768;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14769;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14770;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14771;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14772;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14773;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14774;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14775;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14776;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14777;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14946;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14948;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15069;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15083;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15084;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15114;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15117;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15119;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15140;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15203;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15205;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15206;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15208;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15209;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15211;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15212;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15220;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15305;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15307;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2630;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2675;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2983;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3451;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3455;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3680;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3844;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3902;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3911;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4263;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4509;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5780;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5834;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5873;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5874;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5879;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5919;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5921;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6111;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6867;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7380;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7387;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7391;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7392;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7399;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7403;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7413;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7416;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7466;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7484;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7560;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7845;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9526;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10259;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10598;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11101;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11326;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12123;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14842;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15102;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=16085;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=16547;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=16548;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=17041;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=17048;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=17049;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=17050;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=17051;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=667;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=669;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=670;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=672;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=674;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=675;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=676;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=677;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=678;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=679;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=680;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=698;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=710;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=756;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=775;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=780;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=781;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=782;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=783;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=784;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=813;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=815;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=875;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=978;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=979;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1059;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1060;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1388;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1449;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1551;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2521;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2530;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2534;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2537;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2541;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2546;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2547;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2548;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2549;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2550;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2551;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2624;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2634;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2667;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2672;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3903;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4505;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4506;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5916;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6366;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7772;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7802;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11690;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14890;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15224;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=314;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1119;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1205;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1206;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1207;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1376;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1377;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1378;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1694;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1702;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1755;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1843;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1871;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1893;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1896;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2191;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2523;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2602;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2603;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2623;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2671;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2673;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2674;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2678;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2779;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=2992;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3527;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3529;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3531;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3560;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3573;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3579;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3799;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3864;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3906;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3907;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3908;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3909;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3912;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4059;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4504;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4781;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4787;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4795;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4798;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4799;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4805;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4807;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4815;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4818;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4819;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4820;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4821;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4822;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4831;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4887;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5392;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5848;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5913;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5920;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5922;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5923;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5925;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5926;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5927;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5929;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5934;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5935;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6016;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6017;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6021;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6066;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6110;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6112;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6238;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6240;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6243;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6490;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6493;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6498;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6500;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=6650;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7016;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7360;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7366;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7367;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7368;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7383;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7394;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7398;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7400;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7402;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7412;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7414;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7415;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7425;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7464;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7465;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7469;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7483;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7486;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7487;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7527;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7543;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7544;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7545;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7549;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7550;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7769;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7844;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7918;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8204;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8219;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8281;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8297;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8299;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8301;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8317;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8376;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8392;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8446;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8836;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8937;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8978;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8979;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9297;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9398;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9477;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9662;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9683;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9687;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9689;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9937;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10183;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10323;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10383;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10441;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10461;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10536;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10557;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10577;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10581;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10697;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10699;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10717;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10719;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10720;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10836;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10876;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10919;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10925;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10943;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10980;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10988;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10996;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11064;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11141;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11196;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11197;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11199;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11200;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11325;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11327;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11521;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11636;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11637;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11677;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11817;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11819;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11875;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11876;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11886;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11887;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12116;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12120;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12140;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12152;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12257;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12265;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12369;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12416;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12420;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12422;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12581;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12902;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12921;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12940;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13096;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13136;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13421;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13540;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13542;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13543;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13545;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13546;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13553;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=13556;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14101;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14223;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14227;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14262;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14264;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14281;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14302;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14337;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14366;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14433;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14465;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14466;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14474;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14475;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14528;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14668;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14751;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14752;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14862;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14878;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14884;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14965;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14986;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14987;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14988;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14989;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15009;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15010;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15041;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15045;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15046;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15047;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15062;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15063;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15064;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15065;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15066;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15068;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15071;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15072;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15074;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15075;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15077;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15086;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15087;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15088;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15089;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15101;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15107;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15108;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15112;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15168;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15263;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15264;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15276;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15286;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15288;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15290;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15299;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15304;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15316;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15318;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15319;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15320;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15323;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15324;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15325;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15327;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15333;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15335;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15336;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15338;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15339;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15340;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15341;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15344;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15355;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15362;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15369;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15370;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15378;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15379;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15380;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15381;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15385;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15386;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15387;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15388;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15389;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15390;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15391;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15392;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15428;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15461;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15462;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15464;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15477;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15502;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15503;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15504;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15505;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15508;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15509;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15510;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15511;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15515;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15516;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15521;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15527;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15528;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15538;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15543;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15546;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15555;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15589;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15634;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15696;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15699;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15700;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15702;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15707;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15708;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15727;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15739;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15743;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15744;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15818;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15852;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15853;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15854;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15857;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15858;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15859;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15862;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15866;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15868;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15869;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15870;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15964;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15984;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=16031;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=16549;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=747;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=922;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1000;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1001;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9437;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9445;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9637;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9656;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9916;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12473;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14122;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15146;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15163;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15204;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15275;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15963;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=643;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=7729;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8300;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8612;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9707;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=9708;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10217;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10218;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10359;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11263;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12141;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=12143;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14350;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14500;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=895;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=912;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=916;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=926;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=945;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=1104;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=4277;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=5352;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=8416;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=10467;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14362;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14421;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15741;

-- Correct run speed for Kinelory.
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=2713;
-- Correct walk speed for Kerlonian Evershade.
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11218;
-- Correct run speed for Crypt Scarab.
UPDATE `creature_template` SET `SpeedRun`=2 WHERE `entry`=10577;
-- Correct run and walk speed for Argent Rider.
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=1.38571 WHERE `entry`=11102;
-- Correct walk speed for Risen Guardian.
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11598;
-- Correct run and walk speed for Plagued Insect.
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=1.14286 WHERE `entry`=10461;

-- Mass run speed corrections.
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=2170;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=2171;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2630;
UPDATE `creature_template` SET `SpeedRun`=0.571429 WHERE `entry`=2675;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2951;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2952;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2953;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2954;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2966;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2975;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2989;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=2990;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=3068;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=3229;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=3680;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3844;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3902;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3911;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=4196;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=5786;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5873;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5874;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5879;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5919;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5921;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=5932;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6111;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7399;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7403;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7413;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7416;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7466;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7484;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7845;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=8554;
UPDATE `creature_template` SET `SpeedRun`=4.28571 WHERE `entry`=9526;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=11101;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=12034;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=698;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=756;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1122;
UPDATE `creature_template` SET `SpeedRun`=1.07143 WHERE `entry`=1559;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=2522;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2667;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3903;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=4034;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4661;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=7939;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=11690;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=14890;
UPDATE `creature_template` SET `SpeedRun`=0.428571 WHERE `entry`=15224;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15806;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1115;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1116;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1123;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1124;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1134;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1689;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2523;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=2623;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2673;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2674;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=2992;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3527;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3560;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3573;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3579;
UPDATE `creature_template` SET `SpeedRun`=1.28571 WHERE `entry`=3864;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3906;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3907;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3908;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3909;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=3912;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=3921;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=3922;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=3923;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=3926;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=3987;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=4059;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4107;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4109;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4634;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4636;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4637;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=4781;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=5300;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=5304;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5913;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5920;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5922;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5923;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5925;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5926;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5927;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=5929;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6016;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6017;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6066;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6110;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=6112;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=6240;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=6378;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=6651;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=7153;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=7154;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=7155;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7366;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7367;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7368;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7398;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7400;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7402;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7412;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7414;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7415;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7425;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7464;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7465;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7469;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7483;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7486;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7487;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7527;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=7844;
UPDATE `creature_template` SET `SpeedRun`=0.285714 WHERE `entry`=8317;
UPDATE `creature_template` SET `SpeedRun`=1.57143 WHERE `entry`=8446;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=8937;
UPDATE `creature_template` SET `SpeedRun`=4.28571 WHERE `entry`=9297;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=9462;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=9464;
UPDATE `creature_template` SET `SpeedRun`=1.21429 WHERE `entry`=9683;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=9687;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=9689;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=9937;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=10183;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=10557;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=10581;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=10639;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=10807;
UPDATE `creature_template` SET `SpeedRun`=1.07143 WHERE `entry`=11199;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=11360;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=11361;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=11365;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=11380;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=11382;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=11561;
UPDATE `creature_template` SET `SpeedRun`=4.28571 WHERE `entry`=11583;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=11620;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=11621;
UPDATE `creature_template` SET `SpeedRun`=1.28571 WHERE `entry`=11710;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=11727;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=11732;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=11875;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=12120;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=12265;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=12416;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=12420;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=12422;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=12581;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=12677;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=12921;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=13136;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=13318;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14081;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=14227;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14465;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14466;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=14474;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14509;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14515;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=14532;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=14605;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14751;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14752;
UPDATE `creature_template` SET `SpeedRun`=2.57143 WHERE `entry`=14862;
UPDATE `creature_template` SET `SpeedRun`=2.42857 WHERE `entry`=14880;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=14881;
UPDATE `creature_template` SET `SpeedRun`=0.571429 WHERE `entry`=14884;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14986;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=14987;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14988;
UPDATE `creature_template` SET `SpeedRun`=0.285714 WHERE `entry`=15009;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15041;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15068;
UPDATE `creature_template` SET `SpeedRun`=1.25714 WHERE `entry`=15077;
UPDATE `creature_template` SET `SpeedRun`=1.25714 WHERE `entry`=15078;
UPDATE `creature_template` SET `SpeedRun`=1.25714 WHERE `entry`=15079;
UPDATE `creature_template` SET `SpeedRun`=1.25714 WHERE `entry`=15088;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=15101;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=15107;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15108;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15112;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15192;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15206;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15212;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15229;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15230;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15233;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15235;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15236;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15240;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15246;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15247;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15250;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15252;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15262;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15263;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15264;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15276;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15277;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15286;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15288;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15290;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15299;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15300;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15304;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15305;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15307;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15311;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15312;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15316;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15317;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15318;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15319;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15320;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15323;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15324;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15325;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15327;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15335;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15336;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15338;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=15339;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15340;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15341;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15343;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15344;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15348;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15355;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15369;
UPDATE `creature_template` SET `SpeedRun`=0.428571 WHERE `entry`=15370;
UPDATE `creature_template` SET `SpeedRun`=1.85714 WHERE `entry`=15378;
UPDATE `creature_template` SET `SpeedRun`=1.85714 WHERE `entry`=15379;
UPDATE `creature_template` SET `SpeedRun`=1.85714 WHERE `entry`=15380;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15385;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15386;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15387;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15388;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15389;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15390;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15391;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15392;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15414;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15421;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15422;
UPDATE `creature_template` SET `SpeedRun`=0.571429 WHERE `entry`=15428;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15458;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15461;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15462;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15464;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=15475;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=15476;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15521;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15527;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15537;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15538;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15539;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15541;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15545;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15546;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=15555;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15589;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15621;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15700;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15701;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15720;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15727;
UPDATE `creature_template` SET `SpeedRun`=2.85714 WHERE `entry`=15740;
UPDATE `creature_template` SET `SpeedRun`=2.85714 WHERE `entry`=15742;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15743;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15744;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15747;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15750;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15753;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15757;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15803;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15812;
UPDATE `creature_template` SET `SpeedRun`=2 WHERE `entry`=15813;
UPDATE `creature_template` SET `SpeedRun`=0.992063 WHERE `entry`=15814;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15817;
UPDATE `creature_template` SET `SpeedRun`=2.85714 WHERE `entry`=15818;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15854;
UPDATE `creature_template` SET `SpeedRun`=1.28968 WHERE `entry`=15857;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=15862;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15896;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=16139;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=9637;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=15114;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15141;
UPDATE `creature_template` SET `SpeedRun`=0.714286 WHERE `entry`=15163;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15204;
UPDATE `creature_template` SET `SpeedRun`=2.28571 WHERE `entry`=15205;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=15211;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=15275;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=15963;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=603;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1531;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=1534;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=8612;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=9707;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=10217;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=10218;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=10359;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=10991;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=11837;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=11838;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=11839;
UPDATE `creature_template` SET `SpeedRun`=1.19048 WHERE `entry`=11840;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=12141;
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=12143;
UPDATE `creature_template` SET `SpeedRun`=1.38571 WHERE `entry`=13441;
UPDATE `creature_template` SET `SpeedRun`=1.85714 WHERE `entry`=14350;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=14772;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=14773;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=14776;
UPDATE `creature_template` SET `SpeedRun`=1.14286 WHERE `entry`=14777;
UPDATE `creature_template` SET `SpeedRun`=1.42857 WHERE `entry`=4277;
UPDATE `creature_template` SET `SpeedRun`=1 WHERE `entry`=10467;
UPDATE `creature_template` SET `SpeedRun`=0.857143 WHERE `entry`=14421;
UPDATE `creature_template` SET `SpeedRun`=2.85714 WHERE `entry`=15741;

-- Mass walk speed corrections.
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=691;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=954;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1089;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1090;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1091;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1092;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1115;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1116;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1117;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1118;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1122;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1123;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1124;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1134;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1161;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1165;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1167;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1169;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1179;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1185;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1189;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1192;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1194;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1222;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1237;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1254;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1255;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1256;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1277;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1281;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1282;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1283;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1329;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1330;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1355;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1358;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1360;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1374;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1375;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1433;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1679;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1689;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1697;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1698;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1701;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1959;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1977;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2173;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2225;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2653;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2654;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2686;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2693;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2694;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2723;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2745;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3068;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3101;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3102;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3112;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3119;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3121;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3128;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3129;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3160;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3162;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3192;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3206;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3207;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3545;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3696;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3752;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3754;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3755;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3757;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3848;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3920;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3926;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3932;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3987;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4493;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4619;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4969;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5314;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5598;
UPDATE `creature_template` SET `SpeedWalk`=0.7 WHERE `entry`=5809;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5826;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5838;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5849;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5941;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6071;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6123;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=6143;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6176;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6177;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6196;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6352;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6707;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6766;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6768;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6771;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6777;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6779;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7007;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7108;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7323;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7324;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7325;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7430;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7431;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7432;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7433;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7434;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7780;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8309;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8442;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8508;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9318;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10618;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10619;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10918;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10930;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11030;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11140;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=11583;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11706;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11718;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11725;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11726;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=11727;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11728;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11729;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=11746;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11751;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11776;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11803;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11804;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12256;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12384;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=12474;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=12475;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=12476;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12498;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12759;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12999;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=13085;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=13936;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14029;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14031;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=14448;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14449;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14459;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14480;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14515;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=14532;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=14880;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15069;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15105;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15106;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15114;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=15117;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15119;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15140;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15176;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15179;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15180;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15183;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15187;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15189;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15190;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15191;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15200;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=15205;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=15208;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=15211;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15270;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15282;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15306;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=15307;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16107;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1860;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1863;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=2170;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=2171;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2206;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2630;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2675;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2951;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2952;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2953;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2954;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2966;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2975;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2982;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=2983;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2984;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2989;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2990;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3051;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3229;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3270;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3271;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3393;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3438;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3455;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3503;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3680;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3683;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3684;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3695;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3711;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3844;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3846;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3902;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3911;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3939;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4196;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4263;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4509;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5766;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5786;
UPDATE `creature_template` SET `SpeedWalk`=1.38889 WHERE `entry`=5830;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5841;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5859;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5873;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5874;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5879;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5919;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5921;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6111;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6494;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6867;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7287;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7380;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7387;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7391;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7392;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7399;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7403;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7413;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7416;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7466;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7484;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7560;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7845;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8554;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10259;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10598;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11101;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11318;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11319;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11320;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=11321;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11326;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11901;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12034;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12717;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12719;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12721;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12736;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12757;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12863;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12961;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12962;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14842;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15102;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16547;
UPDATE `creature_template` SET `SpeedWalk`=0.444444 WHERE `entry`=16548;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17038;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17041;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17048;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17049;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17050;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=17051;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=680;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=775;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=815;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1449;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=1551;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=1559;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2176;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=2177;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2178;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2184;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2530;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=2537;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2546;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2624;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2634;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2667;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2672;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2687;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3546;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3667;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3700;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3732;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3733;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3903;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3936;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3943;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3944;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=4034;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=4661;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4885;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4886;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4888;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4941;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5327;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5328;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5359;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5360;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5361;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5385;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5393;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5508;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6000;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6001;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6002;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6003;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7666;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7736;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7764;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7772;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7802;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7826;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7851;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7852;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7877;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7878;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7879;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7880;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7900;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7903;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7904;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7941;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7942;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7943;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7945;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7946;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7947;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7948;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7949;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8019;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8022;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8157;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8178;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8609;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8679;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9540;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10059;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10293;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=11690;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11717;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11824;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11825;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14374;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=14890;
UPDATE `creature_template` SET `SpeedWalk`=1.2 WHERE `entry`=15224;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16013;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=314;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=543;
UPDATE `creature_template` SET `SpeedWalk`=1.2 WHERE `entry`=1012;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1018;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1019;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1031;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1205;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1206;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1207;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1259;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1296;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1376;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1377;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1694;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1702;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1755;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1827;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1832;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1834;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1846;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1854;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1855;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=1871;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1883;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1896;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2084;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2092;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=2172;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2238;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2243;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2245;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2250;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2299;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2303;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2306;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2318;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2345;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2346;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2403;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2447;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2449;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2462;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2523;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2557;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2573;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2574;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2583;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2585;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2609;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=2623;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2671;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=2678;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2679;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2682;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2684;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=2773;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2803;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2986;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2992;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3298;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3414;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3470;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3527;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3529;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3531;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3560;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3573;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3579;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3585;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3616;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3758;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3759;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3762;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3763;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3779;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3791;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3799;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3801;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3802;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3803;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3804;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3806;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3807;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3808;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3864;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3880;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3901;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3906;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3907;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3908;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3909;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3912;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3921;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3922;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=3923;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3942;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3984;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=3985;
UPDATE `creature_template` SET `SpeedWalk`=3.6 WHERE `entry`=4059;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4194;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4195;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4420;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4421;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4422;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4424;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4427;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4428;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4435;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4436;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4437;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4438;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4440;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4442;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4480;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4494;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4498;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4504;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4508;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4510;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4511;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4512;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4514;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4515;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4516;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4517;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4518;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4519;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4523;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4525;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=4528;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4530;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4531;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4532;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4534;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4535;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4538;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4539;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4541;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4623;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4625;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=4634;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=4636;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=4637;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4670;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4671;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4672;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4673;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4674;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4675;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4685;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4695;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4702;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4711;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4712;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4713;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4714;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4715;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4716;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4718;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4719;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4781;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4787;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4789;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4798;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4799;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4805;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4807;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4815;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4818;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4819;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4820;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4821;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4822;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4824;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4831;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=4887;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5292;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5300;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5304;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5331;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5392;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5395;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5398;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5412;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5501;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5600;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5601;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5636;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5641;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5913;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5920;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5922;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5923;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5925;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5926;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5927;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=5929;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=5933;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=5935;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6016;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6017;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6019;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6035;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6066;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=6068;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6110;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6112;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6168;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6198;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6199;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6200;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6201;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6202;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6238;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6240;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6243;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6349;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6350;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6351;
UPDATE `creature_template` SET `SpeedWalk`=1.2 WHERE `entry`=6378;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=6412;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=6493;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6516;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=6585;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=6651;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7044;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7107;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7110;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7115;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7125;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7137;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=7149;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=7153;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=7154;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=7155;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7360;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7366;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7367;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7368;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7383;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7394;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7398;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7400;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7402;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7412;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7414;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7415;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7425;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7464;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7465;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7469;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7483;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7486;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7487;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7527;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=7543;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=7544;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=7545;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7549;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7550;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7769;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7844;
UPDATE `creature_template` SET `SpeedWalk`=1.5 WHERE `entry`=7918;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7977;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8018;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8023;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8152;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8153;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=8297;
UPDATE `creature_template` SET `SpeedWalk`=0.8 WHERE `entry`=8317;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8376;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8392;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8408;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8420;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8446;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8477;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8506;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8517;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8522;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8878;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8937;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9177;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9454;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=9459;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=9462;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=9464;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9465;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9516;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9560;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9561;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9562;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9565;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9622;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9636;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9662;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=9683;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9687;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9689;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9937;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10183;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10301;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10383;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10427;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10441;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10536;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10557;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10581;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10608;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=10639;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10648;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10697;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10699;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10717;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10719;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=10720;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=10807;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=10836;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10876;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10925;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10929;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10940;
UPDATE `creature_template` SET `SpeedWalk`=0.777776 WHERE `entry`=10943;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10979;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10980;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11016;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11079;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11181;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11197;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11199;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=11200;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11259;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11325;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11327;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11561;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11611;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11613;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11614;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11620;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11621;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11637;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11710;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11712;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11721;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11723;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11730;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11731;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=11732;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11733;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11734;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11817;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11819;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11863;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11875;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11876;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11886;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11887;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11936;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12116;
UPDATE `creature_template` SET `SpeedWalk`=0.4 WHERE `entry`=12120;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12140;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12152;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12178;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12179;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12257;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12347;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12369;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=12422;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12578;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12581;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12677;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12777;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12778;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12779;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12780;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12781;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12782;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12783;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12784;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12785;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12786;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12787;
UPDATE `creature_template` SET `SpeedWalk`=1.2 WHERE `entry`=12818;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12902;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=12921;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12940;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=13136;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=13421;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=13717;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=13777;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14081;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=14227;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14278;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14280;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14337;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14347;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14366;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14465;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14466;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=14474;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14522;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14527;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14528;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14529;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14668;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14751;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14752;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14754;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14781;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14862;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14878;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=14884;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14964;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=14965;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14987;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14988;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14989;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=15009;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=15041;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15045;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15046;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15047;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=15062;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15063;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15064;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15065;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15066;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15068;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15071;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15072;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15074;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15075;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15077;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15078;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15079;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15086;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15087;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15089;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15101;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15107;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15108;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15112;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15169;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15192;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15196;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15213;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15229;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15230;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15233;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=15240;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15246;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15247;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15250;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15252;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15262;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15263;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15264;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15277;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15293;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15299;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15300;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15304;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15311;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15312;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15315;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15316;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15335;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15343;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15344;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15362;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15369;
UPDATE `creature_template` SET `SpeedWalk`=1.2 WHERE `entry`=15370;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15378;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15379;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15380;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15383;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=15414;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15419;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=15421;
UPDATE `creature_template` SET `SpeedWalk`=1.4 WHERE `entry`=15422;
UPDATE `creature_template` SET `SpeedWalk`=1.6 WHERE `entry`=15428;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15431;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15432;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15434;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15437;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15445;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15446;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15448;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15450;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15451;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15452;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15453;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15455;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15456;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15457;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15459;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15460;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15464;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15469;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15476;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15498;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15499;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15500;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15502;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15503;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15504;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15510;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15512;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15516;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15522;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15525;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15528;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15529;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15532;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15533;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15534;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15535;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15537;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15538;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15539;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15540;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15541;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15544;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15545;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15546;
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=15555;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15589;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15610;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15614;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15621;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15630;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15693;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15696;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15700;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15701;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15704;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15707;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15708;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15709;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=15720;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15727;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15731;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15733;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15734;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15735;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15739;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15740;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15742;
UPDATE `creature_template` SET `SpeedWalk`=4.8 WHERE `entry`=15743;
UPDATE `creature_template` SET `SpeedWalk`=4.8 WHERE `entry`=15744;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15797;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15798;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15799;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15801;
UPDATE `creature_template` SET `SpeedWalk`=4.8 WHERE `entry`=15818;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15842;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15849;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15850;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15896;
UPDATE `creature_template` SET `SpeedWalk`=2.4 WHERE `entry`=15962;
UPDATE `creature_template` SET `SpeedWalk`=2.8 WHERE `entry`=15984;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16031;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=16043;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16091;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16184;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16543;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=747;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=752;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=922;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1000;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1001;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9637;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9656;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9916;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=12473;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14122;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15141;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15163;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=598;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1530;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1531;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1534;
UPDATE `creature_template` SET `SpeedWalk`=0.888888 WHERE `entry`=1658;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=2520;
UPDATE `creature_template` SET `SpeedWalk`=0.666668 WHERE `entry`=4416;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7667;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7728;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=7729;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8304;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8612;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9707;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=9708;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10217;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10218;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10359;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=11258;
UPDATE `creature_template` SET `SpeedWalk`=1.11111 WHERE `entry`=11263;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12141;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=12143;
UPDATE `creature_template` SET `SpeedWalk`=1.55556 WHERE `entry`=14350;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14500;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14637;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=895;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=912;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=916;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=926;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=945;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=1104;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=8416;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=10467;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14362;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14421;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15741;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=16012;

-- End of migration.

-- diffing npcs with "strange" MeleeBaseAttackTime with vmangos
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='128'; -- Angry Programmer Tweedle Dee
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='329'; -- Earth Elemental
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='353'; -- Antonia Dart
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='583'; -- Defias Ambusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='704'; -- Ragged Timber Wolf
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='707'; -- Rockjaw Trogg
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='2000' WHERE `entry`='713'; -- Balir Frosthammer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='724'; -- Burly Rockjaw Trogg
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='758'; -- Skullsplitter Tiger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1066'; -- Mottled Riptooth
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1135'; -- Wendigo
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1211'; -- Leper Gnome
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1233'; -- [UNUSED] Shaethis Darkoak
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1243'; -- Hegnar Rumbleshot
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1262'; -- White Ram
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1276'; -- Mountaineer Brokk
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='1279'; -- Mountaineer Flint
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1331'; -- Mountaineer Luxst
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1332'; -- Mountaineer Morran
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1334'; -- Mountaineer Hammerfall
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1335'; -- Mountaineer Yuttha
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1336'; -- Mountaineer Zwarn
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1342'; -- Mountaineer Rockgar
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1343'; -- Mountaineer Stormpike
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1475'; -- Menethil Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1494'; -- Negolash
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1574'; -- Mage 1
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1575'; -- Mage 5
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1723'; -- Stormwind Citizen
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1724'; -- Stormwind Citizen Masculine
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1754'; -- Lord Gregor Lescovar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1800'; -- Cold Wraith
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='1946'; -- Lillith Nefara
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2045'; -- Gunther's Minion
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1000' WHERE `entry`='2173'; -- Reef Frenzy (might be 1066.666 25% haste passive, 800 attacktime)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2188'; -- Deep Sea Threshadon
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2434'; -- Shadowy Assassin
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2435'; -- Southshore Crier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2531'; -- Minion of Morganth
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2662'; -- Port Master Szik
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2801'; -- Tresa MacGregor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2853'; -- Freed Druid of the Talon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2876'; -- Grunenstur Balindom
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2880'; -- [UNUSED] Hurom Juggendolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2881'; -- [UNUSED] Durdek Karrin
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.55556' WHERE `entry`='2919'; -- Fam'retor Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2937'; -- Dagun the Ravenous
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2942'; -- Dylan Bissel
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3257'; -- Ishamuhale
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3475'; -- Echeyakee
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='3617'; -- Lordaeron Citizen
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3619'; -- Ghost Saber
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3865'; -- Shadow Charger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3895'; -- Captain Noteo
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3896'; -- Captain Hart
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3990'; -- Venture Co. Cutter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3998'; -- Windshear Vermin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4001'; -- Windshear Tunnel Rat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4002'; -- Windshear Stonecutter
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4033'; -- Charred Stone Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='4068'; -- Serpent Messenger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4071'; -- Venture Co. Grinder
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4113'; -- Gravelsnout Digger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4207'; -- Valyen Wolfsong
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4263'; -- Deepmoss Hatchling
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4342'; -- Drywallow Vicejaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4355'; -- Bloodfen Scytheclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4358'; -- Mirefin Puddlejumper
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4360'; -- Mirefin Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='4386'; -- Withervine Bark Ripper
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4391'; -- Swamp Ooze
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4392'; -- Corrosive Swamp Ooze
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4396'; -- Mudrock Tortoise
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4398'; -- Mudrock Burrower
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4399'; -- Mudrock Borer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4402'; -- Muckshell Snapclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4405'; -- Muckshell Razorclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4411'; -- Darkfang Lurker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4413'; -- Darkfang Spider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4445'; -- Griznak
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4449'; -- Crazzle Sprysprocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4490'; -- Grenka Bloodscreech
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='4497'; -- Captain Quirk
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4724'; -- Sandstrider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4972'; -- Kagoro
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='5194'; -- Black Riding Wolf
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='5196'; -- Gray Riding Wolf
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='5197'; -- Red Riding Wolf
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5432'; -- Giant Surf Glider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5433'; -- Tamed Bear
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='5435'; -- Sand Shark
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5436'; -- Tamed Bird
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5437'; -- Tamed Boar
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5438'; -- Tamed Cat
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5439'; -- Tamed Crawler
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5440'; -- Tamed Crocolisk
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5444'; -- Tamed Raptor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5446'; -- Tamed Spider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5448'; -- Tamed Turtle
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5449'; -- Tamed Wolf
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5671'; -- [UNUSED] Lawrence Sawyer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='5677'; -- Summoned Succubus
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5745'; -- Lazlow Ashby
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='4', `SpeedRun`='1.42857' WHERE `entry`='5764'; -- Guardian of Blizzard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5894'; -- Corrupt Minor Manifestation of Water
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5895'; -- Minor Manifestation of Water
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='5924'; -- Disease Cleansing Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6013'; -- Wayward Buzzard
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6390'; -- Ulag the Cleaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6550'; -- Mana Surge
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='6748'; -- Water Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7074'; -- Judge Thelgram
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7229'; -- Arantir's Shadow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7293'; -- [UNUSED] Drayl
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7319'; -- Lady Sathrah
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7379'; -- Deadwind Ogre Mage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7401'; -- Draenei Refugee
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7423'; -- Flametongue Totem III
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='7467'; -- Nature Resistance Totem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8017'; -- Sen'jin Guardian
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='8024'; -- Sharpbeak's Father
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8055'; -- Thelsamar Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8116'; -- Ziggle Sparks
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8117'; -- Wizbang Booms
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8118'; -- Lillian Singh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8121'; -- Jaxxil Sparks
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8122'; -- Kizzak Sparks
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8149'; -- Sul'lithuz Warder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8387'; -- Horizon Scout First Mate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8388'; -- Horizon Scout Cook
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8389'; -- Horizon Scout Engineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8394'; -- Roland Geardabbler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8478'; -- Second Mate Shandril
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8504'; -- Dark Iron Sentry
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='1.42857' WHERE `entry`='8680'; -- Massive Infernal
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='8980'; -- Firegut Captain
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9045'; -- Scarshield Acolyte
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9097'; -- Scarshield Legionnaire
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9098'; -- Scarshield Spellbinder
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9241'; -- Smolderthorn Headhunter
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9257'; -- Scarshield Warlock
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9258'; -- Scarshield Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9260'; -- Firebrand Legionnaire
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9263'; -- Firebrand Dreadweaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1300', `RangedBaseAttackTime`='2000' WHERE `entry`='9264'; -- Firebrand Pyromancer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1400', `RangedBaseAttackTime`='2000' WHERE `entry`='9265'; -- Smolderthorn Shadow Hunter
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9266'; -- Smolderthorn Witch Doctor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9269'; -- Smolderthorn Seer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='9457'; -- Horde Defender
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9458'; -- Horde Axe Thrower
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='2000' WHERE `entry`='9583'; -- Bloodaxe Veteran
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='9605'; -- Blackrock Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000',`SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='9682'; -- Marshal Reginald Windsor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9692'; -- Bloodaxe Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9693'; -- Bloodaxe Evoker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9716'; -- Bloodaxe Warmonger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1100', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10220'; -- Halycon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10296'; -- Vaelan
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10299'; -- Scarshield Infiltrator
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10340'; -- Vaelastrasz the Red
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10370'; -- [UNUSED] Xur'gyl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10538'; -- Vaelastrasz
UPDATE `creature_template` SET `SpeedWalk`='0.833332' WHERE `entry`='10577'; -- Crypt Scarab
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10803'; -- Rifleman Wheeler
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10804'; -- Rifleman Middlecamp
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10882'; -- Arikara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10937'; -- Captain Redpath
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10938'; -- Redpath the Corrupted
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10939'; -- Marduk the Black
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10944'; -- Davil Lightfire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10945'; -- Davil Crokford
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10946'; -- Horgus the Ravager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10950'; -- Redpath Militia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10984'; -- Winterax Berserker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11099'; -- Argent Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11121'; -- Black Guard Swordsmith
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='11195'; -- Skeletal Black Warhorse
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11277'; -- Caer Darrow Citizen
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11281'; -- Caer Darrow Horseman
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11285'; -- Rory
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11286'; -- Magistrate Marduke
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11287'; -- Baker Masterson
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='11458'; -- Petrified Treant
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11486'; -- Prince Tortheldrin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11679'; -- Winterax Witch Doctor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2100', `SpeedWalk`='1' WHERE `entry`='11699'; -- Varian Wrynn
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11702'; -- Arin'sor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='11713'; -- Blackwood Tracker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='11714'; -- Marosh the Devious
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11857'; -- Makaba Flathoof
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11897'; -- Duskwing
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11920'; -- Goggeroc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12125'; -- Mammoth Shark
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12128'; -- Crimson Elite
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12148'; -- Riding Kodo (Teal)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12151'; -- Riding Kodo (Green)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12157'; -- Winterax Shadow Hunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12158'; -- Winterax Hunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12159'; -- Korrak the Bloodrager
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12180'; -- Anubisath
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='12339'; -- Demetria
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12356'; -- Green Riding Kodo
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12357'; -- Teal Riding Kodo
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedRun`='0.857143' WHERE `entry`='12580'; -- Reginald Windsor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12799'; -- Sergeant Ba'sha
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12806'; -- Magmakin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12904'; -- Spirit Of Redemption
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12923'; -- Injured Soldier
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12924'; -- Badly Injured Soldier
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12925'; -- Critically Injured Soldier
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13076'; -- Dun Morogh Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13149'; -- Syndicate Brigand
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13150'; -- Syndicate Agent
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13151'; -- Syndicate Master Ryson
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13155'; -- Deathstalker Agent
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13156'; -- Carrosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13221'; -- Ryson's Eye in the Sky
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13377'; -- Master Engineer Zinfizzlex
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13378'; -- Frostwolf Shredder Unit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13416'; -- Stormpike Shredder Unit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13446'; -- Field Marshal Teravaine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13736'; -- Noxxious Essence
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13738'; -- Veng
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13739'; -- Maraudos
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13740'; -- Magra
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13916'; -- Dire Maul Crystal Totem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13957'; -- Winterax Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14242'; -- [UNUSED] Sulhasa
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14356'; -- Sawfin Frenzy
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='14388'; -- Rogue Black Drake
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14389'; -- Netherwalker
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='1.42857' WHERE `entry`='14452'; -- Enslaved Doomguard Commander
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14489'; -- Scourge Archer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14494'; -- Eris Havenfire
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='2.85714' WHERE `entry`='14503'; -- The Cleaner
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='14530'; -- Solenor the Slayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14534'; -- Klinfran the Crazed
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14535'; -- Artorius the Doombringer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14538'; -- Precious the Devourer
UPDATE `creature_template` SET `SpeedWalk`='1.6', `SpeedRun`='1.42857' WHERE `entry`='15122'; -- Gahz'ranka Dead
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15193'; -- The Banshee Queen
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15195'; -- Wickerman Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.833332', `SpeedRun`='2.14286' WHERE `entry`='15198'; -- Blackwing
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15199'; -- Sergeant Hartman
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='15207'; -- The Duke of Fathoms
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15440'; -- Captain Blackanvil
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16033'; -- Bodley
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16101'; -- Jarien
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16102'; -- Sothos
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16361'; -- Commander Thomas Helleran
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='17055'; -- Maexxna Spiderling

UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 23338; -- Arthorn's Sparrowhawk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1494; -- Negolash
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1964; -- Treant
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 2188; -- Deep Sea Threshadon
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 4000, `RangedBaseAttackTime` = 4000 WHERE `entry` = 2531; -- Minion of Morganth
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 3998; -- Windshear Vermin
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 4001; -- Windshear Tunnel Rat
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 4002; -- Windshear Stonecutter
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 5894; -- Corrupt Minor Manifestation of Water
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7364; -- Flawless Draenethyst Sphere
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7365; -- Flawless Draenethyst Fragment
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1.11111 WHERE `entry` = 7401; -- Draenei Refugee
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7423; -- Flametongue Totem III
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8017; -- Sen'jin Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8024; -- Sharpbeak's Father
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8387; -- Horizon Scout First Mate
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8388; -- Horizon Scout Cook
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8389; -- Horizon Scout Engineer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8394; -- Roland Geardabbler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8478; -- Second Mate Shandril
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 2.12, `SpeedRun` = 0.757143 WHERE `entry` = 9546; -- Raschal the Courier
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10937; -- Captain Redpath
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10938; -- Redpath the Corrupted
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedRun` = 1.38571 WHERE `entry` = 10939; -- Marduk the Black
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10944; -- Davil Lightfire
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10945; -- Davil Crokford
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 0.777776 WHERE `entry` = 10946;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10950; -- Redpath Militia
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 11920; -- Goggeroc
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 12125; -- Mammoth Shark
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 14389; -- Netherwalker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 15440; -- Captain Blackanvil
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2600, `RangedBaseAttackTime` = 2600 WHERE `entry` = 16101; -- Jarien
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2600, `RangedBaseAttackTime` = 2600 WHERE `entry` = 16102; -- Sothos
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 16800; -- Grand Magister Rommath
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 16873; -- Bleeding Hollow Dark Shaman
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1.6, `SpeedRun` = 0.992063 WHERE `entry` = 16939; -- Void Baron Galaxis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 16992; -- Dreadtusk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1.4, `SpeedRun` = 1.42857 WHERE `entry` = 17034; -- Female Kaliri Hatchling
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1.4, `SpeedRun` = 1.42857 WHERE `entry` = 17039; -- Male Kaliri Hatchling
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 17885; -- Earthbinder Rayge
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 17890; -- Weeder Greenthumb
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 18185; -- Feralfen Serpent Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 18728; -- Doom Lord Kazzak
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 18974; -- Z'kral
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 18976; -- Urga'zz
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 19419; -- Raging Shardling
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 19493; -- Ekkorash the Inquisitor
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 19556; -- Thrall
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 19604; -- Drek'Thar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 19833; -- Venomous Snake
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 20157; -- Fleeing Dreghood Geomancer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 20201; -- Sa'at
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 20455; -- Terror Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1, `SpeedRun` = 1.38889 WHERE `entry` = 20680; -- Arzeth the Powerless
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 21124; -- Felsworn Daggermaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 21156; -- Master Sergeant Thelaana
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1.6, `SpeedRun` = 1.42857 WHERE `entry` = 21271; -- Infinity Blades
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 0.666668 WHERE `entry` = 21817; -- Adolescent Nether Drake
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 21821; -- Proto-Nether Drake
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 22026; -- Bahat
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `SpeedWalk` = 1 WHERE `entry` = 22932; -- Sai'kkal the Elder
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 23305; -- Crazed Murkblood Foreman
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 24818; -- Anvilrage Taskmaster

-- diffing npcs with "strange" MeleeBaseAttackTime with tbcmangos
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3'; -- Flesh Eater (2500AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000' WHERE `entry`='106'; -- Kodo Beast (2000AT)ø
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='222'; -- Nillen Andemar (1820AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='334'; -- Gath'Ilzogg (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='335'; -- Singe (1458AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='347'; -- Grizzle Halfmane (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='349'; -- Corporal Keeshan (1466AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='397'; -- Morganth (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='436'; -- Blackrock Shadowcaster (1466AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='450'; -- Defias Renegade Mage (1780AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='469'; -- Lieutenant Doren (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='486'; -- Tharil'zun (1450AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='541'; -- Riding Gryphon (1720AT)ø
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='658'; -- Sten Stoutarm (1960AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='742'; -- Green Wyrmkin (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='743'; -- Wyrmkin Dreamwalker (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='746'; -- Elder Dragonkin (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='829'; -- Adlin Pridedrift (1960AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='846'; -- Ghoul (1830AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='907'; -- Keras Wolfheart (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='910'; -- Defias Enchanter (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1045'; -- Red Dragonspawn (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1046'; -- Red Wyrmkin (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1051'; -- Dark Iron Dwarf (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1052'; -- Dark Iron Saboteur (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1053'; -- Dark Iron Tunneler (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500' WHERE `entry`='1129'; -- Black Bear (1950AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1200'; -- Morbent Fel (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='1215'; -- Alchemist Mallory (1750AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='1218'; -- Herbalist Pomeroy (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='1253'; -- Father Gavin (1860AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1261'; -- Veron Amberstill (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1265'; -- Rudra Amberstill (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='1284'; -- Archbishop Benedictus (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1362'; -- Gothor Brumn (1810AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1718'; -- Rockjaw Raider (1980AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500' WHERE `entry`='1788'; -- Skeletal Warlord (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1805'; -- Flesh Golem (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1852'; -- Araj the Summoner (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1947'; -- Thule Ravenclaw (1450AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1965'; -- Mountaineer Thalos (1860AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='2091'; -- Chieftain Nek'rosh (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2215'; -- High Executor Darthalia (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2224'; -- Wind Rider (1720AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2254'; -- Crushridge Mauler (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2255'; -- Crushridge Mage (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2256'; -- Crushridge Enforcer (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2276'; -- Magistrate Henry Maleb (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2302'; -- Aethalas (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2344'; -- Dun Garok Mountaineer (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2421'; -- Muckrake (1325AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2422'; -- Glommus (1333AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2425'; -- Varimathras (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2433'; -- Helcular's Remains (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2464'; -- Commander Aggro'gosh (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2475'; -- Sloth (1700AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2479'; -- Sludge (1700AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2524'; -- Mountaineer Haggis (1710AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2528'; -- Mountaineer Haggil (1710AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2558'; -- Witherbark Berserker (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2569'; -- Boulderfist Mauler (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2570'; -- Boulderfist Shaman (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600' WHERE `entry`='2571'; -- Boulderfist Lord (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2590'; -- Syndicate Conjuror (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2591'; -- Syndicate Magus (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2597'; -- Lord Falconcrest (1316AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2700' WHERE `entry`='2599'; -- Otto (1350AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2611'; -- Fozruk (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2612'; -- Lieutenant Valorcall (1325AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2645'; -- Vilebranch Shadow Hunter (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2646'; -- Vilebranch Blood Drinker (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2647'; -- Vilebranch Soul Eater (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2738'; -- Stromgarde Cavalryman (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2775'; -- Daggerspine Marauder (1610AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2804'; -- Kurden Bloodclaw (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3177'; -- Turuk Amberstill (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3230'; -- Nazgrel (1390AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3291'; -- Greishan Ironstove (1770AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3338'; -- Sergra Darkthorn (1391AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3417'; -- Living Flame (1820AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3574'; -- Riding Bat (1720AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3691'; -- Raene Wolfrunner (1466AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3837'; -- Riding Hippogryph (1720AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='3890'; -- Brakgul Deathbringer (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4049'; -- Seereth Stonebreak (1750AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4293'; -- Scarlet Scryer (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4324'; -- Searing Whelp (1300AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4377'; -- Darkmist Lurker (1640AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4462'; -- Blackrock Hunter (1466AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='4464'; -- Blackrock Gladiator (1458AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4465'; -- Vilebranch Warrior (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4469'; -- Emerald Ooze (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4499'; -- Rok'Alim the Pounder (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000' WHERE `entry`='4500'; -- Overlord Mok'Morokk (1300AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4624'; -- Booty Bay Bruiser (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4654'; -- Maraudine Scout (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000' WHERE `entry`='4687'; -- Deepstrider Searcher (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4772'; -- Ultham Ironhorn (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4844'; -- Shadowforge Surveyor (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4846'; -- Shadowforge Digger (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4880'; -- "Stinky" Ignatz (1660AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5088'; -- Falgran Hastil (1630AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5118'; -- Brogun Stoneshield (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5186'; -- Basking Shark (1333AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5224'; -- Murk Slitherer (1291AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5226'; -- Murk Worm (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5228'; -- Saturated Ooze (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5243'; -- Cursed Atal'ai (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5256'; -- Atal'ai Warrior (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5259'; -- Atal'ai Witch Doctor (1233AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5261'; -- Enthralled Atal'ai (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5263'; -- Mummified Atal'ai (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5267'; -- Unliving Atal'ai (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5269'; -- Atal'ai Priest (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5270'; -- Atal'ai Corpse Eater (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5271'; -- Atal'ai Deathwalker (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5273'; -- Atal'ai High Priest (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5277'; -- Nightmare Scalebane (1200AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5280'; -- Nightmare Wyrmkin (1208AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5283'; -- Nightmare Wanderer (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5291'; -- Hakkari Frostwing (1250AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5312'; -- Lethlas (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5401'; -- Kazkaz the Unholy (1250AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500' WHERE `entry`='5467'; -- Deep Dweller (1266AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5569'; -- Fizzlebang Booms (1610AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5645'; -- Sandfury Hideskinner (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5646'; -- Sandfury Axe Thrower (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5647'; -- Sandfury Firecaller (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5676'; -- Summoned Voidwalker (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5708'; -- Spawn of Hakkar (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5709'; -- Shade of Eranikus (1208AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5710'; -- Jammal'an the Prophet (1200AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5711'; -- Ogom the Wretched (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5712'; -- Zolo (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1000' WHERE `entry`='5713'; -- Gasher (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5714'; -- Loro (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5715'; -- Hukku (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5716'; -- Zul'Lor (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5717'; -- Mijan (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5718'; -- Rothos (1150AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5719'; -- Morphaz (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5720'; -- Weaver (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5721'; -- Dreamscythe (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5722'; -- Hazzas (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5760'; -- Lord Azrethoc (1333AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5782'; -- Crildor (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5860'; -- Twilight Dark Shaman (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6030'; -- Thorvald Deepforge (1800AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6132'; -- Razorfen Servitor (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500' WHERE `entry`='6148'; -- Cliff Walker (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6492'; -- Rift Spawn (1850AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='6498'; -- Devilsaur (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='6499'; -- Ironhide Devilsaur (1208AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='6500'; -- Tyrant Devilsaur (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6522'; -- Andron Gant (1550AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6523'; -- Dark Iron Rifleman (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6575'; -- Scarlet Trainee (1710AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6669'; -- The Threshwackonator 4100 (1508AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6782'; -- Hands Springsprocket (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6866'; -- Defias Bodyguard (1890AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='6909'; -- Sethir the Ancient (1860AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='7040'; -- Black Dragonspawn (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7041'; -- Black Wyrmkin (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7045'; -- Scalding Drake (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7046'; -- Searscale Drake (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7053'; -- Klaven Mortwake (1441AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7136'; -- Infernal Sentry (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7233'; -- Taskmaster Fizzule (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7288'; -- Grand Foreman Puzik Gallywix (1475AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7427'; -- Taim Ragetotem (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7435'; -- Cobalt Wyrmkin (1083AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7436'; -- Cobalt Scalebane (1083AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7437'; -- Cobalt Mageweaver (1083AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='7438'; -- Winterfall Ursa (2750AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7461'; -- Hederine Initiate (1083AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7463'; -- Hederine Slayer (1083AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7584'; -- Wandering Forest Walker (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7767'; -- Witherbark Felhunter (1540AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7803'; -- Scorpid Duneburrower (1520AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7809'; -- Vilebranch Ambusher (1520AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7872'; -- Death's Head Cultist (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7874'; -- Razorfen Thornweaver (1341AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7954'; -- Binjy Featherwhistle (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='7955'; -- Milli Featherwhistle (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600' WHERE `entry`='7996'; -- Qiaga the Keeper (1200AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8025'; -- Sharpbeak's Mother (1460AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8196'; -- Occulus (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8197'; -- Chronalis (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8198'; -- Tick (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='8257'; -- Oozeling (1460AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8311'; -- Slime Maggot (1550AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8318'; -- Atal'ai Slave (1520AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8319'; -- Nightmare Whelp (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8336'; -- Hakkari Sapper (1250AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8337'; -- Dark Iron Steelshifter (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8338'; -- Dark Iron Marksman (1460AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8384'; -- Deep Lurker (1283AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8391'; -- Lathoric the Black (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8400'; -- Obsidion (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8419'; -- Twilight Idolater (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8443'; -- Avatar of Hakkar (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8447'; -- Clunk (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8479'; -- Kalaran Windblade (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000' WHERE `entry`='8580'; -- Atal'alarion (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600' WHERE `entry`='8636'; -- Morta'gya the Keeper (1233AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='8666'; -- Lil Timmy (1960AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1600' WHERE `entry`='8906'; -- Ragereaver Golem (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='8964'; -- Blackrock Drake (1250AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9020'; -- Commander Gor'shak (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9021'; -- Kharan Mighthammer (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9022'; -- Dughal Stormwing (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9023'; -- Marshal Windsor (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1600' WHERE `entry`='9026'; -- Overmaster Pyron (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='9037'; -- Gloom'rel (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9056'; -- Fineous Darkvire (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2700' WHERE `entry`='9259'; -- Firebrand Grunt (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9396'; -- Ground Pounder (1560AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='9416'; -- Scarshield Worg (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9447'; -- Scarlet Warder (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9449'; -- Scarlet Cleric (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9452'; -- Scarlet Enchanter (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9498'; -- Gorishi Grub (1530AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9499'; -- Plugger Spazzring (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9500'; -- Mistress Nagmara (1225AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9523'; -- Kolkar Stormseer (1810AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9524'; -- Kolkar Invader (1810AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9678'; -- Shill Dinger (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9679'; -- Tobias Seecher (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9680'; -- Crest Killer (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1600' WHERE `entry`='9681'; -- Jaz (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='9696'; -- Bloodaxe Worg (1800AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10257'; -- Bijou (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10321'; -- Emberstrife (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10360'; -- Kergul Bloodaxe (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10377'; -- Elu (1441AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10411'; -- Eye of Naxxramas (1450AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10419'; -- Crimson Conjuror (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10420'; -- Crimson Initiate (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10422'; -- Crimson Sorcerer (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10423'; -- Crimson Priest (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10425'; -- Crimson Battle Mage (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10540'; -- Vol'jin (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10610'; -- Angus (1900AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10611'; -- Shorty (1910AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10662'; -- Spellmaw (1183AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='10737'; -- Shy-Rotam (1538AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10740'; -- Awbee (1200AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10799'; -- Warosh (1410AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10805'; -- Spotter Klemmy (1950AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='10916'; -- Winterfall Runner (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10936'; -- Joseph Redpath (1410AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10942'; -- Nessy (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='10979'; -- Scarlet Hound (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10992'; -- Enraged Panther (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1600' WHERE `entry`='11022'; -- Alexi Barov (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11075'; -- Cauldron Lord Bilemaw (1480AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11278'; -- Magnus Frostwake (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11552'; -- Timbermaw Mystic (1420AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='11598'; -- Risen Guardian (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11623'; -- Scourge Summoning Crystal (1410AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11698'; -- Hive'Ashi Stinger (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11722'; -- Hive'Ashi Defender (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11724'; -- Hive'Ashi Swarmer (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='11865'; -- Buliwyf Stonehand (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11866'; -- Ilyenia Moonfire (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11868'; -- Sayoc (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11869'; -- Ansekhwa (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11870'; -- Archibald (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11871'; -- Grinning Dog (1275AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11885'; -- Blighthound (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='11941'; -- Yori Crackhelm (1960AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12198'; -- Martin Lindsey (1666AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12262'; -- Ziggurat Protector (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12425'; -- Flint Shadowmore (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12737'; -- Mastok Wrilehiss (1425AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12805'; -- Officer Areyn (1460AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12899'; -- Axtroz (1133AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12900'; -- Somnus (1150AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12936'; -- Badly Injured Alliance Soldier (1570AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12937'; -- Critically Injured Alliance Soldier (1510AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12938'; -- Injured Alliance Soldier (1580AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='12998'; -- Dwarven Farmer (1860AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500' WHERE `entry`='13084'; -- Bixi Wobblebonk (1258AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='13118'; -- Crimson Bodyguard (1200AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='13839'; -- Royal Dreadguard (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='13841'; -- Lieutenant Haggerdin (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14021'; -- Winterax Sentry (1666AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14121'; -- Deeprun Diver (1810AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14348'; -- Earthcaller Franzahl (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14358'; -- Shen'dralar Ancient (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14368'; -- Lorekeeper Lydros (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14371'; -- Shen'dralar Provisioner (1241AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2800' WHERE `entry`='14372'; -- Winterfall Ambusher (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14375'; -- Scout Stronghand (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14376'; -- Scout Manslayer (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14377'; -- Scout Tharr (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14381'; -- Lorekeeper Javon (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14382'; -- Lorekeeper Mykos (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14383'; -- Lorekeeper Kildrath (1191AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14387'; -- Lothos Riftwaker (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14392'; -- Overlord Runthak (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14402'; -- Seeker Cromwell (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14403'; -- Seeker Nahr (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14404'; -- Seeker Thompson (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14536'; -- Nelson the Nice (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14621'; -- Overseer Maltorius (1266AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14715'; -- Silverwing Elite (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14717'; -- Horde Elite (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14732'; -- PvP CTF Credit Marker (1410AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14753'; -- Illiyana Moonblaze (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14942'; -- Kartra Bloodsnarl (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15006'; -- Deze Snowbane (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15007'; -- Sir Malory Wheeler (1666AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15076'; -- Zandalarian Emissary (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15126'; -- Rutherford Twing (1133AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15127'; -- Samuel Hawke (1133AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15128'; -- Defiler Elite (1216AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15130'; -- League of Arathor Elite (1666AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15137'; -- Menethil Elite (1460AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15181'; -- Commander Mar'alith (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15182'; -- Vish Kozus (1166AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15184'; -- Cenarion Hold Infantry (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15185'; -- Brood of Nozdormu (1158AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15197'; -- Darkcaller Yanka (1175AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15353'; -- Katrina Shimmerstar (1710AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15463'; -- Grace of Air Totem III (1410AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15471'; -- Lieutenant General Andorov (1500AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='15803'; -- Tranquil Air Totem (1490AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='16032'; -- Falrin Treeshaper (1150AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='16080'; -- Mor Grayhoof (2000AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400' WHERE `entry`='16118'; -- Kormok (1100AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='17995'; -- Lordaeron Veteran (1289AT)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='17996'; -- Lordaeron Fighter (1289AT)

