-- Add your query below.
-- https://github.com/vmangos/core/commit/0dfc8aeac8112881e949c275c2538657fd118471

-- discord
UPDATE `creature_template` SET `MaxLevel`= 60 WHERE `entry` = 8836;

-- Faction, MeleeBaseAttackTime, RangedBaseAttackTime, SpeedWalk, SpeedRun
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='19'; -- Benny Questgiver 1.2
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='29'; -- Dragon Spawn 14, 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='31'; -- Furbolg 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='49'; -- Lesser Succubus 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='55'; -- Mean Ed the Blacksmith 1.2
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='62'; -- Gug Fatcandle 1.2 1.14286
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='65'; -- Peasant Woman 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='71'; -- Rankist 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='73'; -- Veraina the Apothecary 1.2
UPDATE `creature_template` SET `Faction`='25' WHERE `entry`='80'; -- Kobold Laborer 26
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='82'; -- Crazy Leonetti 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='87'; -- Forest Troll Berserker 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='89'; -- Infernal 1.4
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='90'; -- Sea Giant 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='93'; -- Centaur 1.2
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='100'; -- Gruff Swiftbite 1705
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='102'; -- Bronze Dragonspawn 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='105'; -- Tall Strider 1.2
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='106'; -- Kodo Beast 3000 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='107'; -- Raptor 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='108'; -- Green Dragonspawn 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='109'; -- White Dragonspawn 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='111'; -- Priest 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='112'; -- Priestess 1.2
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='120'; -- Forest Stalker 1.2 1.14286
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='125'; -- Riverpaw Overseer (No Aura)
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(89728, 98),(89728, 125),(89728, 453),
(89729, 98),(89729, 125),(89729, 453),
(89731, 98),(89731, 125),(89731, 453),
(89742, 98),(89742, 125),(89742, 453),
(89743, 98),(89743, 125),(89743, 453),
(89745, 98),(89745, 125),(89745, 453);
UPDATE `creature` SET `id` = 0 WHERE `guid` IN (89728,89729,89731,89742,89743,89745); -- could be 2 spawn groups of 3, with 1:1:1
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='128'; -- Angry Programmer Tweedle Dee
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='129'; -- Angry Programmer Tweedle Dum 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='130'; -- Programmer Vendor 1.2
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='149'; -- [UNUSED] Small Black Dragon Whelp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='153'; -- Bethina 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='192'; -- Ice Troll 1.2
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='193'; -- Blue Dragonspawn 1.1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='201'; -- Brittlebones Skeleton 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='211'; -- Ogre 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='221'; -- Dannus 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='224'; -- Zek Marston 1.2
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='229'; -- Vaious 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='230'; -- Thornton Fellwood 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='242'; -- Horras Brackwell 1.2
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='243'; -- [UNUSED] Greeby Mudwhisker TEST
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='262'; -- Half-eaten body 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='280'; -- Placeholder - Jasperlode Mine 1.2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='281'; -- Kobold Tank
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='282'; -- Kobold Spellcaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='283'; -- Kobold Healer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='284'; -- Riding Horse (Brown)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='286'; -- Old Rotten Gill
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='287'; -- Placeholder - Darkhollow Mine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='290'; -- Placeholder - Fargodeep Mine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='291'; -- Placeholder Chest of Drawers
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='303'; -- Placeholder Interactive Doodad - jk
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='304'; -- Riding Horse (Felsteed)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='305'; -- Riding Horse (White Stallion)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='306'; -- Riding Horse (Palomino)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='307'; -- Riding Horse (Pinto)
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='308'; -- Riding Horse (Black Stallion)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='309'; -- Rolf's corpse
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='329'; -- Earth Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='347'; -- Grizzle Halfmane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='351'; -- Peasant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='358'; -- Riding Wolf (Brown)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='359'; -- Riding Wolf (Winter)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='361'; -- Saytr
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='364'; -- Slime
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='365'; -- Scott's Flying Mount
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='370'; -- Boy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='371'; -- Girl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='373'; -- Murak Winterborn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='387'; -- Lord Sammuel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='388'; -- Bromos Murphy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='389'; -- Lord Lantinga
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='393'; -- Tame Wolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='399'; -- Boy - placeholder 05
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='400'; -- Boy - placeholder 06
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='401'; -- Boy - placeholder 07
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='402'; -- Boy - placeholder 08
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='403'; -- Boy - placeholder 09
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='404'; -- Girl - placeholder 01
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='405'; -- Girl - placeholder 02
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='406'; -- Girl - placeholder 03
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='407'; -- Girl - placeholder 04
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='408'; -- Girl - placeholder 05
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='409'; -- Girl - placeholder 06
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='410'; -- Girl - placeholder 07
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='411'; -- Girl - placeholder 08
UPDATE `creature_template` SET `Faction`='93' WHERE `entry`='412'; -- Stitches
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='418'; -- Lesser Voidwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='421'; -- Murphestos
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='444'; -- [UNUSED] Goreripper
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='445'; -- Redridge Alpha
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='450'; -- Defias Renegade Mage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='453'; -- Riverpaw Mystic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='456'; -- Murloc Minor Oracle
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='460'; -- Alamar Grimm
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='462'; -- Vultros
UPDATE `creature_template` SET `SpeedWalk`='1.2' WHERE `entry`='472'; -- Fedfennel
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='506'; -- Sergeant Brashclaw
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='507'; -- Fenros
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='510'; -- Water Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='513'; -- Murloc Netter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='521'; -- Lupos
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='541'; -- Riding Gryphon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='542'; -- Califex of the Deep Wood
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='564'; -- Kobold Slave
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='566'; -- V'rex
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='567'; -- Blacknails
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='574'; -- Naraxis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='601'; -- Capo the Mean
UPDATE `creature_template` SET `Faction`='39', `SpeedWalk`='1' WHERE `entry`='603'; -- Grimtooth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='638'; -- Goblin Mercenary
UPDATE `creature_template` SET `Faction`='17' WHERE `entry`='646'; -- Mr. Smite
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='648'; -- Bridge Worker Trent
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='649'; -- Bridge Worker Dmitri
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='650'; -- Bridge Worker Jess
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='651'; -- Bridge Worker Daniel
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='652'; -- Bridge Worker Matthew
UPDATE `creature_template` SET `Faction`='12', `SpeedWalk`='1' WHERE `entry`='653'; -- Bridge Worker Alex
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='659'; -- El Pollo Grande
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='691'; -- Lesser Water Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='693'; -- Secondary Skill Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='700'; -- Bloodscalp Panther
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='705'; -- Ragged Young Wolf
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='706'; -- Frostmane Troll Whelp
UPDATE `creature_template` SET `Faction`='189' WHERE `entry`='708'; -- Small Crag Boar
UPDATE `creature_template` SET `SpeedWalk`='1.2' WHERE `entry`='711'; -- Ardo Dirtpaw
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1.6' WHERE `entry`='723'; -- Mosh'Ogg Butcher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='742'; -- Green Wyrmkin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='743'; -- Wyrmkin Dreamwalker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='746'; -- Elder Dragonkin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='749'; -- Marsh Murkdweller
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='759'; -- Lost One Hunter
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='761'; -- Lost One Seer
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='762'; -- Lost One Riftseeker
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='763'; -- Lost One Chieftain
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='765'; -- Swampwalker Elder
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='768'; -- Shadow Panther
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='786'; -- Grelin Whitebeard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='808'; -- Grik'nir the Cold
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='831'; -- Sea Crawler
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='836'; -- Durnan Furcutter
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='837'; -- Branstock Khalder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='841'; -- Harl Cutter
UPDATE `creature_template` SET `Faction`='92', `SpeedWalk`='1' WHERE `entry`='852'; -- Feral Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='855'; -- Young Stranglethorn Raptor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='860'; -- Pet Wolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='862'; -- Stonard Explorer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='882'; -- Bone Caster
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='905'; -- Sharptooth Frenzy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='929'; -- Dreadlord Malganis
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='937'; -- Kurzen Jungle Fighter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='938'; -- Kurzen Commando
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='940'; -- Kurzen Medicine Man
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='941'; -- Kurzen Headshrinker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='943'; -- Kurzen Wrangler
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500', `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='947'; -- Rohh the Silent
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='950'; -- Swamp Talker
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300' WHERE `entry`='977'; -- Kurzen War Panther
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='994'; -- Nahr'ek da Howler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='995'; -- Nahr'ek's Pack
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='996'; -- Master Tailor
UPDATE `creature_template` SET `SpeedRun`='1.19048' WHERE `entry`='1013'; -- Mosshide Mystic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1022'; -- Mottled Scytheclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1023'; -- Mottled Razormaw
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='1035'; -- Dragonmaw Swamprunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1036'; -- Dragonmaw Centurion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1038'; -- Dragonmaw Shadowwarder
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1045'; -- Red Dragonspawn
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1046'; -- Red Wyrmkin
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1047'; -- Red Scalebane
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1048'; -- Scalebane Lieutenant
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1049'; -- Wyrmkin Firebrand
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1050'; -- Scalebane Royal Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1054'; -- Dark Iron Demolitionist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1055'; -- Dreamhunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1056'; -- Emerald Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1057'; -- Dragonmaw Bonewarder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1063'; -- Jade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1065'; -- Riverpaw Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1067'; -- Riverpaw Scavenger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1068'; -- Gorn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1076'; -- Merrin Rockweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1077'; -- Prospector Whelgar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1078'; -- Ormer Ironbraid
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='1081'; -- Mire Lord
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1087'; -- Sawtooth Snapper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1096'; -- Venture Co. Geologist
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1097'; -- Venture Co. Mechanic
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1098'; -- Watcher Merant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1099'; -- Watcher Gelwin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1100'; -- Watcher Selkin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1101'; -- Watcher Thayer
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='1106'; -- Lost One Cook
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1112'; -- Leech Widow
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1114'; -- Jungle Thunderer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1130'; -- Bjarn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1132'; -- Timber
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1133'; -- Starving Winter Wolf
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1137'; -- Edan the Howler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1140'; -- Razormaw Matriarch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1154'; -- Marek Ironheart
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1155'; -- Kelt Thomasin
UPDATE `creature_template` SET `Faction`='371', `SpeedWalk`='1' WHERE `entry`='1156'; -- Vyrin Swiftwind
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1171'; -- Dark Iron Guerrilla
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1187'; -- Daryl the Youngling
UPDATE `creature_template` SET `Faction`='189' WHERE `entry`='1192'; -- Elder Mountain Boar
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='1193'; -- Loch Frenzy
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `entry`='1199'; -- Juvenile Snow Leopard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1210'; -- Chok'sul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1214'; -- Aldren Cordon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1227'; -- Rygal Rocknell
UPDATE `creature_template` SET `Faction`='80', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1233'; -- [UNUSED] Shaethis Darkoak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1236'; -- Kobold Digger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1260'; -- Great Father Arctikus
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='1262'; -- White Ram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1271'; -- Old Icebeard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1322'; -- Maxton Strang
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1344'; -- Prospector Ironband
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1345'; -- Magmar Fellhew
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='1352'; -- Fluffy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1353'; -- Sarltooth
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='1354'; -- Apprentice Soren
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1365'; -- Goli Krumn
UPDATE `creature_template` SET `Faction`='1618' WHERE `entry`='1379'; -- Miran
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='1380'; -- Saean
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1384'; -- Z'tark
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1388'; -- Vagash
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1392'; -- Xon
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1398'; -- Boss Galgosh
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1399'; -- Magosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1403'; -- Mogwah
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1406'; -- Ghok
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1407'; -- Sranda
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1408'; -- Thragg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1409'; -- Moorah Stormhoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1424'; -- Master Digger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1468'; -- Kargh Steelspine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1488'; -- Zanzil Zombie
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1489'; -- Zanzil Hunter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1490'; -- Zanzil Witch Doctor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1491'; -- Zanzil Naga
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='1494'; -- Negolash
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1497'; -- Gunther Arcanus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1502'; -- Wretched Zombie
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1505'; -- Night Web Spider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1511'; -- Enraged Silverback Gorilla
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1514'; -- Mokk the Savage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1516'; -- Konda
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='0.857143' WHERE `entry`='1520'; -- Rattlecage Soldier
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1522'; -- Darkeye Bonecaster
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='0.857143' WHERE `entry`='1523'; -- Cracked Skull Soldier
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1527'; -- Hungering Dead
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1528'; -- Shambling Horror
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1533'; -- Tormented Spirit
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1541'; -- Vile Fin Murloc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1543'; -- Vile Fin Puddlejumper
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1544'; -- Vile Fin Minor Oracle
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1545'; -- Vile Fin Muckdweller
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1550'; -- Thrashtail Basilisk
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='1552'; -- Scale Belly
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1555'; -- Vicious Night Web Spider
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1557'; -- Elder Mistvale Gorilla
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1565'; -- Bloodsail Sea Dog
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='1574'; -- Mage 1
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='1575'; -- Mage 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1576'; -- Mage 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1577'; -- Mage 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1578'; -- Mage 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1579'; -- Mage 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1580'; -- Mage 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1581'; -- Warlock 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1582'; -- Warlock 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1583'; -- Warlock 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1584'; -- Warlock 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1585'; -- Warlock 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1586'; -- Warlock 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1587'; -- Warlock 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1588'; -- Shaman 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1589'; -- Shaman 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1590'; -- Shaman 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1591'; -- Shaman 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1592'; -- Shaman 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1593'; -- Shaman 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1594'; -- Shaman 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1595'; -- Rogue 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1596'; -- Rogue 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1597'; -- Rogue 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1598'; -- Rogue 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1599'; -- Rogue 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1600'; -- Rogue 30
UPDATE `creature_template` SET `Faction`='7', `SpeedWalk`='1' WHERE `entry`='1601'; -- Rogue 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1602'; -- Paladin 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1603'; -- Paladin 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1604'; -- Druid 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1605'; -- Paladin 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1606'; -- Paladin 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1607'; -- Druid 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1608'; -- Druid 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1609'; -- Druid 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1613'; -- Paladin 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1614'; -- Paladin 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1615'; -- Paladin 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1616'; -- Druid 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1617'; -- Druid 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1618'; -- Hunter 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1619'; -- Druid 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1620'; -- Hunter 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1621'; -- Hunter 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1622'; -- Priest 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1623'; -- Hunter 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1624'; -- Priest 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1625'; -- Hunter 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1626'; -- Priest 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1627'; -- Priest 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1628'; -- Hunter 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1629'; -- Priest 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1631'; -- Hunter 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1633'; -- Priest 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1634'; -- Priest 40
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1635'; -- Warrior 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1636'; -- Warrior 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1637'; -- Warrior 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1638'; -- Warrior 15
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1639'; -- Warrior 20
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1640'; -- Warrior 30
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1641'; -- Warrior 40
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1653'; -- Bloodsail Elder Magus
UPDATE `creature_template` SET `SpeedWalk`='0.777776', `SpeedRun`='0.857143' WHERE `entry`='1654'; -- Gregor Agamand
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1655'; -- Nissa Agamand
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1656'; -- Thurman Agamand
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1657'; -- Devlin Agamand
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='1659'; -- [UNUSED] Coleman Mills
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1664'; -- Captain Vachon
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1667'; -- Meven Korgal
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='0.857143' WHERE `entry`='1674'; -- Rot Hide Gnoll
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1675'; -- Rot Hide Mongrel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1685'; -- Xandar Goodbeard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1686'; -- Irene Sureshot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1687'; -- Cliff Hadin
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1688'; -- Night Web Matriarch
UPDATE `creature_template` SET `Faction`='189' WHERE `entry`='1689'; -- Scarred Crag Boar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1700'; -- Paxton Ganter
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='1713'; -- Elder Shadowmaw Panther
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1714'; -- SAVE Defias Lifer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1720'; -- Bruegal Ironknuckle
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='1723'; -- Stormwind Citizen
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='1724'; -- Stormwind Citizen Masculine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1730'; -- Goblin Buzzcutter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1749'; -- Lady Katrana Prestor
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='1753'; -- Maggot Eye
UPDATE `creature_template` SET `Faction`='34' WHERE `entry`='1755'; -- Marzon the Silent Blade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1757'; -- Mega Rabbit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1764'; -- Greater Feral Spirit
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='1776'; -- Magtoor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1798'; -- Tortured Soul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1801'; -- Blood Wraith
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1806'; -- Vile Slime
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1808'; -- Devouring Ooze
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='1812'; -- Rotting Behemoth
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='1813'; -- Decaying Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1819'; -- Foulmaw Hydra
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1820'; -- Elder Foulmaw Hydra
UPDATE `creature_template` SET `Faction`='67' WHERE `entry`='1837'; -- Scarlet Judge
UPDATE `creature_template` SET `Faction`='67' WHERE `entry`='1838'; -- Scarlet Interrogator
UPDATE `creature_template` SET `Faction`='67' WHERE `entry`='1839'; -- Scarlet High Clerist
UPDATE `creature_template` SET `Faction`='67' WHERE `entry`='1841'; -- Scarlet Executioner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1842'; -- Highlord Taelan Fordring
UPDATE `creature_template` SET `Faction`='67' WHERE `entry`='1843'; -- Foreman Jerris
UPDATE `creature_template` SET `Faction`='67', `SpeedWalk`='1' WHERE `entry`='1844'; -- Foreman Marcrid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1845'; -- High Protector Tarsen
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000' WHERE `entry`='1848'; -- Lord Maldazzar
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='1850'; -- Putridius
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1851'; -- The Husk
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1853'; -- Darkmaster Gandling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1857'; -- Pissed Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1858'; -- Pissed not a Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1861'; -- Greater Voidwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1862'; -- Lesser Netherwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1864'; -- Greater Succubus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1879'; -- Noma Bluntnose
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1880'; -- Berte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1881'; -- Evalyn
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1892'; -- Moonrage Watcher
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1910'; -- Muad
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='1921'; -- Combat Dummy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1925'; -- Heat Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1926'; -- Snow Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1927'; -- Good Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1928'; -- Bad Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1929'; -- Earth Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1930'; -- Steel Miser
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1932'; -- Black Sheep
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1934'; -- Tirisfal Farmer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1935'; -- Tirisfal Farmhand
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1945'; -- Tree Form 0.33
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='1960'; -- Pilot Hammerfoot
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='1961'; -- Mangeclaw
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='1973'; -- Ravenclaw Guardian
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='1974'; -- Ravenclaw Drudger
UPDATE `creature_template` SET `Faction`='98' WHERE `entry`='1978'; -- Deathstalker Erland
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='1979'; -- TEST WOLF (ALPHA FIRST)
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='1980'; -- TEST WOLF (ALPHA SECOND)
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='1987'; -- Webwood Creeper UNUSED
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1990'; -- Gremlin
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1991'; -- Jaxil Rye
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='1993'; -- Greenpaw
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='1994'; -- Githyiss the Vile
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2001'; -- Giant Webwood Spider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2002'; -- Rascal Sprite
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2003'; -- Shadow Sprite
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2004'; -- Dark Sprite
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2005'; -- Vicious Grell
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2006'; -- Gnarlpine Ursa
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2007'; -- Gnarlpine Gardener
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2009'; -- Gnarlpine Shaman
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2010'; -- Gnarlpine Defender
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2011'; -- Gnarlpine Augur
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2012'; -- Gnarlpine Pathfinder
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2013'; -- Gnarlpine Avenger
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='2014'; -- Gnarlpine Totemic
UPDATE `creature_template` SET `SpeedWalk`='1.38889', `SpeedRun`='0.857143' WHERE `entry`='2019'; -- Bloodfeather Fury
UPDATE `creature_template` SET `SpeedWalk`='1.38889', `SpeedRun`='0.857143' WHERE `entry`='2020'; -- Bloodfeather Wind Witch
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='2021'; -- Bloodfeather Matriarch
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2025'; -- Timberling Bark Ripper
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2027'; -- Timberling Trampler
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2029'; -- Timberling Mire Beast
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='2030'; -- Elder Timberling
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='2034'; -- Feral Nightsaber
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='2038'; -- Lord Melenas
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='2039'; -- Ursal the Mauler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2040'; -- Haggatha the Crone
UPDATE `creature_template` SET `Faction`='78' WHERE `entry`='2045'; -- Gunther's Minion
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2052'; -- Nag
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2053'; -- Haggard Refugee
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2054'; -- Sickly Refugee
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2056'; -- Ravenclaw Apparition
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2057'; -- Huldar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2080'; -- Denalan
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='2087'; -- [UNUSED] Ambermill Citizen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2090'; -- Ma'ruk Wyrmscale
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2091'; -- Chieftain Nek'rosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2095'; -- Billy the Street Urchin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2107'; -- Gaerolas Talvethren
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2108'; -- Garneg Charskull
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2109'; -- Steam Tank
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2138'; -- Warrior 25
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2149'; -- Dark Iron Raider
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='2151'; -- Moon Priestess Amara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2158'; -- Gravelflint Scout
UPDATE `creature_template` SET `Faction`='59', `SpeedWalk`='1' WHERE `entry`='2159'; -- Gravelflint Bonesnapper
UPDATE `creature_template` SET `Faction`='59', `SpeedWalk`='1' WHERE `entry`='2160'; -- Gravelflint Geomancer
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='2166'; -- Oakenscowl
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='2172'; -- Strider Clutchmother
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='2173'; -- Reef Frenzy
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='2174'; -- Coastal Frenzy
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='2175'; -- Shadowclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2179'; -- Stormscale Wave Rider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2180'; -- Stormscale Siren
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='2188'; -- Deep Sea Threshadon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2189'; -- Vile Sprite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2190'; -- Wild Grell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2191'; -- Licillin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2212'; -- Deth'ryll Satyr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2213'; -- Deth'ryll Shadowstalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2217'; -- Undead Druid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2218'; -- Undead Hunter Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2219'; -- Undead Shaman Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2221'; -- Undead Tailor Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2222'; -- Undead Mining Trainer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='2224'; -- Wind Rider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2242'; -- Syndicate Spy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2246'; -- Syndicate Assassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2247'; -- Syndicate Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2251'; -- Giant Yeti
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2252'; -- Crushridge Ogre
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2253'; -- Crushridge Brute
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2254'; -- Crushridge Mauler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2255'; -- Crushridge Mage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2256'; -- Crushridge Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2257'; -- Mug'thol
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='1.14286' WHERE `entry`='2258'; -- Stone Fury
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2271'; -- Dalaran Shield Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2272'; -- Dalaran Theurgist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2275'; -- Enraged Stanley
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2279'; -- Alliance Battleguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2280'; -- Horde Battleguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2281'; -- Baelish Frostbane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2282'; -- [PH] Orgrun Iceflow
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='2283'; -- Ravenclaw Regent
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2286'; -- Bow Guy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2287'; -- Crushridge Warmonger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2288'; -- Skracher Mudmuzzle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2289'; -- Connor McCoy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2290'; -- Bertran Keldrake
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2291'; -- Corbin Halman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2292'; -- Reginald Berry
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2294'; -- Jaynice Sillestan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2298'; -- Dolthar Stonefoot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2302'; -- Aethalas
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2304'; -- Captain Ironhill
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2316'; -- Gol'dir
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2317'; -- Elysa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2319'; -- Syndicate Wizard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2320'; -- Nagaz
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='2321'; -- Foreststrider Fledgling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2325'; -- Undead First Aid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2332'; -- Valdred Moray
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2333'; -- Henchman Valik
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2336'; -- Dark Strand Fanatic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2337'; -- Dark Strand Voidcaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2344'; -- Dun Garok Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='2372'; -- Mudsnout Gnoll
UPDATE `creature_template` SET `SpeedWalk`='1.2' WHERE `entry`='2373'; -- Mudsnout Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2374'; -- Torn Fin Muckdweller
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28571' WHERE `entry`='2375'; -- Torn Fin Coastrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2411'; -- Ricter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2412'; -- Alina
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2413'; -- Dermot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2414'; -- Kegan Darkmar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2415'; -- Warden Belamoore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2416'; -- Crushridge Plunderer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2417'; -- Grel'borg the Miser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2420'; -- Targ
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2421'; -- Muckrake
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2422'; -- Glommus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2423'; -- Lord Aliden Perenolde
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2431'; -- Jailor Borhuin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2433'; -- Helcular's Remains
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2440'; -- Drunken Footpad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2452'; -- Skhowl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2453'; -- Lo'Grosh
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2454'; -- Skeletal Fiend (Enraged Form)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2472'; -- Flamescale Drake
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2475'; -- Sloth
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2476'; -- Large Loch Crocolisk
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2477'; -- Gradok
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2478'; -- Haren Swifthoof
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2479'; -- Sludge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2480'; -- Bro'kin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2524'; -- Mountaineer Haggis
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2528'; -- Mountaineer Haggil
UPDATE `creature_template` SET `MeleeBaseAttackTime`='4000', `RangedBaseAttackTime`='4000' WHERE `entry`='2531'; -- Minion of Morganth
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2535'; -- Maury "Club Foot" Wilkins
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2536'; -- Jon-Jon the Crow
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='2540'; -- Dalaran Serpent
UPDATE `creature_template` SET `Faction`='74' WHERE `entry`='2541'; -- Lord Sakrasis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2543'; -- Archmage Ansirem Runeweaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2545'; -- "Pretty Boy" Duncan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2552'; -- Witherbark Troll
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2554'; -- Witherbark Axe Thrower
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2555'; -- Witherbark Witch Doctor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2556'; -- Witherbark Headhunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2558'; -- Witherbark Berserker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2564'; -- Boulderfist Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2572'; -- Drywhisker Kobold
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2575'; -- Dark Iron Supplier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2577'; -- Dark Iron Shadowcaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2581'; -- Dabyrie Militia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2582'; -- Dabyrie Laborer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2584'; -- Stromgarde Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2586'; -- Syndicate Highwayman
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='2587'; -- Syndicate Pathstalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2588'; -- Syndicate Prowler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2589'; -- Syndicate Mercenary
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2593'; -- Rough Stone Elemental
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='2597'; -- Lord Falconcrest
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='2598'; -- Darbel Montrose
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='2599'; -- Otto
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2600'; -- Singer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1.6' WHERE `entry`='2601'; -- Foulbelly
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2603'; -- Kovork
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2604'; -- Molok the Crusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2605'; -- Zalas Witherbark
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2606'; -- Nimar the Slayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2607'; -- Prince Galen Trollbane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2610'; -- Shakes O'Breen
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='2611'; -- Fozruk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2612'; -- Lieutenant Valorcall
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2618'; -- Hammerfall Peon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2619'; -- Hammerfall Grunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2621'; -- Hammerfall Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2636'; -- Blackwater Deckhand
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2637'; -- Syndicate Bomb
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2665'; -- Proximity Bomb
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='2671'; -- Mechanical Squirrel
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='2673'; -- Target Dummy
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='2674'; -- Advanced Target Dummy
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2683'; -- Namdo Bizzfizzle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2688'; -- Ruppo Zipcoil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2689'; -- Hill Giant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2690'; -- Hill Giant Warden
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2698'; -- George Candarte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2701'; -- Dustbelcher Ogre
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2702'; -- Felhunter Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2703'; -- Zengu
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2706'; -- Tor'gan
UPDATE `creature_template` SET `Faction`='312', `SpeedWalk`='2.8', `RangedBaseAttackTime`='2000' WHERE `entry`='2707'; -- Shadra
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2709'; -- Imp Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2710'; -- Voidwalker Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2712'; -- Quae
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2713'; -- Kinelory
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2715'; -- Dustbelcher Brute
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2716'; -- Dustbelcher Wyrmhunter
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2717'; -- Dustbelcher Mauler
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2718'; -- Dustbelcher Shaman
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2719'; -- Dustbelcher Lord
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='2720'; -- Dustbelcher Ogre Mage
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='2725'; -- Scalding Whelp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2728'; -- Feral Crag Coyote
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2730'; -- Rabid Crag Coyote
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2733'; -- Apothecary Jorell
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='2736'; -- Greater Rock Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2738'; -- Stromgarde Cavalryman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2741'; -- Shadowforge Excavator
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2744'; -- Shadowforge Commander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2746'; -- Stonevault Warden
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2600' WHERE `entry`='2748'; -- Archaedas
UPDATE `creature_template` SET `Faction`='54', `RangedBaseAttackTime`='2000' WHERE `entry`='2749'; -- Siege Golem
UPDATE `creature_template` SET `Faction`='54', `SpeedWalk`='1' WHERE `entry`='2751'; -- War Golem
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='2752'; -- Rumbler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2753'; -- Barnabus
UPDATE `creature_template` SET `SpeedWalk`='1.66667' WHERE `entry`='2755'; -- Myzrael
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2757'; -- Blacklash
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='2759'; -- Hematus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2762'; -- Thundering Exile
UPDATE `creature_template` SET `Faction`='778', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.777776' WHERE `entry`='2763'; -- Thenan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2764'; -- Sleeby
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2765'; -- Znort
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2766'; -- Lolo the Lookout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2767'; -- First Mate Nilzlix
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='2768'; -- Professor Phizzlethorpe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2769'; -- Captain Steelgut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2771'; -- Drum Fel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2772'; -- Korin Fel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2774'; -- Doctor Draxlegauge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2775'; -- Daggerspine Marauder
UPDATE `creature_template` SET `Faction`='41', `SpeedWalk`='1.55556' WHERE `entry`='2776'; -- Vengeful Surge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2778'; -- Deckhand Moishe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2780'; -- Caretaker Nevlin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2781'; -- Caretaker Weston
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2782'; -- Caretaker Alaric
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2785'; -- Theldurin the Lost
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2787'; -- Zaruk
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='2791'; -- Enraged Rock Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2792'; -- Gor'mul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2793'; -- Kor'gresh Coldrage
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='2794'; -- Summoned Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2797'; -- Hovrak Gutrender
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='2801'; -- Tresa MacGregor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2805'; -- Deneb Walker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2806'; -- Bale
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2807'; -- Daggerspine Wavecaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2809'; -- Boar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2817'; -- Rigglefuzz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2818'; -- Slagg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2819'; -- Tunkk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2820'; -- Graud
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2821'; -- Keena
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2830'; -- Buzzard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2833'; -- DEBUG - Gossip Gryphon Master
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1', `SpeedRun`='1.42857', `RangedBaseAttackTime`='1000' WHERE `entry`='2850'; -- Broken Tooth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2851'; -- Urda
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2852'; -- Enslaved Druid of the Talon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2860'; -- Sigrun Ironhew
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2861'; -- Gorrik
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2862'; -- Warrior 21
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2863'; -- Warrior 22
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2864'; -- Warrior 23
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2865'; -- Warrior 24
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2866'; -- Warrior 26
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2867'; -- Warrior 27
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2868'; -- Warrior 28
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2869'; -- Warrior 29
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2870'; -- [UNUSED] Henria Derth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2871'; -- [PH] Tallstrider Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2873'; -- [PH] Raptor Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2874'; -- [PH] Horse Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2875'; -- [PH] Gorilla Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2877'; -- [PH] Crawler Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2886'; -- Ranged Skills Trainer
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='2887'; -- Prismatic Exile
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2888'; -- Garek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2889'; -- Stonevault Trogg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2890'; -- Stonevault Scout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2891'; -- Stonevault Skullthumper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2892'; -- Stonevault Seer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2893'; -- Stonevault Bonesnapper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2894'; -- Stonevault Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2896'; -- [PH] Alliance Magic Skills Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2899'; -- [PH] Alliance Toughness/Resist Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2906'; -- Dustbelcher Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2907'; -- Dustbelcher Mystic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2908'; -- Grawl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2909'; -- Hammertoe Grez
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2910'; -- Prospector Ryedol
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2915'; -- Hammertoe's Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2917'; -- Prospector Remtravel
UPDATE `creature_template` SET `Faction`='41' WHERE `entry`='2919'; -- Fam'retor Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2932'; -- Magregan Deepshadow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2935'; -- [PH] Demon Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2938'; -- Aldric Hunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2939'; -- Jackson Bayne
UPDATE `creature_template` SET `Faction`='55' WHERE `entry`='2941'; -- Lanie Reed
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='2942'; -- Dylan Bissel
UPDATE `creature_template` SET `Faction`='55' WHERE `entry`='2943'; -- Ransin Donner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2944'; -- Boss Tho'grun
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2945'; -- Murdaloc
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='2946'; -- Puppet of Helcular
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2994'; -- Ancestral Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3053'; -- Synge
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3056'; -- Ghost Howl
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='3094'; -- Unseen
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3098'; -- Mottled Boar
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3101'; -- Vile Familiar
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3102'; -- Felstalker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3103'; -- Makrura Clacker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3104'; -- Makrura Shellhide
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3105'; -- Makrura Snapclaw
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3106'; -- Pygmy Surf Crawler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3107'; -- Surf Crawler
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3111'; -- Razormane Quilboar
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3112'; -- Razormane Scout
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3113'; -- Razormane Dustrunner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='0.857143' WHERE `entry`='3114'; -- Razormane Battleguard
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300' WHERE `entry`='3117'; -- Dustwind Savage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3118'; -- Dustwind Storm Witch
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3119'; -- Kolkar Drudge
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.857143' WHERE `entry`='3120'; -- Kolkar Outrunner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3125'; -- Clattering Scorpid
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3128'; -- Kul Tiras Sailor
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3129'; -- Kul Tiras Marine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3130'; -- Thunder Lizard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3131'; -- Lightning Hide
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3141'; -- Makrura Elder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3146'; -- Gurek
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3154'; -- Jen'shan
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3159'; -- Kzan Thornslash
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3161'; -- Rarc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3180'; -- Dark Iron Entrepreneur
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3183'; -- Yarrog Baneshadow
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3190'; -- Rhinag
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3192'; -- Lieutenant Benedict
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3193'; -- Misha Tor'kren
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3196'; -- Burning Blade Neophyte
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3198'; -- Burning Blade Apprentice
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3200'; -- Eric's AAA Special Vendor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3203'; -- Fizzle Darkstorm
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3204'; -- Gazz'uz
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3205'; -- Zalazane
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3206'; -- Voodoo Troll
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='3207'; -- Hexed Troll
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3208'; -- Margoz
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3228'; -- Corrupted Surf Crawler
UPDATE `creature_template` SET `Faction`='29' WHERE `entry`='3230'; -- Nazgrel
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='3241'; -- Savannah Patriarch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3253'; -- Silithid Harvester
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3259'; -- Bristleback Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3262'; -- Bristleback Mystic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3263'; -- Bristleback Geomancer
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3276'; -- Witchwing Harpy
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3277'; -- Witchwing Roguefeather
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3278'; -- Witchwing Slayer
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3279'; -- Witchwing Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3280'; -- Witchwing Windcaller
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3281'; -- Sarkoth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3282'; -- Venture Co. Mercenary
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3285'; -- Venture Co. Peon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3286'; -- Venture Co. Overseer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3287'; -- Hana'zua
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3289'; -- Spirit of Minshina
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3297'; -- Sen'jin Watcher
UPDATE `creature_template` SET `Faction`='123' WHERE `entry`='3301'; -- Morgan Ladimore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3337'; -- Kargal Battlescar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3343'; -- Grelkor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3379'; -- Burning Blade Bruiser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3380'; -- Burning Blade Acolyte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3385'; -- Theramore Marine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3386'; -- Theramore Preserver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3392'; -- Prospector Khazgorm
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='3394'; -- Barak Kodobane
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='0.666668' WHERE `entry`='3395'; -- Verog the Dervish
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3398'; -- Gesharahan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3416'; -- Savannah Matriarch
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='3417'; -- Living Flame
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3421'; -- Feegly the Exiled
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3434'; -- Nak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3435'; -- Lok Orcbane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3436'; -- Kuz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3437'; -- Crekori Mudwater
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3439'; -- Wizzlecrank's Shredder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3445'; -- Supervisor Lugwizzle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3451'; -- Pilot Wizzlecrank
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='3452'; -- Serena Bloodfeather
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3454'; -- Cannoneer Smythe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3457'; -- Razormane Stalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3458'; -- Razormane Seer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3459'; -- Razormane Warfrenzy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3460'; -- Mud Crawler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3462'; -- Elder Barrens Giraffe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3465'; -- Gilthares Firebough
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3471'; -- Tinkerer Sniggles
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3472'; -- Washte Pawne
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3473'; -- Owatanka
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3474'; -- Lakota'mani
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='3475'; -- Echeyakee
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3476'; -- Isha Awak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3519'; -- Sentinel Arynia Cloudsbreak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3521'; -- Ak'Zeloth
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3533'; -- Moonrage Leatherworker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3534'; -- Wallace the Blind
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='3535'; -- Blackmoss the Fetid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3559'; -- Temp Poisoning Vendor Dwarf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3564'; -- Temp Reagent Vendor Dwarf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3568'; -- Mist
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='1892' WHERE `entry`='2000'; -- Riding Bat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3575'; -- Praenus Raxxeus
UPDATE `creature_template` SET `SpeedWalk`='1.5' WHERE `entry`='3582'; -- Aman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3584'; -- Therylune
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='3586'; -- Miner Johnson
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3606'; -- Alanna Raveneye
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3619'; -- Ghost Saber
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3625'; -- Rarck
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3636'; -- Deviate Ravager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3637'; -- Deviate Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3642'; -- Deviate Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3650'; -- Asterion
UPDATE `creature_template` SET `Faction`='270', `SpeedWalk`='1' WHERE `entry`='3654'; -- Mutanus the Devourer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3655'; -- Mad Magglish
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3660'; -- Athrikus Narassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3661'; -- Balthule Shadowstrike
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3662'; -- Delmanis the Hated
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3664'; -- Ilkrud Magthrull
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3668'; -- Tortured Highborne Soul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3669'; -- Lord Cobrahn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3670'; -- Lord Pythas
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3671'; -- Lady Anacondra
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3672'; -- Boahn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3673'; -- Lord Serpentis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3674'; -- Skum
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3678'; -- Disciple of Naralex
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3679'; -- Naralex
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3682'; -- Vrang Wildgore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3692'; -- Volcor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3694'; -- Sentinel Selarin
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='3696'; -- Ran Bloodtooth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3697'; -- Kyln Longclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3698'; -- Bolyun
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3699'; -- Nerra
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3707'; -- Ken'jai
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3708'; -- Gruna
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3722'; -- Mystlash Flayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3735'; -- Apothecary Falthis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3736'; -- Darkslayer Mordenthal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3772'; -- Lesser Felguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3773'; -- Akkrilus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3774'; -- Felslayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3777'; -- Aelyssa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3778'; -- Myielea Starwhisper
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='3781'; -- Shadethicket Wood Shaper
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='3783'; -- Shadethicket Raincaller
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3792'; -- Terrowulf Packlord
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3793'; -- Initiate Druid
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='3794'; -- Druid of the Talon
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='3795'; -- Druid of the Claw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3796'; -- Druid of the Wild
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3826'; -- Rabid Ghostpaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3832'; -- Cenarion Steward
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3836'; -- Mountaineer Pebblebitty
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3837'; -- Riding Hippogryph
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3839'; -- Voidlasher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3840'; -- Druid of the Fang
UPDATE `creature_template` SET `Faction`='80', `SpeedWalk`='1' WHERE `entry`='3843'; -- Anaya
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3849'; -- Deathstalker Adamant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3850'; -- Sorcerer Ashcrombe
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3851'; -- Shadowfang Whitescalp
UPDATE `creature_template` SET `Faction`='24', `SpeedWalk`='1' WHERE `entry`='3852'; -- Shadowfang Bloodhowler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3853'; -- Shadowfang Moonwalker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3854'; -- Shadowfang Wolfguard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3855'; -- Shadowfang Darksoul
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3857'; -- Shadowfang Glutton
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3859'; -- Shadowfang Ragetooth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3860'; -- Shadowfang Tainted One
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3863'; -- Lupine Horror
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3866'; -- Vile Bat
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3868'; -- Blood Seeker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3869'; -- Lesser Gargoyle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3870'; -- Stone Sleeper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='3872'; -- Deathsworn Captain
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3873'; -- Tormented Officer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3875'; -- Haunted Servitor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3876'; -- Traumatized Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3877'; -- Wailing Guardsman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3878'; -- Magthrull's Doomguard
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='3879'; -- Dark Strand Assassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3885'; -- Sentinel Velene Starstrike
UPDATE `creature_template` SET `RangedBaseAttackTime`='3200' WHERE `entry`='3886'; -- Razorclaw the Butcher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3887'; -- Baron Silverlaine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3890'; -- Brakgul Deathbringer
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='3893'; -- Forsaken Scout
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='3896'; -- Captain Hart
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='3897'; -- Krolg
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='3898'; -- Aligar the Tormentor
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='3899'; -- Balizar the Umbrage
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='3900'; -- Caedakar the Vicious
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='3904'; -- Searing Totem IV
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='3913'; -- Stoneclaw Totem IV
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='3914'; -- Rethilgore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3916'; -- Shael'dryn
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='3917'; -- Befouled Water Elemental
UPDATE `creature_template` SET `Faction`='24', `RangedBaseAttackTime`='2000' WHERE `entry`='3927'; -- Wolf Master Nandos
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='3932'; -- Bloodtooth Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3938'; -- Roth Bluntblade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3940'; -- Taneel Darkwood
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3941'; -- Uthil Mooncall
UPDATE `creature_template` SET `Faction`='35', `RangedBaseAttackTime`='2200', `SpeedWalk`='1' WHERE `entry`='3946'; -- Velinde Starsong
UPDATE `creature_template` SET `Faction`='118', `SpeedWalk`='1.55556', `SpeedRun`='0.428571' WHERE `entry`='3950'; -- Minor Water Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3951'; -- Bhaldaran Ravenshade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3955'; -- Shandrina
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3956'; -- Harklan Moongrove
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3957'; -- Jainay Featherbreeze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3960'; -- Ulthaan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3963'; -- Danlaar Nightstride
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3964'; -- Kylanna
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3965'; -- Cylania Rootstalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3966'; -- Kaleem
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='3968'; -- Sentry Totem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3971'; -- Agro 5
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3972'; -- Agro 7
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3973'; -- Agro 10
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3986'; -- Sarilus Foulborne
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='3994'; -- Keeper Albagorm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3997'; -- Venture Co. Overboss
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='3998'; -- Windshear Vermin
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='4001'; -- Windshear Tunnel Rat
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='4002'; -- Windshear Stonecutter
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4011'; -- Young Pridewing
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4012'; -- Pridewing Wyvern
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4013'; -- Pridewing Skyhunter
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4014'; -- Pridewing Consort
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4015'; -- Pridewing Patriarch
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='4023'; -- Bloodfury Roguefeather
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='4024'; -- Bloodfury Slayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='4030'; -- Vengeful Ancient
UPDATE `creature_template` SET `Faction`='91' WHERE `entry`='4033'; -- Charred Stone Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4039'; -- Dinnis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4040'; -- Cave Stalker
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='4042'; -- Singed Basilisk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4049'; -- Seereth Stonebreak
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4055'; -- Mirkfallon Glade Strider
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='4056'; -- Mirkfallon Keeper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4062'; -- Dark Iron Bombardier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4063'; -- Feeboz
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600' WHERE `entry`='4066'; -- Nal'taszar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4069'; -- Venture Co. Planner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4098'; -- Galak Pack Runner
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='4100'; -- Screeching Harpy
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='4101'; -- Screeching Roguefeather
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='4104'; -- Screeching Windcaller
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4115'; -- [UNUSED] Gravelsnout Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4121'; -- Wandering Boulderkin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4149'; -- Kesteryth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4153'; -- Kysandia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4157'; -- Kitari Farseeker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4172'; -- Anadyia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4174'; -- Siannai
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4176'; -- Ki'rasia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4178'; -- Shaia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4179'; -- Freillania
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4206'; -- Talar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4224'; -- Talegon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4234'; -- Andrus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4237'; -- Urthoniir
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4239'; -- Lewin Starfeather
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4242'; -- Frostsaber Companion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4245'; -- Mistrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4246'; -- Moonprowler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4247'; -- Stonepaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4253'; -- Bear Form (Night Elf Druid)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4260'; -- Venture Co. Shredder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4261'; -- Bear Form (Tauren Druid)
UPDATE `creature_template` SET `Faction`='312' WHERE `entry`='4263'; -- Deepmoss Hatchling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4264'; -- Deepmoss Matriarch
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4268'; -- Riding Wolf (Gray)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4269'; -- Riding Horse (Chestnut)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4270'; -- Riding Wolf (Red)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4271'; -- Riding Wolf (DarkGray)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4272'; -- Riding Wolf (DarkBrown)
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='4273'; -- Keeper Ordanus
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4274'; -- Fenrus the Devourer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4275'; -- Archmage Arugal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4277'; -- Eye of Kilrogg
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4278'; -- Commander Springvale
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4279'; -- Odo the Blindwatcher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4293'; -- Scarlet Scryer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4317'; -- Nyse
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4320'; -- Caelyb
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4322'; -- Corthryn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4333'; -- Firemane Devourer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4339'; -- Brimgore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4340'; -- Mirallia
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='4362'; -- Mirefin Coastrunner
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4364'; -- Strashaz Warrior
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4366'; -- Strashaz Serpent Guard
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4368'; -- Strashaz Myrmidon
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4370'; -- Strashaz Sorceress
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4371'; -- Strashaz Siren
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='4374'; -- Strashaz Hydra
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4377'; -- Darkmist Hatchling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4395'; -- Blistering Swamp Ooze
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4400'; -- Mudrock Snapjaw
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4408'; -- Aquatic Form (Night Elf Druid)
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='4409'; -- Gatekeeper Kordurus
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='4410'; -- Aquatic Form (Tauren Druid)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4419'; -- Race Master Kronkrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4429'; -- Goblin Pit Crewman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4430'; -- Gnome Pit Crewman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4443'; -- Wazza
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4444'; -- Deathstalker Vincent
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='4445'; -- Griznak
UPDATE `creature_template` SET `Faction`='35', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4446'; -- Mazzer Stripscrew
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='4449'; -- Crazzle Sprysprocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4452'; -- Kravel Koalbeard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4453'; -- Wizzle Brassbolts
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4454'; -- Fizzle Brassbolts
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000' WHERE `entry`='4476'; -- Screaming Haunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4479'; -- Fardel Dabyrie
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4481'; -- Marcel Dabyrie
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4482'; -- Vilebranch Wolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4483'; -- Moktar Krin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4487'; -- Kodiak
UPDATE `creature_template` SET `Faction`='514', `MeleeBaseAttackTime` = '2000', `RangedBaseAttackTime`='2000' WHERE `entry`='4490'; -- Grenka Bloodscreech
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4491'; -- Woof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4495'; -- Gnome Pit Boss
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4496'; -- Goblin Pit Boss
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='4497'; -- Captain Quirk
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='4499'; -- Rok'Alim the Pounder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4500'; -- Overlord Mok'Morokk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4501'; -- Draz'Zilb
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4502'; -- Tharg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4503'; -- Mudcrush Durtfeet
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='4504'; -- Frostmaw
UPDATE `creature_template` SET `Faction`='80' WHERE `entry`='4509'; -- Sargath
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `entry`='4526'; -- Wind Howler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4544'; -- Krueg Skullsplitter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4618'; -- Martek the Exiled
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4621'; -- Rebald Yorglun
UPDATE `creature_template` SET `Faction`='153' WHERE `entry`='4625'; -- Death's Head Ward Keeper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4626'; -- CHOW Guard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4627'; -- Arugal's Voidwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4629'; -- Trackmaster Zherin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4630'; -- Pozzik
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4632'; -- Kolkar Centaur
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4633'; -- Kolkar Scout
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4635'; -- Kolkar Windchaser
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4638'; -- Magram Scout
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4639'; -- Magram Outrunner
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4640'; -- Magram Wrangler
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4641'; -- Magram Windchaser
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4642'; -- Magram Stormer
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4643'; -- Magram Pack Runner
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4644'; -- Magram Marauder
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4645'; -- Magram Mauler
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4647'; -- Gelkis Scout
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4654'; -- Maraudine Scout
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4655'; -- Maraudine Wrangler
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4656'; -- Maraudine Mauler
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4657'; -- Maraudine Windchaser
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4658'; -- Maraudine Stormer
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='4659'; -- Maraudine Marauder
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='4660'; -- Maraudine Bonepaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4662'; -- Magram Bonepaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4669'; -- Burning Blade Conjuror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4680'; -- Doomwarder Captain
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4682'; -- Nether Sister
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4683'; -- Doomwarder Lord
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4684'; -- Nether Sorceress
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4686'; -- Deepstrider Giant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4687'; -- Deepstrider Searcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4691'; -- Murderous Bonepaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4694'; -- Dread Ripper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4703'; -- Raging Kodo
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='4704'; -- Maraudine Pack Runner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4705'; -- Burning Blade Invoker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4706'; -- Razzeric
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4709'; -- Zamek
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4710'; -- Riding Ram (Gray)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4717'; -- Slitherblade Tide Priestess
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4722'; -- Rau Cliffrunner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4723'; -- Foreman Cozzle
UPDATE `creature_template` SET `Faction`='189' WHERE `entry`='4724'; -- Sandstrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4725'; -- Crazed Sandstrider
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='4752'; -- Kildar
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4777'; -- Riding Ram (White)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4778'; -- Riding Ram (Blue)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='4780'; -- Riding Ram (Black)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4782'; -- Truk Wildbeard
UPDATE `creature_template` SET `Faction`='16', `SpeedRun`='1.38571' WHERE `entry`='4785'; -- Illusionary Nightmare
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4791'; -- Nazeer Bloodpike
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4809'; -- Twilight Acolyte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4810'; -- Twilight Reaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4811'; -- Twilight Aquamancer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4812'; -- Twilight Loreseeker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4813'; -- Twilight Shadowmage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4814'; -- Twilight Elementalist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4816'; -- Murkshallow Shellhide
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4823'; -- Barbed Crustacean
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4825'; -- Aku'mai Snapjaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4827'; -- Deep Pool Threshfin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4830'; -- Old Serra'kis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4832'; -- Twilight Lord Kelris
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4842'; -- Earthcaller Halmgar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4845'; -- Shadowforge Ruffian
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4847'; -- Shadowforge Relic Hunter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4853'; -- Stonevault Geomancer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4854'; -- Grimlok
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4855'; -- Stonevault Brawler
UPDATE `creature_template` SET `Faction`='416', `RangedBaseAttackTime`='2800' WHERE `entry`='4857'; -- Stone Keeper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4860'; -- Stone Steward
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4861'; -- Shrike Bat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4862'; -- Rabid Shrike Bat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4872'; -- Obsidian Golem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4875'; -- Turhaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4876'; -- Jawn Highmesa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4877'; -- Jandia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4878'; -- Montarr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4879'; -- Ogg'marr
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='4880'; -- "Stinky" Ignatz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4881'; -- Varng
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4883'; -- Krak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4884'; -- Zulrg
UPDATE `creature_template` SET `Faction`='151' WHERE `entry`='4923'; -- Guard Jarad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4926'; -- Krog
UPDATE `creature_template` SET `SpeedWalk`='4', `SpeedRun`='4.28571' WHERE `entry`='4945'; -- Goblin Drag Car
UPDATE `creature_template` SET `SpeedWalk`='4', `SpeedRun`='4.28571' WHERE `entry`='4946'; -- Gnome Drag Car
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='4947'; -- Theramore Lieutenant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4949'; -- Thrall
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4954'; -- Uttnar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4955'; -- Theramore Archery Target 1
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4957'; -- Theramore Combat Dummy 4
UPDATE `creature_template` SET `Faction`='24' WHERE `entry`='4958'; -- Haunting Spirit
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='4968'; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4970'; -- Defias Agent
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='4971'; -- Slim's Friend
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4975'; -- Theramore Archery Target 2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4976'; -- Elise Laughlin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4977'; -- Murkshallow Softshell
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='4978'; -- Aku'mai Servant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4985'; -- World Druid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4986'; -- World Hunter Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4987'; -- World Mage Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4988'; -- World Paladin Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4989'; -- World Priest Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4990'; -- World Rogue Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4991'; -- World Shaman Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4992'; -- World Warrior Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4993'; -- World Warlock Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4994'; -- World Wolf Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4997'; -- World Fishing Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4998'; -- World Herbalism Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4999'; -- World Mining Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5000'; -- World Hunter Beast Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5001'; -- World Bird Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5002'; -- World Boar Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5003'; -- World Cat Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5004'; -- World Crawler Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5005'; -- World Crocodile Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5006'; -- World Demon Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5007'; -- World Felhunter Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5008'; -- World Gorilla Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5009'; -- World Horse Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5010'; -- World Imp Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5011'; -- World Raptor Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5012'; -- World Scorpid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5013'; -- World Spider Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5014'; -- World Succubus Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5015'; -- World Tallstrider Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5016'; -- World Voidwalker Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5017'; -- World Turtle Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5018'; -- World Portal: Darnassus Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5019'; -- World Portal: Ironforge Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5020'; -- World Portal: Orgrimmar Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5021'; -- World Portal: Stormwind Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5022'; -- World Portal: Thunder Bluff Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5023'; -- World Portal: Undercity Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5024'; -- World First Aid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5026'; -- World Horse Riding Trainer
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='5027'; -- World Lockpicking Trainer //faction ;)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5028'; -- World Ram Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5029'; -- World Survival Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5030'; -- World Tiger Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5031'; -- World Wolf Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5032'; -- World Alchemy Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5033'; -- World Blacksmith Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5034'; -- World Brewing Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5035'; -- World Cartography Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5036'; -- World Cooking Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5037'; -- World Engineering Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5038'; -- World Enchanting Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5039'; -- World Tracking Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5040'; -- World Leatherworking Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5041'; -- World Tailoring Trainer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5043'; -- Defias Rioter
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='5044'; -- Theramore Skirmisher
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='5045'; -- Private Hallan
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='5046'; -- Lieutenant Caldwell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5048'; -- Deviate Adder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5055'; -- Deviate Lasher
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='5056'; -- Deviate Dreadfang
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='5058'; -- Wolfguard Worg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5059'; -- Galthogran the Callous
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5060'; -- World Banker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5061'; -- World Guild Tabbard Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5062'; -- World Reagent Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5064'; -- World Trade Supplies
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5084'; -- Ironforge Zinn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5087'; -- Do'gol
UPDATE `creature_template` SET `Faction`='35', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5088'; -- Falgran Hastil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5089'; -- Balos Jacken
UPDATE `creature_template` SET `Faction`='24', `RangedBaseAttackTime`='2000' WHERE `entry`='5097'; -- Lupine Delusion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5104'; -- Laene Thundershot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5105'; -- Gilbin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5118'; -- Brogun Stoneshield
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5185'; -- Hammerhead Shark
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5187'; -- Southsea Cannon
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5224'; -- Murk Slitherer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5226'; -- Murk Worm
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5228'; -- Saturated Ooze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5229'; -- Gordunni Ogre
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5231'; -- Gordunni Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5235'; -- Fungal Ooze
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5236'; -- Gordunni Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5237'; -- Gordunni Ogre Mage
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5238'; -- Gordunni Battlemaster
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5239'; -- Gordunni Mage-Lord
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5241'; -- Gordunni Warlord
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5243'; -- Cursed Atal'ai
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5244'; -- Zukk'ash Stinger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5245'; -- Zukk'ash Wasp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5246'; -- Zukk'ash Worker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5247'; -- Zukk'ash Tunneler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5256'; -- Atal'ai Warrior
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5259'; -- Atal'ai Witch Doctor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5261'; -- Enthralled Atal'ai
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5263'; -- Mummified Atal'ai
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5264'; -- Groddoc Chestpounder
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5267'; -- Unliving Atal'ai
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5269'; -- Atal'ai Priest
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5270'; -- Atal'ai Corpse Eater
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5271'; -- Atal'ai Deathwalker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5273'; -- Atal'ai High Priest
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5277'; -- Nightmare Scalebane
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5280'; -- Nightmare Wyrmkin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5283'; -- Nightmare Wanderer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5291'; -- Hakkari Frostwing
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5293'; -- Hulking Feral Scar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5296'; -- Rage Scar Yeti
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5297'; -- Elder Rage Scar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5299'; -- Ferocious Rage Scar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5305'; -- Frayfeather Skystormer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5306'; -- Frayfeather Patriarch
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='5307'; -- Vale Screecher
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5312'; -- Lethlas
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5315'; -- Jademir Dragonspawn
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='5317'; -- Jademir Oracle
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='5319'; -- Jademir Tree Warder
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='5320'; -- Jademir Boughguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5326'; -- Coast Crawl Clacker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5332'; -- Hatecrest Wave Rider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5333'; -- Hatecrest Serpent Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5334'; -- Hatecrest Myrmidon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5335'; -- Hatecrest Screamer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5336'; -- Hatecrest Sorceress
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5337'; -- Hatecrest Siren
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5343'; -- Lady Szallah
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5345'; -- Diamond Head
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5346'; -- Bloodroar the Stalker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.71429' WHERE `entry`='5347'; -- Antilus the Soarer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5350'; -- Qirot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5352'; -- Old Grizzlegut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5353'; -- Itharius
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='5357'; -- Land Walker
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='5358'; -- Cliff Giant
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='5362'; -- Northspring Harpy
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='5363'; -- Northspring Roguefeather
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='5364'; -- Northspring Slayer
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='5366'; -- Northspring Windcaller
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='5367'; -- Scillia Daggerquil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5389'; -- Prospector Gunstan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5390'; -- Sage Palerunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5391'; -- Galen Goodward
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5394'; -- Neeka Bloodscar
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='5397'; -- Uthek the Wise
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='5402'; -- Khan Hratha
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='5407'; -- Nightmare
UPDATE `creature_template` SET `Faction`='310', `SpeedWalk`='1', `SpeedRun`='0.857143', `RangedBaseAttackTime`='1000' WHERE `entry`='5409'; -- Harvester Swarm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5415'; -- Centaur Outrunner
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='5433'; -- Tamed Bear
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5434'; -- Coral Shark
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5442'; -- Tamed Gorilla
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5443'; -- Tamed Zhevra
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='5444'; -- Tamed Raptor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5445'; -- Tamed Scorpid
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='5446'; -- Tamed Spider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5447'; -- Tamed Tallstrider
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='5448'; -- Tamed Turtle
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='5449'; -- Tamed Wolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5456'; -- Centipaar Stinger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5458'; -- Centipaar Worker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5460'; -- Centipaar Sandreaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `RangedBaseAttackTime`='2500' WHERE `entry`='5467'; -- Deep Dweller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5468'; -- Wandering Dune Smasher
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='5469'; -- Dune Smasher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5477'; -- Noboru the Cudgel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5507'; -- Celmoridan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5521'; -- Glenrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5522'; -- Ironclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5524'; -- Caravan Watcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5525'; -- Caravan Packhorse
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5526'; -- Caravan Merchant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5542'; -- Stormwind Traveling Merchant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5548'; -- [PH] Mine Boss
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5549'; -- [PH] Mine Guard
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='5550'; -- [PH] PVP Peasent
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5551'; -- [PH] Caravan Guard
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='5552'; -- [PH] PVP Peon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5553'; -- [PH] Caravan Scout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5554'; -- [PH] PVP Wildlife
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5555'; -- [PH] Ogre Caravan Packhorse
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5556'; -- [PH] Alliance Commander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5557'; -- [PH] Horde Commander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5558'; -- [PH] Alliance Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5559'; -- [PH] Horde Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5560'; -- [PH] Alliance Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5561'; -- [PH] Horde Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5562'; -- [PH] Alliance Archer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5563'; -- [PH] Horde Archer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5587'; -- [PH] Alliance Mine Boss
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5588'; -- [PH] Alliance Mine Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5589'; -- [PH] Horde Mine Boss
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5590'; -- [PH] Horde Mine Guard
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='5596'; -- Twain Test Prop
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5621'; -- Timmy
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='5622'; -- Ongeku
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5623'; -- Wastewander Assassin
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='5625'; -- Theramore Transport
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5626'; -- Joey
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5627'; -- Johnny
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5628'; -- Lieutenant Beech
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5629'; -- Theramore Commando
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5630'; -- Theramore Mage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5631'; -- Theramore Medic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5632'; -- Theramore Incursion Master Control Program
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5633'; -- Lieutenant Baxter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5643'; -- Tyranis Malem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5666'; -- Gunther's Visage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5672'; -- [UNUSED] Charles Brewton
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5676'; -- Summoned Voidwalker
UPDATE `creature_template` SET `Faction`='123' WHERE `entry`='5680'; -- Male Human Captive
UPDATE `creature_template` SET `Faction`='123' WHERE `entry`='5681'; -- Female Human Captive
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5682'; -- Dalin Forgewright
UPDATE `creature_template` SET `Faction`='35', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='5689'; -- Steed
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5708'; -- Spawn of Hakkar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5709'; -- Shade of Eranikus
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5710'; -- Jammal'an the Prophet
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5711'; -- Ogom the Wretched
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5712'; -- Zolo
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='5713'; -- Gasher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5714'; -- Loro
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5715'; -- Hukku
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5716'; -- Zul'Lor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5717'; -- Mijan
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='5723'; -- Warug's Target Dummy
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='5725'; -- Deathguard Lundmark
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5737'; -- Caged Dwarf Female
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5740'; -- Caged Chicken
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5741'; -- Caged Rabbit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5742'; -- Caged Toad
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5743'; -- Caged Sheep
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5746'; -- Appolonia Kimble
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5748'; -- Killian Sanatha
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5755'; -- Deviate Viper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5756'; -- Deviate Venomwing
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5757'; -- Lilly
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5758'; -- Leo Sarn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5760'; -- Lord Azrethoc
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='5761'; -- Deviate Shambler
UPDATE `creature_template` SET `Faction`='270', `SpeedWalk`='1' WHERE `entry`='5762'; -- Deviate Moccasin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5763'; -- Nightmare Ectoplasm
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='5764'; -- Guardian of Blizzard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5765'; -- Ruzan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5767'; -- Nalpak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5768'; -- Ebru
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5771'; -- Jugkar Grim'rod
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='5775'; -- Verdan the Everliving
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.428571' WHERE `entry`='5779'; -- Summoned Viper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5780'; -- Cloned Ectoplasm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5781'; -- Silithid Creeper Egg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5783'; -- Kalldan Felmoon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5784'; -- Waldor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5788'; -- Gelgann Direforge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5789'; -- Serra Mountainhome
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5790'; -- Lizzle Sprysprocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5791'; -- Cobrahn Snake Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5793'; -- Captain Armistice
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5794'; -- Thurmonde the Devout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5795'; -- Grash Thunderbrew
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5796'; -- Ben
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='5797'; -- Aean Swiftriver
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='5798'; -- Thora Feathermoon
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='5799'; -- Hannah Bladeleaf
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='5800'; -- Marcus Bel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5801'; -- [PH] Party Bot
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='5808'; -- Warlord Kolkanis
UPDATE `creature_template` SET `Faction`='123', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5809'; -- Watch Commander Zalaphil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5810'; -- Uzzek
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5822'; -- Felweaver Scornn
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='5823'; -- Death Flayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5825'; -- Corrupt Tyranis Malem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2700', `SpeedWalk`='1' WHERE `entry`='5827'; -- Brontus
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300' WHERE `entry`='5828'; -- Humar the Pridelord
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5829'; -- Snort the Heckler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5833'; -- Margol the Rager
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='5835'; -- Foreman Grills
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5836'; -- Engineer Whirleygig
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='5837'; -- Stonearm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5839'; -- Dark Iron Geologist
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='5842'; -- Takk the Leaper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5847'; -- Heggin Stonewhisker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5848'; -- Malgin Barleybrew
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5851'; -- Captain Gerogg Hammertoe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5853'; -- Tempered War Golem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5856'; -- Glassweb Spider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5863'; -- Geopriest Gukk'rok
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5864'; -- Swinegart Spearhide
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='5865'; -- Dishu
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5866'; -- Equipment Squirrel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5867'; -- Maximum Squirrel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5868'; -- Evil Squirrel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5872'; -- Serpent Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5878'; -- Thun'grim Firegaze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5881'; -- Cursed Sycamore
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5884'; -- Mai'ah
UPDATE `creature_template` SET `Faction`='7', `SpeedWalk`='1.55556' WHERE `entry`='5889'; -- Mesa Earth Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5890'; -- Redrock Earth Spirit
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='5891'; -- Minor Manifestation of Earth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5893'; -- Minor Manifestation of Fire
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='5894'; -- Corrupt Minor Manifestation of Water
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5896'; -- Fire Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5897'; -- Corrupt Water Spirit
UPDATE `creature_template` SET `Faction`='7', `SpeedWalk`='1' WHERE `entry`='5898'; -- Air Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5899'; -- Brine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5900'; -- Telf Joolam
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5902'; -- Minor Manifestation of Air
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5903'; -- Nyx Bloodrage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5908'; -- Grunt Dogran
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='5912'; -- Deviate Faerie Dragon
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28571' WHERE `entry`='5914'; -- Deviate Nightmare
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5915'; -- Brother Ravenoak
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='5928'; -- Sorrow Wing
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='5930'; -- Sister Riven
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5934'; -- Heartrazor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5936'; -- Orca
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5937'; -- Vile Sting
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5945'; -- Owl Companion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5946'; -- Male Dark Assassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5947'; -- Female Dark Assassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5948'; -- Female Pirate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5949'; -- Male Pirate
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='5950'; -- Flametongue Totem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5952'; -- Den Grunt
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='5953'; -- Razor Hill Grunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5954'; -- Shade (Deprecated)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5955'; -- Tooga
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5956'; -- Graznab
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5959'; -- World Dwarf Male Warrior Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5960'; -- World Human Male Rogue Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5961'; -- World Gnome Male Mage Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5962'; -- World Orc Male Warlock Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5963'; -- World Tauren Male Druid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5964'; -- World Undead Male Priest Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5965'; -- World Troll Male Shaman Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5966'; -- World Night Elf Male Warrior Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5967'; -- World Dwarf Female Warrior Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5968'; -- World Human Female Rogue Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5969'; -- World Gnome Female Mage Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5970'; -- World Orc Female Warlock Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5971'; -- World Troll Female Shaman Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5972'; -- World Tauren Female Druid Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5973'; -- World Undead Female Priest Trainer
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5974'; -- Dreadmaul Ogre
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5975'; -- Dreadmaul Ogre Mage
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5976'; -- Dreadmaul Brute
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5977'; -- Dreadmaul Mauler
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='5978'; -- Dreadmaul Warlock
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='5979'; -- Wretched Lost One
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5980'; -- Broken One
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='5981'; -- Portal Seeker
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='5982'; -- Black Slayer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='5983'; -- Bonepicker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5985'; -- Snickerfang Hyena
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5986'; -- Rabid Snickerfang
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5987'; -- Scorpok Snapper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5988'; -- Scorpok Stinger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5989'; -- Scorpok Lasher
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='5991'; -- Redstone Crystalhide
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='5993'; -- Helboar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5995'; -- Nethergarde Worker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6004'; -- Shadowsworn Cultist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6005'; -- Shadowsworn Thug
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6006'; -- Shadowsworn Adept
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6007'; -- Shadowsworn Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6008'; -- Shadowsworn Warlock
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6009'; -- Shadowsworn Dreadweaver
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='6012'; -- Flametongue Totem II
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='6013'; -- Wayward Buzzard
UPDATE `creature_template` SET `Faction`='152' WHERE `entry`='6021'; -- Boar Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6022'; -- Captain Drakoar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6023'; -- Kernon Shadowclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6028'; -- Burkrum
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6030'; -- Thorvald Deepforge
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='6033'; -- Lake Frenzy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6036'; -- Guardian of Backus
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='6047'; -- Aqua Guardian
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='6069'; -- Maraudine Khan Guard
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='6070'; -- Maraudine Khan Advisor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6072'; -- Diathorus the Seeker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6073'; -- Searing Infernal
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='6074'; -- Riding Tiger (White Striped)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='6075'; -- Riding Raptor (Emerald)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='6076'; -- Riding Tallstrider (Ivory)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6092'; -- Minor Phantasm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6106'; -- Lesser Phantasm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6107'; -- Shade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6108'; -- Greater Phantasm
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='1.71429' WHERE `entry`='6109'; -- Azuregos
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6113'; -- Vejrek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6115'; -- Roaming Felguard
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='6118'; -- Varo'then's Ghost
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='6123'; -- Dark Iron Spy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6124'; -- Captain Beld
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6125'; -- Haldarr Satyr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6126'; -- Haldarr Trickster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6127'; -- Haldarr Felsworn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6128'; -- Vorlus Vilehoof
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='6129'; -- Draconic Magelord
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='6130'; -- Blue Scalebane
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='6131'; -- Draconic Mageweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6134'; -- Lord Arkkoroc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6135'; -- Arkkoran Clacker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6136'; -- Arkkoran Muckdweller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6137'; -- Arkkoran Pincer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6138'; -- Arkkoran Oracle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6140'; -- Hetaera
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='6143'; -- Servant of Arkkoroc
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='6144'; -- Son of Arkkoroc
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='1.42857' WHERE `entry`='6146'; -- Cliff Breaker
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='6147'; -- Cliff Thunderer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6180'; -- Defias Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6182'; -- Daphne Stilwell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6193'; -- Spitelash Screamer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6194'; -- Spitelash Serpent Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6195'; -- Spitelash Siren
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6197'; -- Spitelash Sorceress
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='6206'; -- Caverndeep Burrower
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='6207'; -- Caverndeep Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6209'; -- Caverndeep Looter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6214'; -- Irradiated Burrower
UPDATE `creature_template` SET `SpeedRun`='1.28968' WHERE `entry`='6220'; -- Irradiated Horror
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='6229'; -- Crowd Pummeler 9-60
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6236'; -- Klannoc Macleod
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='6239'; -- Cyclonian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6242'; -- World Skinning Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6248'; -- Twiggy Flathead
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6249'; -- Affray Spectator
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6269'; -- Azgalaril
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6270'; -- Asjorah
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6288'; -- Jayla
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6296'; -- Flame Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6326'; -- Horde Wargryphoner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6327'; -- Alliance Wargryphoner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6346'; -- Skeletal Horse
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6348'; -- Wavethrasher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6369'; -- Coralshell Tortoise
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6370'; -- Makrinni Scrabbler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6371'; -- Storm Bay Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6372'; -- Makrinni Snapclaw
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='1.42857' WHERE `entry`='6377'; -- Thunderhead Stagwing
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='1.42857' WHERE `entry`='6379'; -- Thunderhead Patriarch
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='1.42857' WHERE `entry`='6380'; -- Thunderhead Consort
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='6386'; -- Ward of Zanzil
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='1.42857' WHERE `entry`='6388'; -- Zanzil Skeleton
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6488'; -- Fallen Champion
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='6489'; -- Ironspine
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1' WHERE `entry`='6490'; -- Azshir the Sleepless
UPDATE `creature_template` SET `Faction`='7', `RangedBaseAttackTime`='2000' WHERE `entry`='6492'; -- Rift Spawn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6495'; -- Riznek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6496'; -- Brivelthwerp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6546'; -- Tabetha
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6548'; -- Magus Tirth
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='6549'; -- Demon of the Orb
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6561'; -- Stone Warden
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6567'; -- Ghok'kah
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6571'; -- Cat Form (Night Elf Druid)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6572'; -- Cat Form (Tauren Druid)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6573'; -- Travel Form (Druid)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6574'; -- Jun'ha
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6577'; -- Bingles Blastenheimer
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='6581'; -- Ravasaur Matriarch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6582'; -- Clutchmother Zavas
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6583'; -- Gruff
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='6584'; -- King Mosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6586'; -- Rokar Bladeshadow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6606'; -- Overseer Glibby
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6607'; -- Harroc
UPDATE `creature_template` SET `Faction`='778', `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='6646'; -- Monnos the Elder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6648'; -- Antilos
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6649'; -- Lady Sesspira
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6650'; -- General Fangferror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6652'; -- Master Feardred
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6666'; -- "Plucky" Johnson's Human Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6667'; -- Gelkak Gyromast
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6687'; -- Druid 40 (faster)!
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6726'; -- Thalon
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6729'; -- Morridune
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6730'; -- Jinky Twizzlefixxit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6731'; -- Harlown Darkweave
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6733'; -- Stonevault Basher
UPDATE `creature_template` SET `Faction`='7' WHERE `entry`='6748'; -- Water Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6767'; -- Garona
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6772'; -- Attack Hound
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6773'; -- Shadowhawk
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='6786'; -- Ukor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6788'; -- Den Mother
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6789'; -- Thistle Cub
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='6827'; -- Crab
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6866'; -- Defias Bodyguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6868'; -- Jarkal Mossmeld
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6886'; -- Onin MacHammar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='6909'; -- Sethir the Ancient
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6911'; -- Minion of Sethir
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300', `SpeedWalk`='1.11111' WHERE `entry`='6913'; -- Lost One Rift Traveler
UPDATE `creature_template` SET `Faction`='18' WHERE `entry`='6932'; -- Swamp Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7006'; -- Blackrock Assassin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7008'; -- Blackrock Reaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2700' WHERE `entry`='7011'; -- Earthen Rocksmasher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7012'; -- Earthen Sculptor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7013'; -- Blackrock Rampager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7014'; -- Commander Kartak Dwarfdefiler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7015'; -- Flagglemurk the Cruel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7017'; -- Lord Sinslayer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7022'; -- Venomlash Scorpid
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7023'; -- Obsidian Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7024'; -- Agent Kearnen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7025'; -- Blackrock Soldier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7026'; -- Blackrock Sorcerer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7027'; -- Blackrock Slayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7029'; -- Blackrock Battlemaster
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7030'; -- Shadowforge Geologist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7045'; -- Scalding Drake
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7050'; -- Defias Drone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7051'; -- Malformed Defias Drone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7052'; -- Defias Tower Patroller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7053'; -- Klaven Mortwake
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7055'; -- Blackrock Worg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7056'; -- Defias Tower Sentry
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7057'; -- Digmaster Shovelphlange
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7067'; -- Venture Co. Drone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7068'; -- Condemned Acolyte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7069'; -- Condemned Monk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7070'; -- Condemned Cleric
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7071'; -- Cursed Paladin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7072'; -- Cursed Justicar
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='7073'; -- Arados the Damned
UPDATE `creature_template` SET `Faction`='123', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='7074'; -- Judge Thelgram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7075'; -- Writhing Mage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2300' WHERE `entry`='7076'; -- Earthen Guardian
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7077'; -- Earthen Hallshaper
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='7079'; -- Viscous Fallout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7091'; -- Shadowforge Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7094'; -- Crazed Stag
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7095'; -- Maddened Stag
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7096'; -- Corrupt Courser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7112'; -- Jaedenar Cultist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7113'; -- Jaedenar Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7116'; -- Jaedenar Dreadweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7117'; -- Jaedenar Instigator
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7119'; -- Jaedenar Summoner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7121'; -- Jaedenar Arch Warlock
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7122'; -- Shadow Council Champion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7123'; -- Shadow Council Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7124'; -- Shadow Council Highlord
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7126'; -- Jaedenar Hunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7127'; -- Jaedenar Stalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7128'; -- Jaedenar Mana Leech
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7129'; -- Enslaved Voidwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7130'; -- Voidwalker Servant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7131'; -- Voidwalker Guardian
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='7132'; -- Toxic Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7133'; -- Noxious Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7134'; -- Poison Flayer
UPDATE `creature_template` SET `RangedBaseAttackTime`='3000' WHERE `entry`='7137'; -- Immolatus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7143'; -- Decaying Treant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7144'; -- Withered Treant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7146'; -- Treant Protector
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7150'; -- Withered Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7151'; -- Withered Watcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7152'; -- Withered Forest Walker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7167'; -- Polly
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='7168'; -- Polly
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7170'; -- Thragomm
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7172'; -- Lore Keeper of Norgannon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7173'; -- World Weaponsmithing Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7174'; -- World Armorsmithing Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7186'; -- A
UPDATE `creature_template` SET `RangedBaseAttackTime`='2800' WHERE `entry`='7206'; -- Ancient Stone Keeper
UPDATE `creature_template` SET `SpeedWalk`='1', `RangedBaseAttackTime`='1300' WHERE `entry`='7209'; -- Obsidian Shard
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1.2', `SpeedRun`='0.428571', `RangedBaseAttackTime`='4000' WHERE `entry`='7226'; -- Sand Storm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7227'; -- Cobaltine Dragonspawn
UPDATE `creature_template` SET `RangedBaseAttackTime`='2900' WHERE `entry`='7228'; -- Ironaya
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7233'; -- Taskmaster Fizzule
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='7234'; -- Ferocitas the Dream Eater
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7267'; -- Chief Ukorz Sandscalp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7270'; -- Sandfury Zombie
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7273'; -- Gahz'rilla
UPDATE `creature_template` SET `RangedBaseAttackTime`='2600' WHERE `entry`='7274'; -- Sandfury Executioner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7288'; -- Grand Foreman Puzik Gallywix
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='7293'; -- [UNUSED] Drayl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7307'; -- Venture Co. Lookout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7308'; -- Venture Co. Patroller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7310'; -- Mutated Venture Co. Drone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7317'; -- Oben Rageclaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7318'; -- Rageclaw
UPDATE `creature_template` SET `Faction`='312' WHERE `entry`='7319'; -- Lady Sathrah
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7320'; -- Stonevault Mauler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7321'; -- Stonevault Flameweaver
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7322'; -- Riding Tiger (Black)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7340'; -- Skeletal Shadowcaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7349'; -- Tomb Fiend
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7351'; -- Tomb Reaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7355'; -- Tuten'kash
UPDATE `creature_template` SET `Faction`='152', `SpeedWalk`='1' WHERE `entry`='7356'; -- Plaguemaw the Rotting
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7357'; -- Mordresh Fire Eye
UPDATE `creature_template` SET `Faction`='88' WHERE `entry`='7360'; -- Dun Garok Soldier
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='7363'; -- Kum'isha the Collector
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='7364'; -- Flawless Draenethyst Sphere
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='7365'; -- Flawless Draenethyst Fragment
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='7373'; -- Deadwind Enforcer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7374'; -- Vengeful Wraith
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7375'; -- Spirit of Wrath
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7377'; -- Doomhound Ravager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7378'; -- Doomhound Mastiff
UPDATE `creature_template` SET `RangedBaseAttackTime`='2700' WHERE `entry`='7396'; -- Earthen Stonebreaker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7397'; -- Earthen Stonecarver
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='7401'; -- Draenei Refugee
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='7404'; -- Galak Flame Guard
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7405'; -- Deadly Cleft Scorpid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7411'; -- Spirit of Sathrah
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='7423'; -- Flametongue Totem III
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='7424'; -- Fire Resistance Totem II
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7427'; -- Taim Ragetotem
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='7430'; -- Frostsaber Cub
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='7431'; -- Frostsaber
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='7432'; -- Frostsaber Stalker
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='7433'; -- Frostsaber Huntress
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='7434'; -- Frostsaber Pride Watcher
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='7437'; -- Cobalt Mageweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7461'; -- Hederine Initiate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7462'; -- Hederine Manastalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7463'; -- Hederine Slayer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='7468'; -- Nature Resistance Totem II
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7488'; -- Haka'wani
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7503'; -- Curse of the Eye (Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7504'; -- Curse of the Eye (Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7525'; -- World Leatherworking Dragonscale Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7526'; -- World Leatherworking Elemental Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7528'; -- World Leatherworking Tribal Trainer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7604'; -- Sergeant Bly
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='7605'; -- Raven
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7606'; -- Oro Eyegouge
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7607'; -- Weegli Blastfuse
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7608'; -- Murta Grimgut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7663'; -- Ashenvale Warrior
UPDATE `creature_template` SET `Faction`='90', `SpeedWalk`='1' WHERE `entry`='7664'; -- Razelikh the Defiler
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='7665'; -- Grol the Destroyer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7669'; -- Servant of Grol
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7670'; -- Servant of Allistarj
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7671'; -- Servant of Sevine
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7684'; -- Riding Tiger (Yellow)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7686'; -- Riding Tiger (Red)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7687'; -- Riding Tiger (White Spotted)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7689'; -- Riding Tiger (BlackSpotted)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7690'; -- Riding Tiger (BlackStriped)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7703'; -- Riding Raptor (Obsidian)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7704'; -- Riding Raptor (Crimson)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7706'; -- Riding Raptor (Ivory)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7707'; -- Riding Raptor (Turquoise)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7708'; -- Riding Raptor (Violet)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7709'; -- Riding Tallstrider (Brown)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7710'; -- Riding Tallstrider (Gray)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7711'; -- Riding Tallstrider (Pink)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7712'; -- Riding Tallstrider (Purple)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7713'; -- Riding Tallstrider (Turquoise)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='7726'; -- Grimtotem Naturalist
UPDATE `creature_template` SET `Faction`='90', `SpeedWalk`='1' WHERE `entry`='7734'; -- Ilifar
UPDATE `creature_template` SET `Faction`='90', `SpeedWalk`='1' WHERE `entry`='7735'; -- Felcular
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7739'; -- Riding MechaStrider (Red)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7743'; -- World Undead Horse Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7744'; -- Innkeeper Thulfram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7745'; -- World Raptor Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7746'; -- World Mechastrider Riding Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7747'; -- World Mount Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7748'; -- World Horse Vendor
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='7749'; -- Riding MechaStrider (Blue)
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='7750'; -- Corporal Thund Splithoof
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='7765'; -- Rockbiter
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7767'; -- Witherbark Felhunter
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000', `SpeedWalk`='1' WHERE `entry`='7768'; -- Witherbark Bloodling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7771'; -- Marvon Rivetseeker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7774'; -- Shay Leafrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7775'; -- Gregan Brewspewer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7777'; -- Rok Orhan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7779'; -- Priestess Tyriona
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7783'; -- Loramus Thalipedes
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7791'; -- Theka the Martyr Shapeshift
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7795'; -- Hydromancer Velratha
UPDATE `creature_template` SET `RangedBaseAttackTime`='2600' WHERE `entry`='7797'; -- Ruuzlu
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7803'; -- Scorpid Duneburrower
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7805'; -- Wastewander Scofflaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7808'; -- Marauding Owlbeast
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='7809'; -- Vilebranch Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7847'; -- Caliph Scorpidsting
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='7848'; -- Lurking Feral Scar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7854'; -- Jangdor Swiftstrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7855'; -- Southsea Pirate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7856'; -- Southsea Freebooter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7857'; -- Southsea Dock Worker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7858'; -- Southsea Swashbuckler
UPDATE `creature_template` SET `SpeedWalk`='0.6', `SpeedRun`='1.42857' WHERE `entry`='7863'; -- Dream Vision
REPLACE INTO `creature_template_addon` (`entry`,  `auras`) VALUES (7863, '27986'); -- i.9197
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='7864'; -- Lingering Highborne
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7866'; -- Peter Galen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7867'; -- Thorkaf Dragoneye
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7868'; -- Sarah Tanner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7869'; -- Brumn Winterhoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7875'; -- Hadoken Swiftstrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='7883'; -- Andre Firebeard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7885'; -- Spitelash Battlemaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7886'; -- Spitelash Enchantress
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7896'; -- Southsea Buccaneer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.71429' WHERE `entry`='7897'; -- Alarm-a-bomb 2600
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7899'; -- Treasure Hunting Pirate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7901'; -- Treasure Hunting Swashbuckler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7902'; -- Treasure Hunting Buccaneer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7906'; -- Goldshire Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7919'; -- Gnomeregan - Matrix Punchograph 3005-A
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7935'; -- Irradiated Ozzie
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7956'; -- Kindal Moonweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7957'; -- Jer'kai Moonweaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7995'; -- Vile Priestess Hexx
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7997'; -- Captured Sprite Darter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='7998'; -- Blastmaster Emi Shortfuse
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='8017'; -- Sen'jin Guardian
UPDATE `creature_template` SET `Faction`='534', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='8024'; -- Sharpbeak's Father
UPDATE `creature_template` SET `Faction`='534', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1.6' WHERE `entry`='8025'; -- Sharpbeak's Mother
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='8075'; -- Edana Hatetalon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8115'; -- Witch Doctor Uzer'i
UPDATE `creature_template` SET `Faction`='69' WHERE `entry`='8121'; -- Jaxxil Sparks
UPDATE `creature_template` SET `Faction`='29' WHERE `entry`='8122'; -- Kizzak Sparks
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8136'; -- Lord Shalzaru
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8142'; -- Jannos Lighthoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8144'; -- Kulleg Stonehorn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8145'; -- Sheendra Tallgrass
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8148'; -- Waurg
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='8149'; -- Sul'lithuz Warder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8150'; -- Janet Hommers
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='8155'; -- Kargath Grunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8159'; -- Worb Strongstitch
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1' WHERE `entry`='8199'; -- Warleader Krazzilak
UPDATE `creature_template` SET `Faction`='45', `RangedBaseAttackTime`='2600' WHERE `entry`='8201'; -- Omgorn the Lost
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='8203'; -- Kregg Keelhaul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8204'; -- Soriid the Devourer
UPDATE `creature_template` SET `Faction`='310' WHERE `entry`='8205'; -- Haarka the Ravenous
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8206'; -- Soul of Tanaris
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='8207'; -- Greater Firebird
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8208'; -- Murderous Blisterpaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8210'; -- Razortalon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8211'; -- Old Cliff Jumper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8212'; -- The Reak
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1', `RangedBaseAttackTime`='2000' WHERE `entry`='8213'; -- Ironback
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='8214'; -- Jalinde Summerdrake
UPDATE `creature_template` SET `Faction`='778', `RangedBaseAttackTime`='2600', `SpeedWalk`='0.777776' WHERE `entry`='8215'; -- Grimungous
UPDATE `creature_template` SET `Faction`='795', `SpeedWalk`='1' WHERE `entry`='8217'; -- Mith'rethis the Enchanter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8219'; -- Zul'arek Hatefowler
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='8236'; -- Muck Frenzy
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='8257'; -- Oozeling
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='8278'; -- Smoldar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8279'; -- Faulty War Golem
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='8280'; -- Shleipnarr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8283'; -- Slave Master Blackheart
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='8284'; -- Dorius Stonetender
UPDATE `creature_template` SET `Faction`='38', `RangedBaseAttackTime`='1300' WHERE `entry`='8300'; -- Ravage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8302'; -- Deatheye
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8308'; -- Alenndaar Lapidaar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8311'; -- Slime Maggot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8316'; -- Paladin 10 Alternate
UPDATE `creature_template` SET `Faction`='37' WHERE `entry`='8317'; -- Atal'ai Deathwalker's Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8318'; -- Atal'ai Slave
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8319'; -- Nightmare Whelp
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8320'; -- Sprok
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8321'; -- Paladin 20 Alternate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8322'; -- Paladin 30 Alternate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8323'; -- Paladin 40 Alternate
UPDATE `creature_template` SET `Faction`='37' WHERE `entry`='8324'; -- Atal'ai Skeleton
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8336'; -- Hakkari Sapper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8337'; -- Dark Iron Steelshifter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8338'; -- Dark Iron Marksman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8377'; -- Ahdi of Shadow Hall
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8378'; -- Alexandra Blazen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8379'; -- Archmage Xylem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8380'; -- Captain Vanessa Beltis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8381'; -- Lindros
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8382'; -- Patrick Mills
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8384'; -- Deep Lurker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8386'; -- Horizon Scout Crewman
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='8391'; -- Lathoric the Black
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8395'; -- Sanath Lim-yo
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8397'; -- Sentinel Keldara Sunblade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8400'; -- Obsidion
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='8405'; -- Ogtinc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8406'; -- Or'lin Oakenfist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8407'; -- Makron the Corrupt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8409'; -- Caravan Master Tset
UPDATE `creature_template` SET `Faction`='120', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='8421'; -- Dorius
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8437'; -- Hakkari Minion
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8438'; -- Hakkari Bloodkeeper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8439'; -- Nilith Lokrav
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8440'; -- Shade of Hakkar
UPDATE `creature_template` SET `SpeedWalk`='2' WHERE `entry`='8441'; -- Raze
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8443'; -- Avatar of Hakkar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8497'; -- Nightmare Suppressor
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='8502'; -- TEST Uber Human
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8505'; -- Hex of Jammal'an
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8510'; -- Atal'ai Totem
UPDATE `creature_template` SET `SpeedWalk`='2.08', `SpeedRun`='0.742857' WHERE `entry`='8516'; -- Belnistrasz
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='8527'; -- Scourge Guard
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='8536'; -- Putrid Slayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8537'; -- Interloper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8539'; -- Eyeless Watcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8544'; -- Gangled Golem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8545'; -- Stitched Golem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8546'; -- Dark Adept
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8550'; -- Shadowmage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8552'; -- Necrolyte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8557'; -- Crypt Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8558'; -- Crypt Slayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8559'; -- Undead Nerubian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8560'; -- Mossflayer Scout
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8561'; -- Mossflayer Shadowhunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8562'; -- Mossflayer Cannibal
UPDATE `creature_template` SET `Faction`='37', `RangedBaseAttackTime`='3000' WHERE `entry`='8580'; -- Atal'alarion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8588'; -- Umbranse the Spiritspeaker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8599'; -- Plaguehound Mastiff
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8611'; -- Idol Room Spawner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8613'; -- Ozzie
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='8615'; -- Mithril Dragonling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8616'; -- Infernal Servant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8637'; -- Dark Iron Watchman
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='8660'; -- The Evalcharr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8662'; -- Idol Oven Fire Target
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8663'; -- Splinterbone Elite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8668'; -- Felhound Tracker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8675'; -- Felbeast
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8676'; -- World Gnome Engineering Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8677'; -- World Goblin Engineering Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8678'; -- Jubie Gadgetspring
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8696'; -- Henry Stern
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8756'; -- Raytaf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8757'; -- Shahiar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8758'; -- Zaman
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='1.42857' WHERE `entry`='8760'; -- Mosshoof Stag
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='1.42857' WHERE `entry`='8761'; -- Mosshoof Courser
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='8763'; -- Mistwing Rogue
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='8764'; -- Mistwing Ravager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8765'; -- Forest Creeper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8766'; -- Forest Ooze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8767'; -- Sah'rhee
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8777'; -- Seinrick Coulthane
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='8816'; -- Deathly Usher
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='8837'; -- Muck Splash
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='8880'; -- Mechastrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8886'; -- Deviate Python
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8887'; -- A tormented voice
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8923'; -- Panzor the Invincible
UPDATE `creature_template` SET `Faction`='54', `SpeedWalk`='0.666668' WHERE `entry`='8924'; -- The Behemoth
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8925'; -- Dredge Worm
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8926'; -- Deep Stinger
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='8927'; -- Dark Screecher
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='8928'; -- Burrowing Thundersnout
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='8932'; -- Borer Beetle
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000' WHERE `entry`='8933'; -- Cave Creeper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8935'; -- Paladin 20 AlternateHighDamage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='8976'; -- Hematos
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='8977'; -- Krom'Grul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8978'; -- Thauris Balgarr
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='8981'; -- Malfunctioning Reaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='9016'; -- Bael'Gar
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='9023'; -- Marshal Windsor
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='9027'; -- Gorosh the Dervish
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300' WHERE `entry`='9029'; -- Eviscerator
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='9031'; -- Anub'shiah
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='9032'; -- Hedrum the Creeper
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='9033'; -- General Angerforge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9077'; -- Warlord Goretooth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9078'; -- Shadowmage Vivian Lagrave
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9079'; -- Hierophant Theodora Mulvadania
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9080'; -- Lexlort
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9081'; -- Galamav the Marksman
UPDATE `creature_template` SET `SpeedWalk`='1.32' WHERE `entry`='9082'; -- Thal'trak Proudtusk
UPDATE `creature_template` SET `SpeedWalk`='1.32', `SpeedRun`='0.471429' WHERE `entry`='9083'; -- Razal'blade
UPDATE `creature_template` SET `SpeedWalk`='1.32', `SpeedRun`='0.471429' WHERE `entry`='9084'; -- Thunderheart
UPDATE `creature_template` SET `SpeedWalk`='1.32', `SpeedRun`='0.471429' WHERE `entry`='9085'; -- Initiate Amakkar
UPDATE `creature_template` SET `SpeedWalk`='1.32', `SpeedRun`='0.471429' WHERE `entry`='9086'; -- Grunt Gargal
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='9096'; -- Rage Talon Dragonspawn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9117'; -- J.D. Collie
UPDATE `creature_template` SET `Faction`='876', `SpeedWalk`='1' WHERE `entry`='9136'; -- Sha'ni Proudtusk
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='9158'; -- Riding Horse (Warhorse)
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='9176'; -- Gor'tesh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9179'; -- Jazzrik
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9180'; -- World Event Generator
UPDATE `creature_template` SET `RangedBaseAttackTime`='3200' WHERE `entry`='9196'; -- Highlord Omokk
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9197'; -- Spirestone Battle Mage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9198'; -- Spirestone Mystic
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9199'; -- Spirestone Enforcer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9200'; -- Spirestone Reaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9201'; -- Spirestone Ogre Magus
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='9216'; -- Spirestone Warlord
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9217'; -- Spirestone Lord Magus
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9218'; -- Spirestone Battle Lord
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9219'; -- Spirestone Butcher
UPDATE `creature_template` SET `RangedBaseAttackTime`='1300' WHERE `entry`='9236'; -- Shadow Hunter Vosh'gajin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9237'; -- War Master Voone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9238'; -- Quentin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9239'; -- Smolderthorn Mystic
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9240'; -- Smolderthorn Shadow Priest
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9259'; -- Firebrand Grunt
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9261'; -- Firebrand Darkweaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9262'; -- Firebrand Invoker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9267'; -- Smolderthorn Axe Thrower
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='9268'; -- Smolderthorn Berserker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9275'; -- Launcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9276'; -- Launcher2
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9299'; -- Gaeriyan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9336'; -- Boss Copperplug
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9356'; -- Innkeeper Shul'kar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9376'; -- Blazerunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9397'; -- Living Storm
UPDATE `creature_template` SET `Faction`='54', `SpeedWalk`='1' WHERE `entry`='9398'; -- Twilight's Hammer Executioner
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='9416'; -- Scarshield Worg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9417'; -- Sleeping Dragon
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='9436'; -- Spawn of Bael'Gar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9441'; -- Dark Keeper Zimrel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9445'; -- Dark Guard
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='9453'; -- Aquementas
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='9456'; -- Warlord Krom'zar
UPDATE `creature_template` SET `Faction`='103', `SpeedWalk`='1' WHERE `entry`='9461'; -- Frenzied Black Drake
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='9462'; -- Chieftain Bloodmaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9477'; -- Cloned Ooze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9496'; -- Gorishi Egg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9498'; -- Gorishi Grub
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9501'; -- Innkeeper Adegwa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9520'; -- Grark Lorkrub
UPDATE `creature_template` SET `Faction`='40', `SpeedWalk`='1' WHERE `entry`='9522'; -- Blackrock Ambusher
UPDATE `creature_template` SET `Faction`='130', `SpeedWalk`='0.666668' WHERE `entry`='9523'; -- Kolkar Stormseer
UPDATE `creature_template` SET `Faction`='130', `SpeedWalk`='0.666668' WHERE `entry`='9524'; -- Kolkar Invader
UPDATE `creature_template` SET `Faction`='79' WHERE `entry`='9527'; -- Enraged Hippogryph
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9529'; -- Maybess Riverbreeze
UPDATE `creature_template` SET `Faction`='29', `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='9538'; -- High Executioner Nuzrak
UPDATE `creature_template` SET `Faction`='83', `SpeedWalk`='1' WHERE `entry`='9539'; -- Shadow of Lexlort
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9544'; -- Yuka Screwspigot
UPDATE `creature_template` SET `Faction`='495', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='2.12', `SpeedRun`='0.757143' WHERE `entry`='9546'; -- Raschal the Courier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9550'; -- Furmund
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9551'; -- Starn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9552'; -- Zanara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9555'; -- Mu'uta
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9556'; -- Felhound Minion
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='9568'; -- Overlord Wyrmthalak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9576'; -- Stormwind Talent Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9578'; -- Ironforge Talent Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9579'; -- Darnassus Talent Master
UPDATE `creature_template` SET `Faction`='29', `SpeedWalk`='1' WHERE `entry`='9580'; -- Orgrimmar Talent Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9581'; -- Thunder Bluff Talent Master
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9582'; -- Undercity Talent Master
UPDATE `creature_template` SET `Faction`='40', `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='9596'; -- Bannok Grimaxe
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='0.928571' WHERE `entry`='9598'; -- Arei
UPDATE `creature_template` SET `Faction`='80', `SpeedWalk`='1' WHERE `entry`='9599'; -- Arei Transformed
UPDATE `creature_template` SET `Faction`='534', `SpeedWalk`='1' WHERE `entry`='9601'; -- Treant Spirit
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='9602'; -- Hahk'Zor
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='9604'; -- Gorgon'och
UPDATE `creature_template` SET `Faction`='40' WHERE `entry`='9605'; -- Blackrock Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9620'; -- Dreka'Sur
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='9621'; -- Gargantuan Ooze
UPDATE `creature_template` SET `SpeedWalk`='2' WHERE `entry`='9623'; -- A-Me 01
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9657'; -- Lil' Smoky
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9676'; -- Tink Sprocketwhistle
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='9682'; -- Marshal Reginald Windsor
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='9688'; -- Windwall Totem II
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9701'; -- Spire Scorpid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9702'; -- Grurk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9703'; -- Il'thurk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9704'; -- Lumurk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9705'; -- Illusionary Dreamwatcher
UPDATE `creature_template` SET `Faction`='40' WHERE `entry`='9707'; -- Scarshield Portal
UPDATE `creature_template` SET `Faction`='40' WHERE `entry`='9708'; -- Burning Imp
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9717'; -- Bloodaxe Summoner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9736'; -- Quartermaster Zigris
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9816'; -- Pyroguard Emberseer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9817'; -- Blackhand Dreadweaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9818'; -- Blackhand Summoner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='9819'; -- Blackhand Veteran
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9837'; -- Lithilia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9876'; -- Locheed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9877'; -- Prince Xavalis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9896'; -- World Stable Master
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='9937'; -- Common Kitten
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='9938'; -- Magmus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9976'; -- Tharlidun
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='9986'; -- Shyrka Wolfrunner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10000'; -- Arugal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10040'; -- Gorishi Hive Guard
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='10041'; -- Gorishi Hive Queen
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10042'; -- Corrupted Saber
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10058'; -- Greth
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10076'; -- High Priestess of Thaurissan
UPDATE `creature_template` SET `RangedBaseAttackTime`='1200' WHERE `entry`='10077'; -- Deathmaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10078'; -- Terrorspark
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='10083'; -- Rage Talon Flamescale
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10084'; -- Rage Talon Whelp
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10088'; -- Xao'tsu
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='10119'; -- Volchan
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='10120'; -- Vault Warder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10157'; -- Moonkin Oracle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10160'; -- Raging Moonkin
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000' WHERE `entry`='10177'; -- Spire Scarab
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10178'; -- Riding MechaStrider (Flourescent Green)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10179'; -- Riding MechaStrider (Black)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10180'; -- Riding MechaStrider (Steel)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='10181'; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10184'; -- Onyxia
UPDATE `creature_template` SET `Faction`='103', `SpeedWalk`='0.888888' WHERE `entry`='10196'; -- General Colbatann
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='10199'; -- Grizzle Snowpaw
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10200'; -- Rak'shiri
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10201'; -- Lady Hederine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10202'; -- Azurous
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10203'; -- Berylgos
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10221'; -- Bloodaxe Worg Pup
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10236'; -- Wep
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10237'; -- Yor <UNUSED>
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10238'; -- Staggon
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10239'; -- Tepolar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10257'; -- Bijou
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='10258'; -- Rookery Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10260'; -- Kibler
UPDATE `creature_template` SET `Faction`='40', `RangedBaseAttackTime`='1400' WHERE `entry`='10261'; -- Burning Felhound
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10262'; -- Opus
UPDATE `creature_template` SET `Faction`='40' WHERE `entry`='10263'; -- Burning Felguard
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='10265'; -- UNUSED [PH] Flamewreath Guard
UPDATE `creature_template` SET `Faction`='40', `SpeedRun`='1.42857' WHERE `entry`='10268'; -- Gizrul the Slavener
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='10290'; -- Captured Felwood Ooze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10291'; -- Krysteea
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10292'; -- Rombulus Frostmoon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10294'; -- Malakar Frostmoon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10295'; -- Jennail Mooncaller
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='10296'; -- Vaelan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10297'; -- Gerratys Nightrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10298'; -- Traelion Shadewhisper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10300'; -- Ranshalla
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10306'; -- Trull Failbane
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10316'; -- Blackhand Incarcerator
UPDATE `creature_template` SET `RangedBaseAttackTime`='2300' WHERE `entry`='10317'; -- Blackhand Elite
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10318'; -- Blackhand Assassin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10319'; -- Blackhand Iron Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10321'; -- Emberstrife
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10322'; -- Riding Tiger (White)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10323'; -- Murkdeep
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10336'; -- Riding Tiger (Leopard)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10337'; -- Riding Tiger (Orange)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='10338'; -- Riding Tiger (Gold)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='10339'; -- Gyth
UPDATE `creature_template` SET `Faction`='250' WHERE `entry`='10340'; -- Vaelastrasz the Red
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10356'; -- Bayne
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10360'; -- Kergul Bloodaxe
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10363'; -- General Drakkisath
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10364'; -- Yaelika Farclaw
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='10366'; -- Rage Talon Dragon Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10367'; -- Shrye Ragefist
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10370'; -- [UNUSED] Xur'gyl
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='10371'; -- Rage Talon Captain
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.42857' WHERE `entry`='10372'; -- Rage Talon Fire Tongue
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10373'; -- Xabraxxis
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10374'; -- Spire Spider
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10375'; -- Spire Spiderling
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10376'; -- Crystal Fang
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10377'; -- Elu
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10379'; -- Altsoba Ragetotem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10381'; -- Ravaged Cadaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10382'; -- Mangled Cadaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10384'; -- Spectral Citizen
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10385'; -- Ghostly Citizen
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='10387'; -- Vengeful Phantom
UPDATE `creature_template` SET `RangedBaseAttackTime`='1562', `SpeedWalk`='1.11111' WHERE `entry`='10388'; -- Spiteful Phantom
UPDATE `creature_template` SET `RangedBaseAttackTime`='1551', `SpeedWalk`='1.11111' WHERE `entry`='10389'; -- Wrath Phantom
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10390'; -- Skeletal Guardian
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10391'; -- Skeletal Berserker
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000' WHERE `entry`='10393'; -- Skul
UPDATE `creature_template` SET `Faction`='974' WHERE `entry`='10394'; -- Black Guard Sentry
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10395'; -- Black Guard Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10397'; -- Black Guard Executioner
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1' WHERE `entry`='10398'; -- Thuzadin Shadowcaster
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='10399'; -- Thuzadin Acolyte
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1' WHERE `entry`='10400'; -- Thuzadin Necromancer
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='10404'; -- [UNUSED] Fetid Wight
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='10405'; -- Plague Ghoul
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='10406'; -- Ghoul Ravener
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='10407'; -- Fleshflayer Ghoul
UPDATE `creature_template` SET `Faction`='21', `RangedBaseAttackTime`='2000' WHERE `entry`='10411'; -- Eye of Naxxramas
UPDATE `creature_template` SET `RangedBaseAttackTime`='2800' WHERE `entry`='10414'; -- Patchwork Horror
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10418'; -- Crimson Guardsman
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10419'; -- Crimson Conjuror
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10420'; -- Crimson Initiate
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10421'; -- Crimson Defender
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10422'; -- Crimson Sorcerer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10423'; -- Crimson Priest
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10424'; -- Crimson Gallant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10425'; -- Crimson Battle Mage
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10426'; -- Crimson Inquisitor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400', `SpeedRun`='1.42857' WHERE `entry`='10429'; -- Warchief Rend Blackhand
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10430'; -- The Beast
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500' WHERE `entry`='10433'; -- Marduk Blackpool
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400', `SpeedWalk`='0.8' WHERE `entry`='10435'; -- Magistrate Barthilas
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10442'; -- Chromatic Whelp
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `entry`='10447'; -- Chromatic Dragonspawn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10449'; -- Emily Vaccar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10451'; -- Sarah Arello
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10452'; -- Farbrahm Steelfist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10453'; -- Grimbur Flintaxe
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10454'; -- Filliwick Featherfizz
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10459'; -- Rend on Drake Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10466'; -- Styleen Silvercart
UPDATE `creature_template` SET `Faction`='233', `SpeedWalk`='1' WHERE `entry`='10473'; -- Scholomance Shadowcaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1000', `SpeedRun`='1.71429' WHERE `entry`='10478'; -- Splintered Skeleton
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10479'; -- Skulking Corpse
UPDATE `creature_template` SET `SpeedRun`='0.571429' WHERE `entry`='10480'; -- Unstable Corpse
UPDATE `creature_template` SET `SpeedRun`='0.428571' WHERE `entry`='10481'; -- Reanimated Corpse
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10483'; -- Risen Flayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10484'; -- Risen Terror
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='10485'; -- Risen Aberration
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='10486'; -- Risen Warrior
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='10487'; -- Risen Protector
UPDATE `creature_template` SET `SpeedRun`='1.19048' WHERE `entry`='10488'; -- Risen Construct
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='10489'; -- Risen Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10492'; -- Risen Shadowmage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10493'; -- Risen Sorcerer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10494'; -- Decrepit Ghoul
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='10495'; -- Diseased Ghoul
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10497'; -- Ragged Ghoul
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10498'; -- Spectral Tutor
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10499'; -- Spectral Researcher
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10500'; -- Spectral Teacher
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10506'; -- Kirtonos the Herald (s.18116)
UPDATE `creature_template` SET `SpeedWalk`='0.8' WHERE `entry`='10507'; -- The Ravenian
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10509'; -- Jed Runewatcher
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10510'; -- Plagued Slime
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='10516'; -- The Unforgiven
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10537'; -- Cliffwatcher Longhorn
UPDATE `creature_template` SET `Faction`='250' WHERE `entry`='10538'; -- Vaelastrasz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10539'; -- Hagar Lightninghoof
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10558'; -- Hearthsinger Forresten
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10579'; -- Kirtonos the Herald (Spell Visual)
UPDATE `creature_template` SET `RangedBaseAttackTime`='3200' WHERE `entry`='10584'; -- Urok Doomhowl
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='10596'; -- Mother Smolderweb
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10601'; -- Urok Enforcer
UPDATE `creature_template` SET `Faction`='40', `RangedBaseAttackTime`='2000' WHERE `entry`='10602'; -- Urok Ogre Magus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10603'; -- Hallucination
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='10604'; -- Huntress Nhemai
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='10606'; -- Huntress Yaeliura
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='10619'; -- Glacier
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='10640'; -- Oakpaw
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='10641'; -- Branch Snapper
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='10642'; -- Eck'alom
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10643'; -- Mugglefin
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10644'; -- Mist Howler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10645'; -- Thalia Amberhide
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10647'; -- Prince Raze
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10656'; -- Guardian Felhunter
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10657'; -- Corrupted Cat
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='10658'; -- Winna's Kitten
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10659'; -- Cobalt Whelp
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10660'; -- Cobalt Broodling
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10661'; -- Spell Eater
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10662'; -- Spellmaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10663'; -- Manaclaw
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='10664'; -- Scryer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10668'; -- Beaten Corpse
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='10676'; -- Raider Jhash
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='10678'; -- Plagued Hatchling
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='10682'; -- Raider Kerr
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='10683'; -- Rookery Hatcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10684'; -- Remorseful Highborne
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='10697'; -- Bile Slime
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10698'; -- Summoned Zombie
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10718'; -- Shahram
UPDATE `creature_template` SET `Faction`='29' WHERE `entry`='10719'; -- Herald of Thrall
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='1500', `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10737'; -- Shy-Rotam
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10739'; -- Mulgris Deepriver
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='10741'; -- Sian-Rotam
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10742'; -- Blackhand Dragon Handler
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='0.857143' WHERE `entry`='10756'; -- Scalding Elemental
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='0.857143' WHERE `entry`='10757'; -- Boiling Elemental
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10762'; -- Blackhand Thug
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='10776'; -- Finkle Einhorn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10783'; -- Orb of Deception (Orc, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10784'; -- Orb of Deception (Orc, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10785'; -- Orb of Deception (Tauren, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10786'; -- Orb of Deception (Tauren, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10787'; -- Orb of Deception (Troll, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10788'; -- Orb of Deception (Troll, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10789'; -- Orb of Deception (Undead, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10790'; -- Orb of Deception (Undead, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10791'; -- Orb of Deception (Dwarf, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10792'; -- Orb of Deception (Dwarf, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10793'; -- Orb of Deception (Gnome, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10794'; -- Orb of Deception (Gnome, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10795'; -- Orb of Deception (Human, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10796'; -- Orb of Deception (Human, Female)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10797'; -- Orb of Deception (NightElf, Male)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10798'; -- Orb of Deception (Nightelf, Female)
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='10799'; -- Warosh
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='10800'; -- Warosh the Redeemed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10802'; -- Hitah'ya the Keeper
UPDATE `creature_template` SET `RangedBaseAttackTime`='1400' WHERE `entry`='10808'; -- Timmy the Cruel
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10811'; -- Archivist Galford
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10812'; -- Grand Crusader Dathrohan
UPDATE `creature_template` SET `Faction`='67', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10813'; -- Balnazzar
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600', `RangedBaseAttackTime`='2600' WHERE `entry`='10814'; -- Chromatic Elite Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10818'; -- Death Knight Soulbearer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10819'; -- Baron Bloodbane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10820'; -- Duke Ragereaver
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1.6' WHERE `entry`='10821'; -- Hed'mush the Rotting
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10822'; -- Warlord Thresh'jin
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1' WHERE `entry`='10823'; -- Zul'Brin Warpbranch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10824'; -- Ranger Lord Hawkspear
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='10825'; -- Gish the Unmoving
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='10826'; -- Lord Darkscythe
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1' WHERE `entry`='10827'; -- Deathspeaker Selendre
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10828'; -- High General Abbendis
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='10876'; -- Undead Scarab
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='10882'; -- Arikara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10898'; -- Blackhand Armorsmith
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10899'; -- Goraluk Anvilcrack
UPDATE `creature_template` SET `Faction`='35', `RangedBaseAttackTime`='2000' WHERE `entry`='10917'; -- Aurius
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10936'; -- Joseph Redpath
UPDATE `creature_template` SET `Faction`='250', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10937'; -- Captain Redpath
UPDATE `creature_template` SET `Faction`='974', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10938'; -- Redpath the Corrupted
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='10939'; -- Marduk the Black
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='10943'; -- Decrepit Guardian
UPDATE `creature_template` SET `Faction`='250', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10944'; -- Davil Lightfire
UPDATE `creature_template` SET `Faction`='35', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10945'; -- Davil Crokford
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.777776' WHERE `entry`='10946'; -- Horgus the Ravager
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10947'; -- Darrowshire Betrayer
UPDATE `creature_template` SET `Faction`='495', `SpeedWalk`='1' WHERE `entry`='10948'; -- Darrowshire Defender
UPDATE `creature_template` SET `Faction`='250', `SpeedWalk`='1' WHERE `entry`='10949'; -- Silver Hand Disciple
UPDATE `creature_template` SET `Faction`='250', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10950'; -- Redpath Militia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10951'; -- Marauding Corpse
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='10952'; -- Marauding Skeleton
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='10953'; -- Servant of Horgus
UPDATE `creature_template` SET `Faction`='974', `SpeedWalk`='1' WHERE `entry`='10954'; -- Bloodletter
UPDATE `creature_template` SET `Faction`='67', `SpeedWalk`='1.55556', `SpeedRun`='1.14286' WHERE `entry`='10955'; -- Summoned Water Elemental
UPDATE `creature_template` SET `SpeedRun`='2.57143' WHERE `entry`='10981'; -- Frostwolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10982'; -- Whitewhisker Vermin
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10983'; -- Winterax Troll
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='10984'; -- Winterax Berserker (1166M) (1283R)
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10985'; -- Ice Giant
UPDATE `creature_template` SET `SpeedWalk`='1', `RangedBaseAttackTime`='3000' WHERE `entry`='10988'; -- Kodo Spirit
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='10989'; -- Blizzard Elemental
UPDATE `creature_template` SET `SpeedRun`='2.57143' WHERE `entry`='10990'; -- Alterac Ram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10991'; -- Wildpaw Gnoll
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10993'; -- Twizwick Sprocketgrind
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='10997'; -- Cannon Master Willey
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11021'; -- Riding Tiger (Winterspring)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11027'; -- Illusory Wraith
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='11030'; -- Mindless Undead
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11032'; -- Malor the Zealous
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='11043'; -- Crimson Monk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11045'; -- Burns
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='0.777776' WHERE `entry`='11075'; -- Cauldron Lord Bilemaw
UPDATE `creature_template` SET `SpeedWalk`='0.888888' WHERE `entry`='11077'; -- Cauldron Lord Malvinious
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='11078'; -- Cauldron Lord Soulwrath
UPDATE `creature_template` SET `Faction`='21' WHERE `entry`='11082'; -- Stratholme Courier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11098'; -- Hahrana Ironhide
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='11100'; -- Mana Tide Totem II
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='11102'; -- Argent Rider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11103'; -- Innkeeper Lyshaerya
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11105'; -- Aboda
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11106'; -- Innkeeper Sikewa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11116'; -- Innkeeper Abeqwa
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11117'; -- Awenasa
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11120'; -- Crimson Hammersmith
UPDATE `creature_template` SET `SpeedWalk`='6', `SpeedRun`='2.14286' WHERE `entry`='11122'; -- Restless Soul
UPDATE `creature_template` SET `SpeedWalk`='6', `SpeedRun`='2.14286' WHERE `entry`='11136'; -- Freed Soul
UPDATE `creature_template` SET `Faction`='90', `SpeedWalk`='1' WHERE `entry`='11141'; -- Spirit of Trey Lightforge
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='11142'; -- Undead Postman
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='11144'; -- Oracle Sphere
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11147'; -- Riding MechaStrider (Green/Gray)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11148'; -- Riding MechaStrider (Purple)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11149'; -- Riding MechaStrider (Red/Blue)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11150'; -- Riding MechaStrider (Icy Blue)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11151'; -- Riding MechaStrider (Yellow/Green)
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='11153'; -- Riding Skeletal Horse (Red)
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='11154'; -- Riding Skeletal Horse (Blue)
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11155'; -- Riding Skeletal Horse (Brown)
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='11198'; -- Broken Exile
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11256'; -- Manifestation of Water
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='11261'; -- Doctor Theolen Krastinov
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11262'; -- Onyxian Whelp
UPDATE `creature_template` SET `Faction`='1600' WHERE `entry`='11276'; -- Azshara Sentinel
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='11278'; -- Magnus Frostwake
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11279'; -- Caer Darrow Guardsman
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11280'; -- Caer Darrow Cannoneer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11282'; -- Melia
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11283'; -- Sammy
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='11284'; -- Dark Shade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11292'; -- Mossflayer Berserker
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='11296'; -- Darrowshire Poltergeist
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11316'; -- Joseph Dirte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11317'; -- Jinar'Zillen
UPDATE `creature_template` SET `SpeedWalk`='1.6', `SpeedRun`='1.42857' WHERE `entry`='11379'; -- [UNUSED] Nik'reesh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11381'; -- Jin
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571', `RangedBaseAttackTime`='2500' WHERE `entry`='11382'; -- Bloodlord Mandokir
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11392'; -- Audrey Vergara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11393'; -- Josh Miller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11394'; -- Lauren Preston
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11395'; -- Kevin Faulder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11396'; -- Joelle McCarthy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11398'; -- Charisse Moonrunner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11399'; -- Ashlyn Vor'lair
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11400'; -- Ann'rimor Falchi
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11402'; -- Jarvis Greenhammer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11403'; -- Russle Hochstein
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11404'; -- Dillon Gregor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11405'; -- Diana Battleheart
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11408'; -- Watna
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11409'; -- Jo'bu
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11410'; -- Shal'vol
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11411'; -- Priestess Kara'van
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11412'; -- Danielle Koppen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11413'; -- Vincent Wilfork
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11414'; -- Nicole Tarlow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11415'; -- Amber Provost
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11416'; -- Thomas Brady
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11437'; -- Minor Infernal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11438'; -- Bibbly F'utzbuckle
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11439'; -- Illusion of Jandice Barov
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='11447'; -- Mushgog
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11459'; -- Ironbark Protector
UPDATE `creature_template` SET `Faction`='1355', `RangedBaseAttackTime`='2000' WHERE `entry`='11466'; -- Highborne Summoner
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='11467'; -- Tsu'zee
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='11469'; -- Eldreth Seether
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11470'; -- Eldreth Sorcerer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11471'; -- Eldreth Apparition
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11472'; -- Eldreth Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11473'; -- Eldreth Spectre
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11474'; -- Eldreth Wraith
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11475'; -- Eldreth Phantasm
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11476'; -- Skeletal Highborne
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11477'; -- Rotting Highborne
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11479'; -- Arcane Horror
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11480'; -- Arcane Aberration
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11483'; -- Mana Remnant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11484'; -- Residual Monstrosity
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11487'; -- Magister Kalendris
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11488'; -- Illyanna Ravenoak
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11489'; -- Tendris Warpwood
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11496'; -- Immol'thar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='11497'; -- The Razza
UPDATE `creature_template` SET `Faction`='45', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.6' WHERE `entry`='11498'; -- Skarr the Unbreakable
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11499'; -- [UNUSED] Commander Gormaul
UPDATE `creature_template` SET `Faction`='45', `RangedBaseAttackTime`='2000' WHERE `entry`='11500'; -- [UNUSED] Majordomo Bagrosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11521'; -- Kodo Apparition
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11547'; -- Skeletal Scholomance Student
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11549'; -- Austin Burwell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11550'; -- Taylor Burwell
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='11559'; -- Outcast Necromancer
UPDATE `creature_template` SET `Faction`='7', `SpeedWalk`='0.666668' WHERE `entry`='11560'; -- Magrami Spectre
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11562'; -- Drysnap Crawler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11563'; -- Drysnap Pincer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='11564'; -- Gizelton Caravan Kodo
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11579'; -- Tempest
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11580'; -- Kelemis the Lifeless
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='2.14286' WHERE `entry`='11583'; -- Nefarian (s.25184)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11596'; -- Smeed Scrabblescrew
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11597'; -- Cheveyo
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='11598'; -- Risen Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11603'; -- Whitewhisker Digger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11604'; -- Whitewhisker Geomancer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11605'; -- Whitewhisker Overseer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11606'; -- Whitewhisker Tunnel Rat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11610'; -- Kirsta Deepshadow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11617'; -- Digger "The Wrench" Veriatus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11618'; -- Archmage Antonio
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11619'; -- Merchant Bolden
UPDATE `creature_template` SET `SpeedRun`='1.19048' WHERE `entry`='11622'; -- Rattlegore
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='11623'; -- Scourge Summoning Crystal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11624'; -- Taiga Wisemane
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='11625'; -- Cork Gizelton
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='11626'; -- Rigger Gizelton
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11636'; -- Servant of Weldon Barov
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='11660'; -- [UNUSED] Molten Colossus
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='11676'; -- Fjordune the Greater
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11677'; -- Taskmaster Snivvle
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='11679'; -- Winterax Witch Doctor (1158M) (1274R)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11683'; -- Warsong Shaman
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='11685'; -- Maraudine Priest
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='11686'; -- Ghostly Raider
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='11687'; -- Ghostly Marauder
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='11688'; -- Cursed Centaur
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11689'; -- Riding Kodo (Brown)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11696'; -- Chal Fairwind
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11697'; -- Mannoroc Lasher
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='11701'; -- Mor'vek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11703'; -- Graw Cornerstone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11705'; -- Rayan Dawnrisen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11707'; -- Joy Ar'nareth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11708'; -- Coral Moongale
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='11711'; -- Sentinel Aynasha
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11715'; -- Talendria
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11719'; -- Navi Quickdraw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11720'; -- Loruk Foreststrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11722'; -- Hive'Ashi Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11742'; -- Silt Grub
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11743'; -- Silt Devourer
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='11744'; -- Dust Stormer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11752'; -- Blaise Montgomery
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='11776'; -- Salome
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11777'; -- Shadowshard Rumbler
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11778'; -- Shadowshard Smasher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11779'; -- Shadowshard Thunderer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11780'; -- Ambershard Rager
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11781'; -- Ambershard Crusher
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11782'; -- Ambershard Destroyer
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11783'; -- Theradrim Shardling
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11784'; -- Theradrim Guardian
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='11785'; -- Ambereye Basilisk
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='11786'; -- Ambereye Reaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11787'; -- Rock Borer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11788'; -- Rock Worm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11789'; -- Deep Borer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11790'; -- Putridus Satyr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11791'; -- Putridus Trickster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11792'; -- Putridus Shadowstalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11793'; -- Celebrian Dryad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11794'; -- Sister of Celebrian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11799'; -- Tajarri
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11808'; -- Grum Redbeard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11809'; -- Danni Palewing
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11815'; -- Voriya
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='11817'; -- Krah'ranik
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11818'; -- Orik'ando
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='11819'; -- Jory Zaga
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11823'; -- Vark Battlescar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11829'; -- Fahrak
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='11835'; -- Theodore Griffs
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11836'; -- Captured Rabid Thistle Bear
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11837'; -- Wildpaw Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11838'; -- Wildpaw Mystic
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11839'; -- Wildpaw Brute
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11840'; -- Wildpaw Alpha
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11859'; -- Doomguard
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='11862'; -- Tsunaman
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1.11111' WHERE `entry`='11874'; -- Masat T'andr
UPDATE `creature_template` SET `Faction`='55' WHERE `entry`='11875'; -- Mortar Team Target Dummy
UPDATE `creature_template` SET `Faction`='954' WHERE `entry`='11876'; -- Demon Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11877'; -- Roon Wildmane
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='11884'; -- Obi
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11885'; -- Blighthound
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='11886'; -- Mercutio Filthgorger
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='11887'; -- Crypt Robber
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11896'; -- Borelgore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11898'; -- Crusader Lord Valdelmar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11899'; -- Shardi
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11900'; -- Brakkar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11902'; -- Aiden
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11903'; -- Alexander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11904'; -- Noah
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11905'; -- Jordan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11906'; -- Sophia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11907'; -- Alanna
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11908'; -- Mirah
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11909'; -- Penelope
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11919'; -- Claudia
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='11920'; -- Goggeroc
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11926'; -- [PH] Northshire Gift Dispenser
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='11937'; -- Demon Portal Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11938'; -- Young Tirion
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='11946'; -- Drek'Thar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11956'; -- Great Bear Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11958'; -- Gracchus Spiritlight
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='11996'; -- Ashley Bridenbecker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11998'; -- Frostwolf Herald
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12020'; -- Moonglade Alchemy Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12023'; -- Kharedon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12027'; -- Tukk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12028'; -- Lah'Mawhani
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12030'; -- Malux
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12031'; -- Mai'Lahii
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12032'; -- Lui'Mala
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12033'; -- Wulan
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12035'; -- Aerie Peak Mining Trainer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12036'; -- Aerie Peak General Goods
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12037'; -- Ursol'lok
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12039'; -- Aerie Peak Meat Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12040'; -- Aerie Peak Mail Armor Vendor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12044'; -- Sun Rock Blacksmithing Supplies
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12045'; -- Hae'Wilani
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12048'; -- Alliance Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12052'; -- Frostwolf Warrior
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='12053'; -- Frostwolf Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12054'; -- Dawnchaser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12097'; -- Frostwolf Quartermaster
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='12120'; -- Plagueland Termite
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='12121'; -- Drakan
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='12122'; -- Duros
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000' WHERE `entry`='12124'; -- Great Shark
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='12125'; -- Mammoth Shark
UPDATE `creature_template` SET `Faction`='290', `RangedBaseAttackTime`='2000' WHERE `entry`='12126'; -- Lord Tirion Fordring
UPDATE `creature_template` SET `Faction`='103', `RangedBaseAttackTime`='2000' WHERE `entry`='12129'; -- Onyxian Warder
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12138'; -- Lunaclaw
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12142'; -- Flamewaker Guardian
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='12143'; -- Son of Flame
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12144'; -- Lunaclaw Spirit
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12145'; -- Riding Kodo (Black)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12146'; -- Riding Kodo (Olive)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12147'; -- Riding Kodo (White)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12149'; -- Riding Kodo (Gray)
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='12152'; -- Voice of Elune
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12156'; -- Winterax Axe Thrower
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='12157'; -- Winterax Shadow Hunter (1158M) (1274R)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='12158'; -- Winterax Hunter (1191M) (1310R)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `RangedBaseAttackTime`='1500' WHERE `entry`='12159'; -- Korrak the Bloodrager (1133M) (1246R)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12176'; -- Tame Kodo
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12177'; -- Kyle Blackthorne
UPDATE `creature_template` SET `Faction`='91' WHERE `entry`='12180'; -- Anubisath
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12196'; -- Innkeeper Kaylisk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12198'; -- Martin Lindsey
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12199'; -- Shade of Ambermoon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12200'; -- Cobaltine Wyrmkin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12201'; -- Princess Theradras
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12202'; -- Human Skull
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='12203'; -- Landslide
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12204'; -- Spitelash Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12205'; -- Spitelash Witch
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='12206'; -- Primordial Behemoth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12207'; -- Thessala Hydra
UPDATE `creature_template` SET `Faction`='85', `RangedBaseAttackTime`='2000' WHERE `entry`='12208'; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12216'; -- Poison Sprite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12217'; -- Corruptor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12218'; -- Vile Larva
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12219'; -- Barbed Lasher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12220'; -- Constrictor Vine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12221'; -- Noxious Slime
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='0.285714' WHERE `entry`='12222'; -- Creeping Sludge
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12223'; -- Cavern Lurker
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12224'; -- Cavern Shambler
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='12225'; -- Celebras the Cursed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12236'; -- Lord Vyletongue
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12237'; -- Meshlok the Harvester
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12239'; -- Spirit of Gelk
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12240'; -- Spirit of Kolk
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12241'; -- Spirit of Magra
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12242'; -- Spirit of Maraudos
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='12243'; -- Spirit of Veng
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12244'; -- Mark of Detonation (NW)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.885714' WHERE `entry`='12245'; -- Vendor-Tron 1000
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12248'; -- Infiltrator Hameya
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12253'; -- Mark of Detonation (CSH)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12258'; -- Razorlash
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12260'; -- Onyxian Drake
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12261'; -- Infected Mossflayer
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='12265'; -- Lava Spawn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12277'; -- Melizza Brimbuzzle
UPDATE `creature_template` SET `Faction`='188', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='12297'; -- Cured Gazelle
UPDATE `creature_template` SET `Faction`='188', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='12299'; -- Cured Deer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12320'; -- Burning Blade Crusher
UPDATE `creature_template` SET `Faction`='74' WHERE `entry`='12321'; -- Stormscale Toxicologist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12322'; -- Quel'Lithien Protector
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12337'; -- Crimson Courier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12340'; -- Drulzegar Skraghook
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12344'; -- Swift Green Skeletal Horse
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12345'; -- Mottled Red Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12346'; -- Emerald Raptor
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12348'; -- Ivory Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12349'; -- Turquoise Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12350'; -- Violet Raptor
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='12352'; -- Scarlet Trooper
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12361'; -- Riding Nightsaber
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12362'; -- Riding Frostsaber
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12364'; -- Icy Blue Mechanostrider Mod A
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12365'; -- Red Mechanostrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12368'; -- White Mechanostrider Mod A
UPDATE `creature_template` SET `Faction`='74' WHERE `entry`='12369'; -- Lord Kragaru
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12370'; -- Black Ram
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='12371'; -- Frost Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12372'; -- Brown Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12373'; -- Gray Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12374'; -- White Riding Ram
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='12384'; -- Augustus the Touched
UPDATE `creature_template` SET `Faction`='55' WHERE `entry`='12385'; -- Mortar Team Advanced Target Dummy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12386'; -- Magus Kyara
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12387'; -- Large Vile Slime
UPDATE `creature_template` SET `Faction`='90', `SpeedWalk`='2', `SpeedRun`='1.42857' WHERE `entry`='12397'; -- Lord Kazzak
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='12418'; -- Gordok Hyena
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='12426'; -- Masterwork Target Dummy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12433'; -- Krethis Shadowspinner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400' WHERE `entry`='12467'; -- Death Talon Captain
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12496'; -- Dreamtracker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12497'; -- Dreamroarer
UPDATE `creature_template` SET `SpeedWalk`='1.38889' WHERE `entry`='12579'; -- Bloodfury Ripper
UPDATE `creature_template` SET `Faction`='534' WHERE `entry`='12580'; -- Reginald Windsor
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='12581'; -- Mercutio
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12616'; -- Vhulgra
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12657'; -- Don Pompa
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='12678'; -- Ursangous
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12696'; -- Senani Thunderheart
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12720'; -- Framnali
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12722'; -- Vera Nightshade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12723'; -- Har'alen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12724'; -- Pixel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12737'; -- Mastok Wrilehiss
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='1.42857' WHERE `entry`='12739'; -- Onyxia's Elite Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12741'; -- Warrior 40 (More Leash)
UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='12756'; -- Lady Onyxia
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12776'; -- Hraug
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12789'; -- Blood Guard Hini'wana
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12790'; -- Advisor Willington
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12791'; -- Chieftain Earthbind
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12792'; -- Lady Palanseer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12794'; -- Stone Guard Zarg
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12795'; -- First Sergeant Hola'mahi
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedRun`='1.14286' WHERE `entry`='12796'; -- Raider Bork
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12800'; -- Chimaerok
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12801'; -- Arcane Chimaerok
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1200', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12802'; -- Chimaerok Devourer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='12803'; -- Lord Lakmaeran
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12805'; -- Officer Areyn
UPDATE `creature_template` SET `Faction`='54' WHERE `entry`='12806'; -- Magmakin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12819'; -- Ruul Snowhoof Bear Form
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='12836'; -- Wandering Protector
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12837'; -- Yama Snowhoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12857'; -- Elogit
UPDATE `creature_template` SET `Faction`='124', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12860'; -- Duriel Moonfire
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='12864'; -- Warsong Outrider
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1.55556' WHERE `entry`='12876'; -- Baron Aquanis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12877'; -- Ertog Ragetusk
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12898'; -- Phantim Illusion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12899'; -- Axtroz
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='12900'; -- Somnus
UPDATE `creature_template` SET `Faction`='82', `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='12918'; -- Chief Murgut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12920'; -- Doctor Gregory Victor
UPDATE `creature_template` SET `Faction`='83' WHERE `entry`='12923'; -- Injured Soldier
UPDATE `creature_template` SET `Faction`='83' WHERE `entry`='12924'; -- Badly Injured Soldier
UPDATE `creature_template` SET `Faction`='83' WHERE `entry`='12925'; -- Critically Injured Soldier
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12936'; -- Badly Injured Alliance Soldier
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12937'; -- Critically Injured Alliance Soldier
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='12938'; -- Injured Alliance Soldier
UPDATE `creature_template` SET `Faction`='74' WHERE `entry`='12940'; -- Vorsha the Lasher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12957'; -- Blimo Gadgetspring
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12958'; -- Gigget Zipcoil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12960'; -- Christi Galvanis
UPDATE `creature_template` SET `Faction`='130', `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='12976'; -- Kolkar Waylayer
UPDATE `creature_template` SET `Faction`='130', `SpeedWalk`='0.666668', `SpeedRun`='1.42857' WHERE `entry`='12977'; -- Kolkar Ambusher
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='12996'; -- Mounted Ironforge Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='13017'; -- Enthralled Deeprun Rat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13078'; -- Umi Thorson
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13079'; -- Keetar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13080'; -- Irondeep Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13081'; -- Irondeep Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13082'; -- Milton Beats
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13083'; -- Echo of Archimonde
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13086'; -- Aggi Rumblestomp
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13087'; -- Coldmine Invader
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13088'; -- Masha Swiftcut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13089'; -- Coldmine Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13097'; -- Coldmine Surveyor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13098'; -- Irondeep Surveyor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13099'; -- Irondeep Explorer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13118'; -- Crimson Bodyguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13137'; -- Lieutenant Rugba
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13138'; -- Lieutenant Spencer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13139'; -- Commander Randolph
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13140'; -- Commander Dardosh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13141'; -- Deeprot Stomper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13142'; -- Deeprot Tangler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13143'; -- Lieutenant Stronghoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13144'; -- Lieutenant Vol'talar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13147'; -- Lieutenant Lewis
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13149'; -- Syndicate Brigand (1216M) (1338R)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13150'; -- Syndicate Agent (1183M) (1301R)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13151'; -- Syndicate Master Ryson (1175M) (1292R)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13152'; -- Commander Malgor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13153'; -- Commander Mulfort
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13154'; -- Commander Louis Philips
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='13156'; -- Carrosh
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='13160'; -- Carrion Swarmer
UPDATE `creature_template` SET `Faction`='1216', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='13161'; -- Aerie Gryphon (s.21190)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13176'; -- Smith Regzar
UPDATE `creature_template` SET `Faction`='1214', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='13178'; -- War Rider (s.21190)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13180'; -- Wing Commander Jeztor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13181'; -- Wing Commander Mulverick
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13218'; -- Grunnda Wolfheart
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13219'; -- Jekyll Flandring
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13220'; -- Layo Starstrike
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='2' WHERE `entry`='13236'; -- Primalist Thurloga
UPDATE `creature_template` SET `Faction`='1214' WHERE `entry`='13256'; -- Lokholar the Ice Lord
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='1.14286' WHERE `entry`='13278'; -- Duke Hydraxis
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='13279'; -- Discordant Surge
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='1.14286' WHERE `entry`='13280'; -- Hydrospawn
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='13281'; -- Furis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13282'; -- Noxxion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13284'; -- Frostwolf Shaman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13296'; -- Lieutenant Largent
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13297'; -- Lieutenant Stouthandle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13298'; -- Lieutenant Greywand
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13299'; -- Lieutenant Lonadin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13300'; -- Lieutenant Mancuso
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='13301'; -- Hive'Ashi Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13316'; -- Coldmine Peon
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='13317'; -- Coldmine Miner
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='13318'; -- Commander Mortimer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13319'; -- Commander Duffy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13320'; -- Commander Karl Philips
UPDATE `creature_template` SET `SpeedWalk`='1.55556' WHERE `entry`='13322'; -- Hydraxian Honor Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13323'; -- Subterranean Diemetradon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13324'; -- Seasoned Guardsman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13325'; -- Seasoned Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13326'; -- Seasoned Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13327'; -- Seasoned Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13328'; -- Seasoned Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13329'; -- Seasoned Legionnaire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13330'; -- Seasoned Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13331'; -- Veteran Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13332'; -- Veteran Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13333'; -- Veteran Guardsman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13334'; -- Veteran Legionnaire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13335'; -- Veteran Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13336'; -- Veteran Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13337'; -- Veteran Warrior
UPDATE `creature_template` SET `Faction`='1081' WHERE `entry`='13338'; -- Core Rat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13339'; -- Warrior 60
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13356'; -- Stormpike Mine Layer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13357'; -- Frostwolf Mine Layer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13378'; -- Frostwolf Shredder Unit (1150M) (1265R)
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='13396'; -- Irondeep Miner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13397'; -- Irondeep Peon
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13416'; -- Stormpike Shredder Unit (1175M) (1292R)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13418'; -- Kaymard Copperpinch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13420'; -- Penney Copperpinch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13422'; -- Champion Defender
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13424'; -- Champion Guardsman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13425'; -- Champion Legionnaire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13426'; -- Champion Mountaineer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13427'; -- Champion Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13428'; -- Champion Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13429'; -- Nardstrum Copperpinch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13430'; -- Jaycrue Copperpinch
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='13431'; -- Whulwert Copperpinch
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='13432'; -- Seersa Copperpinch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13433'; -- Wulmort Jinglepocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13434'; -- Macey Jinglepocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13435'; -- Khole Jinglepocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13436'; -- Guchie Jinglepocket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13437'; -- Wing Commander Ichman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13438'; -- Wing Commander Slidore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13439'; -- Wing Commander Vipore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13440'; -- Frostwolf Wolf Rider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='13441'; -- Frostwolf Wolf Rider Commander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13442'; -- Arch Druid Renferal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13443'; -- Druid of the Grove
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13444'; -- Greatfather Winter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13445'; -- Great-father Winter
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13446'; -- Field Marshal Teravaine (1141M) (1255R)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13448'; -- Sergeant Yazra Bloodsnarl
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13449'; -- Warmaster Garrick
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13456'; -- Noxxion's Spawn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13476'; -- Balai Lok'Wein
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13496'; -- Risen Ancient
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13516'; -- Frostwolf Outrunner
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13517'; -- Seasoned Outrunner
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13518'; -- Veteran Outrunner
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13519'; -- Champion Outrunner
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13520'; -- Stormpike Ranger
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13521'; -- Seasoned Ranger
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13522'; -- Veteran Ranger
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13523'; -- Champion Ranger
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13524'; -- Stormpike Commando
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13525'; -- Seasoned Commando
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13526'; -- Veteran Commando
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13527'; -- Champion Commando
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13528'; -- Frostwolf Reaver
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13529'; -- Seasoned Reaver
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13530'; -- Veteran Reaver
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13531'; -- Champion Reaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13533'; -- Spewed Larva
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13534'; -- Seasoned Coldmine Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13535'; -- Veteran Coldmine Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13536'; -- Champion Coldmine Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13539'; -- Champion Coldmine Surveyor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13542'; -- Champion Irondeep Explorer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13543'; -- Seasoned Irondeep Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13544'; -- Veteran Irondeep Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13545'; -- Champion Irondeep Raider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13548'; -- Champion Coldmine Explorer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13549'; -- Seasoned Coldmine Invader
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13550'; -- Veteran Coldmine Invader
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13551'; -- Champion Coldmine Invader
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13552'; -- Seasoned Irondeep Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13553'; -- Veteran Irondeep Guard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13554'; -- Champion Irondeep Guard
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13576'; -- Stormpike Ram Rider
UPDATE `creature_template` SET `Faction`='1216', `SpeedRun`='1.38571' WHERE `entry`='13577'; -- Stormpike Ram Rider Commander
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13596'; -- Rotgrip
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13597'; -- Frostwolf Explosives Expert
UPDATE `creature_template` SET `Faction`='1216', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13598'; -- Stormpike Explosives Expert
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13599'; -- Stolid Snapjaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13601'; -- Tinkerer Gizlock
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13601'; -- Tinkerer Gizlock
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13602'; -- The Abominable Greench
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13616'; -- Frostwolf Stable Master
UPDATE `creature_template` SET `Faction`='1214', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13618'; -- Stabled Frostwolf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13619'; -- Gizlock's Dummy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13620'; -- Gizlock
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='13636'; -- Strange Snowman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13656'; -- Willow
UPDATE `creature_template` SET `Faction`='1217', `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='13676'; -- Stabled Alterac Ram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13696'; -- Noxxious Scion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13697'; -- Cavindra
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13699'; -- Selendra
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='13718'; -- The Nameless Prophet
UPDATE `creature_template` SET `SpeedWalk`='0.666668' WHERE `entry`='13741'; -- Gelk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13743'; -- Corrupt Force of Nature
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13776'; -- Corporal Teeka Bloodsnarl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13798'; -- Jotek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13817'; -- Voggah Deathgrip
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13836'; -- Burning Blade Nightmare
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13837'; -- Captured Stallion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13840'; -- Warmaster Laggrond
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13856'; -- Alliance Res Fixer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13857'; -- Horde Res Fixer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='8' WHERE `entry`='13876'; -- Mekgineer Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13896'; -- Scalebeard
UPDATE `creature_template` SET `Faction`='37', `MeleeBaseAttackTime`='2000' WHERE `entry`='13956'; -- Winterax Mystic
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='13957'; -- Winterax Warrior (1158M) (1274R)
UPDATE `creature_template` SET `Faction`='37', `MeleeBaseAttackTime`='2000' WHERE `entry`='13958'; -- Winterax Seer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13977'; -- Gash'nak the Cannibal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14016'; -- Ushalac the Gloomdweller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14017'; -- Withered Troll
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14018'; -- Rezrelek
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14019'; -- Tatterhide
UPDATE `creature_template` SET `Faction`='37', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14021'; -- Winterax Sentry
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14042'; -- Rytama
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14061'; -- Phase Lasher (Fire)
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14062'; -- Phase Lasher (Nature)
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14063'; -- Phase Lasher (Arcane)
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='14081'; -- Demon Portal
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='14122'; -- Massive Geyser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14141'; -- Stormpike Reclaimer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14142'; -- Frostwolf Reclaimer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14144'; -- Taroen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14145'; -- Ja'ker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14146'; -- Urrul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14147'; -- Lorael
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14148'; -- Fre'an
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14161'; -- Karana
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14162'; -- RaidMage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14181'; -- [PH] Graveyard Herald
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14184'; -- Phase Lasher (Frost)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14185'; -- Najak Hexxen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14186'; -- Ravak Grimtotem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14221'; -- Gravis Slipknot
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='14222'; -- Araga
UPDATE `creature_template` SET `Faction`='7', `SpeedWalk`='1' WHERE `entry`='14224'; -- 7:XT
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14225'; -- Prince Kellen
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14226'; -- Kaskk
UPDATE `creature_template` SET `Faction`='49' WHERE `entry`='14227'; -- Hissperak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14228'; -- Giggler
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14229'; -- Accursed Slitherblade
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14231'; -- Drogoth the Roamer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14232'; -- Dart
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14233'; -- Ripscale
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14235'; -- The Rot
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14236'; -- Lord Angler
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14237'; -- Oozeworm
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14241'; -- Ironbark the Redeemed
UPDATE `creature_template` SET `Faction`='29', `MeleeBaseAttackTime`='2000' WHERE `entry`='14242'; -- [UNUSED] Sulhasa
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14261'; -- Blue Drakonid
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14263'; -- Bronze Drakonid
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14265'; -- Black Drakonid
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14266'; -- Shanda the Spinner
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14267'; -- Emogg the Crusher
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14268'; -- Lord Condar
UPDATE `creature_template` SET `SpeedWalk`='1.55556', `SpeedRun`='1.14286' WHERE `entry`='14269'; -- Seeker Aqualon
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='14273'; -- Boulderheart
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1' WHERE `entry`='14274'; -- Winterax Tracker
UPDATE `creature_template` SET `Faction`='88' WHERE `entry`='14275'; -- Tamra Stormpike
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28571' WHERE `entry`='14276'; -- Scargil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14279'; -- Creepthess
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14281'; -- Jimmy the Bleeder
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14303'; -- Petrified Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14305'; -- Human Orphan
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1.6' WHERE `entry`='14308'; -- Ferra
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14329'; -- Black War Wolf
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14330'; -- Black War Raptor
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14331'; -- Red Skeletal Warhorse
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14332'; -- Black War Steed
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14333'; -- Black War Kodo
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14334'; -- Black Battlestrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14335'; -- Black War Ram
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14336'; -- Black War Saber
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14338'; -- Knot Thimblejack
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='14339'; -- Death Howl
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14341'; -- Felendor the Accuser
UPDATE `creature_template` SET `Faction`='82', `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='14342'; -- Ragepaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14344'; -- Mongress
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14345'; -- The Ongar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14346'; -- Captain Greshkil
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14348'; -- Earthcaller Franzahl
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='14351'; -- Gordok Bushwacker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14352'; -- Duke Landressar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14355'; -- Azj'Tordin
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='14356'; -- Sawfin Frenzy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14358'; -- Shen'dralar Ancient
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14361'; -- Shen'dralar Wisp
UPDATE `creature_template` SET `Faction`='1355', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14364'; -- Shen'dralar Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14368'; -- Lorekeeper Lydros
UPDATE `creature_template` SET `Faction`='1355', `SpeedWalk`='1' WHERE `entry`='14371'; -- Shen'dralar Provisioner
UPDATE `creature_template` SET `Faction`='82', `RangedBaseAttackTime`='2800', `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='14372'; -- Winterfall Ambusher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14373'; -- Sage Korolusk
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='14378'; -- Huntress Skymane
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='14379'; -- Huntress Ravenoak
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='14380'; -- Huntress Leafrunner
UPDATE `creature_template` SET `Faction`='1355', `SpeedWalk`='1' WHERE `entry`='14381'; -- Lorekeeper Javon
UPDATE `creature_template` SET `Faction`='1355', `SpeedWalk`='1' WHERE `entry`='14382'; -- Lorekeeper Mykos
UPDATE `creature_template` SET `Faction`='1355', `SpeedWalk`='1' WHERE `entry`='14383'; -- Lorekeeper Kildrath
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14385'; -- Doomguard Minion
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='14389'; -- Netherwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14391'; -- Dire Maul Reaver Post
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14395'; -- Griniblix the Spectator
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='2.42857' WHERE `entry`='14396'; -- Eye of Immol'thar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14398'; -- Eldreth Darter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14399'; -- Arcane Torrent
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14400'; -- Arcane Feedback
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14402'; -- Seeker Cromwell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14404'; -- Seeker Thompson
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14406'; -- Roving Kodo
UPDATE `creature_template` SET `SpeedWalk`='1.2' WHERE `entry`='14425'; -- Gnawbone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14427'; -- Gibblesnik
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='14428'; -- Uruson
UPDATE `creature_template` SET `SpeedWalk`='0.666668', `SpeedRun`='0.992063' WHERE `entry`='14429'; -- Grimmaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14430'; -- Duskstalker
UPDATE `creature_template` SET `SpeedWalk`='1.38889', `SpeedRun`='0.857143' WHERE `entry`='14431'; -- Fury Shelda
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='14432'; -- Threggil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14434'; -- Alarm-o-Bot
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14435'; -- Prince Thunderaan
UPDATE `creature_template` SET `Faction`='29', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14444'; -- Orcish Orphan
UPDATE `creature_template` SET `SpeedWalk`='1.6' WHERE `entry`='14446'; -- Fingat
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='14448'; -- Molt Thorn
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14454'; -- The Windreaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14457'; -- Princess Tempestria
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14461'; -- Baron Charr
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14462'; -- Thundering Invader
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14463'; -- Daio the Decrepit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14464'; -- Avalanchion
UPDATE `creature_template` SET `Faction`='58' WHERE `entry`='14465'; -- Alliance Battle Standard
UPDATE `creature_template` SET `Faction`='58' WHERE `entry`='14466'; -- Horde Battle Standard
UPDATE `creature_template` SET `Faction`='91' WHERE `entry`='14471'; -- Setis
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='14472'; -- Gretheer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14473'; -- Lapress
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14477'; -- Grubthor
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='14478'; -- Huricanian
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14481'; -- Emmithue Smails
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14482'; -- Xorothian Imp
UPDATE `creature_template` SET `Faction`='290', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.4' WHERE `entry`='14484'; -- Injured Peasant
UPDATE `creature_template` SET `Faction`='290', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.8' WHERE `entry`='14485'; -- Plagued Peasant
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1' WHERE `entry`='14486'; -- Scourge Footsoldier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14487'; -- Gluggle
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='14489'; -- Scourge Archer
UPDATE `creature_template` SET `RangedBaseAttackTime`='900' WHERE `entry`='14490'; -- Rippa
UPDATE `creature_template` SET `Faction`='47', `SpeedWalk`='1' WHERE `entry`='14492'; -- Verifonix
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14493'; -- Priest Epic Event Caller
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14495'; -- Invisible Trigger One
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14501'; -- Warlock Mount Ritual Mob Type 3, Infernal (DND)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='14502'; -- Xorothian Dreadsteed
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='14503'; -- The Cleaner
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='14504'; -- Dreadsteed Spirit
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14505'; -- Riding Horse (Dreadsteed)
UPDATE `creature_template` SET `SpeedWalk`='3.6', `SpeedRun`='1.28571' WHERE `entry`='14511'; -- Shadowed Spirit
UPDATE `creature_template` SET `SpeedWalk`='2.8', `SpeedRun`='1' WHERE `entry`='14512'; -- Corrupted Spirit
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='0.714286' WHERE `entry`='14513'; -- Malicious Spirit
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='0.428571' WHERE `entry`='14514'; -- Banal Spirit
UPDATE `creature_template` SET `Faction`='14' WHERE `entry`='14515'; -- High Priestess Arlokk
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='1' WHERE `entry`='14516'; -- Death Knight Darkreaver
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`='0.428571' WHERE `entry`='14518'; -- Aspect of Banality
UPDATE `creature_template` SET `SpeedWalk`='2.8', `SpeedRun`='1' WHERE `entry`='14519'; -- Aspect of Corruption
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='0.714286' WHERE `entry`='14520'; -- Aspect of Malice
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='14521'; -- Aspect of Shadow
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='14524'; -- Vartrus the Ancient
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='14525'; -- Stoma the Ancient
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='14526'; -- Hastat the Ancient
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14531'; -- Artorius the Amiable
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14533'; -- Simone the Seductress
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14534'; -- Klinfran the Crazed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14536'; -- Nelson the Nice
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14543'; -- Swift Olive Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14544'; -- Swift Orange Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14545'; -- Swift Blue Raptor
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14546'; -- Swift Brown Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14547'; -- Swift White Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14548'; -- Swift Gray Ram
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14551'; -- Swift Yellow Mechanostrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14554'; -- Swift Stripped Mechanostrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14557'; -- Swift Dawnsaber
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14562'; -- Swift Blue Mechanostrider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14563'; -- Swift Red Mechanostrider
UPDATE `creature_template` SET `Faction`='21', `SpeedWalk`='2.8', `SpeedRun`='1' WHERE `entry`='14564'; -- Terrordale Spirit
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14565'; -- Riding Horse (Charger)
UPDATE `creature_template` SET `Faction`='1475' WHERE `entry`='14567'; -- Derotain Mudsipper
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14568'; -- Darkreaver's Fallen Charger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14581'; -- Sergeant Thunderhorn
UPDATE `creature_template` SET `Faction`='778', `SpeedWalk`='1' WHERE `entry`='14603'; -- Zapped Shore Strider
UPDATE `creature_template` SET `Faction`='778', `SpeedWalk`='1' WHERE `entry`='14604'; -- Zapped Land Walker
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='14605'; -- Bone Construct
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='14629'; -- Loggerhead Snapjaw
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='14630'; -- Leatherback Snapjaw
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='14631'; -- Olive Snapjaw
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='14632'; -- Hawksbill Snapjaw
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='14633'; -- Albino Snapjaw
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14635'; -- Sleepy Dark Iron Worker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14636'; -- Chambermaid Pillaclencher
UPDATE `creature_template` SET `Faction`='778', `SpeedWalk`='1' WHERE `entry`='14638'; -- Zapped Wave Strider
UPDATE `creature_template` SET `Faction`='778' WHERE `entry`='14639'; -- Zapped Deep Strider
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='14640'; -- Zapped Cliff Giant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14641'; -- [PH] Horde spell thrower
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14642'; -- [PH] Alliance Spell thrower
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14643'; -- [PH] Alliance Herald
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14644'; -- [PH] Horde Herald
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14645'; -- Warsong Gulch Herald
UPDATE `creature_template` SET `Faction`='114', `RangedBaseAttackTime`='2000' WHERE `entry`='14646'; -- Stratholme Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14661'; -- Stinglasher
UPDATE `creature_template` SET `Faction`='103', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14662'; -- Corrupted Fire Nova Totem V
UPDATE `creature_template` SET `Faction`='103', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14663'; -- Corrupted Stoneskin Totem VI
UPDATE `creature_template` SET `Faction`='103', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14664'; -- Corrupted Healing Stream Totem V
UPDATE `creature_template` SET `Faction`='103', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='14666'; -- Corrupted Windfury Totem III
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14667'; -- Corrupted Totem
REPLACE INTO `creature_template_spells` (`entry`, `spell1`) VALUES (14667, 8149);
UPDATE `creature_template` SET `Faction`='954' WHERE `entry`='14668'; -- Corrupted Infernal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14681'; -- Transporter Malfunction
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14683'; -- Baron Titus Rivendare
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14685'; -- Morbus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14687'; -- Soulless
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='14688'; -- Master Sandoval
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14689'; -- Mana Elemental
UPDATE `creature_template` SET `SpeedWalk`='1.11111' WHERE `entry`='14690'; -- Revanchion
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='14691'; -- Basalt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14692'; -- Wollstonecraft
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14694'; -- Necrosis
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14696'; -- Stitched Behemoth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14698'; -- Silent Stalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14700'; -- Unclean Spirit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14701'; -- Doom Wraith
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14702'; -- Wailing Widow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14703'; -- Death Siren
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14704'; -- Skittering Dread
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14705'; -- Nerubian Webspinner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14707'; -- Bone Warder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14708'; -- Decaying Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14709'; -- Blighted Dead
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14710'; -- Dread Sorcerer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14712'; -- Midden Ghoul
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='14713'; -- Putrid Flyer
UPDATE `creature_template` SET `SpeedWalk`='1.4', `SpeedRun`='1.42857' WHERE `entry`='14714'; -- Winged Horror
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14717'; -- Horde Elite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14718'; -- Horde Laborer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14719'; -- [PH] Alliance Tower Lieutenant
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='2.28571' WHERE `entry`='14720'; -- High Overlord Saurfang
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='14732'; -- PvP CTF Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14744'; -- Frostwolf Riding Wolf
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='14745'; -- Stormpike Riding Ram
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14746'; -- [PH] Horde Tower Lieutenant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='14748'; -- Vilebranch Kidnapper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14757'; -- Elder Torntusk
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='0.285714' WHERE `entry`='14761'; -- Creeping Doom
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14766'; -- Iceblood Marshal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14767'; -- Tower Point Marshal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14768'; -- East Frostwolf Marshal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14769'; -- West Frostwolf Marshal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14770'; -- Dun Baldar North Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14771'; -- Dun Baldar South Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14772'; -- East Frostwolf Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14773'; -- Iceblood Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14774'; -- Icewing Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14775'; -- Stonehearth Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14776'; -- Tower Point Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14777'; -- West Frostwolf Warmaster
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='14801'; -- Wild Polymorph Target
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14824'; -- GGOODMAN
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14851'; -- Bog
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14852'; -- Throk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14853'; -- Torg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14854'; -- Kall
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14855'; -- Dagg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14856'; -- Mott
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14858'; -- Progk
UPDATE `creature_template` SET `SpeedRun`='1' WHERE `entry`='14860'; -- Flik
UPDATE `creature_template` SET `Faction`='16' WHERE `entry`='14862'; -- Emissary Roman'khan
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='14866'; -- Flik's Frog
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14875'; -- Molthor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14877'; -- High Priest Venoxis Transform Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14886'; -- The Good Rabbit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14887'; -- Ysondre
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14888'; -- Lethon
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='14889'; -- Emeriss
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='14894'; -- Swarm of bees
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14910'; -- Exzhal
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='14941'; -- High Priestess Jeklik Transform Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14942'; -- Kartra Bloodsnarl
UPDATE `creature_template` SET `Faction`='1214', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14943'; -- Guse's War Rider
UPDATE `creature_template` SET `Faction`='1214', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14944'; -- Jeztor's War Rider
UPDATE `creature_template` SET `Faction`='1214', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14945'; -- Mulverick's War Rider
UPDATE `creature_template` SET `Faction`='1216', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14946'; -- Slidore's Gryphon
UPDATE `creature_template` SET `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14947'; -- Ichman's Gryphon
UPDATE `creature_template` SET `Faction`='1216', `SpeedWalk`='1.92', `SpeedRun`='1.71429' WHERE `entry`='14948'; -- Vipore's Gryphon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14962'; -- Dillord Copperpinch
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='14965'; -- Frenzied Bloodseeker Bat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14966'; -- High Priest Thekal Transform Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14967'; -- High Priestess Mar'li Transform Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14968'; -- High Priestess Arlokk Transform Visual
UPDATE `creature_template` SET `Faction`='28', `SpeedWalk`='1' WHERE `entry`='14986'; -- Shade of Jin'do
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='14987'; -- Powerful Healing Ward (58?)
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='14988'; -- Ohgan
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='15001'; -- PvP A-Mid Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='15002'; -- PvP Mid Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='15003'; -- PvP H-Mid Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='15004'; -- PvP ALT-S Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.714286' WHERE `entry`='15005'; -- PvP ALT-N Credit Marker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15006'; -- Deze Snowbane
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15009'; -- Voodoo Spirit
UPDATE `creature_template` SET `Faction`='188', `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='15010'; -- Jungle Toad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15012'; -- Javnir Nashak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15021'; -- Deathmaster Dwire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15022'; -- Deathstalker Mortis
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15041'; -- Spawn of Mar'li
UPDATE `creature_template` SET `Faction`='1577' WHERE `entry`='15045'; -- Arathi Farmer
UPDATE `creature_template` SET `Faction`='412' WHERE `entry`='15046'; -- Forsaken Farmer
UPDATE `creature_template` SET `Faction`='474', `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='15061'; -- Spirit of Jin'do
UPDATE `creature_template` SET `Faction`='1577' WHERE `entry`='15062'; -- Arathi Lumberjack
UPDATE `creature_template` SET `Faction`='412' WHERE `entry`='15064'; -- Forsaken Blacksmith
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15068'; -- Zulian Guardian
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15071'; -- Underfoot
UPDATE `creature_template` SET `Faction`='190' WHERE `entry`='15072'; -- Spike
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15073'; -- Pat's Hellfire Guy
UPDATE `creature_template` SET `Faction`='1577' WHERE `entry`='15074'; -- Arathi Miner
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='15077'; -- Riggle Bassbait
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='15078'; -- Jang
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='15079'; -- Fishbot 5000
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15081'; -- Gri'lek [UNUSED]
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='0.666668' WHERE `entry`='15082'; -- Gri'lek
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1' WHERE `entry`='15083'; -- Hazza'rah
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1', `SpeedRun`='1.57143' WHERE `entry`='15084'; -- Renataki
UPDATE `creature_template` SET `Faction`='37' WHERE `entry`='15085'; -- Wushoolay
UPDATE `creature_template` SET `Faction`='1577' WHERE `entry`='15086'; -- Arathi Stablehand
UPDATE `creature_template` SET `Faction`='412' WHERE `entry`='15087'; -- Forsaken Stablehand
UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='15088'; -- Booty Bay Elite
UPDATE `creature_template` SET `Faction`='412' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15090'; -- Swift Razzashi Raptor
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15101'; -- Zulian Prowler
UPDATE `creature_template` SET `Faction`='1642' WHERE `entry`='15102'; -- Silverwing Emissary
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15104'; -- Swift Zulian Tiger
UPDATE `creature_template` SET `Faction`='1641' WHERE `entry`='15105'; -- Warsong Emissary
UPDATE `creature_template` SET `Faction`='190' WHERE `entry`='15107'; -- Arathi Horse (1577 too)
UPDATE `creature_template` SET `Faction`='190' WHERE `entry`='15108'; -- Forsaken Horse (412 too)
UPDATE `creature_template` SET `Faction`='37', `SpeedWalk`='1' WHERE `entry`='15110'; -- Gurubashi Prisoner
UPDATE `creature_template` SET `Faction`='28' WHERE `entry`='15112'; -- Brain Wash Totem
UPDATE `creature_template` SET `Faction`='107' WHERE `entry`='15114'; -- Gahz'ranka
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15115'; -- Honored Ancestor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15121'; -- Skeletal Magelord
UPDATE `creature_template` SET `Faction`='107' WHERE `entry`='15122'; -- Gahz'ranka Dead
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15123'; -- Kris Zierhut
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15125'; -- Kosco Copperpinch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15128'; -- Defiler Elite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15131'; -- Qeeju
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15135'; -- Chromatic Drake Mount
UPDATE `creature_template` SET `Faction`='85', `SpeedWalk`='1' WHERE `entry`='15136'; -- Hammerfall Elite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15137'; -- Menethil Elite
UPDATE `creature_template` SET `Faction`='71', `SpeedWalk`='1' WHERE `entry`='15138'; -- Silverpine Elite
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15139'; -- Gahz'ranka Herald
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15141'; -- Portal of Madness
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15146'; -- Mad Voidwalker
UPDATE `creature_template` SET `Faction`='37' WHERE `entry`='15163'; -- Nightmare Illusion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15166'; -- Luis Barriga
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15170'; -- Rutgar Glyphshaper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15171'; -- Frankal Stonebridge
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15172'; -- Glibb
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15194'; -- Hermit Ortell
UPDATE `creature_template` SET `Faction`='71' WHERE `entry`='15195'; -- Wickerman Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15197'; -- Darkcaller Yanka
UPDATE `creature_template` SET `Faction`='35' WHERE `entry`='15198'; -- Blackwing
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='15201'; -- Twilight Flamereaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15202'; -- Vyral the Vile
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2500', `SpeedWalk`='1', `SpeedRun`='2.28571' WHERE `entry`='15203'; -- Prince Skaldrenox
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15204'; -- High Marshal Whirlaxis
UPDATE `creature_template` SET `MeleeBaseAttackTime`='3000' WHERE `entry`='15205'; -- Baron Kazum
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15206'; -- The Duke of Cynders
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='15208'; -- The Duke of Shards
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='15209'; -- Crimson Templar
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='15210'; -- Vulculon UNUSED
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15212'; -- Hoary Templar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15215'; -- Mistress Natalia Mar'alith
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15216'; -- Male Ghost
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15217'; -- Female Ghost
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15219'; -- Trick - Critter
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='15220'; -- The Duke of Zephyrs
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='15223'; -- [PH] [UNUSED] Lord Inquisitor Opalezzix
UPDATE `creature_template` SET `SpeedRun`='1.71429' WHERE `entry`='15226'; -- [UNUSED] Vekniss Builder
UPDATE `creature_template` SET `SpeedWalk`='2.4', `SpeedRun`='2.14286' WHERE `entry`='15237'; -- [UNUSED] Vekniss Wrathstinger
UPDATE `creature_template` SET `SpeedRun`='2.85714' WHERE `entry`='15241'; -- Gryphon Rider Guard
UPDATE `creature_template` SET `Faction`='85', `SpeedWalk`='2.8', `SpeedRun`='2.57143' WHERE `entry`='15242'; -- Bat Rider Guard
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='15249'; -- Qiraji Lasher
UPDATE `creature_template` SET `Faction`='16', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='15260'; -- Demented Druid Spirit
UPDATE `creature_template` SET `Faction`='16', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.571429' WHERE `entry`='15261'; -- Spirit Shade
UPDATE `creature_template` SET `Faction`='310' WHERE `entry`='15286'; -- Xil'xix
UPDATE `creature_template` SET `Faction`='310' WHERE `entry`='15288'; -- Aluntir
UPDATE `creature_template` SET `Faction`='310' WHERE `entry`='15290'; -- Arakis
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='1.71429' WHERE `entry`='15302'; -- Shade of Taerar
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15305'; -- Lord Skwol
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='15309'; -- Spoops
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15310'; -- Jesper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15313'; -- Moonkin (Druid - Night Elf)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15314'; -- Moonkin (Druid - Tauren)
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='15343'; -- Qiraji Swarmguard
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1.55556' WHERE `entry`='15352'; -- Greater Earth Elemental
UPDATE `creature_template` SET `Faction`='875', `SpeedWalk`='1' WHERE `entry`='15353'; -- Katrina Shimmerstar
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15354'; -- Rachelle Gothena
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='15358'; -- Lurky
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15364'; -- RC Mortar Tank <PH>
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15373'; -- Halloween Pirate Captain
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15374'; -- Halloween Undead Pirate
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15375'; -- Halloween Pirate Female
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15376'; -- Halloween Male Ghost
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15377'; -- Halloween Female Ghost
UPDATE `creature_template` SET `SpeedWalk`='0.8' WHERE `entry`='15394'; -- Hero of the Horde
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15410'; -- Anachronos Dragon Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15411'; -- Arygos Dragon Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15412'; -- Caelestrasz Dragon Form
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15413'; -- Merithra Dragon Form
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15415'; -- Southshore Stink Bomb Counter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15425'; -- Debug Point
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15429'; -- Disgusting Oozeling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15435'; -- Ironforge Brigade Mortarman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15436'; -- Mortar Sergeant Stouthammer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='15440'; -- Captain Blackanvil
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15441'; -- Ironforge Brigade Rifleman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15442'; -- Ironforge Brigade Footman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15443'; -- Janela Stouthammer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15444'; -- Arcanist Nozzlespring
UPDATE `creature_template` SET `Faction`='35', `SpeedRun`='1.38571' WHERE `entry`='15458'; -- Commander Stronghammer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='15463'; -- Grace of Air Totem III
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15466'; -- Minion of Omen
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='15475'; -- Beetle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15477'; -- Herbalist Proudfeather
UPDATE `creature_template` SET `SpeedWalk`='2', `SpeedRun`='1.71429' WHERE `entry`='15481'; -- Spirit of Azuregos
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='15491'; -- Eranikus, Tyrant of the Dream
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15506'; -- Stewvul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15508'; -- Batrider Pele'keiki
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15515'; -- Skinner Jamani
UPDATE `creature_template` SET `RangedBaseAttackTime`='2700' WHERE `entry`='15517'; -- Ouro
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15518'; -- Auctioneer Grum
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15519'; -- Auctioneer Bertram
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15524'; -- Temporary Reindeer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15536'; -- Noxxie Razzlebrack
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15539'; -- General Zog
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15541'; -- Twilight Marauder Morna
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15545'; -- Cenarion Outrider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='15547'; -- Spectral Charger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15549'; -- Elder Morndeep
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='15553'; -- Doctor Weavil's Flying Machine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15556'; -- Elder Splitrock
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15557'; -- Elder Rumblerock
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15558'; -- Elder Silvervein
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15559'; -- Elder Highpeak
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15560'; -- Elder Stonefort
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15561'; -- Elder Obsidian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15562'; -- Elder Hammershout
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15563'; -- Elder Bellowrage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15564'; -- Elder Darkcore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15565'; -- Elder Stormbrow
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15566'; -- Elder Snowcrown
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15567'; -- Elder Ironband
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15568'; -- Elder Graveborn
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15570'; -- Elder Primestone
UPDATE `creature_template` SET `Faction`='14', `SpeedRun`='2.57143' WHERE `entry`='15571'; -- Maws
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15572'; -- Elder Runetotem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15573'; -- Elder Ragetotem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15574'; -- Elder Stonespire
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15575'; -- Elder Bloodhoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15576'; -- Elder Winterhoof
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15577'; -- Elder Skychaser
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15578'; -- Elder Wildmane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15579'; -- Elder Darkhorn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15580'; -- Elder Proudhorn
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15581'; -- Elder Grimtotem
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15582'; -- Elder Windtotem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15583'; -- Elder Thunderhorn
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15584'; -- Elder Skyseer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15585'; -- Elder Dawnstrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15586'; -- Elder Dreamseer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15587'; -- Elder Mistwalker
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15588'; -- Elder High Mountain
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15592'; -- Elder Windrun
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15593'; -- Elder Starsong
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15594'; -- Elder Moonstrike
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15595'; -- Elder Bladeleaf
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15596'; -- Elder Starglade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15597'; -- Elder Moonwarden
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15598'; -- Elder Bladeswift
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15599'; -- Elder Bladesing
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15600'; -- Elder Skygleam
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15601'; -- Elder Starweave
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15602'; -- Elder Meadowrun
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15603'; -- Elder Nightwind
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15604'; -- Elder Morningdew
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15605'; -- Elder Riversong
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='15606'; -- Elder Brightspear
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15607'; -- Elder Farwhisper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='15608'; -- Medivh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15609'; -- Cenarion Scout Landion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15611'; -- Cenarion Scout Jalia
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15612'; -- Krug Skullsplit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15613'; -- Merok Longstride
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15615'; -- Shadow Priestess Shai
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15616'; -- Orgrimmar Legion Grunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15617'; -- Orgrimmar Legion Axe Thrower
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15618'; -- Orgrimmar Legion Hexxer
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='15620'; -- Hive'Regal Hunter-Killer
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='15621'; -- Yauj Brood
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15626'; -- Celestine Omencaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15627'; -- Jarod Shadowsong
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15660'; -- Eranikus Transformed
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='15664'; -- Metzen the Reindeer
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15665'; -- Mounted Reindeer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15666'; -- Blue Qiraji Battle Tank
UPDATE `creature_template` SET `SpeedWalk`='0.4', `SpeedRun`='0.142857' WHERE `entry`='15667'; -- Glob of Viscidus
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15680'; -- Auctioneer Bernal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15685'; -- Southsea Kidnapper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15692'; -- Dark Iron Kidnapper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15698'; -- Father Winter's Helper
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15700'; -- Warlord Gorchuk
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='15701'; -- Field Marshal Snowfall
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15713'; -- Blue Qiraji Battle Tank
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15714'; -- Yellow Qiraji Battle Tank
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15715'; -- Green Qiraji Battle Tank
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='15716'; -- Red Qiraji Battle Tank
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='15718'; -- Ouro Scarab
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15721'; -- Mechanical Greench
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='15725'; -- Claw Tentacle
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='15726'; -- Eye Tentacle
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15728'; -- Giant Claw Tentacle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15729'; -- Father Winter's Helper (BIG) gm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15732'; -- Wonderform Operator
UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='15745'; -- Greatfather Winter's Helper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15746'; -- Great-father Winter's Helper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15760'; -- Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15761'; -- Officer Vu'Shalay
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15762'; -- Officer Lunalight
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15765'; -- Officer Redblade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15767'; -- Officer Thunderstrider
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15768'; -- Officer Gothena
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15772'; -- Christmas Darkmaster Gandling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15774'; -- Christmas Prince Tortheldrin
UPDATE `creature_template` SET `RangedBaseAttackTime`='2400', `MeleeBaseAttackTime`='2400', `SpeedRun`='1.42857' WHERE `entry`='15776'; -- Christmas Warchief Rend Blackhand
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15777'; -- Christmas War Master Voone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15778'; -- Mouth Tentacle Mount Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15780'; -- Human Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15781'; -- Human Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15782'; -- Dwarf Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15783'; -- Dwarf Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15784'; -- Night Elf Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15785'; -- Troll Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15786'; -- Orc Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15787'; -- Goblin Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15788'; -- Undead Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15789'; -- Tauren Female Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15790'; -- Undead Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15791'; -- Orc Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15792'; -- Troll Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15793'; -- Tauren Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15794'; -- Night Elf Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15795'; -- Goblin Male Winter Reveler
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15832'; -- Father Winter's Helper (BIG) rm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15835'; -- Father Winter's Helper (BIG) rf
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15838'; -- Father Winter's Helper (BIG) gf
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15852'; -- Orgrimmar Elite Shieldguard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15853'; -- Orgrimmar Elite Infantryman
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1', `SpeedRun`='2.28571' WHERE `entry`='15854'; -- Orgrimmar Elite Cavalryman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15855'; -- Tauren Rifleman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15856'; -- Tauren Primalist
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='15857'; -- Stormwind Cavalryman
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15858'; -- Stormwind Infantryman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15859'; -- Stormwind Archmage
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1', `SpeedRun`='2.28571' WHERE `entry`='15862'; -- Ironforge Cavalryman
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15866'; -- High Commander Lynore Windstryke
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15868'; -- Highlord Leoric Von Zeldig
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15869'; -- Malagav the Tactician
UPDATE `creature_template` SET `Faction`='777', `SpeedWalk`='1' WHERE `entry`='15870'; -- Duke August Foehammer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15899'; -- Lunar Festival NE Vendor (PH)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15900'; -- Lunar Festival NE Harbinger
UPDATE `creature_template` SET `SpeedWalk`='2.4', `SpeedRun`='1.42857' WHERE `entry`='15901'; -- Vanquished Tentacle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15903'; -- Sergeant Carnes
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15904'; -- Tentacle Portal
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15910'; -- Giant Tentacle Portal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15917'; -- Lunar Festival Reveler
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15928'; -- Thaddius
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15929'; -- Stalagg
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15930'; -- Feugen
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15931'; -- Grobbulus
UPDATE `creature_template` SET `RangedBaseAttackTime`='1600' WHERE `entry`='15932'; -- Gluth
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15936'; -- Heigan the Unclean
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15952'; -- Maexxna
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15953'; -- Grand Widow Faerlina
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15954'; -- Noth the Plaguebringer
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15956'; -- Anub'Rekhan
UPDATE `creature_template` SET `SpeedWalk`='4' WHERE `entry`='15957'; -- Ouro Spawner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15973'; -- Naxxramas Template
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='15977'; -- Infectious Skitterer
UPDATE `creature_template` SET `RangedBaseAttackTime`='1200' WHERE `entry`='15978'; -- Crypt Reaver
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15980'; -- Naxxramas Cultist
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='15981'; -- Naxxramas Acolyte
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='15990'; -- Kel'Thuzad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16001'; -- Aldris Fourclouds
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16002'; -- Colara Dean
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16003'; -- Deathguard Tor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16004'; -- Elenia Haydon
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16005'; -- Lieutenant Jocryn Heldric
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16007'; -- Orok Deathbane
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16008'; -- Temma of the Wells
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16009'; -- Tormek Stoneriver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16015'; -- Vi'el
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16016'; -- Anthion Harmon
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16017'; -- Patchwork Golem
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16018'; -- Bile Retcher
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16019'; -- Boorana Thunderhoof
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16020'; -- Mad Scientist
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16021'; -- Living Monstrosity
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16022'; -- Surgical Assistant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16023'; -- Allenya Moonshadow
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16024'; -- Embalming Slime
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16025'; -- Stitched Spewer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16026'; -- Flesh Giant B [PH]
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16027'; -- Living Poison
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16029'; -- Sludge Belcher
UPDATE `creature_template` SET `Faction`='1354', `SpeedWalk`='1' WHERE `entry`='16032'; -- Falrin Treeshaper
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16034'; -- Plague Beast
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`='1' WHERE `entry`='16035'; -- Bog Beast B [PH]
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='16038'; -- Deathhound
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16039'; -- Pack Trainer [PH]
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16040'; -- Pack Handler [PH]
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE `entry`='16041'; -- Shadowhound
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='16042'; -- Lord Valthalak
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16044'; -- Mor Grayhoof Trigger
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16045'; -- Isalien Trigger
UPDATE `creature_template` SET `Faction`='114', `RangedBaseAttackTime`='2000' WHERE `entry`='16046'; -- Jarien and Sothos Trigger
UPDATE `creature_template` SET `Faction`='114' WHERE `entry`='16047'; -- Kormok Trigger
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16048'; -- Lord Valthalak Trigger
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='1500' WHERE `entry`='16049'; -- Lefty
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='1500' WHERE `entry`='16050'; -- Rotfang
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='16051'; -- Snokh Blackspine
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.666668' WHERE `entry`='16052'; -- Malgen Longspear
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='16053'; -- Korv
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='16054'; -- Rezznik
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='16055'; -- Va'jashni
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16056'; -- Diseased Maggot
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16057'; -- Rotting Maggot
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2000' WHERE `entry`='16058'; -- Volida
UPDATE `creature_template` SET `Faction`='14', `SpeedWalk`='1', `RangedBaseAttackTime`='3800' WHERE `entry`='16059'; -- Theldren
UPDATE `creature_template` SET `Faction`='14', `RangedBaseAttackTime`='2500' WHERE `entry`='16060'; -- Gothik the Harvester
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='16062'; -- Highlord Mograine
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16063'; -- Sir Zeliek
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16064'; -- Thane Korth'azz
UPDATE `creature_template` SET `RangedBaseAttackTime`='2500' WHERE `entry`='16065'; -- Lady Blaumeux
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='1200' WHERE `entry`='16066'; -- Spectral Assassin
UPDATE `creature_template` SET `Faction`='55' WHERE `entry`='16070'; -- Garel Redrock
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2400' WHERE `entry`='16080'; -- Mor Grayhoof
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16083'; -- Mor Grayhoof Transformation Visual
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16084'; -- picnic blanket
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16086'; -- Flower Shower
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='16095'; -- Gnashjaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2600' WHERE `entry`='16097'; -- Isalien
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='16098'; -- Empyrean
UPDATE `creature_template` SET `Faction`='114' WHERE `entry`='16100'; -- Ysida's Trigger
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2600', `RangedBaseAttackTime`='2600' WHERE `entry`='16101'; -- Jarien
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2600', `RangedBaseAttackTime`='2600' WHERE `entry`='16102'; -- Sothos
UPDATE `creature_template` SET `Faction`='250' WHERE `entry`='16103'; -- Spirit of Jarien
UPDATE `creature_template` SET `Faction`='250', `SpeedWalk`='1' WHERE `entry`='16104'; -- Spirit of Sothos
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16105'; -- Aristan Mottar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16106'; -- Evert Sorisam
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16108'; -- Fenstad Argyle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16109'; -- Mara Rennick
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='16111'; -- Love Fool
UPDATE `creature_template` SET `Faction`='14', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400', `SpeedWalk`='1' WHERE `entry`='16118'; -- Kormok
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1500', `SpeedWalk`='0.888888' WHERE `entry`='16119'; -- Bone Minion
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16120'; -- Bone Mage
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='16124'; -- Unrelenting Trainee
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16127'; -- Spectral Trainee
UPDATE `creature_template` SET `SpeedRun`='1' WHERE `entry`='16136'; -- Necrotic Shard
UPDATE `creature_template` SET `SpeedWalk`='0.777776' WHERE `entry`='16141'; -- Ghoul Berserker
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16143'; -- Shadow of Doom
UPDATE `creature_template` SET `RangedBaseAttackTime`='3500' WHERE `entry`='16145'; -- Deathknight Captain
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16149'; -- Spectral Horse
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16156'; -- Dark Touched Warrior
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16158'; -- Death Touched Warrior
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16163'; -- Deathknight Cavalier
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16164'; -- Shade of Naxxramas
UPDATE `creature_template` SET `RangedBaseAttackTime`='3000' WHERE `entry`='16165'; -- Necro Knight
UPDATE `creature_template` SET `RangedBaseAttackTime`='3000' WHERE `entry`='16168'; -- Stoneskin Gargoyle
UPDATE `creature_template` SET `SpeedRun`='1' WHERE `entry`='16172'; -- Damaged Necrotic Shard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16182'; -- Crystal Zapper
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='16194'; -- Unholy Axe
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='16212'; -- Dispatch Commander Metz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16214'; -- Necropolis Controller
UPDATE `creature_template` SET `RangedBaseAttackTime`='1200' WHERE `entry`='16216'; -- Unholy Swords
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE `entry`='16226'; -- Guard Didier
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16230'; -- Cultist Engineer
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='16232'; -- Caravan Mule
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16233'; -- Plaguewing Slug
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16234'; -- Flesh Ripper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16235'; -- Plague Flesh Tentacle
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='16236'; -- Eye Stalk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16241'; -- Argent Recruiter
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='16243'; -- Plague Slime
UPDATE `creature_template` SET `RangedBaseAttackTime`='1500' WHERE `entry`='16244'; -- Infectious Ghoul
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16254'; -- Field Marshal Chambers
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16281'; -- Keeper of the Rolls
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='16290'; -- Fallout Slime
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16297'; -- Mutated Grub
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1.11111' WHERE `entry`='16298'; -- Spectral Soldier
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1.19048' WHERE `entry`='16299'; -- Skeletal Shocktrooper
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='16336'; -- Scourge Invasion Minion, spawner, Ghost/Skeleton
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `entry`='16338'; -- Scourge Invasion Minion, spawner, Ghoul/Skeleton
UPDATE `creature_template` SET `RangedBaseAttackTime`='3000' WHERE `entry`='16360'; -- Zombie Chow
UPDATE `creature_template` SET `Faction`='814' WHERE `entry`='16361'; -- Commander Thomas Helleran (794 also 814)
UPDATE `creature_template` SET `SpeedRun`='0.00142857' WHERE `entry`='16363'; -- Grobbulus Cloud
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16365'; -- Master Craftsman Omarion
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16368'; -- Necropolis Acolyte
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16369'; -- Polymorphed Chicken
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16371'; -- Polymorphed Pig
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16372'; -- Polymorphed Sheep
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16373'; -- Polymorphed Rat
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16374'; -- Polymorphed Cockroach
UPDATE `creature_template` SET `RangedBaseAttackTime`='1800' WHERE `entry`='16375'; -- Sewage Slime
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16377'; -- Polymorphed Turtle
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='16379'; -- Spirit of the Damned
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16380'; -- Bone Witch
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16381'; -- Archmage Tarsis Kir-Moldir
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16382'; -- Patchwork Terror
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16383'; -- Flameshocker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16384'; -- Argent Dawn Initiate
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='16386'; -- Necropolis Relay
UPDATE `creature_template` SET `Faction`='954', `SpeedRun`='2.85714' WHERE `entry`='16387'; -- Atiesh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16392'; -- Captain Armando Ossex
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='0.8' WHERE `entry`='16394'; -- Pallid Horror
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16395'; -- Argent Dawn Paladin
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16396'; -- Stormwind Elite Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='16398'; -- Necropolis Proxy
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16401'; -- Necropolis
UPDATE `creature_template` SET `SpeedRun`='0.714286' WHERE `entry`='16419'; -- Ghost of Naxxramas
UPDATE `creature_template` SET `SpeedRun`='0.857143' WHERE `entry`='16422'; -- Skeletal Soldier
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='0.857143' WHERE `entry`='16423'; -- Spectral Apparition
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='0.4', `SpeedRun`='0.414286' WHERE `entry`='16427'; -- Soldier of the Frozen Wastes (seemingly different speedrun values per mob?)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='0.4', `SpeedRun`='0.685714' WHERE `entry`='16428'; -- Unstoppable Abomination (seemingly different speedrun values per mob?)
UPDATE `creature_template` SET `SpeedWalk`='0.4', `SpeedRun`='0.1' WHERE `entry`='16429'; -- Soul Weaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16431'; -- Cracked Necrotic Crystal
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='0.857143' WHERE `entry`='16437'; -- Spectral Spirit
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='16438'; -- Skeletal Trooper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16439'; -- Fairbanks Transformed
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16440'; -- Highlord Mograine
UPDATE `creature_template` SET `RangedBaseAttackTime`='3000' WHERE `entry`='16446'; -- Plagued Gargoyle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16450'; -- She number one
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16451'; -- Deathknight Vindicator
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16452'; -- Necro Knight Guardian
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16454'; -- She number two
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16455'; -- She number three
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16474'; -- Blizzard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16478'; -- Lieutenant Orrin
UPDATE `creature_template` SET `Faction`='31', `RangedBaseAttackTime`='2000' WHERE `entry`='16479'; -- Polymorph Clone
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16484'; -- Lieutenant Nevell
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16490'; -- Lieutenant Lisande
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16493'; -- Lieutenant Dagel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16494'; -- Lieutenant Rukag
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16495'; -- Lieutenant Beitha
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16505'; -- Naxxramas Follower
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16506'; -- Naxxramas Worshipper
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='16508'; -- Argent Horse
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='16509'; -- Argent Warhorse
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='16510'; -- Argent Charger
UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='16511'; -- Argent Mount
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='16512'; -- Argent Deathsteed
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='16513'; -- Argent Deathcharger
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='16531'; -- Faint Necrotic Crystal
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16606'; -- Midsummer Bonfire Despawner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16609'; -- Giant Claw Tentacle Test
UPDATE `creature_template` SET `RangedBaseAttackTime`='1000' WHERE `entry`='16698'; -- Corpse Scarab
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='16775'; -- Spirit of Mograine
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='16776'; -- Spirit of Blaumeux
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='16777'; -- Spirit of Zeliek
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='16778'; -- Spirit of Korth'azz
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16779'; -- Polymorphed Cow
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16786'; -- Argent Quartermaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='16787'; -- Argent Outfitter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16788'; -- Festival Flamekeeper
UPDATE `creature_template` SET `RangedBaseAttackTime`='3500' WHERE `entry`='16803'; -- Deathknight Understudy
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16818'; -- Festival Talespinner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16889'; -- Stormwind Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16890'; -- Ironforge Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16891'; -- Yuree
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16892'; -- Darnassus Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16893'; -- Orgrimmar Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16894'; -- Thunder Bluff Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16895'; -- Undercity Celebrant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16979'; -- Midsummer Merchant
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16980'; -- The Lich King
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='16981'; -- Plagued Guardian
UPDATE `creature_template` SET `SpeedRun`='1.42857' WHERE `entry`='16982'; -- Plagued Construct
UPDATE `creature_template` SET `RangedBaseAttackTime`='2700' WHERE `entry`='16984'; -- Plagued Warrior
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16985'; -- Midsummer Merchant Horde Costume
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16986'; -- Midsummer Merchant Alliance Costume
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16987'; -- Festival Flamekeeper Costume: Tauren
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16988'; -- Festival Flamekeeper Costume: Human
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16989'; -- Festival Flamekeeper Costume: Troll
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16990'; -- Festival Flamekeeper Costume: Dwarf
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1', `SpeedRun`='0.992063' WHERE `entry`='16995'; -- Mouth of Kel'Thuzad
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='16998'; -- Mr. Bigglesworth
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16999'; -- Johnny McWeaksauce
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17003'; -- Cinder Elemental
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17031'; -- Varel Redrock
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17032'; -- Varl Stonebleeder
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17068'; -- Chief Expeditionary Requisitioner Enkles
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17070'; -- Apothecary Quinard
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17075'; -- Sandworm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17078'; -- Jimmy McWeaksauce
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17079'; -- General Kirika
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17080'; -- Marshal Bluewall
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17090'; -- Silithus Dust Turnin Quest Doodad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17163'; -- Worm Target (DND)
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='17231'; -- Garden Gas
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17239'; -- [PH] Plaguelands Herald
UPDATE `creature_template` SET `SpeedRun`='0.992063' WHERE `entry`='17249'; -- Landro Longshot
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000' WHERE `entry`='17255'; -- Hippogryph Hatchling
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17258'; -- Purple Ogre Costume
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.38571' WHERE `entry`='17266'; -- Riding Turtle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17284'; -- Lottery Commissioner [DND]
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17415'; -- Lordaeron Mage
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17466'; -- Lordaeron Spirit
UPDATE `creature_template` SET `Faction`='123' WHERE `entry`='17635'; -- Lordaeron Commander
UPDATE `creature_template` SET `Faction`='123' WHERE `entry`='17647'; -- Lordaeron Soldier
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17688'; -- Crown Guard Horde Capture Quest Doodad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17690'; -- <TXT>Eastwall Capture Quest Doodad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17691'; -- Eastwall Horde Capture Quest Doodad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17697'; -- Northpass Horde Capture Quest Doodad
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17699'; -- Plaguewood Horde Capture Quest Doodad
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='17719'; -- Ironforge Gryphon Rider
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='17720'; -- Orgrimmar Wyvern Rider
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='17765'; -- Alliance Silithyst Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='17766'; -- Horde Silithyst Sentinel
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='17869'; -- Silithus Spice Sandworm Mortar Target
UPDATE `creature_template` SET `Faction`='118', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='17995'; -- Lordaeron Veteran
UPDATE `creature_template` SET `Faction`='118', `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='17996'; -- Lordaeron Fighter
UPDATE `creature_template` SET `RangedBaseAttackTime`='2000', `SpeedWalk`='1' WHERE `entry`='18039'; -- Spirit of Victory
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='18078'; -- The Evil Rabbit
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='18153'; -- Spirit Healer (DND)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='18199'; -- Silithus Dust Turnin Quest Doodad Horde 1.1
UPDATE `creature_template` SET `Faction`='188' WHERE `entry`='21010'; -- Blue Moth

-- tbc+
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='905'; -- Sharptooth Frenzy
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='1193'; -- Loch Frenzy
-- UPDATE `creature_template` SET `Faction`='12' WHERE `entry`='1755'; -- Marzon the Silent Blade
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1776'; -- Magtoor
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='2173'; -- Reef Frenzy
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='2174'; -- Coastal Frenzy
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2776'; -- Vengeful Surge
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='2794'; -- Summoned Guardian
-- UPDATE `creature_template` SET `Faction`='1074' WHERE `entry`='3230'; -- Nazgrel
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3917'; -- Befouled Water Elemental
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4978'; -- Aku'mai Servant
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='6033'; -- Lake Frenzy
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6047'; -- Aqua Guardian
-- UPDATE `creature_template` SET `SpeedRun`='1.28968' WHERE `entry`='7132'; -- Toxic Horror
-- UPDATE `creature_template` SET `Faction`='1878', `SpeedWalk`='1' WHERE `entry`='8236'; -- Muck Frenzy
-- UPDATE `creature_template` SET `SpeedWalk`='1.28968' WHERE `entry`='8837'; -- Muck Splash
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10642'; -- Eck'alom
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='10756'; -- Scalding Elemental
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='10757'; -- Boiling Elemental
-- UPDATE `creature_template` SET `Faction`='67', `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='10955'; -- Summoned Water Elemental
-- UPDATE `creature_template` SET `SpeedRun`='1.14286' WHERE `entry`='10981'; -- Frostwolf
-- UPDATE `creature_template` SET `SpeedRun`='1.38571' WHERE `entry`='10990'; -- Alterac Ram
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11198'; -- Broken Exile
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11256'; -- Manifestation of Water
-- UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11862'; -- Tsunaman
-- UPDATE `creature_template` SET `Faction`='35', `SpeedWalk`='1' WHERE `entry`='11874'; -- Masat T'andr
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='13278'; -- Duke Hydraxis
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='13279'; -- Discordant Surge
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='13280'; -- Hydrospawn
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='13322'; -- Hydraxian Honor Guard
-- UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.28968' WHERE `entry`='14269'; -- Seeker Aqualon
-- UPDATE `creature_template` SET `Faction`='1878' WHERE `entry`='14356'; -- Sawfin Frenzy
-- UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `NpcFlags` = `NpcFlags`|128, `MovementType` = 0 WHERE `entry`='21444'; -- Tempixx Finagler (1202M) (1418R)
-- REPLACE INTO `npc_vendor` (`entry`, `item`) VALUES (21444, 24490); -- The Master's Key

