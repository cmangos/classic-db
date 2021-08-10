-- azeroth npc adjustments

-- unique npcs
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4245 AND id=8310; -- Watcher Wollpert
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4244 AND id=827; -- Watcher Mocarski
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4180 AND id=826; -- Watcher Jan
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4182 AND id=494; -- Watcher Wollpert
UPDATE creature SET position_x=-10581.95, position_y=-1185.32, position_z=26.74362, orientation=3.197518, spawndist=1, MovementType=1 WHERE guid=5960 AND id=2470; -- Watcher Fraizer <The Night Watch>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4210 AND id=960; -- Gunder Thornbush <Tradesman>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6152 AND id=851; -- Hannah
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4242 AND id=3137; -- Matt Johnson <Mining Trainer>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4064 AND id=3135; -- Malissa <Poison Supplies>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6265 AND id=3091; -- Franklin Hamar <Tailoring Supplies>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6259 AND id=3090; -- Gerald Crawley <Poison Supplies>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6262 AND id=3087; -- Crystal Boughman <Cooking Trainer>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6260 AND id=3086; -- Gretchen Vogel <Waitress>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=6276 AND id=3085; -- Gloria Femmel <Cooking Supplies>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4198 AND id=276; -- Viktori Prism'Antras
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4196 AND id=275; -- Whit Wantmal
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4190 AND id=271; -- Ambassador Berrybuck <Council of Darkshire>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4189 AND id=270; -- Councilman Millstipe <Council of Darkshire>
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=4195 AND id=265; -- Madame Eva
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=10043 AND id=1364; -- Balgaras the Foul -> pooling!
UPDATE creature_template SET SpeedWalk=(2.5 / 2.5) WHERE entry=1364;
UPDATE creature SET position_x=-3649.492, position_y=-727.488, position_z=10.7234, orientation=0.1889552, spawndist=1, MovementType=1 WHERE guid=9530 AND id=5405; -- Pinto
UPDATE creature SET spawndist=1, MovementType=1 WHERE guid=9565 AND id=5403; -- White Stallion
UPDATE creature SET position_x=-3839.476, position_y=-837.3205, position_z=16.94844, orientation=5.579004, spawndist=1, MovementType=1 WHERE guid=9519 AND id=3181; -- Fremal Doohickey <Bandage Trainer>
UPDATE creature SET position_x=-9435.269, position_y=-3078.537, position_z=136.72, orientation=2.391101 WHERE guid=18397 AND id=486; -- Tharil'zun
UPDATE creature SET position_x=-10559.5, position_y=-1152.25, position_z=28.07649, orientation=4.712389, spawndist=1, MovementType=1 WHERE guid=4194 AND id=264; -- Commander Althea Ebonlocke
UPDATE creature SET position_x=-8424.685, position_y=608.8398, position_z=95.30206, orientation=3.228859 WHERE guid=5169 AND id=957; -- Dane Lindgren <Apprentice Blacksmith>
UPDATE creature SET position_x=-8577.496, position_y=881.4656, position_z=106.602, orientation=5.427974 WHERE guid=5000 AND id=928; -- Lord Grayson Shadowbreaker <Paladin Trainer>
UPDATE creature SET position_x=-8799.62, position_y=828.3229, position_z=97.63464, orientation=0.9684036 WHERE guid=89325 AND id=1719; -- Warden Thelwater
UPDATE creature SET position_x=-8533.592, position_y=367.1262, position_z=108.5689, orientation=2.286381 WHERE guid=10500 AND id=1752; -- Caledra Dawnbreeze
UPDATE creature SET position_x=-8332.951, position_y=394.8197, position_z=122.4578, orientation=2.251475 WHERE guid=10502 AND id=1754; -- Lord Gregor Lescovar
UPDATE creature SET position_x=-8991.901, position_y=847.4841, position_z=29.70399, orientation=0.6632251 WHERE guid=90441 AND id=2485; -- Larimaine Purdue <Portal Trainer>
UPDATE creature SET position_x=-8556.372, position_y=835.8596, position_z=106.602, orientation=5.323254 WHERE guid=44022 AND id=7917; -- Brother Sarno
UPDATE creature SET position_x=-8422.173, position_y=630.877, position_z=95.84023, orientation=5.044002 WHERE guid=43705 AND id=7798; -- Hank the Hammer
UPDATE creature SET position_x=-8408.254, position_y=451.8958, position_z=123.7598, orientation=5.529869 WHERE guid=45707 AND id=8856; -- Tyrion's Spybot
UPDATE creature SET position_x=-8407.93, position_y=450.6629, position_z=123.8431, orientation=0.05235988 WHERE guid=43667 AND id=7766; -- Tyrion
UPDATE creature SET position_x=-4881.298, position_y=-981.426, position_z=504.0237, orientation=3.839724 WHERE guid=1749 AND id=7292; -- Dinita Stonemantle
UPDATE creature SET position_x=-8392.688, position_y=690.845, position_z=95.35676, orientation=5.358161 WHERE guid=42580 AND id=7232; -- Borgus Steelhand
UPDATE creature SET position_x=-8468.642, position_y=501.2799, position_z=99.91192, orientation=2.687807 WHERE guid=2435 AND id=656; -- Wilder Thistlenettle
UPDATE creature SET position_x=-8516.888, position_y=862.3218, position_z=109.9223, orientation=4.13643 WHERE guid=39538 AND id=6173; -- Gazin Tenorm
UPDATE creature SET position_x=-8349.884, position_y=647.6125, position_z=95.87355, orientation=4.276057, spawndist=0, MovementType=0 WHERE guid=48358 AND id=11026; -- Sprite Jumpsprocket
UPDATE creature SET position_x=-8432.739, position_y=554.6815, position_z=95.35028, orientation=1.27409 WHERE guid=48424 AND id=11069; -- Jenova Stoneshield
UPDATE creature SET position_x=-8528.548, position_y=855.3099, position_z=106.702, orientation=4.014257 WHERE guid=7450 AND id=1212; -- Bishop Farthing
UPDATE creature SET position_x=-8496.028, position_y=808.554, position_z=96.86679, orientation=2.268928 WHERE guid=52472 AND id=12336; -- Brother Crowley
UPDATE creature SET position_x=-8522.61, position_y=848.7832, position_z=106.702, orientation=3.717551 WHERE guid=7566 AND id=1284; -- Archbishop Benedictus
UPDATE creature SET position_x=-8963.189, position_y=822.1249, position_z=109.6296, orientation=3.700098 WHERE guid=52922 AND id=1309; -- Wynne Larson
UPDATE creature SET position_x=-8965.183, position_y=807.9796, position_z=109.6296, orientation=1.64061 WHERE guid=52923 AND id=1310; -- Evan Larson
UPDATE creature SET position_x=-9085.855, position_y=829.0433, position_z=108.6043, orientation=0.4537856 WHERE guid=52924 AND id=1311; -- Joachim Brenlow
UPDATE creature SET position_x=-8862.452, position_y=804.5145, position_z=97.50573, orientation=2.984513 WHERE guid=52925 AND id=1312; -- Ardwyn Cailen
UPDATE creature SET position_x=-8865.553, position_y=822.2861, position_z=98.40019, orientation=0.5759587 WHERE guid=53686 AND id=1316; -- Adair Gilroy
UPDATE creature SET position_x=-8634.219, position_y=886.7424, position_z=103.2655, orientation=5.462881 WHERE guid=7626 AND id=1348; -- Gregory Ardus
UPDATE creature SET position_x=-8520.597, position_y=796.2466, position_z=106.602, orientation=0.715585 WHERE guid=7629 AND id=1351; -- Brother Cassius
UPDATE creature SET position_x=-8961.837, position_y=809.2073, position_z=109.6296, orientation=2.076942 WHERE guid=89298 AND id=1429; -- Thurman Schneider
UPDATE creature SET position_x=-8345.721, position_y=383.7659, position_z=122.3577, orientation=2.129302 WHERE guid=8704 AND id=1440; -- Milton Sheaf
UPDATE creature SET position_x=-5049.987, position_y=-1270.264, position_z=510.4077, orientation=0.03490658 WHERE guid=86263 AND id=15351; -- Alliance Brigadier General (moved from if, duplicate 86263)
UPDATE creature SET position_x=-8469.34, position_y=582.9312, position_z=96.05196, orientation=5.375614 WHERE guid=8733 AND id=1472; -- Morgg Stormshot
UPDATE creature SET position_x=-9010.778, position_y=876.5748, position_z=148.7018, orientation=4.869469 WHERE guid=90470 AND id=5694; -- High Sorcerer Andromath
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(90283, 5569, 0, -4850.698, -1295.238, 501.9512, 1.396263, 300, 300, 0, 0); -- wotlk-db guid
UPDATE creature SET position_x=-8958.817, position_y=816.4159, position_z=109.5296, orientation=3.787364 WHERE guid=90469 AND id=5567; -- Sellandus <Apprentice Tailor>
UPDATE creature SET position_x=-8342.247, position_y=638.3235, position_z=95.42044, orientation=3.700098 WHERE guid=37612 AND id=5519; -- Billibub Cogspinner <Engineering Supplies>
UPDATE creature SET position_x=-8412.8, position_y=541.3968, position_z=102.5777, orientation=0.7330383 WHERE guid=37610 AND id=5517; -- Thorfin Stoneshield <Hunter Trainer>
UPDATE creature SET position_x=-8410.293, position_y=548.566, position_z=95.53172, orientation=3.647738 WHERE guid=37609 AND id=5516; -- Ulfir Ironbeard
UPDATE creature SET position_x=-8415.757, position_y=552.6982, position_z=95.53172, orientation=3.822271 WHERE guid=37608 AND id=5515; -- Einris Brightspear
UPDATE creature SET position_x=-8433.988, position_y=693.3966, position_z=103.4471, orientation=0.6981317 WHERE guid=37606 AND id=5513; -- Gelman Stonehand
UPDATE creature SET position_x=-8432.998, position_y=623.7123, position_z=95.41587, orientation=5.794493 WHERE guid=37605 AND id=5512; -- Kaita Deepforge
UPDATE creature SET position_x=-8424.49, position_y=616.9439, position_z=95.54292, orientation=2.234021 WHERE guid=37604 AND id=5511; -- Therum Deepforge
UPDATE creature SET position_x=-8419.298, position_y=646.6034, position_z=97.53243, orientation=0.6981317 WHERE guid=37603 AND id=5510; -- Thulman Flintcrag
UPDATE creature SET position_x=-8387.604, position_y=692.5061, position_z=95.35676, orientation=3.926991 WHERE guid=37602 AND id=5509; -- Kathrum Axehand
UPDATE creature SET position_x=-9006.113, position_y=885.3751, position_z=29.70399, orientation=0.8028514 WHERE guid=90463 AND id=5498; -- Elsharin
UPDATE creature SET position_x=-8989.699, position_y=861.8811, position_z=29.70399, orientation=4.729842 WHERE guid=90462 AND id=5497; -- Jennea Cannon
UPDATE creature SET position_x=-8564.393, position_y=880.634, position_z=106.602, orientation=3.822271 WHERE guid=37586 AND id=5492; -- Katherine the Pure
UPDATE creature SET position_x=-8573.129, position_y=861.0734, position_z=106.602, orientation=0.715585 WHERE guid=37585 AND id=5491; -- Arthur the Faithful
UPDATE creature SET position_x=-8519.56, position_y=862.8282, position_z=109.911, orientation=4.642576 WHERE guid=37571 AND id=5489; -- Brother Joshua
UPDATE creature SET position_x=-8850.787, position_y=829.8005, position_z=104.7796, orientation=2.495821 WHERE guid=90459 AND id=5387; -- Acolyte Dellis
UPDATE creature SET position_x=-8681.224, position_y=432.526, position_z=99.30119, orientation=1.658063 WHERE guid=79741 AND id=4961; -- Dashel Stonefist
UPDATE creature SET position_x=-8512.399, position_y=862.3635, position_z=109.9274, orientation=3.822271 WHERE guid=1079 AND id=376; -- High Priestess Laurena <Priest Trainer>
UPDATE creature SET position_x=-8855.714, position_y=822.8125, position_z=98.40005, orientation=6.213372 WHERE guid=26836 AND id=338; -- Mazen Mac'Nadir <Academy of Arcane Arts and Sciences>
UPDATE creature SET position_x=-9012.534, position_y=867.1419, position_z=29.70399, orientation=3.735005 WHERE guid=26835 AND id=331; -- Maginor Dumas <Master Mage>
UPDATE creature SET position_x=-8422.209, position_y=553.2047, position_z=95.53172, orientation=5.393067 WHERE guid=18402 AND id=2879; -- Karrina Mekenda <Pet Trainer>
UPDATE creature SET position_x=-9008.976, position_y=845.3499, position_z=105.9214, orientation=0 WHERE guid=90442 AND id=2708; -- Archmage Malin
UPDATE creature SET position_x=-10573.86, position_y=-1127.319, position_z=29.16688, orientation=2.388486 WHERE guid=4188 AND id=268; -- Sirra Von'Indi <Historian of Darkshire>
UPDATE creature SET position_x=-10560.27, position_y=-1125.186, position_z=30.07091, orientation=2.454883 WHERE guid=4187 AND id=267; -- Clerk Daltry
UPDATE creature SET position_x=-8344.687, position_y=418.8854, position_z=122.3578, orientation=0.7853982 WHERE guid=16365 AND id=2504; -- Donyal Tovald <Librarian>
UPDATE creature SET position_x=-8421.198, position_y=405.485, position_z=120.9689, orientation=3.577925 WHERE guid=16182 AND id=2439; -- Major Samuelson <Stormwind City Guard>
UPDATE creature SET position_x=-8513.312, position_y=802.0707, position_z=106.602, orientation=2.268928 WHERE guid=15216 AND id=2327; -- Shaina Fuller <First Aid Trainer>
UPDATE creature SET position_x=-3585.973, position_y=-865.1568, position_z=12.93235, orientation=3.716582 WHERE guid=9445 AND id=2096; -- Tarrel Rockweaver
UPDATE creature SET position_x=-8850.787, position_y=829.8005, position_z=104.7796, orientation=2.495821 WHERE guid=90459 AND id=5386; -- Acolyte Dellis
UPDATE creature SET position_x=-8804.085, position_y=337.3364, position_z=95.09763, orientation=5.235829, spawndist=1, MovementType=1 WHERE guid=79781 AND id=7208; -- Noarm
UPDATE creature SET position_x=-4681.927, position_y=-3170.793, position_z=310.1451, MovementType=1, spawndist=5 WHERE guid=8241 AND id=2524; -- Mountaineer Haggis
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid=8244 AND id=2526; -- Mountaineer Morlic
UPDATE creature SET MovementType=1, spawndist=5 WHERE guid=8242 AND id=2527; -- Mountaineer Angst
UPDATE creature SET position_x=-4685.103, position_y=-3458.959, position_z=310.1398, MovementType=1, spawndist=5 WHERE guid=8243 AND id=2528; -- Mountaineer Haggil
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid=16947 AND id=2420; -- Targ
UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=16940 AND id=2421; -- Muckrake

-- nonunique npcs
UPDATE creature SET position_x=-8355.779, position_y=414.382, position_z=122.4578, orientation=5.427974 WHERE guid=10526 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8394.09, position_y=449.4266, position_z=123.7598, orientation=0.6457718 WHERE guid=10523 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8363.297, position_y=407.9141, position_z=122.4578, orientation=5.340707 WHERE guid=10525 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8388.837, position_y=453.0844, position_z=123.7598, orientation=3.804818 WHERE guid=10524 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8469.938, position_y=361.2088, position_z=116.9331, orientation=0.715585 WHERE guid=10511 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8462.326, position_y=367.3633, position_z=116.9134, orientation=3.787364 WHERE guid=10512 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8528.844, position_y=384.9724, position_z=108.5689, orientation=2.234021 WHERE guid=10509 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8532.826, position_y=389.9119, position_z=108.5689, orientation=5.410521 WHERE guid=10507 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8524.291, position_y=444.5789, position_z=105.2098, orientation=3.787364 WHERE guid=10510 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8531.288, position_y=438.9937, position_z=105.2114, orientation=0.6806784 WHERE guid=10508 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8541.232, position_y=450.2025, position_z=105.1, orientation=2.216568 WHERE guid=79747 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-8533.351, position_y=456.6552, position_z=105.1, orientation=2.303835 WHERE guid=10506 AND id=1756; -- Stormwind Royal Guard
UPDATE creature SET position_x=-9558.441, position_y=-700.3073, position_z=99.21194, orientation=3.72837 WHERE guid=80930 AND id=1949; -- Servant of Azora
UPDATE creature SET position_x=-9574.038, position_y=-713.2145, position_z=99.17397, orientation=5.05916 WHERE guid=80926 AND id=1949; -- Servant of Azora
UPDATE creature SET position_x=-9550.344, position_y=-685.855, position_z=63.18303, orientation=0.6368229 WHERE guid=80928 AND id=1949; -- Servant of Azora
UPDATE creature SET position_x=-8817.274, position_y=809.0402, position_z=98.72545, orientation=3.921446 WHERE guid=19272 AND id=68; -- Stormwind City Guard
UPDATE creature SET position_x=-8803.506, position_y=862.7813, position_z=98.97499, orientation=2.286381 WHERE guid=19273 AND id=68; -- Stormwind City Guard
UPDATE creature SET position_x=-8800.121, position_y=865.28, position_z=98.97421, orientation=2.199115 WHERE guid=26833 AND id=68; -- Stormwind City Guard

