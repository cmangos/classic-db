-- Update reference world loot tables for NPCs (mostly elites) that had their level decreased between Classic and TBC
-- (this means they will now give better loot)
UPDATE creature_loot_template SET item=60167 WHERE entry=756 AND item=60165; -- Skullsplitter Panther (756) - Green items
UPDATE creature_loot_template SET item=60243 WHERE entry=756 AND item=60241; -- Skullsplitter Panther (756) - Blue items
UPDATE creature_loot_template SET item=60303 WHERE entry=756 AND item=60301; -- Skullsplitter Panther (756) - Purple items
UPDATE creature_loot_template SET item=50601 WHERE entry=1037 AND item=50600; -- Dragonmaw Battlemaster (1037) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1037 AND item=60004; -- Dragonmaw Battlemaster (1037) - Grey items
UPDATE creature_loot_template SET item=60144 WHERE entry=1037 AND item=60133; -- Dragonmaw Battlemaster (1037) - Green items
UPDATE creature_loot_template SET item=60220 WHERE entry=1037 AND item=60209; -- Dragonmaw Battlemaster (1037) - Blue items
DELETE FROM creature_loot_template WHERE entry=1037 AND item=60439; -- Dragonmaw Battlemaster (1037) - White items
UPDATE creature_loot_template SET item=60280 WHERE entry=13957 AND item=60277; -- Winterax Warrior (13957) - Blue items
UPDATE creature_loot_template SET item=60294 WHERE entry=13957 AND item=60291; -- Winterax Warrior (13957) - Green items
UPDATE creature_loot_template SET item=60340 WHERE entry=13957 AND item=60337; -- Winterax Warrior (13957) - Purple items
UPDATE creature_loot_template SET item=60197 WHERE entry=13776 AND item=60196; -- Corporal Teeka Bloodsnarl (13776) - Green items
UPDATE creature_loot_template SET item=60273 WHERE entry=13776 AND item=60272; -- Corporal Teeka Bloodsnarl (13776) - Blue items
UPDATE creature_loot_template SET item=60333 WHERE entry=13776 AND item=60332; -- Corporal Teeka Bloodsnarl (13776) - Purple items
UPDATE creature_loot_template SET item=50602 WHERE entry=13149 AND item=50603; -- Syndicate Brigand (13149) - Scrolls items
UPDATE creature_loot_template SET item=60190 WHERE entry=13149 AND item=60195; -- Syndicate Brigand (13149) - Green items
UPDATE creature_loot_template SET item=60266 WHERE entry=13149 AND item=60271; -- Syndicate Brigand (13149) - Blue items
UPDATE creature_loot_template SET item=60326 WHERE entry=13149 AND item=60331; -- Syndicate Brigand (13149) - Purple items
UPDATE creature_loot_template SET item=60156 WHERE entry=12865 AND item=60154; -- Ambassador Malcin (12865) - Green items
UPDATE creature_loot_template SET item=60232 WHERE entry=12865 AND item=60230; -- Ambassador Malcin (12865) - Blue items
UPDATE creature_loot_template SET item=60177 WHERE entry=12224 AND item=60174; -- Cavern Shambler (12224) - Green items
UPDATE creature_loot_template SET item=60253 WHERE entry=12224 AND item=60250; -- Cavern Shambler (12224) - Blue items
UPDATE creature_loot_template SET item=60313 WHERE entry=12224 AND item=60310; -- Cavern Shambler (12224) - Purple items
UPDATE creature_loot_template SET item=60175 WHERE entry=12223 AND item=60173; -- Cavern Lurker (12223) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=12223 AND item=60249; -- Cavern Lurker (12223) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=12223 AND item=60309; -- Cavern Lurker (12223) - Purple items
UPDATE creature_loot_template SET item=60175 WHERE entry=12222 AND item=60171; -- Creeping Sludge (12222) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=12222 AND item=60247; -- Creeping Sludge (12222) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=12222 AND item=60307; -- Creeping Sludge (12222) - Purple items
UPDATE creature_loot_template SET item=60177 WHERE entry=12221 AND item=60171; -- Noxious Slime (12221) - Green items
UPDATE creature_loot_template SET item=60253 WHERE entry=12221 AND item=60247; -- Noxious Slime (12221) - Blue items
UPDATE creature_loot_template SET item=60313 WHERE entry=12221 AND item=60307; -- Noxious Slime (12221) - Purple items
UPDATE creature_loot_template SET item=60169 WHERE entry=12216 AND item=60168; -- Poison Sprite (12216) - Green items
UPDATE creature_loot_template SET item=60245 WHERE entry=12216 AND item=60244; -- Poison Sprite (12216) - Blue items
UPDATE creature_loot_template SET item=60305 WHERE entry=12216 AND item=60304; -- Poison Sprite (12216) - Purple items
UPDATE creature_loot_template SET item=60181 WHERE entry=12206 AND item=60178; -- Primordial Behemoth (12206) - Green items
UPDATE creature_loot_template SET item=60257 WHERE entry=12206 AND item=60254; -- Primordial Behemoth (12206) - Blue items
UPDATE creature_loot_template SET item=60317 WHERE entry=12206 AND item=60314; -- Primordial Behemoth (12206) - Purple items
UPDATE creature_loot_template SET item=60177 WHERE entry=11794 AND item=60174; -- Sister of Celebrian (11794) - Green items
UPDATE creature_loot_template SET item=60253 WHERE entry=11794 AND item=60250; -- Sister of Celebrian (11794) - Blue items
UPDATE creature_loot_template SET item=60313 WHERE entry=11794 AND item=60310; -- Sister of Celebrian (11794) - Purple items
UPDATE creature_loot_template SET item=60175 WHERE entry=11793 AND item=60174; -- Celebrian Dryad (11793) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=11793 AND item=60250; -- Celebrian Dryad (11793) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=11793 AND item=60310; -- Celebrian Dryad (11793) - Purple items
UPDATE creature_loot_template SET item=60173 WHERE entry=11791 AND item=60170; -- Putridus Trickster (11791) - Green items
UPDATE creature_loot_template SET item=60249 WHERE entry=11791 AND item=60246; -- Putridus Trickster (11791) - Blue items
UPDATE creature_loot_template SET item=60309 WHERE entry=11791 AND item=60306; -- Putridus Trickster (11791) - Purple items
UPDATE creature_loot_template SET item=60171 WHERE entry=11790 AND item=60169; -- Putridus Satyr (11790) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=11790 AND item=60245; -- Putridus Satyr (11790) - Blue items
UPDATE creature_loot_template SET item=60307 WHERE entry=11790 AND item=60305; -- Putridus Satyr (11790) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9476 AND item=60192; -- Watchman Doomgrip (9476) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9476 AND item=60268; -- Watchman Doomgrip (9476) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9476 AND item=60328; -- Watchman Doomgrip (9476) - Purple items
UPDATE creature_loot_template SET item=60191 WHERE entry=9445 AND item=60188; -- Dark Guard (9445) - Green items
UPDATE creature_loot_template SET item=60267 WHERE entry=9445 AND item=60264; -- Dark Guard (9445) - Blue items
UPDATE creature_loot_template SET item=60327 WHERE entry=9445 AND item=60324; -- Dark Guard (9445) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9443 AND item=60190; -- Dark Keeper Pelver (9443) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9443 AND item=60266; -- Dark Keeper Pelver (9443) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9443 AND item=60326; -- Dark Keeper Pelver (9443) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9442 AND item=60190; -- Dark Keeper Ofgut (9442) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9442 AND item=60266; -- Dark Keeper Ofgut (9442) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9442 AND item=60326; -- Dark Keeper Ofgut (9442) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9441 AND item=60190; -- Dark Keeper Zimrel (9441) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9441 AND item=60266; -- Dark Keeper Zimrel (9441) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9441 AND item=60326; -- Dark Keeper Zimrel (9441) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9439 AND item=60190; -- Dark Keeper Uggel (9439) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9439 AND item=60266; -- Dark Keeper Uggel (9439) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9439 AND item=60326; -- Dark Keeper Uggel (9439) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9438 AND item=60190; -- Dark Keeper Bethek (9438) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9438 AND item=60266; -- Dark Keeper Bethek (9438) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9438 AND item=60326; -- Dark Keeper Bethek (9438) - Purple items
UPDATE creature_loot_template SET item=60194 WHERE entry=9437 AND item=60190; -- Dark Keeper Vorfalk (9437) - Green items
UPDATE creature_loot_template SET item=60270 WHERE entry=9437 AND item=60266; -- Dark Keeper Vorfalk (9437) - Blue items
UPDATE creature_loot_template SET item=60330 WHERE entry=9437 AND item=60326; -- Dark Keeper Vorfalk (9437) - Purple items
UPDATE creature_loot_template SET item=50603 WHERE entry=8908 AND item=50602; -- Molten War Golem (8908) - Scrolls items
UPDATE creature_loot_template SET item=60195 WHERE entry=8908 AND item=60194; -- Molten War Golem (8908) - Green items
UPDATE creature_loot_template SET item=60271 WHERE entry=8908 AND item=60270; -- Molten War Golem (8908) - Blue items
UPDATE creature_loot_template SET item=60331 WHERE entry=8908 AND item=60330; -- Molten War Golem (8908) - Purple items
UPDATE creature_loot_template SET item=50603 WHERE entry=8907 AND item=50602; -- Wrath Hammer Construct (8907) - Scrolls items
UPDATE creature_loot_template SET item=60195 WHERE entry=8907 AND item=60192; -- Wrath Hammer Construct (8907) - Green items
UPDATE creature_loot_template SET item=60271 WHERE entry=8907 AND item=60268; -- Wrath Hammer Construct (8907) - Blue items
UPDATE creature_loot_template SET item=60331 WHERE entry=8907 AND item=60328; -- Wrath Hammer Construct (8907) - Purple items
UPDATE creature_loot_template SET item=50603 WHERE entry=8904 AND item=50602; -- Shadowforge Senator (8904) - Scrolls items
UPDATE creature_loot_template SET item=60195 WHERE entry=8904 AND item=60193; -- Shadowforge Senator (8904) - Green items
UPDATE creature_loot_template SET item=60271 WHERE entry=8904 AND item=60269; -- Shadowforge Senator (8904) - Blue items
UPDATE creature_loot_template SET item=60331 WHERE entry=8904 AND item=60329; -- Shadowforge Senator (8904) - Purple items
UPDATE creature_loot_template SET item=50603 WHERE entry=8903 AND item=50602; -- Anvilrage Captain (8903) - Scrolls items
UPDATE creature_loot_template SET item=60195 WHERE entry=8903 AND item=60194; -- Anvilrage Captain (8903) - Green items
UPDATE creature_loot_template SET item=60271 WHERE entry=8903 AND item=60270; -- Anvilrage Captain (8903) - Blue items
UPDATE creature_loot_template SET item=60331 WHERE entry=8903 AND item=60330; -- Anvilrage Captain (8903) - Purple items
UPDATE creature_loot_template SET item=50603 WHERE entry=8902 AND item=50602; -- Shadowforge Citizen (8902) - Scrolls items
UPDATE creature_loot_template SET item=60195 WHERE entry=8902 AND item=60187; -- Shadowforge Citizen (8902) - Green items
UPDATE creature_loot_template SET item=60271 WHERE entry=8902 AND item=60263; -- Shadowforge Citizen (8902) - Blue items
UPDATE creature_loot_template SET item=60331 WHERE entry=8902 AND item=60323; -- Shadowforge Citizen (8902) - Purple items
UPDATE creature_loot_template SET item=60193 WHERE entry=8900 AND item=60192; -- Doomforge Arcanasmith (8900) - Green items
UPDATE creature_loot_template SET item=60269 WHERE entry=8900 AND item=60268; -- Doomforge Arcanasmith (8900) - Blue items
UPDATE creature_loot_template SET item=60329 WHERE entry=8900 AND item=60328; -- Doomforge Arcanasmith (8900) - Purple items
UPDATE creature_loot_template SET item=60193 WHERE entry=8899 AND item=60191; -- Doomforge Dragoon (8899) - Green items
UPDATE creature_loot_template SET item=60269 WHERE entry=8899 AND item=60267; -- Doomforge Dragoon (8899) - Blue items
UPDATE creature_loot_template SET item=60329 WHERE entry=8899 AND item=60327; -- Doomforge Dragoon (8899) - Purple items
UPDATE creature_loot_template SET item=60193 WHERE entry=8898 AND item=60191; -- Anvilrage Marshal (8898) - Green items
UPDATE creature_loot_template SET item=60269 WHERE entry=8898 AND item=60267; -- Anvilrage Marshal (8898) - Blue items
UPDATE creature_loot_template SET item=60329 WHERE entry=8898 AND item=60327; -- Anvilrage Marshal (8898) - Purple items
UPDATE creature_loot_template SET item=60191 WHERE entry=8897 AND item=60186; -- Doomforge Craftsman (8897) - Green items
UPDATE creature_loot_template SET item=60267 WHERE entry=8897 AND item=60262; -- Doomforge Craftsman (8897) - Blue items
UPDATE creature_loot_template SET item=60327 WHERE entry=8897 AND item=60322; -- Doomforge Craftsman (8897) - Purple items
UPDATE creature_loot_template SET item=60191 WHERE entry=8896 AND item=60185; -- Shadowforge Peasant (8896) - Green items
UPDATE creature_loot_template SET item=60267 WHERE entry=8896 AND item=60261; -- Shadowforge Peasant (8896) - Blue items
UPDATE creature_loot_template SET item=60327 WHERE entry=8896 AND item=60321; -- Shadowforge Peasant (8896) - Purple items
UPDATE creature_loot_template SET item=60191 WHERE entry=8895 AND item=60186; -- Anvilrage Officer (8895) - Green items
UPDATE creature_loot_template SET item=60267 WHERE entry=8895 AND item=60262; -- Anvilrage Officer (8895) - Blue items
UPDATE creature_loot_template SET item=60327 WHERE entry=8895 AND item=60322; -- Anvilrage Officer (8895) - Purple items
UPDATE creature_loot_template SET item=60189 WHERE entry=8894 AND item=60185; -- Anvilrage Medic (8894) - Green items
UPDATE creature_loot_template SET item=60265 WHERE entry=8894 AND item=60261; -- Anvilrage Medic (8894) - Blue items
UPDATE creature_loot_template SET item=60325 WHERE entry=8894 AND item=60321; -- Anvilrage Medic (8894) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=8893 AND item=60007; -- Anvilrage Soldier (8893) - Grey items
UPDATE creature_loot_template SET item=60189 WHERE entry=8893 AND item=60184; -- Anvilrage Soldier (8893) - Green items
UPDATE creature_loot_template SET item=60265 WHERE entry=8893 AND item=60260; -- Anvilrage Soldier (8893) - Blue items
UPDATE creature_loot_template SET item=60325 WHERE entry=8893 AND item=60320; -- Anvilrage Soldier (8893) - Purple items
UPDATE creature_loot_template SET item=60187 WHERE entry=8892 AND item=60185; -- Anvilrage Footman (8892) - Green items
UPDATE creature_loot_template SET item=60263 WHERE entry=8892 AND item=60261; -- Anvilrage Footman (8892) - Blue items
UPDATE creature_loot_template SET item=60323 WHERE entry=8892 AND item=60321; -- Anvilrage Footman (8892) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=8419 AND item=60007; -- Twilight Idolater (8419) - Grey items
UPDATE creature_loot_template SET item=60185 WHERE entry=8419 AND item=60175; -- Twilight Idolater (8419) - Green items
UPDATE creature_loot_template SET item=60261 WHERE entry=8419 AND item=60251; -- Twilight Idolater (8419) - Blue items
UPDATE creature_loot_template SET item=60321 WHERE entry=8419 AND item=60311; -- Twilight Idolater (8419) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=8400 AND item=60007; -- Obsidion (8400) - Grey items
UPDATE creature_loot_template SET item=60188 WHERE entry=8400 AND item=60176; -- Obsidion (8400) - Green items
UPDATE creature_loot_template SET item=60264 WHERE entry=8400 AND item=60252; -- Obsidion (8400) - Blue items
UPDATE creature_loot_template SET item=60324 WHERE entry=8400 AND item=60312; -- Obsidion (8400) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=8391 AND item=60007; -- Lathoric the Black (8391) - Grey items
UPDATE creature_loot_template SET item=60188 WHERE entry=8391 AND item=60176; -- Lathoric the Black (8391) - Green items
UPDATE creature_loot_template SET item=60264 WHERE entry=8391 AND item=60252; -- Lathoric the Black (8391) - Blue items
UPDATE creature_loot_template SET item=60324 WHERE entry=8391 AND item=60312; -- Lathoric the Black (8391) - Purple items
UPDATE creature_loot_template SET item=60181 WHERE entry=8384 AND item=60179; -- Deep Lurker (8384) - Green items
UPDATE creature_loot_template SET item=60257 WHERE entry=8384 AND item=60255; -- Deep Lurker (8384) - Blue items
UPDATE creature_loot_template SET item=60317 WHERE entry=8384 AND item=60315; -- Deep Lurker (8384) - Purple items
UPDATE creature_loot_template SET item=60158 WHERE entry=4132 AND item=60156; -- Silithid Ravager (4132) - Green items
UPDATE creature_loot_template SET item=60234 WHERE entry=4132 AND item=60232; -- Silithid Ravager (4132) - Blue items
UPDATE creature_loot_template SET item=60182 WHERE entry=5400 AND item=60180; -- Zekkis (5400) - Green items
UPDATE creature_loot_template SET item=60258 WHERE entry=5400 AND item=60256; -- Zekkis (5400) - Blue items
UPDATE creature_loot_template SET item=60318 WHERE entry=5400 AND item=60316; -- Zekkis (5400) - Purple items
UPDATE creature_loot_template SET item=60176 WHERE entry=7797 AND item=60174; -- Ruuzlu (7797) - Green items
UPDATE creature_loot_template SET item=60252 WHERE entry=7797 AND item=60250; -- Ruuzlu (7797) - Blue items
UPDATE creature_loot_template SET item=60312 WHERE entry=7797 AND item=60310; -- Ruuzlu (7797) - Purple items
UPDATE creature_loot_template SET item=60176 WHERE entry=7796 AND item=60174; -- Nekrum Gutchewer (7796) - Green items
UPDATE creature_loot_template SET item=60252 WHERE entry=7796 AND item=60250; -- Nekrum Gutchewer (7796) - Blue items
UPDATE creature_loot_template SET item=60312 WHERE entry=7796 AND item=60310; -- Nekrum Gutchewer (7796) - Purple items
UPDATE creature_loot_template SET item=60141 WHERE entry=7603 AND item=60137; -- Leprous Assistant (7603) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=7603 AND item=60213; -- Leprous Assistant (7603) - Blue items
UPDATE creature_loot_template SET item=50602 WHERE entry=7290 AND item=50601; -- Shadowforge Sharpshooter (7290) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=7290 AND item=60006; -- Shadowforge Sharpshooter (7290) - Grey items
UPDATE creature_loot_template SET item=60171 WHERE entry=7290 AND item=60161; -- Shadowforge Sharpshooter (7290) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=7290 AND item=60237; -- Shadowforge Sharpshooter (7290) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=7290 AND item=60444; -- Shadowforge Sharpshooter (7290) - Slot Bag items
UPDATE creature_loot_template SET item=60175 WHERE entry=7247 AND item=60173; -- Sandfury Soul Eater (7247) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=7247 AND item=60249; -- Sandfury Soul Eater (7247) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=7247 AND item=60309; -- Sandfury Soul Eater (7247) - Purple items
UPDATE creature_loot_template SET item=60175 WHERE entry=7246 AND item=60171; -- Sandfury Shadowhunter (7246) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=7246 AND item=60247; -- Sandfury Shadowhunter (7246) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=7246 AND item=60307; -- Sandfury Shadowhunter (7246) - Purple items
UPDATE creature_loot_template SET item=50602 WHERE entry=7091 AND item=50601; -- Shadowforge Ambusher (7091) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=7091 AND item=60006; -- Shadowforge Ambusher (7091) - Grey items
UPDATE creature_loot_template SET item=60171 WHERE entry=7091 AND item=60161; -- Shadowforge Ambusher (7091) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=7091 AND item=60237; -- Shadowforge Ambusher (7091) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=7091 AND item=60444; -- Shadowforge Ambusher (7091) - Slot Bag items
UPDATE creature_loot_template SET item=60275 WHERE entry=7072 AND item=60279; -- Cursed Justicar (7072) - Blue items
UPDATE creature_loot_template SET item=60199 WHERE entry=7072 AND item=60293; -- Cursed Justicar (7072) - Green items
UPDATE creature_loot_template SET item=50602 WHERE entry=7030 AND item=50601; -- Shadowforge Geologist (7030) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=7030 AND item=60006; -- Shadowforge Geologist (7030) - Grey items
UPDATE creature_loot_template SET item=60165 WHERE entry=7030 AND item=60161; -- Shadowforge Geologist (7030) - Green items
UPDATE creature_loot_template SET item=60241 WHERE entry=7030 AND item=60237; -- Shadowforge Geologist (7030) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=7030 AND item=60444; -- Shadowforge Geologist (7030) - Slot Bag items
UPDATE creature_loot_template SET item=50602 WHERE entry=7023 AND item=50601; -- Obsidian Sentinel (7023) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=7023 AND item=60006; -- Obsidian Sentinel (7023) - Grey items
UPDATE creature_loot_template SET item=60168 WHERE entry=7023 AND item=60164; -- Obsidian Sentinel (7023) - Green items
UPDATE creature_loot_template SET item=60244 WHERE entry=7023 AND item=60240; -- Obsidian Sentinel (7023) - Blue items
UPDATE creature_loot_template SET item=60304 WHERE entry=7023 AND item=60300; -- Obsidian Sentinel (7023) - Purple items
UPDATE creature_loot_template SET item=60445 WHERE entry=7023 AND item=60444; -- Obsidian Sentinel (7023) - Slot Bag items
UPDATE creature_loot_template SET item=60163 WHERE entry=6733 AND item=60159; -- Stonevault Basher (6733) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=6733 AND item=60235; -- Stonevault Basher (6733) - Blue items
UPDATE creature_loot_template SET item=60006 WHERE entry=6232 AND item=60005; -- Arcane Nullifier X-21 (6232) - Grey items
UPDATE creature_loot_template SET item=60149 WHERE entry=6232 AND item=60138; -- Arcane Nullifier X-21 (6232) - Green items
UPDATE creature_loot_template SET item=60225 WHERE entry=6232 AND item=60214; -- Arcane Nullifier X-21 (6232) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=6232 AND item=60443; -- Arcane Nullifier X-21 (6232) - Slot Bag items
UPDATE creature_loot_template SET item=60144 WHERE entry=6230 AND item=60138; -- Peacekeeper Security Suit (6230) - Green items
UPDATE creature_loot_template SET item=60220 WHERE entry=6230 AND item=60214; -- Peacekeeper Security Suit (6230) - Blue items
UPDATE creature_loot_template SET item=60143 WHERE entry=6224 AND item=60137; -- Leprous Machinesmith (6224) - Green items
UPDATE creature_loot_template SET item=60219 WHERE entry=6224 AND item=60213; -- Leprous Machinesmith (6224) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=6223 AND item=60137; -- Leprous Defender (6223) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=6223 AND item=60213; -- Leprous Defender (6223) - Blue items
UPDATE creature_loot_template SET item=60143 WHERE entry=6222 AND item=60137; -- Leprous Technician (6222) - Green items
UPDATE creature_loot_template SET item=60219 WHERE entry=6222 AND item=60213; -- Leprous Technician (6222) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=6219 AND item=60137; -- Corrosive Lurker (6219) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=6219 AND item=60213; -- Corrosive Lurker (6219) - Blue items
UPDATE creature_loot_template SET item=60139 WHERE entry=6218 AND item=60136; -- Irradiated Slime (6218) - Green items
UPDATE creature_loot_template SET item=60215 WHERE entry=6218 AND item=60212; -- Irradiated Slime (6218) - Blue items
UPDATE creature_loot_template SET item=60006 WHERE entry=6212 AND item=60005; -- Dark Iron Agent (6212) - Grey items
UPDATE creature_loot_template SET item=60149 WHERE entry=6212 AND item=60138; -- Dark Iron Agent (6212) - Green items
UPDATE creature_loot_template SET item=60225 WHERE entry=6212 AND item=60214; -- Dark Iron Agent (6212) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=6212 AND item=60443; -- Dark Iron Agent (6212) - Slot Bag items
UPDATE creature_loot_template SET item=60140 WHERE entry=6168 AND item=60136; -- Roogug (6168) - Green items
UPDATE creature_loot_template SET item=60216 WHERE entry=6168 AND item=60212; -- Roogug (6168) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=6035 AND item=60135; -- Razorfen Stalker (6035) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=6035 AND item=60211; -- Razorfen Stalker (6035) - Blue items
UPDATE creature_loot_template SET item=60183 WHERE entry=5862 AND item=60173; -- Twilight Geomancer (5862) - Green items
UPDATE creature_loot_template SET item=60259 WHERE entry=5862 AND item=60249; -- Twilight Geomancer (5862) - Blue items
UPDATE creature_loot_template SET item=60319 WHERE entry=5862 AND item=60309; -- Twilight Geomancer (5862) - Purple items
UPDATE creature_loot_template SET item=60179 WHERE entry=5860 AND item=60171; -- Twilight Dark Shaman (5860) - Green items
UPDATE creature_loot_template SET item=60255 WHERE entry=5860 AND item=60247; -- Twilight Dark Shaman (5860) - Blue items
UPDATE creature_loot_template SET item=60315 WHERE entry=5860 AND item=60307; -- Twilight Dark Shaman (5860) - Purple items
DELETE FROM creature_loot_template WHERE entry=5763 AND item=50502; -- Nightmare Ectoplasm (5763) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=5763 AND item=60003; -- Nightmare Ectoplasm (5763) - Grey items
UPDATE creature_loot_template SET item=60125 WHERE entry=5763 AND item=60124; -- Nightmare Ectoplasm (5763) - Green items
UPDATE creature_loot_template SET item=60201 WHERE entry=5763 AND item=60200; -- Nightmare Ectoplasm (5763) - Blue items
UPDATE creature_loot_template SET item=60431 WHERE entry=5763 AND item=60430; -- Nightmare Ectoplasm (5763) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=5763 AND item=60442; -- Nightmare Ectoplasm (5763) - Slot Bag items
UPDATE creature_loot_template SET item=60123 WHERE entry=5761 AND item=60122; -- Deviate Shambler (5761) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=5761 AND item=60428; -- Deviate Shambler (5761) - White items
DELETE FROM creature_loot_template WHERE entry=5756 AND item=50502; -- Deviate Venomwing (5756) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=5756 AND item=60003; -- Deviate Venomwing (5756) - Grey items
UPDATE creature_loot_template SET item=60125 WHERE entry=5756 AND item=60122; -- Deviate Venomwing (5756) - Green items
UPDATE creature_loot_template SET item=60431 WHERE entry=5756 AND item=60428; -- Deviate Venomwing (5756) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=5756 AND item=60442; -- Deviate Venomwing (5756) - Slot Bag items
UPDATE creature_loot_template SET item=60124 WHERE entry=5755 AND item=60122; -- Deviate Viper (5755) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=5755 AND item=60428; -- Deviate Viper (5755) - White items
UPDATE creature_loot_template SET item=60173 WHERE entry=5295 AND item=60181; -- Enraged Feral Scar (5295) - Green items
UPDATE creature_loot_template SET item=60249 WHERE entry=5295 AND item=60257; -- Enraged Feral Scar (5295) - Blue items
UPDATE creature_loot_template SET item=60309 WHERE entry=5295 AND item=60317; -- Enraged Feral Scar (5295) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=5273 AND item=60007; -- Atal'ai High Priest (5273) - Grey items
UPDATE creature_loot_template SET item=60185 WHERE entry=5273 AND item=60181; -- Atal'ai High Priest (5273) - Green items
UPDATE creature_loot_template SET item=60261 WHERE entry=5273 AND item=60257; -- Atal'ai High Priest (5273) - Blue items
UPDATE creature_loot_template SET item=60321 WHERE entry=5273 AND item=60317; -- Atal'ai High Priest (5273) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=5271 AND item=60007; -- Atal'ai Deathwalker (5271) - Grey items
UPDATE creature_loot_template SET item=60185 WHERE entry=5271 AND item=60181; -- Atal'ai Deathwalker (5271) - Green items
UPDATE creature_loot_template SET item=60261 WHERE entry=5271 AND item=60257; -- Atal'ai Deathwalker (5271) - Blue items
UPDATE creature_loot_template SET item=60321 WHERE entry=5271 AND item=60317; -- Atal'ai Deathwalker (5271) - Purple items
UPDATE creature_loot_template SET item=60183 WHERE entry=5270 AND item=60180; -- Atal'ai Corpse Eater (5270) - Green items
UPDATE creature_loot_template SET item=60259 WHERE entry=5270 AND item=60256; -- Atal'ai Corpse Eater (5270) - Blue items
UPDATE creature_loot_template SET item=60319 WHERE entry=5270 AND item=60316; -- Atal'ai Corpse Eater (5270) - Purple items
UPDATE creature_loot_template SET item=60183 WHERE entry=5259 AND item=60179; -- Atal'ai Witch Doctor (5259) - Green items
UPDATE creature_loot_template SET item=60259 WHERE entry=5259 AND item=60255; -- Atal'ai Witch Doctor (5259) - Blue items
UPDATE creature_loot_template SET item=60319 WHERE entry=5259 AND item=60315; -- Atal'ai Witch Doctor (5259) - Purple items
UPDATE creature_loot_template SET item=60181 WHERE entry=5256 AND item=60180; -- Atal'ai Warrior (5256) - Green items
UPDATE creature_loot_template SET item=60257 WHERE entry=5256 AND item=60256; -- Atal'ai Warrior (5256) - Blue items
UPDATE creature_loot_template SET item=60317 WHERE entry=5256 AND item=60316; -- Atal'ai Warrior (5256) - Purple items
DELETE FROM creature_loot_template WHERE entry=5056 AND item=50502; -- Deviate Dreadfang (5056) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=5056 AND item=60003; -- Deviate Dreadfang (5056) - Grey items
UPDATE creature_loot_template SET item=60125 WHERE entry=5056 AND item=60122; -- Deviate Dreadfang (5056) - Green items
UPDATE creature_loot_template SET item=60431 WHERE entry=5056 AND item=60428; -- Deviate Dreadfang (5056) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=5056 AND item=60442; -- Deviate Dreadfang (5056) - Slot Bag items
UPDATE creature_loot_template SET item=60159 WHERE entry=4852 AND item=60158; -- Stonevault Oracle (4852) - Green items
UPDATE creature_loot_template SET item=60235 WHERE entry=4852 AND item=60234; -- Stonevault Oracle (4852) - Blue items
UPDATE creature_loot_template SET item=50602 WHERE entry=4849 AND item=50601; -- Shadowforge Archaeologist (4849) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=4849 AND item=60006; -- Shadowforge Archaeologist (4849) - Grey items
UPDATE creature_loot_template SET item=60171 WHERE entry=4849 AND item=60161; -- Shadowforge Archaeologist (4849) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=4849 AND item=60237; -- Shadowforge Archaeologist (4849) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=4849 AND item=60444; -- Shadowforge Archaeologist (4849) - Slot Bag items
UPDATE creature_loot_template SET item=50602 WHERE entry=4848 AND item=50601; -- Shadowforge Darkcaster (4848) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=4848 AND item=60006; -- Shadowforge Darkcaster (4848) - Grey items
UPDATE creature_loot_template SET item=60171 WHERE entry=4848 AND item=60161; -- Shadowforge Darkcaster (4848) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=4848 AND item=60237; -- Shadowforge Darkcaster (4848) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=4848 AND item=60444; -- Shadowforge Darkcaster (4848) - Slot Bag items
UPDATE creature_loot_template SET item=60163 WHERE entry=4847 AND item=60161; -- Shadowforge Relic Hunter (4847) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=4847 AND item=60237; -- Shadowforge Relic Hunter (4847) - Blue items
UPDATE creature_loot_template SET item=60157 WHERE entry=4845 AND item=60155; -- Shadowforge Ruffian (4845) - Green items
UPDATE creature_loot_template SET item=60233 WHERE entry=4845 AND item=60231; -- Shadowforge Ruffian (4845) - Blue items
UPDATE creature_loot_template SET item=50601 WHERE entry=4814 AND item=50600; -- Twilight Elementalist (4814) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4814 AND item=60004; -- Twilight Elementalist (4814) - Grey items
UPDATE creature_loot_template SET item=60137 WHERE entry=4814 AND item=60130; -- Twilight Elementalist (4814) - Green items
UPDATE creature_loot_template SET item=60213 WHERE entry=4814 AND item=60206; -- Twilight Elementalist (4814) - Blue items
DELETE FROM creature_loot_template WHERE entry=4814 AND item=60436; -- Twilight Elementalist (4814) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=4813 AND item=50600; -- Twilight Shadowmage (4813) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4813 AND item=60004; -- Twilight Shadowmage (4813) - Grey items
UPDATE creature_loot_template SET item=60137 WHERE entry=4813 AND item=60130; -- Twilight Shadowmage (4813) - Green items
UPDATE creature_loot_template SET item=60213 WHERE entry=4813 AND item=60206; -- Twilight Shadowmage (4813) - Blue items
DELETE FROM creature_loot_template WHERE entry=4813 AND item=60436; -- Twilight Shadowmage (4813) - White items
UPDATE creature_loot_template SET item=60133 WHERE entry=4812 AND item=60129; -- Twilight Loreseeker (4812) - Green items
UPDATE creature_loot_template SET item=60209 WHERE entry=4812 AND item=60205; -- Twilight Loreseeker (4812) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=4812 AND item=60435; -- Twilight Loreseeker (4812) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=4811 AND item=50600; -- Twilight Aquamancer (4811) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4811 AND item=60004; -- Twilight Aquamancer (4811) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=4811 AND item=60130; -- Twilight Aquamancer (4811) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=4811 AND item=60206; -- Twilight Aquamancer (4811) - Blue items
DELETE FROM creature_loot_template WHERE entry=4811 AND item=60436; -- Twilight Aquamancer (4811) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=4810 AND item=50600; -- Twilight Reaver (4810) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4810 AND item=60004; -- Twilight Reaver (4810) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=4810 AND item=60130; -- Twilight Reaver (4810) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=4810 AND item=60206; -- Twilight Reaver (4810) - Blue items
DELETE FROM creature_loot_template WHERE entry=4810 AND item=60436; -- Twilight Reaver (4810) - White items
UPDATE creature_loot_template SET item=60133 WHERE entry=4809 AND item=60129; -- Twilight Acolyte (4809) - Green items
UPDATE creature_loot_template SET item=60209 WHERE entry=4809 AND item=60205; -- Twilight Acolyte (4809) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=4809 AND item=60435; -- Twilight Acolyte (4809) - White items
UPDATE creature_loot_template SET item=60129 WHERE entry=4807 AND item=60128; -- Blackfathom Myrmidon (4807) - Green items
UPDATE creature_loot_template SET item=60205 WHERE entry=4807 AND item=60204; -- Blackfathom Myrmidon (4807) - Blue items
UPDATE creature_loot_template SET item=60435 WHERE entry=4807 AND item=60434; -- Blackfathom Myrmidon (4807) - White items
UPDATE creature_loot_template SET item=60131 WHERE entry=4805 AND item=60129; -- Blackfathom Sea Witch (4805) - Green items
UPDATE creature_loot_template SET item=60207 WHERE entry=4805 AND item=60205; -- Blackfathom Sea Witch (4805) - Blue items
UPDATE creature_loot_template SET item=60436 WHERE entry=4805 AND item=60435; -- Blackfathom Sea Witch (4805) - White items
UPDATE creature_loot_template SET item=60437 WHERE entry=4805 AND item=60435; -- Blackfathom Sea Witch (4805) - White items
UPDATE creature_loot_template SET item=60438 WHERE entry=4805 AND item=60435; -- Blackfathom Sea Witch (4805) - White items
UPDATE creature_loot_template SET item=60439 WHERE entry=4805 AND item=60435; -- Blackfathom Sea Witch (4805) - White items
UPDATE creature_loot_template SET item=60203 WHERE entry=4803 AND item=60202; -- Blackfathom Oracle (4803) - Blue items
UPDATE creature_loot_template SET item=60433 WHERE entry=4803 AND item=60432; -- Blackfathom Oracle (4803) - White items
UPDATE creature_loot_template SET item=60133 WHERE entry=4799 AND item=60129; -- Fallenroot Hellcaller (4799) - Green items
UPDATE creature_loot_template SET item=60209 WHERE entry=4799 AND item=60205; -- Fallenroot Hellcaller (4799) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=4799 AND item=60435; -- Fallenroot Hellcaller (4799) - White items
UPDATE creature_loot_template SET item=60131 WHERE entry=4798 AND item=60129; -- Fallenroot Shadowstalker (4798) - Green items
UPDATE creature_loot_template SET item=60207 WHERE entry=4798 AND item=60205; -- Fallenroot Shadowstalker (4798) - Blue items
UPDATE creature_loot_template SET item=60436 WHERE entry=4798 AND item=60435; -- Fallenroot Shadowstalker (4798) - White items
UPDATE creature_loot_template SET item=60437 WHERE entry=4798 AND item=60435; -- Fallenroot Shadowstalker (4798) - White items
UPDATE creature_loot_template SET item=60438 WHERE entry=4798 AND item=60435; -- Fallenroot Shadowstalker (4798) - White items
UPDATE creature_loot_template SET item=60439 WHERE entry=4798 AND item=60435; -- Fallenroot Shadowstalker (4798) - White items
UPDATE creature_loot_template SET item=60203 WHERE entry=4789 AND item=60202; -- Fallenroot Rogue (4789) - Blue items
UPDATE creature_loot_template SET item=60433 WHERE entry=4789 AND item=60432; -- Fallenroot Rogue (4789) - White items
UPDATE creature_loot_template SET item=60006 WHERE entry=4623 AND item=60005; -- Quilguard Champion (4623) - Grey items
UPDATE creature_loot_template SET item=60145 WHERE entry=4623 AND item=60136; -- Quilguard Champion (4623) - Green items
UPDATE creature_loot_template SET item=60221 WHERE entry=4623 AND item=60212; -- Quilguard Champion (4623) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4623 AND item=60443; -- Quilguard Champion (4623) - Slot Bag items
UPDATE creature_loot_template SET item=60155 WHERE entry=4540 AND item=60152; -- Scarlet Monk (4540) - Green items
UPDATE creature_loot_template SET item=60231 WHERE entry=4540 AND item=60228; -- Scarlet Monk (4540) - Blue items
UPDATE creature_loot_template SET item=60006 WHERE entry=4539 AND item=60005; -- Greater Kraul Bat (4539) - Grey items
UPDATE creature_loot_template SET item=60148 WHERE entry=4539 AND item=60136; -- Greater Kraul Bat (4539) - Green items
UPDATE creature_loot_template SET item=60224 WHERE entry=4539 AND item=60212; -- Greater Kraul Bat (4539) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4539 AND item=60443; -- Greater Kraul Bat (4539) - Slot Bag items
UPDATE creature_loot_template SET item=60006 WHERE entry=4538 AND item=60005; -- Kraul Bat (4538) - Grey items
UPDATE creature_loot_template SET item=60145 WHERE entry=4538 AND item=60136; -- Kraul Bat (4538) - Green items
UPDATE creature_loot_template SET item=60221 WHERE entry=4538 AND item=60212; -- Kraul Bat (4538) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4538 AND item=60443; -- Kraul Bat (4538) - Slot Bag items
UPDATE creature_loot_template SET item=60006 WHERE entry=4532 AND item=60005; -- Razorfen Beastmaster (4532) - Grey items
UPDATE creature_loot_template SET item=60145 WHERE entry=4532 AND item=60136; -- Razorfen Beastmaster (4532) - Green items
UPDATE creature_loot_template SET item=60221 WHERE entry=4532 AND item=60212; -- Razorfen Beastmaster (4532) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4532 AND item=60443; -- Razorfen Beastmaster (4532) - Slot Bag items
UPDATE creature_loot_template SET item=60141 WHERE entry=4531 AND item=60135; -- Razorfen Beast Trainer (4531) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=4531 AND item=60211; -- Razorfen Beast Trainer (4531) - Blue items
UPDATE creature_loot_template SET item=50601 WHERE entry=4530 AND item=50600; -- Razorfen Handler (4530) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4530 AND item=60004; -- Razorfen Handler (4530) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=4530 AND item=60134; -- Razorfen Handler (4530) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=4530 AND item=60210; -- Razorfen Handler (4530) - Blue items
DELETE FROM creature_loot_template WHERE entry=4530 AND item=60440; -- Razorfen Handler (4530) - White items
UPDATE creature_loot_template SET item=60006 WHERE entry=4525 AND item=60005; -- Razorfen Earthbreaker (4525) - Grey items
UPDATE creature_loot_template SET item=60145 WHERE entry=4525 AND item=60136; -- Razorfen Earthbreaker (4525) - Green items
UPDATE creature_loot_template SET item=60221 WHERE entry=4525 AND item=60212; -- Razorfen Earthbreaker (4525) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4525 AND item=60443; -- Razorfen Earthbreaker (4525) - Slot Bag items
UPDATE creature_loot_template SET item=60139 WHERE entry=4523 AND item=60135; -- Razorfen Groundshaker (4523) - Green items
UPDATE creature_loot_template SET item=60215 WHERE entry=4523 AND item=60211; -- Razorfen Groundshaker (4523) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=4522 AND item=60135; -- Razorfen Dustweaver (4522) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=4522 AND item=60211; -- Razorfen Dustweaver (4522) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=4519 AND item=60135; -- Death's Head Seer (4519) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=4519 AND item=60211; -- Death's Head Seer (4519) - Blue items
UPDATE creature_loot_template SET item=60143 WHERE entry=4518 AND item=60135; -- Death's Head Sage (4518) - Green items
UPDATE creature_loot_template SET item=60219 WHERE entry=4518 AND item=60211; -- Death's Head Sage (4518) - Blue items
UPDATE creature_loot_template SET item=50601 WHERE entry=4517 AND item=50600; -- Death's Head Priest (4517) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4517 AND item=60004; -- Death's Head Priest (4517) - Grey items
UPDATE creature_loot_template SET item=60137 WHERE entry=4517 AND item=60134; -- Death's Head Priest (4517) - Green items
UPDATE creature_loot_template SET item=60213 WHERE entry=4517 AND item=60210; -- Death's Head Priest (4517) - Blue items
DELETE FROM creature_loot_template WHERE entry=4517 AND item=60440; -- Death's Head Priest (4517) - White items
UPDATE creature_loot_template SET item=60139 WHERE entry=4516 AND item=60135; -- Death's Head Adept (4516) - Green items
UPDATE creature_loot_template SET item=60215 WHERE entry=4516 AND item=60211; -- Death's Head Adept (4516) - Blue items
UPDATE creature_loot_template SET item=60141 WHERE entry=4515 AND item=60135; -- Death's Head Acolyte (4515) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=4515 AND item=60211; -- Death's Head Acolyte (4515) - Blue items
UPDATE creature_loot_template SET item=60171 WHERE entry=4506 AND item=60165; -- Bloodsail Swabby (4506) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=4506 AND item=60241; -- Bloodsail Swabby (4506) - Blue items
UPDATE creature_loot_template SET item=60307 WHERE entry=4506 AND item=60301; -- Bloodsail Swabby (4506) - Purple items
UPDATE creature_loot_template SET item=60171 WHERE entry=4505 AND item=60167; -- Bloodsail Deckhand (4505) - Green items
UPDATE creature_loot_template SET item=60247 WHERE entry=4505 AND item=60243; -- Bloodsail Deckhand (4505) - Blue items
UPDATE creature_loot_template SET item=60307 WHERE entry=4505 AND item=60303; -- Bloodsail Deckhand (4505) - Purple items
UPDATE creature_loot_template SET item=60139 WHERE entry=4442 AND item=60135; -- Razorfen Defender (4442) - Green items
UPDATE creature_loot_template SET item=60215 WHERE entry=4442 AND item=60211; -- Razorfen Defender (4442) - Blue items
UPDATE creature_loot_template SET item=60142 WHERE entry=4440 AND item=60135; -- Razorfen Totemic (4440) - Green items
UPDATE creature_loot_template SET item=60218 WHERE entry=4440 AND item=60211; -- Razorfen Totemic (4440) - Blue items
UPDATE creature_loot_template SET item=60143 WHERE entry=4438 AND item=60135; -- Razorfen Spearhide (4438) - Green items
UPDATE creature_loot_template SET item=60219 WHERE entry=4438 AND item=60211; -- Razorfen Spearhide (4438) - Blue items
UPDATE creature_loot_template SET item=50601 WHERE entry=4437 AND item=50600; -- Razorfen Warden (4437) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4437 AND item=60004; -- Razorfen Warden (4437) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=4437 AND item=60134; -- Razorfen Warden (4437) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=4437 AND item=60210; -- Razorfen Warden (4437) - Blue items
DELETE FROM creature_loot_template WHERE entry=4437 AND item=60440; -- Razorfen Warden (4437) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=4436 AND item=50600; -- Razorfen Quilguard (4436) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=4436 AND item=60004; -- Razorfen Quilguard (4436) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=4436 AND item=60134; -- Razorfen Quilguard (4436) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=4436 AND item=60210; -- Razorfen Quilguard (4436) - Blue items
DELETE FROM creature_loot_template WHERE entry=4436 AND item=60440; -- Razorfen Quilguard (4436) - White items
UPDATE creature_loot_template SET item=60006 WHERE entry=4427 AND item=60005; -- Ward Guardian (4427) - Grey items
UPDATE creature_loot_template SET item=60146 WHERE entry=4427 AND item=60136; -- Ward Guardian (4427) - Green items
UPDATE creature_loot_template SET item=60222 WHERE entry=4427 AND item=60212; -- Ward Guardian (4427) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=4427 AND item=60443; -- Ward Guardian (4427) - Slot Bag items
UPDATE creature_loot_template SET item=50602 WHERE entry=4404 AND item=50601; -- Muckshell Scrabbler (4404) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=4404 AND item=60006; -- Muckshell Scrabbler (4404) - Grey items
UPDATE creature_loot_template SET item=60169 WHERE entry=4404 AND item=60155; -- Muckshell Scrabbler (4404) - Green items
UPDATE creature_loot_template SET item=60245 WHERE entry=4404 AND item=60231; -- Muckshell Scrabbler (4404) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=4404 AND item=60444; -- Muckshell Scrabbler (4404) - Slot Bag items
UPDATE creature_loot_template SET item=50602 WHERE entry=4403 AND item=50601; -- Muckshell Pincer (4403) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=4403 AND item=60006; -- Muckshell Pincer (4403) - Grey items
UPDATE creature_loot_template SET item=60167 WHERE entry=4403 AND item=60155; -- Muckshell Pincer (4403) - Green items
UPDATE creature_loot_template SET item=60243 WHERE entry=4403 AND item=60231; -- Muckshell Pincer (4403) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=4403 AND item=60444; -- Muckshell Pincer (4403) - Slot Bag items
UPDATE creature_loot_template SET item=60163 WHERE entry=4401 AND item=60155; -- Muckshell Clacker (4401) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=4401 AND item=60231; -- Muckshell Clacker (4401) - Blue items
UPDATE creature_loot_template SET item=60159 WHERE entry=4363 AND item=60157; -- Mirefin Oracle (4363) - Green items
UPDATE creature_loot_template SET item=60235 WHERE entry=4363 AND item=60233; -- Mirefin Oracle (4363) - Blue items
UPDATE creature_loot_template SET item=60163 WHERE entry=4303 AND item=60162; -- Scarlet Abbot (4303) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=4303 AND item=60238; -- Scarlet Abbot (4303) - Blue items
UPDATE creature_loot_template SET item=60163 WHERE entry=4302 AND item=60162; -- Scarlet Champion (4302) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=4302 AND item=60238; -- Scarlet Champion (4302) - Blue items
UPDATE creature_loot_template SET item=60153 WHERE entry=4299 AND item=60152; -- Scarlet Chaplain (4299) - Green items
UPDATE creature_loot_template SET item=60229 WHERE entry=4299 AND item=60228; -- Scarlet Chaplain (4299) - Blue items
UPDATE creature_loot_template SET item=60159 WHERE entry=4298 AND item=60156; -- Scarlet Defender (4298) - Green items
UPDATE creature_loot_template SET item=60235 WHERE entry=4298 AND item=60232; -- Scarlet Defender (4298) - Blue items
UPDATE creature_loot_template SET item=60155 WHERE entry=4297 AND item=60154; -- Scarlet Conjuror (4297) - Green items
UPDATE creature_loot_template SET item=60231 WHERE entry=4297 AND item=60230; -- Scarlet Conjuror (4297) - Blue items
UPDATE creature_loot_template SET item=60159 WHERE entry=4295 AND item=60156; -- Scarlet Myrmidon (4295) - Green items
UPDATE creature_loot_template SET item=60235 WHERE entry=4295 AND item=60232; -- Scarlet Myrmidon (4295) - Blue items
UPDATE creature_loot_template SET item=60157 WHERE entry=4292 AND item=60155; -- Scarlet Protector (4292) - Green items
UPDATE creature_loot_template SET item=60233 WHERE entry=4292 AND item=60231; -- Scarlet Protector (4292) - Blue items
UPDATE creature_loot_template SET item=60153 WHERE entry=4291 AND item=60152; -- Scarlet Diviner (4291) - Green items
UPDATE creature_loot_template SET item=60229 WHERE entry=4291 AND item=60228; -- Scarlet Diviner (4291) - Blue items
UPDATE creature_loot_template SET item=60157 WHERE entry=4290 AND item=60155; -- Scarlet Guardsman (4290) - Green items
UPDATE creature_loot_template SET item=60233 WHERE entry=4290 AND item=60231; -- Scarlet Guardsman (4290) - Blue items
UPDATE creature_loot_template SET item=60157 WHERE entry=4289 AND item=60155; -- Scarlet Evoker (4289) - Green items
UPDATE creature_loot_template SET item=60233 WHERE entry=4289 AND item=60231; -- Scarlet Evoker (4289) - Blue items
UPDATE creature_loot_template SET item=60155 WHERE entry=4286 AND item=60154; -- Scarlet Soldier (4286) - Green items
UPDATE creature_loot_template SET item=60231 WHERE entry=4286 AND item=60230; -- Scarlet Soldier (4286) - Blue items
DELETE FROM creature_loot_template WHERE entry=3855 AND item=50502; -- Shadowfang Darksoul (3855) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=3855 AND item=60003; -- Shadowfang Darksoul (3855) - Grey items
UPDATE creature_loot_template SET item=60126 WHERE entry=3855 AND item=60122; -- Shadowfang Darksoul (3855) - Green items
UPDATE creature_loot_template SET item=60431 WHERE entry=3855 AND item=60428; -- Shadowfang Darksoul (3855) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=3855 AND item=60442; -- Shadowfang Darksoul (3855) - Slot Bag items
UPDATE creature_loot_template SET item=60120 WHERE entry=3655 AND item=60118; -- Mad Magglish (3655) - Green items
UPDATE creature_loot_template SET item=60425 WHERE entry=3655 AND item=60424; -- Mad Magglish (3655) - White items
UPDATE creature_loot_template SET item=60002 WHERE entry=3578 AND item=60003; -- Dalaran Miner (3578) - Grey items
UPDATE creature_loot_template SET item=50601 WHERE entry=3392 AND item=50600; -- Prospector Khazgorm (3392) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=3392 AND item=60004; -- Prospector Khazgorm (3392) - Grey items
UPDATE creature_loot_template SET item=60136 WHERE entry=3392 AND item=60132; -- Prospector Khazgorm (3392) - Green items
UPDATE creature_loot_template SET item=60212 WHERE entry=3392 AND item=60208; -- Prospector Khazgorm (3392) - Blue items
DELETE FROM creature_loot_template WHERE entry=3392 AND item=60438; -- Prospector Khazgorm (3392) - White items
UPDATE creature_loot_template SET item=60160 WHERE entry=2932 AND item=60158; -- Magregan Deepshadow (2932) - Green items
UPDATE creature_loot_template SET item=60236 WHERE entry=2932 AND item=60234; -- Magregan Deepshadow (2932) - Blue items
UPDATE creature_loot_template SET item=60163 WHERE entry=2892 AND item=60159; -- Stonevault Seer (2892) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=2892 AND item=60235; -- Stonevault Seer (2892) - Blue items
UPDATE creature_loot_template SET item=60163 WHERE entry=2585 AND item=60161; -- Stromgarde Vindicator (2585) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=2585 AND item=60237; -- Stromgarde Vindicator (2585) - Blue items
UPDATE creature_loot_template SET item=60161 WHERE entry=2584 AND item=60159; -- Stromgarde Defender (2584) - Green items
UPDATE creature_loot_template SET item=60237 WHERE entry=2584 AND item=60235; -- Stromgarde Defender (2584) - Blue items
UPDATE creature_loot_template SET item=60175 WHERE entry=2550 AND item=60168; -- Captain Stillwater (2550) - Green items
UPDATE creature_loot_template SET item=60251 WHERE entry=2550 AND item=60244; -- Captain Stillwater (2550) - Blue items
UPDATE creature_loot_template SET item=60311 WHERE entry=2550 AND item=60304; -- Captain Stillwater (2550) - Purple items
UPDATE creature_loot_template SET item=60169 WHERE entry=2549 AND item=60168; -- Garr Salthoof (2549) - Green items
UPDATE creature_loot_template SET item=60245 WHERE entry=2549 AND item=60244; -- Garr Salthoof (2549) - Blue items
UPDATE creature_loot_template SET item=60305 WHERE entry=2549 AND item=60304; -- Garr Salthoof (2549) - Purple items
UPDATE creature_loot_template SET item=60177 WHERE entry=2548 AND item=60168; -- Captain Keelhaul (2548) - Green items
UPDATE creature_loot_template SET item=60253 WHERE entry=2548 AND item=60244; -- Captain Keelhaul (2548) - Blue items
UPDATE creature_loot_template SET item=60313 WHERE entry=2548 AND item=60304; -- Captain Keelhaul (2548) - Purple items
UPDATE creature_loot_template SET item=60180 WHERE entry=2546 AND item=60168; -- Fleet Master Firallon (2546) - Green items
UPDATE creature_loot_template SET item=60256 WHERE entry=2546 AND item=60244; -- Fleet Master Firallon (2546) - Blue items
UPDATE creature_loot_template SET item=60316 WHERE entry=2546 AND item=60304; -- Fleet Master Firallon (2546) - Purple items
UPDATE creature_loot_template SET item=60006 WHERE entry=2091 AND item=60005; -- Chieftain Nek'rosh (2091) - Grey items
UPDATE creature_loot_template SET item=60148 WHERE entry=2091 AND item=60136; -- Chieftain Nek'rosh (2091) - Green items
UPDATE creature_loot_template SET item=60224 WHERE entry=2091 AND item=60212; -- Chieftain Nek'rosh (2091) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=2091 AND item=60443; -- Chieftain Nek'rosh (2091) - Slot Bag items
DELETE FROM creature_loot_template WHERE entry=1947 AND item=50502; -- Thule Ravenclaw (1947) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=1947 AND item=60003; -- Thule Ravenclaw (1947) - Grey items
UPDATE creature_loot_template SET item=60132 WHERE entry=1947 AND item=60124; -- Thule Ravenclaw (1947) - Green items
UPDATE creature_loot_template SET item=60208 WHERE entry=1947 AND item=60200; -- Thule Ravenclaw (1947) - Blue items
UPDATE creature_loot_template SET item=60436 WHERE entry=1947 AND item=60430; -- Thule Ravenclaw (1947) - White items
UPDATE creature_loot_template SET item=60437 WHERE entry=1947 AND item=60430; -- Thule Ravenclaw (1947) - White items
UPDATE creature_loot_template SET item=60438 WHERE entry=1947 AND item=60430; -- Thule Ravenclaw (1947) - White items
UPDATE creature_loot_template SET item=60439 WHERE entry=1947 AND item=60430; -- Thule Ravenclaw (1947) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=1947 AND item=60442; -- Thule Ravenclaw (1947) - Slot Bag items
UPDATE creature_loot_template SET item=60002 WHERE entry=1753 AND item=60001; -- Maggot Eye (1753) - Grey items
UPDATE creature_loot_template SET item=60106 WHERE entry=1753 AND item=60104; -- Maggot Eye (1753) - Green items
UPDATE creature_loot_template SET item=60411 WHERE entry=1753 AND item=60410; -- Maggot Eye (1753) - White items
UPDATE creature_loot_template SET item=60442 WHERE entry=1753 AND item=60441; -- Maggot Eye (1753) - Slot Bag items
UPDATE creature_loot_template SET item=60123 WHERE entry=1732 AND item=60122; -- Defias Squallshaper (1732) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=1732 AND item=60428; -- Defias Squallshaper (1732) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1716 AND item=50600; -- Bazil Thredd (1716) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1716 AND item=60004; -- Bazil Thredd (1716) - Grey items
UPDATE creature_loot_template SET item=60142 WHERE entry=1716 AND item=60134; -- Bazil Thredd (1716) - Green items
UPDATE creature_loot_template SET item=60218 WHERE entry=1716 AND item=60210; -- Bazil Thredd (1716) - Blue items
DELETE FROM creature_loot_template WHERE entry=1716 AND item=60440; -- Bazil Thredd (1716) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1715 AND item=50600; -- Defias Insurgent (1715) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1715 AND item=60004; -- Defias Insurgent (1715) - Grey items
UPDATE creature_loot_template SET item=60135 WHERE entry=1715 AND item=60132; -- Defias Insurgent (1715) - Green items
UPDATE creature_loot_template SET item=60211 WHERE entry=1715 AND item=60208; -- Defias Insurgent (1715) - Blue items
DELETE FROM creature_loot_template WHERE entry=1715 AND item=60438; -- Defias Insurgent (1715) - White items
UPDATE creature_loot_template SET item=60133 WHERE entry=1711 AND item=60131; -- Defias Convict (1711) - Green items
UPDATE creature_loot_template SET item=60209 WHERE entry=1711 AND item=60207; -- Defias Convict (1711) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=1711 AND item=60437; -- Defias Convict (1711) - White items
UPDATE creature_loot_template SET item=60133 WHERE entry=1708 AND item=60131; -- Defias Inmate (1708) - Green items
UPDATE creature_loot_template SET item=60209 WHERE entry=1708 AND item=60207; -- Defias Inmate (1708) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=1708 AND item=60437; -- Defias Inmate (1708) - White items
UPDATE creature_loot_template SET item=60131 WHERE entry=1706 AND item=60130; -- Defias Prisoner (1706) - Green items
UPDATE creature_loot_template SET item=60207 WHERE entry=1706 AND item=60206; -- Defias Prisoner (1706) - Blue items
UPDATE creature_loot_template SET item=50601 WHERE entry=1663 AND item=50600; -- Dextren Ward (1663) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1663 AND item=60004; -- Dextren Ward (1663) - Grey items
UPDATE creature_loot_template SET item=60136 WHERE entry=1663 AND item=60134; -- Dextren Ward (1663) - Green items
UPDATE creature_loot_template SET item=60212 WHERE entry=1663 AND item=60210; -- Dextren Ward (1663) - Blue items
DELETE FROM creature_loot_template WHERE entry=1663 AND item=60440; -- Dextren Ward (1663) - White items
UPDATE creature_loot_template SET item=60173 WHERE entry=1653 AND item=60167; -- Bloodsail Elder Magus (1653) - Green items
UPDATE creature_loot_template SET item=60249 WHERE entry=1653 AND item=60243; -- Bloodsail Elder Magus (1653) - Blue items
UPDATE creature_loot_template SET item=60309 WHERE entry=1653 AND item=60303; -- Bloodsail Elder Magus (1653) - Purple items
UPDATE creature_loot_template SET item=60173 WHERE entry=1565 AND item=60167; -- Bloodsail Sea Dog (1565) - Green items
UPDATE creature_loot_template SET item=60249 WHERE entry=1565 AND item=60243; -- Bloodsail Sea Dog (1565) - Blue items
UPDATE creature_loot_template SET item=60309 WHERE entry=1565 AND item=60303; -- Bloodsail Sea Dog (1565) - Purple items
UPDATE creature_loot_template SET item=60169 WHERE entry=1564 AND item=60165; -- Bloodsail Warlock (1564) - Green items
UPDATE creature_loot_template SET item=60245 WHERE entry=1564 AND item=60241; -- Bloodsail Warlock (1564) - Blue items
UPDATE creature_loot_template SET item=60305 WHERE entry=1564 AND item=60301; -- Bloodsail Warlock (1564) - Purple items
UPDATE creature_loot_template SET item=60169 WHERE entry=1563 AND item=60165; -- Bloodsail Swashbuckler (1563) - Green items
UPDATE creature_loot_template SET item=60245 WHERE entry=1563 AND item=60241; -- Bloodsail Swashbuckler (1563) - Blue items
UPDATE creature_loot_template SET item=60305 WHERE entry=1563 AND item=60301; -- Bloodsail Swashbuckler (1563) - Purple items
UPDATE creature_loot_template SET item=60008 WHERE entry=1559 AND item=60007; -- King Mukla (1559) - Grey items
UPDATE creature_loot_template SET item=60186 WHERE entry=1559 AND item=60168; -- King Mukla (1559) - Green items
UPDATE creature_loot_template SET item=60262 WHERE entry=1559 AND item=60244; -- King Mukla (1559) - Blue items
UPDATE creature_loot_template SET item=60322 WHERE entry=1559 AND item=60304; -- King Mukla (1559) - Purple items
UPDATE creature_loot_template SET item=60160 WHERE entry=14230 AND item=60158; -- Burgle Eye (14230) - Green items
UPDATE creature_loot_template SET item=60236 WHERE entry=14230 AND item=60234; -- Burgle Eye (14230) - Blue items
UPDATE creature_loot_template SET item=60008 WHERE entry=1494 AND item=60007; -- Negolash (1494) - Grey items
UPDATE creature_loot_template SET item=60188 WHERE entry=1494 AND item=60168; -- Negolash (1494) - Green items
UPDATE creature_loot_template SET item=60264 WHERE entry=1494 AND item=60244; -- Negolash (1494) - Blue items
UPDATE creature_loot_template SET item=60324 WHERE entry=1494 AND item=60304; -- Negolash (1494) - Purple items
UPDATE creature_loot_template SET item=60178 WHERE entry=1492 AND item=60168; -- Gorlash (1492) - Green items
UPDATE creature_loot_template SET item=60254 WHERE entry=1492 AND item=60244; -- Gorlash (1492) - Blue items
UPDATE creature_loot_template SET item=60314 WHERE entry=1492 AND item=60304; -- Gorlash (1492) - Purple items
UPDATE creature_loot_template SET item=50602 WHERE entry=14236 AND item=50601; -- Lord Angler (14236) - Scrolls items
UPDATE creature_loot_template SET item=60007 WHERE entry=14236 AND item=60006; -- Lord Angler (14236) - Grey items
UPDATE creature_loot_template SET item=60172 WHERE entry=14236 AND item=60158; -- Lord Angler (14236) - Green items
UPDATE creature_loot_template SET item=60248 WHERE entry=14236 AND item=60234; -- Lord Angler (14236) - Blue items
UPDATE creature_loot_template SET item=60445 WHERE entry=14236 AND item=60444; -- Lord Angler (14236) - Slot Bag items
UPDATE creature_loot_template SET item=60152 WHERE entry=1364 AND item=60146; -- Balgaras the Foul (1364) - Green items
UPDATE creature_loot_template SET item=60228 WHERE entry=1364 AND item=60222; -- Balgaras the Foul (1364) - Blue items
UPDATE creature_loot_template SET item=60112 WHERE entry=1177 AND item=60105; -- Tunnel Rat Surveyor (1177) - Green items
UPDATE creature_loot_template SET item=60417 WHERE entry=1177 AND item=60411; -- Tunnel Rat Surveyor (1177) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1057 AND item=50600; -- Dragonmaw Bonewarder (1057) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1057 AND item=60004; -- Dragonmaw Bonewarder (1057) - Grey items
UPDATE creature_loot_template SET item=60138 WHERE entry=1057 AND item=60131; -- Dragonmaw Bonewarder (1057) - Green items
UPDATE creature_loot_template SET item=60214 WHERE entry=1057 AND item=60207; -- Dragonmaw Bonewarder (1057) - Blue items
DELETE FROM creature_loot_template WHERE entry=1057 AND item=60437; -- Dragonmaw Bonewarder (1057) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1038 AND item=50600; -- Dragonmaw Shadowwarder (1038) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1038 AND item=60004; -- Dragonmaw Shadowwarder (1038) - Grey items
UPDATE creature_loot_template SET item=60141 WHERE entry=1038 AND item=60131; -- Dragonmaw Shadowwarder (1038) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=1038 AND item=60207; -- Dragonmaw Shadowwarder (1038) - Blue items
DELETE FROM creature_loot_template WHERE entry=1038 AND item=60437; -- Dragonmaw Shadowwarder (1038) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1036 AND item=50600; -- Dragonmaw Centurion (1036) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1036 AND item=60004; -- Dragonmaw Centurion (1036) - Grey items
UPDATE creature_loot_template SET item=60141 WHERE entry=1036 AND item=60133; -- Dragonmaw Centurion (1036) - Green items
UPDATE creature_loot_template SET item=60217 WHERE entry=1036 AND item=60209; -- Dragonmaw Centurion (1036) - Blue items
DELETE FROM creature_loot_template WHERE entry=1036 AND item=60439; -- Dragonmaw Centurion (1036) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1035 AND item=50600; -- Dragonmaw Swamprunner (1035) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1035 AND item=60004; -- Dragonmaw Swamprunner (1035) - Grey items
UPDATE creature_loot_template SET item=60139 WHERE entry=1035 AND item=60131; -- Dragonmaw Swamprunner (1035) - Green items
UPDATE creature_loot_template SET item=60215 WHERE entry=1035 AND item=60207; -- Dragonmaw Swamprunner (1035) - Blue items
DELETE FROM creature_loot_template WHERE entry=1035 AND item=60437; -- Dragonmaw Swamprunner (1035) - White items
UPDATE creature_loot_template SET item=50601 WHERE entry=1034 AND item=50600; -- Dragonmaw Raider (1034) - Scrolls items
UPDATE creature_loot_template SET item=60005 WHERE entry=1034 AND item=60004; -- Dragonmaw Raider (1034) - Grey items
UPDATE creature_loot_template SET item=60137 WHERE entry=1034 AND item=60131; -- Dragonmaw Raider (1034) - Green items
UPDATE creature_loot_template SET item=60213 WHERE entry=1034 AND item=60207; -- Dragonmaw Raider (1034) - Blue items
DELETE FROM creature_loot_template WHERE entry=1034 AND item=60437; -- Dragonmaw Raider (1034) - White items
UPDATE creature_loot_template SET item=60178 WHERE entry=818 AND item=60174; -- Mai'Zoth (818) - Green items
UPDATE creature_loot_template SET item=60254 WHERE entry=818 AND item=60250; -- Mai'Zoth (818) - Blue items
UPDATE creature_loot_template SET item=60314 WHERE entry=818 AND item=60310; -- Mai'Zoth (818) - Purple items
UPDATE creature_loot_template SET item=60163 WHERE entry=765 AND item=60159; -- Swampwalker Elder (765) - Green items
UPDATE creature_loot_template SET item=60239 WHERE entry=765 AND item=60235; -- Swampwalker Elder (765) - Blue items
UPDATE creature_loot_template SET item=60123 WHERE entry=636 AND item=60122; -- Defias Blackguard (636) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=636 AND item=60428; -- Defias Blackguard (636) - White items
UPDATE creature_loot_template SET item=60124 WHERE entry=626 AND item=60120; -- Foreman Thistlenettle (626) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=626 AND item=60426; -- Foreman Thistlenettle (626) - White items
UPDATE creature_loot_template SET item=60006 WHERE entry=522 AND item=60005; -- Mor'Ladim (522) - Grey items
UPDATE creature_loot_template SET item=60154 WHERE entry=522 AND item=60144; -- Mor'Ladim (522) - Green items
UPDATE creature_loot_template SET item=60230 WHERE entry=522 AND item=60220; -- Mor'Ladim (522) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=522 AND item=60443; -- Mor'Ladim (522) - Slot Bag items
DELETE FROM creature_loot_template WHERE entry=518 AND item=50502; -- Yowler (518) - Recipes items
UPDATE creature_loot_template SET item=60004 WHERE entry=518 AND item=60003; -- Yowler (518) - Grey items
UPDATE creature_loot_template SET item=60134 WHERE entry=518 AND item=60124; -- Yowler (518) - Green items
UPDATE creature_loot_template SET item=60210 WHERE entry=518 AND item=60200; -- Yowler (518) - Blue items
UPDATE creature_loot_template SET item=60439 WHERE entry=518 AND item=60430; -- Yowler (518) - White items
UPDATE creature_loot_template SET item=60443 WHERE entry=518 AND item=60442; -- Yowler (518) - Slot Bag items
UPDATE creature_loot_template SET item=60123 WHERE entry=446 AND item=60121; -- Redridge Basher (446) - Green items
UPDATE creature_loot_template SET item=60429 WHERE entry=446 AND item=60427; -- Redridge Basher (446) - White items
UPDATE creature_loot_template SET item=60006 WHERE entry=314 AND item=60005; -- Eliza (314) - Grey items
UPDATE creature_loot_template SET item=60146 WHERE entry=314 AND item=60144; -- Eliza (314) - Green items
UPDATE creature_loot_template SET item=60222 WHERE entry=314 AND item=60220; -- Eliza (314) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=314 AND item=60443; -- Eliza (314) - Slot Bag items
UPDATE creature_loot_template SET item=60006 WHERE entry=300 AND item=60005; -- Zzarc' Vul (300) - Grey items
UPDATE creature_loot_template SET item=60150 WHERE entry=300 AND item=60144; -- Zzarc' Vul (300) - Green items
UPDATE creature_loot_template SET item=60226 WHERE entry=300 AND item=60220; -- Zzarc' Vul (300) - Blue items
UPDATE creature_loot_template SET item=60444 WHERE entry=300 AND item=60443; -- Zzarc' Vul (300) - Slot Bag items

-- Clean-up comments after reference tables update based on NPC levels
UPDATE creature_loot_template AS c, reference_loot_template_names AS r SET c.comments=r.name WHERE c.item=r.entry AND c.mincountOrRef<0;
