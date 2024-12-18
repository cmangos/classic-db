-- Rework Charm Immunity
-- https://www.diffchecker.com/BEk5c3OB/ vmangos -> classic
-- https://www.diffchecker.com/7Z1n3rpp/ vmangos -> tbc - SELECT DISTINCT entry,name FROM creature_template where mechanic_immune_mask=mechanic_immune_mask|1 and type NOT IN (2,4,5,6,8) order by entry,Type;
-- https://www.diffchecker.com/HAVrEp3F/ tbc -> wotlk
-- https://www.diffchecker.com/NAz8BdDn/ classic -> tbc

-- Kel'gash the Wicked
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(16358);

-- wotlk where charmedlist != MechanicImmuneMask
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN(
18160, -- Overlord Gorefist	1	1816005 DIFF
24152); -- Apothecary Malthus	1	2415205

-- gist: undead forsaken that are humanoid are mc immune, add them case by case.
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(
-- immune to spell 605/10911/10912 in classic sniff
599, -- https://www.wowhead.com/classic/npc=599/marisa-dupaige
703, -- https://www.wowhead.com/classic/npc=703/lieutenant-fangore
1364, -- https://www.wowhead.com/classic/npc=1364/balgaras-the-foul
1842, -- https://www.wowhead.com/classic/npc=1842/highlord-taelan-fordring
2215, -- https://www.wowhead.com/classic/npc=2215/high-executor-darthalia (tbcmangos was correct)
2851, -- https://www.wowhead.com/classic/npc=2851/urda - flight master
3305, -- https://www.wowhead.com/classic/npc=3305/grisha - flight master
3691, -- https://www.wowhead.com/classic/npc=3691/raene-wolfrunner
3725, -- https://www.wowhead.com/classic/npc=3725/dark-strand-cultist
3728, -- https://www.wowhead.com/classic/npc=3728/dark-strand-adept
3855, -- https://www.wowhead.com/classic/npc=3855/shadowfang-darksoul
3974, -- https://www.wowhead.com/classic/npc=3974/houndmaster-loksey
3975, -- https://www.wowhead.com/classic/npc=3975/herod
3982, -- https://www.wowhead.com/classic/npc=3982/monika-sengutz (confirms diff)
4275, -- https://www.wowhead.com/classic/npc=4275/archmage-arugal
4420, -- https://www.wowhead.com/classic/npc=4420/overlord-ramtusk
4421, -- https://www.wowhead.com/classic/npc=4421/charlga-razorflank
4424, -- https://www.wowhead.com/classic/npc=4424/aggem-thorncurse
4832, -- https://www.wowhead.com/classic/npc=4832/twilight-lord-kelris
5243, -- https://www.wowhead.com/classic/npc=5243/cursed-atalai
5261, -- https://www.wowhead.com/classic/npc=5261/enthralled-atalai
5925, -- https://www.wowhead.com/classic/npc=5925/grounding-totem (part of the mechanic)
6487, -- https://www.wowhead.com/classic/npc=6487/arcanist-doan
6910, -- https://www.wowhead.com/classic/npc=6910/revelosh
7011, -- https://www.wowhead.com/classic/npc=7011/earthen-rocksmasher
7271, -- https://www.wowhead.com/classic/npc=7271/witch-doctor-zumrah
7354, -- https://www.wowhead.com/classic/npc=7354/ragglesnout
7823, -- https://www.wowhead.com/classic/npc=7823/bera-stonehammer - flight master
7980, -- https://www.wowhead.com/classic/npc=7980/deathguard-elite - elite guards at faction bosses
8127, -- https://www.wowhead.com/classic/npc=8127/antusul
10057, -- https://www.wowhead.com/classic/npc=10057/theodore-mont-claire
10182, -- https://www.wowhead.com/classic/npc=10182/rexxar
11352, -- https://www.wowhead.com/classic/npc=11352/gurubashi-berserker
11830, -- https://www.wowhead.com/classic/npc=11830/hakkari-priest
13154, -- https://www.wowhead.com/classic/npc=13154/commander-louis-philips s.13181
13219, -- https://www.wowhead.com/classic/npc=13219/jekyll-flandring
13776, -- https://www.wowhead.com/classic/npc=13776/corporal-teeka-bloodsnarl
13817, -- https://www.wowhead.com/classic/npc=13817/voggah-deathgrip
13840, -- https://www.wowhead.com/classic/npc=13840/warmaster-laggrond
14717, -- https://www.wowhead.com/classic/npc=14717/horde-elite - elite at bg entrance
15126, -- https://www.wowhead.com/classic/npc=15126/rutherford-twing
15128, -- https://www.wowhead.com/classic/npc=15128/defiler-elite
15130, -- https://www.wowhead.com/classic/npc=15130/league-of-arathor-elite
15181, -- https://www.wowhead.com/classic/npc=15181/commander-maralith
15182, -- https://www.wowhead.com/classic/npc=15182/vish-kozus
15184, -- https://www.wowhead.com/classic/npc=15184/cenarion-hold-infantry
15953, -- https://www.wowhead.com/classic/npc=15953/grand-widow-faerlina
15980, -- https://www.wowhead.com/classic/npc=15980/naxxramas-cultist
15981, -- https://www.wowhead.com/classic/npc=15981/naxxramas-acolyte
16115, -- https://www.wowhead.com/classic/npc=16115/commander-eligor-dawnbringer
16157, -- https://www.wowhead.com/classic/npc=16157/doom-touched-warrior
16158, -- https://www.wowhead.com/classic/npc=16158/death-touched-warrior
16193, -- https://www.wowhead.com/classic/npc=16193/skeletal-smith
16255, -- https://www.wowhead.com/classic/npc=16255/argent-scout
16359, -- https://www.wowhead.com/classic/npc=16359/argent-messenger
16368, -- https://www.wowhead.com/classic/npc=16368/necropolis-acolyte
16378, -- https://www.wowhead.com/classic/npc=16378/argent-sentry
16505, -- https://www.wowhead.com/classic/npc=16505/naxxramas-follower
16787, -- https://www.wowhead.com/classic/npc=16787/argent-outfitter
17765, -- https://www.wowhead.com/classic/npc=17765/alliance-silithyst-sentinel
-- tbc+ sniffs
347, -- https://www.wowhead.com/tbc/npc=347/grizzle-halfmane
523, -- https://www.wowhead.com/tbc/npc=523/thor - flight master
596, -- https://www.wowhead.com/tbc/npc=596/brainwashed-noble
599, -- https://www.wowhead.com/tbc/npc=599/marisa-dupaige
639, -- https://www.wowhead.com/tbc/npc=639/edwin-vancleef
643, -- https://www.wowhead.com/tbc/npc=643/sneed
644, -- https://www.wowhead.com/tbc/npc=644/rhahkzor
645, -- https://www.wowhead.com/tbc/npc=645/cookie
646, -- https://www.wowhead.com/tbc/npc=646/mr-smite
647, -- https://www.wowhead.com/tbc/npc=647/captain-greenskin
703, -- https://www.wowhead.com/tbc/npc=703/lieutenant-fangore
907, -- https://www.wowhead.com/tbc/npc=907/keras-wolfheart - battlemaster
931, -- https://www.wowhead.com/tbc/npc=931/ariena-stormfeather - flight master
1284, -- https://www.wowhead.com/tbc/npc=1284/archbishop-benedictus
1364, -- https://www.wowhead.com/tbc/npc=1364/balgaras-the-foul
1387, -- https://www.wowhead.com/tbc/npc=1387/thysta - flight master
1572, -- https://www.wowhead.com/tbc/npc=1572/thorgrum-borrelson - flight master
1573, -- https://www.wowhead.com/tbc/npc=1573/gryth-thurden
1748, -- https://www.wowhead.com/tbc/npc=1748/highlord-bolvar-fordragon
1763, -- https://www.wowhead.com/tbc/npc=1763/gilnid
1842, -- https://www.wowhead.com/tbc/npc=1842/highlord-taelan-fordring
1853, -- https://www.wowhead.com/tbc/npc=1853/darkmaster-gandling
2215, -- https://www.wowhead.com/tbc/npc=2215/high-executor-darthalia
2276, -- https://www.wowhead.com/tbc/npc=2276/magistrate-henry-maleb
2299, -- https://www.wowhead.com/tbc/npc=2299/borgus-stoutarm
2303, -- https://www.wowhead.com/tbc/npc=2303/lyranne-feathersong
2308, -- https://www.wowhead.com/tbc/npc=2308/andrew-brownell
2309, -- https://www.wowhead.com/tbc/npc=2309/thomas-arlento
2432, -- https://www.wowhead.com/tbc/npc=2432/darla-harris - flight master
2458, -- https://www.wowhead.com/tbc/npc=2458/randolph-montague
2459, -- https://www.wowhead.com/tbc/npc=2459/mortimer-montague
2464, -- https://www.wowhead.com/tbc/npc=2464/commander-aggrogosh
2784, -- https://www.wowhead.com/tbc/npc=2784/king-magni-bronzebeard - - faction boss
2799, -- https://www.wowhead.com/tbc/npc=2799/lucian-fenner
2802, -- https://www.wowhead.com/tbc/npc=2802/susan-tillinghast
2804, -- https://www.wowhead.com/tbc/npc=2804/kurden-bloodclaw - battlemaster
2835, -- https://www.wowhead.com/tbc/npc=2835/cedrik-prose - flight master
2851, -- https://www.wowhead.com/tbc/npc=2851/urda - flight master
2858, -- https://www.wowhead.com/tbc/npc=2858/gringer - flight master
2861, -- https://www.wowhead.com/tbc/npc=2861/gorrik - flight master
2934, -- https://www.wowhead.com/tbc/npc=2934/keeper-beldugur
2941, -- https://www.wowhead.com/tbc/npc=2941/lanie-reed - flight master
3057, -- https://www.wowhead.com/tbc/npc=3057/cairne-bloodhoof - faction boss
3310, -- https://www.wowhead.com/tbc/npc=3310/doras - flight master
3338, -- https://www.wowhead.com/tbc/npc=3338/sergra-darkthorn
3516, -- https://www.wowhead.com/tbc/npc=3516/arch-druid-fandral-staghelm - faction boss
3549, -- https://www.wowhead.com/tbc/npc=3549/shelene-rhobart
3615, -- https://www.wowhead.com/tbc/npc=3615/devrak - flight master
3654, -- https://www.wowhead.com/tbc/npc=3654/mutanus-the-devourer
3691, -- https://www.wowhead.com/tbc/npc=3691/raene-wolfrunner
3725, -- https://www.wowhead.com/tbc/npc=3725/dark-strand-cultist
3727, -- https://www.wowhead.com/tbc/npc=3727/dark-strand-enforcer
3728, -- https://www.wowhead.com/tbc/npc=3728/dark-strand-adept
3730, -- https://www.wowhead.com/tbc/npc=3730/dark-strand-excavator
3838, -- https://www.wowhead.com/tbc/npc=3838/vesprystus - flight master
3841, -- https://www.wowhead.com/tbc/npc=3841/caylais-moonfeather - flight master
3855, -- https://www.wowhead.com/tbc/npc=3855/shadowfang-darksoul
3890, -- https://www.wowhead.com/tbc/npc=3890/brakgul-deathbringer - battlemaster
3974, -- https://www.wowhead.com/tbc/npc=3974/houndmaster-loksey
3975, -- https://www.wowhead.com/tbc/npc=3975/herod
3976, -- https://www.wowhead.com/tbc/npc=3976/scarlet-commander-mograine
3977, -- https://www.wowhead.com/tbc/npc=3977/high-inquisitor-whitemane
3982, -- https://www.wowhead.com/tbc/npc=3982/monika-sengutz (confirms diff)
4267, -- https://www.wowhead.com/tbc/npc=4267/daelyshia - flight master
4275, -- https://www.wowhead.com/tbc/npc=4275/archmage-arugal
4314, -- https://www.wowhead.com/tbc/npc=4314/gorkas - flight master
4321, -- https://www.wowhead.com/tbc/npc=4321/baldruc - flight master
4420, -- https://www.wowhead.com/tbc/npc=4420/overlord-ramtusk
4421, -- https://www.wowhead.com/tbc/npc=4421/charlga-razorflank
4424, -- https://www.wowhead.com/tbc/npc=4424/aggem-thorncurse
4486, -- https://www.wowhead.com/tbc/npc=4486/genavie-callow
4549, -- https://www.wowhead.com/tbc/npc=4549/william-montague - Banker
4551, -- https://www.wowhead.com/tbc/npc=4551/michael-garrett - flight master
4552, -- https://www.wowhead.com/tbc/npc=4552/eunice-burch
4553, -- https://www.wowhead.com/tbc/npc=4553/ronald-burch
4554, -- https://www.wowhead.com/tbc/npc=4554/tawny-grisette
4555, -- https://www.wowhead.com/tbc/npc=4555/eleanor-rusk
4556, -- https://www.wowhead.com/tbc/npc=4556/gordon-wendham
4557, -- https://www.wowhead.com/tbc/npc=4557/louis-warren
4558, -- https://www.wowhead.com/tbc/npc=4558/lauren-newcomb
4559, -- https://www.wowhead.com/tbc/npc=4559/timothy-weldon
4560, -- https://www.wowhead.com/tbc/npc=4560/walter-ellingson
4561, -- https://www.wowhead.com/tbc/npc=4561/daniel-bartlett
4562, -- https://www.wowhead.com/tbc/npc=4562/thomas-mordan
4564, -- https://www.wowhead.com/tbc/npc=4564/luther-pickman
4565, -- https://www.wowhead.com/tbc/npc=4565/richard-kerwin
4567, -- https://www.wowhead.com/tbc/npc=4567/pierce-shackleton
4568, -- https://www.wowhead.com/tbc/npc=4568/anastasia-hartwell
4569, -- https://www.wowhead.com/tbc/npc=4569/charles-seaton
4570, -- https://www.wowhead.com/tbc/npc=4570/sydney-upton
4571, -- https://www.wowhead.com/tbc/npc=4571/morley-bates
4572, -- https://www.wowhead.com/tbc/npc=4572/silas-zimmer
4573, -- https://www.wowhead.com/tbc/npc=4573/armand-cromwell
4574, -- https://www.wowhead.com/tbc/npc=4574/lizbeth-cromwell
4575, -- https://www.wowhead.com/tbc/npc=4575/hannah-akeley
4576, -- https://www.wowhead.com/tbc/npc=4576/josef-gregorian
4577, -- https://www.wowhead.com/tbc/npc=4577/millie-gregorian
4578, -- https://www.wowhead.com/tbc/npc=4578/josephine-lister
4580, -- https://www.wowhead.com/tbc/npc=4580/lucille-castleton
4581, -- https://www.wowhead.com/tbc/npc=4581/salazar-bloch
4582, -- https://www.wowhead.com/tbc/npc=4582/carolyn-ward
4583, -- https://www.wowhead.com/tbc/npc=4583/miles-dexter
4584, -- https://www.wowhead.com/tbc/npc=4584/gregory-charles
4585, -- https://www.wowhead.com/tbc/npc=4585/ezekiel-graves
4586, -- https://www.wowhead.com/tbc/npc=4586/graham-van-talen
4587, -- https://www.wowhead.com/tbc/npc=4587/elizabeth-van-talen
4588, -- https://www.wowhead.com/tbc/npc=4588/arthur-moore
4589, -- https://www.wowhead.com/tbc/npc=4589/joseph-moore
4590, -- https://www.wowhead.com/tbc/npc=4590/jonathan-chambers
4591, -- https://www.wowhead.com/tbc/npc=4591/mary-edras
4592, -- https://www.wowhead.com/tbc/npc=4592/nathaniel-steenwick
4593, -- https://www.wowhead.com/tbc/npc=4593/christoph-walker
4594, -- https://www.wowhead.com/tbc/npc=4594/angela-curthas
4595, -- https://www.wowhead.com/tbc/npc=4595/baltus-fowler
4596, -- https://www.wowhead.com/tbc/npc=4596/james-van-brunt
4597, -- https://www.wowhead.com/tbc/npc=4597/samuel-van-brunt
4598, -- https://www.wowhead.com/tbc/npc=4598/brom-killian
4599, -- https://www.wowhead.com/tbc/npc=4599/sarah-killian
4600, -- https://www.wowhead.com/tbc/npc=4600/geoffrey-hartwell
4601, -- https://www.wowhead.com/tbc/npc=4601/francis-eliot
4602, -- https://www.wowhead.com/tbc/npc=4602/benijah-fenner
4603, -- https://www.wowhead.com/tbc/npc=4603/nicholas-atwood
4604, -- https://www.wowhead.com/tbc/npc=4604/abigail-sawyer
4605, -- https://www.wowhead.com/tbc/npc=4605/basil-frye
4607, -- https://www.wowhead.com/tbc/npc=4607/father-lankester
4608, -- https://www.wowhead.com/tbc/npc=4608/father-lazarus
4609, -- https://www.wowhead.com/tbc/npc=4609/doctor-marsh
4611, -- https://www.wowhead.com/tbc/npc=4611/doctor-herbert-halsey
4613, -- https://www.wowhead.com/tbc/npc=4613/christopher-drakul
4614, -- https://www.wowhead.com/tbc/npc=4614/martha-alliestar
4615, -- https://www.wowhead.com/tbc/npc=4615/katrina-alliestar
4616, -- https://www.wowhead.com/tbc/npc=4616/lavinia-crowe
4617, -- https://www.wowhead.com/tbc/npc=4617/thaddeus-webb
4775, -- https://www.wowhead.com/tbc/npc=4775/felicia-doan
4832, -- https://www.wowhead.com/tbc/npc=4832/twilight-lord-kelris
4968, -- https://www.wowhead.com/tbc/npc=4968/lady-jaina-proudmoore - faction boss
5052, -- https://www.wowhead.com/tbc/npc=5052/edward-remington
5118, -- https://www.wowhead.com/tbc/npc=5118/brogun-stoneshield - battlemaster
5190, -- https://www.wowhead.com/tbc/npc=5190/merill-pleasance
5204, -- https://www.wowhead.com/tbc/npc=5204/apothecary-zinge
5243, -- https://www.wowhead.com/tbc/npc=5243/cursed-atalai
5261, -- https://www.wowhead.com/tbc/npc=5261/enthralled-atalai
5651, -- https://www.wowhead.com/tbc/npc=5651/patrick-garrett
5653, -- https://www.wowhead.com/tbc/npc=5653/tyler
5654, -- https://www.wowhead.com/tbc/npc=5654/edward
5655, -- https://www.wowhead.com/tbc/npc=5655/robert-gossom
5656, -- https://www.wowhead.com/tbc/npc=5656/richard-van-brunt
5657, -- https://www.wowhead.com/tbc/npc=5657/marla-fowler
5658, -- https://www.wowhead.com/tbc/npc=5658/chloe-curthas
5659, -- https://www.wowhead.com/tbc/npc=5659/andrew-hartwell
5660, -- https://www.wowhead.com/tbc/npc=5660/riley-walker
5661, -- https://www.wowhead.com/tbc/npc=5661/brother-malach
5662, -- https://www.wowhead.com/tbc/npc=5662/sergeant-houser
5663, -- https://www.wowhead.com/tbc/npc=5663/travist-bosk 
5664, -- https://www.wowhead.com/tbc/npc=5664/eldin-partridge
5665, -- https://www.wowhead.com/tbc/npc=5665/alyssa-blaye
5668, -- https://www.wowhead.com/tbc/npc=5668/mattie-alred
5669, -- https://www.wowhead.com/tbc/npc=5669/helena-atwood
5670, -- https://www.wowhead.com/tbc/npc=5670/edrick-killian
5675, -- https://www.wowhead.com/tbc/npc=5675/carendin-halgar
5679, -- https://www.wowhead.com/tbc/npc=5679/lysta-bancroft
5693, -- https://www.wowhead.com/tbc/npc=5693/godrick-farsan
5696, -- https://www.wowhead.com/tbc/npc=5696/gerard-abernathy
5697, -- https://www.wowhead.com/tbc/npc=5697/theresa
5698, -- https://www.wowhead.com/tbc/npc=5698/joanna-whitehall
5699, -- https://www.wowhead.com/tbc/npc=5699/leona-tharpe
5700, -- https://www.wowhead.com/tbc/npc=5700/samantha-shackleton
5701, -- https://www.wowhead.com/tbc/npc=5701/selina-pickman
5702, -- https://www.wowhead.com/tbc/npc=5702/jezelle-pruitt
5703, -- https://www.wowhead.com/tbc/npc=5703/winifred-kerwin
5704, -- https://www.wowhead.com/tbc/npc=5704/adrian-bartlett
5705, -- https://www.wowhead.com/tbc/npc=5705/victor-bartholomew
5706, -- https://www.wowhead.com/tbc/npc=5706/davitt-hickson
5707, -- https://www.wowhead.com/tbc/npc=5707/reginald-grimsford
5710, -- https://www.wowhead.com/tbc/npc=5710/jammalan-the-prophet
5731, -- https://www.wowhead.com/tbc/npc=5731/apothecary-vallia
5733, -- https://www.wowhead.com/tbc/npc=5733/apothecary-lycanus
5744, -- https://www.wowhead.com/tbc/npc=5744/cedric-stumpel
5747, -- https://www.wowhead.com/tbc/npc=5747/hepzibah-sedgewick
5782, -- https://www.wowhead.com/tbc/npc=5782/crildor
5882, -- https://www.wowhead.com/tbc/npc=5882/pephredo
5883, -- https://www.wowhead.com/tbc/npc=5883/enyo
5885, -- https://www.wowhead.com/tbc/npc=5885/deino
6026, -- https://www.wowhead.com/tbc/npc=6026/breyk - flightmaster
6487, -- https://www.wowhead.com/tbc/npc=6487/arcanist-doan
6741, -- https://www.wowhead.com/tbc/npc=6741/innkeeper-norman
6906, -- https://www.wowhead.com/tbc/npc=6906/baelog
6907, -- https://www.wowhead.com/tbc/npc=6907/eric-the-swift
6908, -- https://www.wowhead.com/tbc/npc=6908/olaf
6910, -- https://www.wowhead.com/tbc/npc=6910/revelosh
7011, -- https://www.wowhead.com/tbc/npc=7011/earthen-rocksmasher
7012, -- https://www.wowhead.com/tbc/npc=7012/earthen-sculptor
7087, -- https://www.wowhead.com/tbc/npc=7087/killian-hagey
7267, -- https://www.wowhead.com/tbc/npc=7267/chief-ukorz-sandscalp
7271, -- https://www.wowhead.com/tbc/npc=7271/witch-doctor-zumrah
7297, -- https://www.wowhead.com/tbc/npc=7297/gothard-winslow
7396, -- https://www.wowhead.com/tbc/npc=7396/earthen-stonebreaker
7397, -- https://www.wowhead.com/tbc/npc=7397/earthen-stonecarver
7410, -- https://www.wowhead.com/tbc/npc=7410/thelman-slatefist - battlemaster
7427, -- https://www.wowhead.com/tbc/npc=7427/taim-ragetotem - battlemaster
7797, -- https://www.wowhead.com/tbc/npc=7797/ruuzlu
7823, -- https://www.wowhead.com/tbc/npc=7823/bera-stonehammer - flightmaster
7937, -- https://www.wowhead.com/tbc/npc=7937/high-tinker-mekkatorque - faction boss
7980, -- https://www.wowhead.com/tbc/npc=7980/deathguard-elite - elite guards at faction bosses
7999, -- https://www.wowhead.com/tbc/npc=7999/tyrande-whisperwind - faction boss
8018, -- https://www.wowhead.com/tbc/npc=8018/guthrum-thunderfist - flightmaster
8127, -- https://www.wowhead.com/tbc/npc=8127/antusul
8609, -- https://www.wowhead.com/tbc/npc=8609/alexandra-constantine - flightmaster
8610, -- https://www.wowhead.com/tbc/npc=8610/kroum - flightmaster
8934, -- https://www.wowhead.com/tbc/npc=8934/christopher-hewen
9018, -- https://www.wowhead.com/tbc/npc=9018/high-interrogator-gerstahn
9030, -- https://www.wowhead.com/tbc/npc=9030/okthor-the-breaker
9041, -- https://www.wowhead.com/tbc/npc=9041/warder-stilgiss
9056, -- https://www.wowhead.com/tbc/npc=9056/fineous-darkvire
9196, -- https://www.wowhead.com/tbc/npc=9196/highlord-omokk
9236, -- https://www.wowhead.com/tbc/npc=9236/shadow-hunter-voshgajin
9237, -- https://www.wowhead.com/tbc/npc=9237/war-master-voone
9319, -- https://www.wowhead.com/tbc/npc=9319/houndmaster-grebmar
10053, -- https://www.wowhead.com/tbc/npc=10053/anya-maulray
10057, -- https://www.wowhead.com/tbc/npc=10057/theodore-mont-claire
10360, -- https://www.wowhead.com/tbc/npc=10360/kergul-bloodaxe - battlemaster
10378, -- https://www.wowhead.com/tbc/npc=10378/omusa-thunderhorn - flightmaster
10438, -- https://www.wowhead.com/tbc/npc=10438/maleki-the-pallid
10505, -- https://www.wowhead.com/tbc/npc=10505/instructor-malicia
10811, -- https://www.wowhead.com/tbc/npc=10811/archivist-galford
10812, -- https://www.wowhead.com/tbc/npc=10812/grand-crusader-dathrohan
10997, -- https://www.wowhead.com/tbc/npc=10997/cannon-master-willey
11022, -- https://www.wowhead.com/tbc/npc=11022/alexi-barov
11023, -- https://www.wowhead.com/tbc/npc=11023/weldon-barov
11032, -- https://www.wowhead.com/tbc/npc=11032/malor-the-zealous
11044, -- https://www.wowhead.com/tbc/npc=11044/doctor-martin-felben
11048, -- https://www.wowhead.com/tbc/npc=11048/victor-ward
11049, -- https://www.wowhead.com/tbc/npc=11049/rhiannon-davis
11067, -- https://www.wowhead.com/tbc/npc=11067/malcomb-wynn
11138, -- https://www.wowhead.com/tbc/npc=11138/maethrya - flightmaster
11194, -- https://www.wowhead.com/tbc/npc=11194/argent-defender
11261, -- https://www.wowhead.com/tbc/npc=11261/doctor-theolen-krastinov
11501, -- https://www.wowhead.com/tbc/npc=11501/king-gordok
11870, -- https://www.wowhead.com/tbc/npc=11870/archibald
11899, -- https://www.wowhead.com/tbc/npc=11899/shardi - flightmaster
11901, -- https://www.wowhead.com/tbc/npc=11901/andruk - flightmaster
12225, -- https://www.wowhead.com/tbc/npc=12225/celebras-the-cursed
12339, -- https://www.wowhead.com/tbc/npc=12339/demetria
12577, -- https://www.wowhead.com/tbc/npc=12577/jarrodenus - flightmaster
12578, -- https://www.wowhead.com/tbc/npc=12578/mishellena - flightmaster
12596, -- https://www.wowhead.com/tbc/npc=12596/bibilfaz-featherwhistle - flightmaster
12616, -- https://www.wowhead.com/tbc/npc=12616/vhulgra - flightmaster
12617, -- https://www.wowhead.com/tbc/npc=12617/khaelyn-steelwing - flightmaster
12737, -- https://www.wowhead.com/tbc/npc=12737/mastok-wrilehiss
13217, -- https://www.wowhead.com/tbc/npc=13217/thanthaldis-snowgleam
13219, -- https://www.wowhead.com/tbc/npc=13219/jekyll-flandring
13601, -- https://www.wowhead.com/tbc/npc=13601/tinkerer-gizlock
13776, -- https://www.wowhead.com/tbc/npc=13776/corporal-teeka-bloodsnarl
13777, -- https://www.wowhead.com/tbc/npc=13777/sergeant-durgen-stormpike
13816, -- https://www.wowhead.com/tbc/npc=13816/prospector-stonehewer
13817, -- https://www.wowhead.com/tbc/npc=13817/voggah-deathgrip
13840, -- https://www.wowhead.com/tbc/npc=13840/warmaster-laggrond
13841, -- https://www.wowhead.com/tbc/npc=13841/lieutenant-haggerdin
14284, -- https://www.wowhead.com/tbc/npc=14284/stormpike-battleguard
14285, -- https://www.wowhead.com/tbc/npc=14285/frostwolf-battleguard
14321, -- https://www.wowhead.com/tbc/npc=14321/guard-fengus
14322, -- https://www.wowhead.com/tbc/npc=14322/stomper-kreeg
14323, -- https://www.wowhead.com/tbc/npc=14323/guard-slipkik
14324, -- https://www.wowhead.com/tbc/npc=14324/chorush-the-observer
14326, -- https://www.wowhead.com/tbc/npc=14326/guard-moldar
14327, -- https://www.wowhead.com/tbc/npc=14327/lethtendris
14720, -- https://www.wowhead.com/tbc/npc=14720/high-overlord-saurfang
14753, -- https://www.wowhead.com/tbc/npc=14753/illiyana-moonblaze
14942, -- https://www.wowhead.com/tbc/npc=14942/kartra-bloodsnarl - battlemaster
14982, -- https://www.wowhead.com/tbc/npc=14982/lylandris - battlemaster
15008, -- https://www.wowhead.com/tbc/npc=15008/lady-hoteshem - battlemaster
15126, -- https://www.wowhead.com/tbc/npc=15126/rutherford-twing
15127, -- https://www.wowhead.com/tbc/npc=15127/samuel-hawke
15128, -- https://www.wowhead.com/tbc/npc=15128/defiler-elite
15130, -- https://www.wowhead.com/tbc/npc=15130/league-of-arathor-elite
15181, -- https://www.wowhead.com/tbc/npc=15181/commander-maralith
15182, -- https://www.wowhead.com/tbc/npc=15182/vish-kozus
15184, -- https://www.wowhead.com/tbc/npc=15184/cenarion-hold-infantry
15293, -- https://www.wowhead.com/tbc/npc=15293/aendel-windspear
15500, -- https://www.wowhead.com/tbc/npc=15500/keyl-swiftclaw
15540, -- https://www.wowhead.com/tbc/npc=15540/windcaller-kaldon
15591, -- https://www.wowhead.com/tbc/npc=15591/minion-of-weavil
15610, -- https://www.wowhead.com/tbc/npc=15610/cenarion-scout-azenel
16091, -- https://www.wowhead.com/tbc/npc=16091/dirk-thunderwood
16112, -- https://www.wowhead.com/tbc/npc=16112/korfax-champion-of-the-light
16113, -- https://www.wowhead.com/tbc/npc=16113/father-inigo-montoy
16115, -- https://www.wowhead.com/tbc/npc=16115/commander-eligor-dawnbringer
16116, -- https://www.wowhead.com/tbc/npc=16116/archmage-angela-dosantos
16212, -- https://www.wowhead.com/tbc/npc=16212/dispatch-commander-metz
16228, -- https://www.wowhead.com/tbc/npc=16228/argent-dawn-infantry
16256, -- https://www.wowhead.com/tbc/npc=16256/jessica-chambers
16283, -- https://www.wowhead.com/tbc/npc=16283/packmaster-stonebruiser
16284, -- https://www.wowhead.com/tbc/npc=16284/argent-medic
16392, -- https://www.wowhead.com/tbc/npc=16392/captain-armando-ossex
17238, -- https://www.wowhead.com/tbc/npc=17238/anchorite-truuen
17465, -- https://www.wowhead.com/tbc/npc=17465/shattered-hand-centurion
17765, -- https://www.wowhead.com/tbc/npc=17765/alliance-silithyst-sentinel
17766, -- https://www.wowhead.com/tbc/npc=17766/horde-silithyst-sentinel
19567, -- https://www.wowhead.com/tbc/npc=19567/watcher-theronus
19942, -- https://www.wowhead.com/tbc/npc=19942/agent-proudwell
20031, -- https://www.wowhead.com/tbc/npc=20031/bloodwarder-legionnaire
20047, -- https://www.wowhead.com/tbc/npc=20047/crimson-hand-battle-mage
20048, -- https://www.wowhead.com/tbc/npc=20048/crimson-hand-centurion
20383, -- https://www.wowhead.com/tbc/npc=20383/enlae - battlemaster
21865, -- https://www.wowhead.com/tbc/npc=21865/coilfang-ambusher
22876, -- https://www.wowhead.com/tbc/npc=22876/coilskar-soothsayer
22935, -- https://www.wowhead.com/tbc/npc=22935/suralais-farwind - flightmaster
22936, -- https://www.wowhead.com/tbc/npc=22936/auhula
22945, -- https://www.wowhead.com/tbc/npc=22945/shadowmoon-blood-mage
23090, -- https://www.wowhead.com/tbc/npc=23090/troll-roof-stalker
23704, -- https://www.wowhead.com/tbc/npc=23704/cassa-crimsonwing
24685, -- https://www.wowhead.com/tbc/npc=24685/sunblade-magister
25368, -- https://www.wowhead.com/tbc/npc=25368/sunblade-slayer
25370 -- https://www.wowhead.com/tbc/npc=25370/sunblade-dusk-priest
);

UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(
-- immune to spell 11725/11726 in classic sniff
7665, -- https://www.wowhead.com/classic/npc=7665/grol-the-destroyer
7666, -- https://www.wowhead.com/classic/npc=7666/archmage-allistarj
7667, -- https://www.wowhead.com/classic/npc=7667/lady-sevine
9516, -- https://www.wowhead.com/classic/npc=9516/lord-banehollow
14101, -- https://www.wowhead.com/classic/npc=14101/enraged-felguard
15467, -- https://www.wowhead.com/classic/npc=15467/omen
-- tbc+ sniffs
7461, -- https://www.wowhead.com/tbc/npc=7461/hederine-initiate
7462, -- https://www.wowhead.com/tbc/npc=7462/hederine-manastalker
7463, -- https://www.wowhead.com/tbc/npc=7463/hederine-slayer
7665, -- https://www.wowhead.com/tbc/npc=7665/grol-the-destroyer
7666, -- https://www.wowhead.com/tbc/npc=7666/archmage-allistarj
7667, -- https://www.wowhead.com/tbc/npc=7667/lady-sevine
7728, -- https://www.wowhead.com/tbc/npc=7728/kirith-the-damned
8318, -- https://www.wowhead.com/tbc/npc=8318/atalai-slave
8717, -- https://www.wowhead.com/tbc/npc=8717/felguard-elite
8718, -- https://www.wowhead.com/tbc/npc=8718/manahound
9516, -- https://www.wowhead.com/tbc/npc=9516/lord-banehollow
10201, -- https://www.wowhead.com/tbc/npc=10201/lady-hederine
10813, -- https://www.wowhead.com/tbc/npc=10813/balnazzar
11490, -- https://www.wowhead.com/tbc/npc=11490/zevrim-thornhoof
11492, -- https://www.wowhead.com/tbc/npc=11492/alzzin-the-wildshaper
12236, -- https://www.wowhead.com/tbc/npc=12236/lord-vyletongue
12396, -- https://www.wowhead.com/tbc/npc=12396/doomguard-commander
14354, -- https://www.wowhead.com/tbc/npc=14354/pusillin
17864, -- https://www.wowhead.com/tbc/npc=17864/lesser-doomguard
17908, -- https://www.wowhead.com/tbc/npc=17908/giant-infernal
17916, -- https://www.wowhead.com/tbc/npc=17916/fel-stalker
19354 -- https://www.wowhead.com/tbc/npc=19354/arzeth-the-merciless
);

-- vmangos diff
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 752; -- Marsh Oracle
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 1840; -- Grand Inquisitor Isillien
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 2675; -- Explosive Sheep
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 4277; -- Eye of Kilrogg
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 6016; -- Elemental Protection Totem
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 6228; -- Dark Iron Ambassador
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 7664; -- Razelikh the Defiler
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 8937; -- Pet Bomb
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 9708; -- Burning Imp
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 10261; -- Burning Felhound
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 11460; -- Alzzin's Minion
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11623; -- Scourge Summoning Crystal
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 12126; -- Lord Tirion Fordring
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 12458; -- Blackwing Taskmaster
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14081; -- Demon Portal
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 14302; -- Chromatic Drakonid
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 14452; -- Enslaved Doomguard Commander
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14465; -- Alliance Battle Standard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14466; -- Horde Battle Standard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 14530; -- Solenor the Slayer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 14534; -- Klinfran the Crazed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 14535; -- Artorius the Doombringer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14662; -- Corrupted Fire Nova Totem V
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14663; -- Corrupted Stoneskin Totem VI
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14664; -- Corrupted Healing Stream Totem V
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14666; -- Corrupted Windfury Totem III
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14751; -- Frostwolf Battle Standard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14752; -- Stormpike Battle Standard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14987; -- Powerful Healing Ward
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15047; -- Gurubashi
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15112; -- Brain Wash Totem
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15141; -- Portal of Madness
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 15146; -- Mad Voidwalker
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 15206; -- The Duke of Cynders
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15207; -- The Duke of Fathoms
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15220; -- The Duke of Zephyrs
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15261; -- Spirit Shade
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15286; -- Xil'xix
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15288; -- Aluntir
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15290; -- Arakis
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15343; -- Qiraji Swarmguard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15385; -- Colonel Zerran
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15386; -- Major Yeggeth
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15388; -- Major Pakkon
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15389; -- Captain Drenn
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15390; -- Captain Xurrem
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15391; -- Captain Qeez
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15392; -- Captain Tuubid
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15514; -- Buru Egg
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 15552; -- Doctor Weavil
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15554; -- Number Two
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15620; -- Hive'Regal Hunter-Killer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15667; -- Glob of Viscidus
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15922; -- Viscidus Trigger
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16036; -- Frenzied Bat
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16056; -- Diseased Maggot
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE `entry` = 16097; -- Isalien
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16142; -- Bile Sludge
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16448; -- Plagued Deathhound
-- ---
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 5764; -- Guardian of Blizzard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 6109; -- Azuregos
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 10117; -- Tortured Slave
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 10162; -- Lord Victor Nefarius
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 10184; -- Onyxia
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 10447; -- Chromatic Dragonspawn
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 10558; -- Hearthsinger Forresten
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11447; -- Mushgog
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11502; -- Ragnaros
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11583; -- Nefarian
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11658; -- Molten Giant
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11659; -- Molten Destroyer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11665; -- Lava Annihilator
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11666; -- Firewalker
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11667; -- Flameguard
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11668; -- Firelord
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11669; -- Flame Imp
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11981; -- Flamegor
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11983; -- Firemaw
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 11988; -- Golemagg the Incinerator
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12017; -- Broodlord Lashlayer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12056; -- Baron Geddon
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12057; -- Garr
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12076; -- Lava Elemental
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12099; -- Firesworn
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12100; -- Lava Reaver
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12101; -- Lava Surger
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12143; -- Son of Flame
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12265; -- Lava Spawn
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12435; -- Razorgore the Untamed (Controlled by s.19869 -> s.19832)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 12756; -- Lady Onyxia
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 13020; -- Vaelastrasz the Corrupt
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 13256; -- Lokholar the Ice Lord
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14020; -- Chromaggus
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14241; -- Ironbark the Redeemed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14350; -- Hydroling
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14397; -- Mana Burst
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14435; -- Prince Thunderaan
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14566; -- Ancient Equine Spirit
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14601; -- Ebonroc
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14684; -- Balzaphon
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14887; -- Ysondre
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14888; -- Lethon
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14889; -- Emeriss
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 14890; -- Taerar
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15082; -- Gri'lek
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15083; -- Hazza'rah
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15084; -- Renataki
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15085; -- Wushoolay
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15192; -- Anachronos
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15205; -- Baron Kazum
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15302; -- Shade of Taerar
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15378; -- Merithra of the Dream
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15379; -- Caelestrasz
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15380; -- Arygos
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15381; -- Anachronos the Ancient
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15410; -- Anachronos Dragon Form
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15411; -- Arygos Dragon Form
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15412; -- Caelestrasz Dragon Form
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15413; -- Merithra Dragon Form
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15424; -- Anubisath Conqueror
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15481; -- Spirit of Azuregos
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15491; -- Eranikus, Tyrant of the Dream
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15628; -- Eranikus the Redeemed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15928; -- Thaddius
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15929; -- Stalagg
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15930; -- Feugen
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15931; -- Grobbulus
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15932; -- Gluth
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15936; -- Heigan the Unclean
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15954; -- Noth the Plaguebringer
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15956; -- Anub'Rekhan
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15989; -- Sapphiron
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 15990; -- Kel'Thuzad
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16011; -- Loatheb
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16028; -- Patchwerk
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16060; -- Gothik the Harvester
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16061; -- Instructor Razuvious
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16062; -- Highlord Mograine
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16063; -- Sir Zeliek
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16064; -- Thane Korth'azz
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16065; -- Lady Blaumeux
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16440; -- Highlord Mograine
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16775; -- Spirit of Mograine
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16776; -- Spirit of Blaumeux
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16777; -- Spirit of Zeliek
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE `entry` = 16778; -- Spirit of Korth'azz

-- UNIT_NPC_FLAG_FLIGHTMASTER
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (
352, -- Dungar Longdrink	Gryphon Master
523, -- Thor	Gryphon Master
931, -- Ariena Stormfeather	Gryphon Master
1233, -- [UNUSED] Shaethis Darkoak	Hippogryph Master
1387, -- Thysta	Wind Rider Master
1571, -- Shellei Brondir	Gryphon Master
1572, -- Thorgrum Borrelson	Gryphon Master
1573, -- Gryth Thurden	Gryphon Master
2226, -- Karos Razok	Bat Handler
2299, -- Borgus Stoutarm	Gryphon Master
2389, -- Zarise	Bat Handler
2409, -- Felicia Maline	Gryphon Master
2432, -- Darla Harris	Gryphon Master
2835, -- Cedrik Prose	Gryphon Master
2851, -- Urda	Wind Rider Master
2858, -- Gringer	Wind Rider Master
2859, -- Gyll	Gryphon Master
2861, -- Gorrik	Wind Rider Master
2941, -- Lanie Reed	Gryphon Master
2995, -- Tal	Wind Rider Master
3305, -- Grisha	Wind Rider Master
3310, -- Doras	Wind Rider Master
3615, -- Devrak	Wind Rider Master
3838, -- Vesprystus	Hippogryph Master
3841, -- Caylais Moonfeather	Hippogryph Master
4267, -- Daelyshia	Hippogryph Master
4312, -- Tharm	Wind Rider Master
4314, -- Gorkas	Wind Rider Master
4317, -- Nyse	Wind Rider Master
4319, -- Thyssiana	Hippogryph Master
4321, -- Baldruc	Gryphon Master
4407, -- Teloren	Hippogryph Master
4551, -- Michael Garrett	Bat Handler
6026, -- Breyk	Wind Rider Master
6706, -- Baritanas Skyriver	Hippogryph Master
6726, -- Thalon	Wind Rider Master
7823, -- Bera Stonehammer	Gryphon Master
7824, -- Bulkrek Ragefist	Wind Rider Master
8018, -- Guthrum Thunderfist	Gryphon Master
8019, -- Fyldren Moonfeather	Hippogryph Master
8020, -- Shyn	Wind Rider Master
8609, -- Alexandra Constantine	Gryphon Master
8610, -- Kroum	Wind Rider Master
10378, -- Omusa Thunderhorn	Wind Rider Master
10583, -- Gryfe	Flight Master
10897, -- Sindrayl	Hippogryph Master
11138, -- Maethrya	Hippogryph Master
11139, -- Yugrek	Wind Rider Master
11899, -- Shardi	Wind Rider Master
11900, -- Brakkar	Wind Rider Master
11901, -- Andruk	Wind Rider Master
12577, -- Jarrodenus	Hippogryph Master
12578, -- Mishellena	Hippogryph Master
12596, -- Bibilfaz Featherwhistle	Gryphon Master
12616, -- Vhulgra	Wind Rider Master
12617, -- Khaelyn Steelwing	Gryphon Master
12636, -- Georgia	Bat Handler
12740, -- Faustron	Wind Rider Master
13177, -- Vahgruk	Wind Rider Master
14242, -- [UNUSED] Sulhasa	Wind Rider Master
15177, -- Cloud Skydancer	Hippogryph Master
15178, -- Runk Windtamer	Wind Rider Master
16189, -- Skymaster Sunwing	Dragonhawk Master
16192, -- Skymistress Gloaming	Dragonhawk Master
16227, -- Bragok	Flight Master
16587, -- Barley	Wind Rider Master
16822, -- Flightmaster Krill Bitterhue	Gryphon Master
17554, -- Laando	Hippogryph Master
17555, -- Stephanos	Hippogryph Master
18785, -- Kuma	Hippogryph Master
18788, -- Munci	Hippogryph Master
18789, -- Furgu	Hippogryph Master
18791, -- Du'ga	Wind Rider Master
18807, -- Kerna	Wind Rider Master
18808, -- Gursha	Wind Rider Master
18809, -- Furnan Skysoar	Gryphon Master
18930, -- Vlagga Freyfeather	Wind Rider Master
18931, -- Amish Wildhammer	Gryphon Master
18937, -- Amerun Leafshade	Hippogryph Master
18938, -- Krexcil	Flight Master
18939, -- Brubeck Stormfoot	Gryphon Master
18940, -- Nutral	Flight Master
18942, -- Innalia	Wind Rider Master
18953, -- Unoke Tenderhoof	Wind Rider Master
19317, -- Drek'Gol	Wind Rider Master
19558, -- Amilya Airheart	Wind Rider Master
19581, -- Maddix	Flight Master
19583, -- Grennik	Flight Master
20234, -- Runetog Wildhammer	Gryphon Master
20515, -- Harpax	Flight Master
20762, -- Gur'zil	Wind Rider Master
21107, -- Rip Pedalslam	Gryphon Master
21766, -- Alieshor	Flight Master
22216, -- Fhyn Leafshadow	Flight Master
22455, -- Sky-Master Maxxor	Flight Master
22485, -- Halu	Hippogryph Master
22931, -- Gorrim	Emerald Circle Flight Master
22935, -- Suralais Farwind	Hippogryph Master
23612, -- Dyslix Silvergrub	Flight Master
24366, -- Nizzle	Gryphon Master
24851, -- Kiz Coilspanner	Flight Master
26560); -- Ohura	Dragonhawk Master

-- UNIT_NPC_FLAG_BATTLEMASTER
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (
347, -- Grizzle Halfmane
857, -- Donal Osgood
907, -- Keras Wolfheart
2302, -- Aethalas
2804, -- Kurden Bloodclaw
3890, -- Brakgul Deathbringer
5118, -- Brogun Stoneshield
7410, -- Thelman Slatefist
7427, -- Taim Ragetotem
10360, -- Kergul Bloodaxe
12197, -- Glordrum Steelbeard
12198, -- Martin Lindsey
14942, -- Kartra Bloodsnarl
14981, -- Elfarran
14982, -- Lylandris
14990, -- Defilers Emissary
14991, -- League of Arathor Emissary
15006, -- Deze Snowbane
15007, -- Sir Malory Wheeler
15008, -- Lady Hoteshem
15102, -- Silverwing Emissary
15103, -- Stormpike Emissary
15105, -- Warsong Emissary
15106, -- Frostwolf Emissary
16694, -- Karen Wentworth
16695, -- Gurak
16696, -- Krukk
18895, -- Ear-Biter
19855, -- Sir Maximus Adams
19858, -- "Lefty" Puddemup
19859, -- Max Luna
19905, -- The Black Bride
19906, -- Usha Eyegouge
19907, -- Grumbol Grimhammer
19908, -- Su'ura Swiftarrow
19909, -- Rex Pixem
19910, -- Gargok
19911, -- Beka Zipwhistle
19912, -- Zeggon Botsnap
19915, -- Max Xim
19923, -- Bipp Glizzitor
19925, -- Miglik Blotstrom
20002, -- Hurlog Horde
20118, -- Jihi
20119, -- Mahul
20120, -- Tolo
20269, -- Montok Redhands
20271, -- Haelga Slatefist
20272, -- Lylandor
20273, -- Adam Eternum
20274, -- Keldor the Lost
20276, -- Wolf-Sister Maka
20362, -- Iravar
20374, -- Kandaar
20381, -- Jovil
20382, -- Mitia
20383, -- Enlae
20384, -- Yula the Fair
20385, -- Andrissa Heartspear
20386, -- Lyrlia Blackshield
20388, -- Althallen Brightblade
20390, -- Duyash the Cruel
20497, -- Fima Five-Fingers
20499, -- Fizim Blastwrench
21235, -- "Backstab" Bindo Gearbomb
22013, -- Eye of the Storm Emissary
22015, -- Eye of the Storm Envoy
22647, -- Frostwolf Emissary (1)
22656, -- Stormpike Emissary (1)
25991, -- Kixi the Shiv
26007); -- Arena Battlemaster

-- WoW Immunity Research
-- Outland
-- Hellfire Peninsula
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18728; -- https://www.wowhead.com/tbc/npc=18728/doom-lord-kazzak
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17000; -- https://www.wowhead.com/tbc/npc=17000/aggonis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19191; -- https://www.wowhead.com/tbc/npc=19191/arazzius-the-cruel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19354; -- https://www.wowhead.com/tbc/npc=19354/arzeth-the-merciless
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17057; -- https://www.wowhead.com/tbc/npc=17057/blacktalon-the-savage
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19312; -- https://www.wowhead.com/tbc/npc=19312/drillmaster-zurok
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19399; -- Mechanical - Fel Cannon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18733; -- Mechanical - Fel Reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19400; -- Mechanical - Fel Reaver Sentry
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18944; -- https://www.wowhead.com/tbc/npc=18944/fel-soldier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19264; -- https://www.wowhead.com/tbc/npc=19264/force-commander-gorax
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19398; -- https://www.wowhead.com/tbc/npc=19398/ganarg-peon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19457; -- https://www.wowhead.com/tbc/npc=19457/grillok-darkeye
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18946; -- https://www.wowhead.com/tbc/npc=18946/infernal-siegebreaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19397; -- https://www.wowhead.com/tbc/npc=19397/moarg-overseer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18945; -- https://www.wowhead.com/tbc/npc=18945/pit-commander
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19298; -- https://www.wowhead.com/tbc/npc=19298/warbringer-arixamal
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16964; -- https://www.wowhead.com/tbc/npc=16964/warlord-morkh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18976; -- https://www.wowhead.com/tbc/npc=18976/urgazz
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19005; -- https://www.wowhead.com/tbc/npc=19005/wrath-master
-- Hellfire Peninsula Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 17084; -- https://www.wowhead.com/tbc/npc=17084/avruu
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19299; -- https://www.wowhead.com/tbc/npc=19299/deathwhisperer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16959; -- https://www.wowhead.com/tbc/npc=16959/dread-tactician
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24918; -- https://www.wowhead.com/tbc/npc=24918/felblood-initiate
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18977; -- https://www.wowhead.com/tbc/npc=18977/felguard-destroyer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19443; -- https://www.wowhead.com/tbc/npc=19443/tagar-spinebreaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16939; -- https://www.wowhead.com/tbc/npc=16939/void-baron-galaxis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19442; -- https://www.wowhead.com/tbc/npc=19442/worg-master-kruush
-- Hellfire Peninsula Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 17085; -- https://www.wowhead.com/tbc/npc=17085/aeranas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16977; -- https://www.wowhead.com/tbc/npc=16977/arch-mage-xintor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19305; -- https://www.wowhead.com/tbc/npc=19305/goliathon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16978; -- https://www.wowhead.com/tbc/npc=16978/lieutenant-commander-thalvos

-- Zangarmarsh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18159; -- https://www.wowhead.com/tbc/npc=18159/boss-grogak
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19174; -- https://www.wowhead.com/tbc/npc=19174/chieftain-mummaki
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18080; -- https://www.wowhead.com/tbc/npc=18080/kataru
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18046; -- https://www.wowhead.com/tbc/npc=18046/rajah-haghazed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18044; -- https://www.wowhead.com/tbc/npc=18044/rajis-fyashe
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20669; -- https://www.wowhead.com/tbc/npc=20669/shade-of-maldruk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18154; -- https://www.wowhead.com/tbc/npc=18154/ssslith
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20477; -- https://www.wowhead.com/tbc/npc=20477/terrorclaw
-- Zangarmarsh Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20442; -- https://www.wowhead.com/tbc/npc=20442/captain-bokar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18992; -- https://www.wowhead.com/tbc/npc=18992/captain-krosh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18197; -- https://www.wowhead.com/tbc/npc=18197/elder-kuruti
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20445; -- https://www.wowhead.com/tbc/npc=20445/maldruk-the-soulrender
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21894; -- https://www.wowhead.com/tbc/npc=21894/xeleth
-- Zangarmarsh Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18285; -- https://www.wowhead.com/tbc/npc=18285/count-ungula
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18283; -- https://www.wowhead.com/tbc/npc=18283/blacksting
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18281; -- https://www.wowhead.com/tbc/npc=18281/boglash
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18282; -- https://www.wowhead.com/tbc/npc=18282/lord-klaq
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18286; -- https://www.wowhead.com/tbc/npc=18286/mragesh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18280; -- https://www.wowhead.com/tbc/npc=18280/sporewing

-- Terrokkar Forest
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18539; -- https://www.wowhead.com/tbc/npc=18539/ashkaz
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18540; -- https://www.wowhead.com/tbc/npc=18540/ayit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19847; -- https://www.wowhead.com/tbc/npc=19847/levixus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18583; -- https://www.wowhead.com/tbc/npc=18583/lisaile-fireweaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18533; -- https://www.wowhead.com/tbc/npc=18533/luanga-the-imprisoner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18554; -- https://www.wowhead.com/tbc/npc=18554/sharth-voldoun
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18541; -- https://www.wowhead.com/tbc/npc=18541/urdak
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22199; -- https://www.wowhead.com/tbc/npc=22199/slaag
-- Terrokkar Forest Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18647; -- https://www.wowhead.com/tbc/npc=18647/deathskitter
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23022; -- https://www.wowhead.com/tbc/npc=23022/gordunni-soulreaper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22381; -- https://www.wowhead.com/tbc/npc=22381/hathyss-the-wicked
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18475; -- https://www.wowhead.com/tbc/npc=18475/muggok
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18262; -- https://www.wowhead.com/tbc/npc=18262/unkor-the-ruthless
-- Terrokkar Forest Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21730; -- https://www.wowhead.com/tbc/npc=21730/alluvion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23161; -- https://www.wowhead.com/tbc/npc=23161/darkscreecher-akkarai
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23163; -- https://www.wowhead.com/tbc/npc=23163/gezzarak-the-huntress
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22038; -- https://www.wowhead.com/tbc/npc=22038/haishulud
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18670; -- https://www.wowhead.com/tbc/npc=18670/ironjaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23165; -- https://www.wowhead.com/tbc/npc=23165/karrog
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18438; -- https://www.wowhead.com/tbc/npc=18438/naphthalar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22307; -- https://www.wowhead.com/tbc/npc=22307/rotting-forest-rager
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23029; -- https://www.wowhead.com/tbc/npc=23029/talonsworn-forest-rager
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22441; -- https://www.wowhead.com/tbc/npc=22441/teribus-the-cursed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21838; -- https://www.wowhead.com/tbc/npc=21838/terokk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20682; -- https://www.wowhead.com/tbc/npc=20682/terokkarantula
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18707; -- https://www.wowhead.com/tbc/npc=18707/torgos
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21515; -- https://www.wowhead.com/tbc/npc=21515/trachela
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23162; -- https://www.wowhead.com/tbc/npc=23162/vakkiz-the-windrager

-- Nagrand
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18423; -- https://www.wowhead.com/tbc/npc=18423/chowar-the-pillager
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18535; -- https://www.wowhead.com/tbc/npc=18535/demos-overseer-of-hate
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18298; -- https://www.wowhead.com/tbc/npc=18298/gavaxi
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18391; -- https://www.wowhead.com/tbc/npc=18391/giselda-the-crone
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18567; -- https://www.wowhead.com/tbc/npc=18567/moarg-master-planner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18069; -- https://www.wowhead.com/tbc/npc=18069/mogor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18399; -- https://www.wowhead.com/tbc/npc=18399/murkblood-twin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18204; -- https://www.wowhead.com/tbc/npc=18204/ortor-of-murkblood
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22357; -- https://www.wowhead.com/tbc/npc=22357/rethhedron-the-subduer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18401; -- https://www.wowhead.com/tbc/npc=18401/skragath
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18402; -- https://www.wowhead.com/tbc/npc=18402/warmaul-champion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18536; -- https://www.wowhead.com/tbc/npc=18536/xirkos-overseer-of-fear
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18413; -- https://www.wowhead.com/tbc/npc=18413/zorbo-the-advisor
-- Nagrand Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22393; -- https://www.wowhead.com/tbc/npc=22393/deathshadow-overlord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 17152; -- https://www.wowhead.com/tbc/npc=17152/felguard-legionnaire
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 17151; -- https://www.wowhead.com/tbc/npc=17151/ganarg-tinkerer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18351; -- https://www.wowhead.com/tbc/npc=18351/lump
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16945; -- https://www.wowhead.com/tbc/npc=16945/moarg-engineer
-- Nagrand Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18258; -- https://www.wowhead.com/tbc/npc=18258/bachlor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18259; -- https://www.wowhead.com/tbc/npc=18259/banthar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18398; -- https://www.wowhead.com/tbc/npc=18398/brokentoe
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 18411; -- GRONN https://www.wowhead.com/tbc/npc=18411/durn-the-hungerer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18182; -- https://www.wowhead.com/tbc/npc=18182/gurok-the-usurper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21233; -- Mechanical https://www.wowhead.com/tbc/npc=21233/legion-fel-cannon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19201; -- GRONN https://www.wowhead.com/tbc/npc=19201/mountain-gronn 
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18400; -- https://www.wowhead.com/tbc/npc=18400/rokdar-the-sundered-lord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18290; -- https://www.wowhead.com/tbc/npc=18290/tusker

-- Blade's Edge Mountains & Bash'ir Event
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19747; -- https://www.wowhead.com/tbc/npc=19747/baelmon-the-hound-master
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20753; -- https://www.wowhead.com/tbc/npc=20753/dorgok
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22396; -- https://www.wowhead.com/tbc/npc=22396/draaca-longtail
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20757; -- https://www.wowhead.com/tbc/npc=20757/fingrom
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20768; -- https://www.wowhead.com/tbc/npc=20768/gnosh-brognat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22827; -- https://www.wowhead.com/tbc/npc=22827/gorgolon-the-all-seeing
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20732; -- https://www.wowhead.com/tbc/npc=20732/gorrdim
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22826; -- https://www.wowhead.com/tbc/npc=22826/king-dorfbruiser
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20723; -- https://www.wowhead.com/tbc/npc=20723/korgaah
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22825; -- https://www.wowhead.com/tbc/npc=22825/matron-li-sahar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20888; -- https://www.wowhead.com/tbc/npc=20888/solus-the-eternal
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22828; -- https://www.wowhead.com/tbc/npc=22828/trelopades
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22305; -- https://www.wowhead.com/tbc/npc=22305/vekh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22911; -- https://www.wowhead.com/tbc/npc=22911/vimgol-the-vile
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23249; -- https://www.wowhead.com/tbc/npc=23249/bashir-flesh-fiend
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23414; -- https://www.wowhead.com/tbc/npc=23414/bashir-inquisitor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23332; -- https://www.wowhead.com/tbc/npc=23332/bashir-reckoner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23350; -- https://www.wowhead.com/tbc/npc=23350/the-grand-collector
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23390; -- https://www.wowhead.com/tbc/npc=23390/bashirs-harbinger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23391; -- https://www.wowhead.com/tbc/npc=23391/bashirs-harbinger
-- Blade's Edge Mountains & Bash'ir Event Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21975; -- https://www.wowhead.com/tbc/npc=21975/bladespire-sober-defender
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19963; -- https://www.wowhead.com/tbc/npc=19963/doomcryer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20731; -- https://www.wowhead.com/tbc/npc=20731/droggam
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20730; -- https://www.wowhead.com/tbc/npc=20730/glumdor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21319; -- https://www.wowhead.com/tbc/npc=21319/gor-grimgut
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20726; -- https://www.wowhead.com/tbc/npc=20726/mugdorg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21057; -- https://www.wowhead.com/tbc/npc=21057/nexus-prince-razaan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21640; -- https://www.wowhead.com/tbc/npc=21640/trogma
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23368; -- https://www.wowhead.com/tbc/npc=23368/bashir-controller
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23247; -- https://www.wowhead.com/tbc/npc=23247/bashir-subprimal
-- Blade's Edge Mountains & Bash'ir Event Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22275; -- https://www.wowhead.com/tbc/npc=22275/apexis-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23353; -- Demon https://www.wowhead.com/tbc/npc=23353/braxxus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21032; -- https://www.wowhead.com/tbc/npc=21032/dreadwing
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23261; -- https://www.wowhead.com/tbc/npc=23261/furywing
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22281; -- Demon https://www.wowhead.com/tbc/npc=22281/galvanoth
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20555; -- GRONN https://www.wowhead.com/tbc/npc=20555/goc
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20216; -- GRONN https://www.wowhead.com/tbc/npc=20216/grulloc
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23281; -- https://www.wowhead.com/tbc/npc=23281/insidion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20600; -- GRONN https://www.wowhead.com/tbc/npc=20600/maggoc
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21389; -- https://www.wowhead.com/tbc/npc=21389/maxnar-the-ashmaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23282; -- https://www.wowhead.com/tbc/npc=23282/obsidia
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21325; -- https://www.wowhead.com/tbc/npc=21325/ravens-wood-stonebark
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23061; -- https://www.wowhead.com/tbc/npc=23061/rivendark
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22910; -- GRONN https://www.wowhead.com/tbc/npc=22910/skulloc-soulgrinder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23355; -- Demon https://www.wowhead.com/tbc/npc=23355/zarcsin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23246; -- https://www.wowhead.com/tbc/npc=23246/slavering-slave
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23250; -- https://www.wowhead.com/tbc/npc=23250/disruptor-tower

-- Netherstorm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20554; -- https://www.wowhead.com/tbc/npc=20554/arconus-the-insatiable
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20727; -- https://www.wowhead.com/tbc/npc=20727/captain-zovax
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20138; -- https://www.wowhead.com/tbc/npc=20138/culuthas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19554; -- https://www.wowhead.com/tbc/npc=19554/dimensius-the-all-devouring
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20284; -- https://www.wowhead.com/tbc/npc=20284/dr-boom
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19705; -- https://www.wowhead.com/tbc/npc=19705/master-daellis-dawnstrike
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20454; -- https://www.wowhead.com/tbc/npc=20454/nexus-king-salhadaar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20803; -- https://www.wowhead.com/tbc/npc=20803/overmaster-grindgarr
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20132; -- https://www.wowhead.com/tbc/npc=20132/socrethar
-- Netherstorm Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20460; -- https://www.wowhead.com/tbc/npc=20460/chief-engineer-gorklonn
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19738; -- https://www.wowhead.com/tbc/npc=19738/doomclaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20800; -- https://www.wowhead.com/tbc/npc=20800/forgemaster-morug
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20775; -- https://www.wowhead.com/tbc/npc=20775/markaru
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20435; -- https://www.wowhead.com/tbc/npc=20435/overseer-athanel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20685; -- https://www.wowhead.com/tbc/npc=20685/overseer-azarad
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20397; -- https://www.wowhead.com/tbc/npc=20397/overseer-seylanna
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20416; -- https://www.wowhead.com/tbc/npc=20416/overseer-theredis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20801; -- https://www.wowhead.com/tbc/npc=20801/silroth
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19593; -- https://www.wowhead.com/tbc/npc=19593/spellbinder-maryana
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19926; -- https://www.wowhead.com/tbc/npc=19926/spellreaver-marathelle
-- Netherstorm Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19940; -- https://www.wowhead.com/tbc/npc=19940/apex
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18856; -- https://www.wowhead.com/tbc/npc=18856/arcane-annihilator
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20779; -- https://www.wowhead.com/tbc/npc=20779/congealed-void-horror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20202; -- https://www.wowhead.com/tbc/npc=20202/cragskaar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18886; -- https://www.wowhead.com/tbc/npc=18886/farahlon-breaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18885; -- https://www.wowhead.com/tbc/npc=18885/farahlon-giant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20483; -- https://www.wowhead.com/tbc/npc=20483/naberius
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19851; -- Mechanical https://www.wowhead.com/tbc/npc=19851/negatron
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20772; -- https://www.wowhead.com/tbc/npc=20772/netherock
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20243; -- Mechanical https://www.wowhead.com/tbc/npc=20243/scrapped-fel-reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20931; -- https://www.wowhead.com/tbc/npc=20931/tyrantus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18544; -- https://www.wowhead.com/tbc/npc=18544/veraku

-- Shadowmoon Valley
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21171; -- https://www.wowhead.com/tbc/npc=21171/alandien
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22338; -- https://www.wowhead.com/tbc/npc=22338/arcubus-destroyer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21410; -- https://www.wowhead.com/tbc/npc=21410/blood-lord-zarath
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22012; -- https://www.wowhead.com/tbc/npc=22012/chancellor-bloodleaf
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22274; -- https://www.wowhead.com/tbc/npc=22274/dragonmaw-skybreaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23188; -- https://www.wowhead.com/tbc/npc=23188/dragonmaw-transporter
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21409; -- https://www.wowhead.com/tbc/npc=21409/envoy-icarius
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20563; -- https://www.wowhead.com/tbc/npc=20563/grand-commander-ruusk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21166; -- https://www.wowhead.com/tbc/npc=21166/illidari-dreadlord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 19797; -- https://www.wowhead.com/tbc/npc=19797/illidari-highlord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22074; -- https://www.wowhead.com/tbc/npc=22074/illidari-mind-breaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21639; -- https://www.wowhead.com/tbc/npc=21639/illidari-slayer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22093; -- https://www.wowhead.com/tbc/npc=22093/illidari-watcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21928; -- https://www.wowhead.com/tbc/npc=21928/lothros
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21501; -- https://www.wowhead.com/tbc/npc=21501/makazradon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21500; -- https://www.wowhead.com/tbc/npc=21500/morgroron
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21164; -- https://www.wowhead.com/tbc/npc=21164/netharel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21663; -- https://www.wowhead.com/tbc/npc=21663/oronu-the-elder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21315; -- https://www.wowhead.com/tbc/npc=21315/ruul-the-darkener
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22006; -- https://www.wowhead.com/tbc/npc=22006/shadowlord-deathwail
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21168; -- https://www.wowhead.com/tbc/npc=21168/theras
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22076; -- https://www.wowhead.com/tbc/npc=22076/torloth-the-magnificent
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21979; -- https://www.wowhead.com/tbc/npc=21979/valzareq-the-conqueror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21178; -- https://www.wowhead.com/tbc/npc=21178/varedis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21287; -- https://www.wowhead.com/tbc/npc=21287/warbringer-razuun
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11980; -- https://www.wowhead.com/tbc/npc=11980/zuluhed-the-whacked
-- Shadowmoon Valley Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21961; -- https://www.wowhead.com/tbc/npc=21961/cataclysm-overseer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21709; -- https://www.wowhead.com/tbc/npc=21709/eykenen
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21711; -- https://www.wowhead.com/tbc/npc=21711/haalum
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22857; -- https://www.wowhead.com/tbc/npc=22857/illidari-ravager
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22075; -- https://www.wowhead.com/tbc/npc=22075/illidari-soldier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20684; -- https://www.wowhead.com/tbc/npc=20684/lady-shavrar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21416; -- https://www.wowhead.com/tbc/npc=21416/lakaan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21309; -- https://www.wowhead.com/tbc/npc=21309/painmistress-gabrissa
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22061; -- https://www.wowhead.com/tbc/npc=22061/shadowmoon-soulstealer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21710; -- https://www.wowhead.com/tbc/npc=21710/uylaru
-- Shadowmoon Valley Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23267; -- https://www.wowhead.com/tbc/npc=23267/arvoar-the-rapacious
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21506; -- Demon https://www.wowhead.com/tbc/npc=21506/azaloth#comments:id=149571
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 23269; -- https://www.wowhead.com/tbc/npc=23269/barash-the-den-mother
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22011; -- https://www.wowhead.com/tbc/npc=22011/corok-the-mighty
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19823; -- https://www.wowhead.com/tbc/npc=19823/crazed-colossus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21181; -- https://www.wowhead.com/tbc/npc=21181/cyrukh-the-firelord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21778; -- https://www.wowhead.com/tbc/npc=21778/doctor-gutrick
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21779; -- https://www.wowhead.com/tbc/npc=21779/doctor-maleficus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17711; -- Mechanical https://www.wowhead.com/tbc/npc=17711/doomwalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22253; -- https://www.wowhead.com/tbc/npc=22253/dragonmaw-ascendant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 23168; -- Humanoid https://www.wowhead.com/tbc/npc=23168/orkaos-the-insane
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 21205; -- Humanoid https://www.wowhead.com/tbc/npc=21205/ravenous-flayer-matriarch
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22072; -- https://www.wowhead.com/tbc/npc=22072/shadowsworn-drakonid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 19824; -- https://www.wowhead.com/tbc/npc=19824/son-of-corok
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21102; -- https://www.wowhead.com/tbc/npc=21102/uvuros
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21801; -- https://www.wowhead.com/tbc/npc=21801/vhelkur

-- Isle of Quel'Danas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 25003; -- https://www.wowhead.com/tbc/npc=25003/emissary-of-hate
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 25033; -- https://www.wowhead.com/tbc/npc=25033/eredar-sorcerer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 25031; -- https://www.wowhead.com/tbc/npc=25031/pit-overlord
-- Isle of Quel'Danas Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25001; -- https://www.wowhead.com/tbc/npc=25001/abyssal-flamewalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25060; -- https://www.wowhead.com/tbc/npc=25060/darkspine-myrmidon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25073; -- https://www.wowhead.com/tbc/npc=25073/darkspine-siren
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24976; -- https://www.wowhead.com/tbc/npc=24976/dawnblade-blood-knight
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25063; -- https://www.wowhead.com/tbc/npc=25063/dawnblade-hawkrider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24979; -- https://www.wowhead.com/tbc/npc=24979/dawnblade-marksman
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25087; -- https://www.wowhead.com/tbc/npc=25087/dawnblade-reservist
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24978; -- https://www.wowhead.com/tbc/npc=24978/dawnblade-summoner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25084; -- https://www.wowhead.com/tbc/npc=25084/greengill-slave
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24999; -- https://www.wowhead.com/tbc/npc=24999/irespeaker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25002; -- https://www.wowhead.com/tbc/npc=25002/unleashed-hellion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25030; -- https://www.wowhead.com/tbc/npc=25030/wrath-enforcer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24960; -- https://www.wowhead.com/tbc/npc=24960/wretched-devourer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24966; -- https://www.wowhead.com/tbc/npc=24966/wretched-fiend
-- Isle of Quel'Danas Not Needed (Can't be charmed)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25049; -- https://www.wowhead.com/tbc/npc=25049/dawnstar-charger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 24972; -- Mechanical https://www.wowhead.com/tbc/npc=24972/erratic-sentry
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25027; -- https://www.wowhead.com/tbc/npc=25027/frenzied-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 25028; -- https://www.wowhead.com/tbc/npc=25028/skeletal-ravager

-- Vanilla Research
-- Vanilla
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8717; -- Yes https://www.wowhead.com/tbc/npc=8717/felguard-elite
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8718; -- Yes https://www.wowhead.com/tbc/npc=8718/manahound
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12396; -- Yes https://www.wowhead.com/tbc/npc=12396/doomguard-commander
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8716; -- Yes https://www.wowhead.com/tbc/npc=8716/dreadlord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8924; -- The Behemoth Yes New
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9516; -- Lord Banehollow Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7461; -- Hederine Initiate Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7462; -- Hederine Manastalker Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7463; -- Hederine Slayer Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10201; -- Lady Hederine Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4832; -- Twilight Lord Kelris Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9156; -- Ambassador Flamelash Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9019; -- Emperor Dagran Thaurissan Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9056; -- Fineous Darkvire Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9033; -- General Angerforge Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8983; -- Golem Lord Argelmach Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9018; -- High Interrogator Gerstahn Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9319; -- Houndmaster Grebmar Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9499; -- Plugger Spazzring Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8929; -- Princess Moira Bronzebeard Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9476; -- Watchman Doomgrip Yes New
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9041; -- Warder Stilgiss Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9029; -- Eviscerator Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9027; -- Gorosh the Dervish Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9028; -- Grizzle Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9030; -- Ok'thor the Breaker Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11492; -- Alzzin the Wildshaper Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14327; -- Lethtendris Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14349; -- Pimgib Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14354; -- Pusillin Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11490; -- Zevrim Thornhoof Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11496; -- Immol'thar Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11486; -- Prince Tortheldrin Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14325; -- Captain Kromcrush Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14324; -- Cho'Rush the Observer Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14321; -- Guard Fengus Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14326; -- Guard Mol'dar Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14323; -- Guard Slip'kik Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11501; -- King Gordok Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14322; -- Stomper Kreeg Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9196; -- Highlord Omokk Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9236; -- Shadow Hunter Vosh'gajin Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9237; -- War Master Voone Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12225; -- Celebras the Cursed Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12236; -- Lord Vyletongue Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13601; -- Tinkerer Gizlock Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4424; -- Aggem Thorncurse Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4421; -- Charlga Razorflank Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4420; -- Overlord Ramtusk Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7356; -- Plaguemaw the Rotting Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6487; -- Arcanist Doan Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3974; -- Houndmaster Loksey Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3975; -- Herod Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3977; -- High Inquisitor Whitemane Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3976; -- Scarlet Commander Mograine Yes (Missing wotlkmangos, confirmed above)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10505; -- Instructor Malicia Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11261; -- Doctor Theolen Krastinov Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 1853; -- Darkmaster Gandling Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4275; -- Archmage Arugal Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3855; -- Shadowfang Darksoul Yes (confirmed above)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10811; -- Archivist Galford Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10997; -- Cannon Master Willey Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10812; -- Grand Crusader Dathrohan Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10438; -- Maleki the Pallid Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11032; -- Malor the Zealous Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 5710; -- Jammal'an the Prophet Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8318; -- Atal'ai Slave Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 647; -- Captain Greenskin Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 645; -- Cookie Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 639; -- Edwin VanCleef Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 1763; -- Gilnid Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 644; -- Rhahk'Zor Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 643; -- Sneed Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10899; -- Goraluk Anvilcrack Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10429; -- Warchief Rend Blackhand Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6906; -- Baelog Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6907; -- Eric "The Swift" Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7291; -- Galgann Firehammer Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6908; -- Olaf Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6910; -- Revelosh Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7309; -- Earthen Custodian Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7076; -- Earthen Guardian Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7077; -- Earthen Hallshaper Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7011; -- Earthen Rocksmasher Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7012; -- Earthen Sculptor Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7396; -- Earthen Stonebreaker Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7397; -- Earthen Stonecarver Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3654; -- Mutanus the Devourer Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8127; -- Antu'sul Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7267; -- Chief Ukorz Sandscalp Yes
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7797; -- Ruuzlu Yes (Missing wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7271; -- Witch Doctor Zum'rah Yes

-- Vanilla Not (everything confirmed from wotlk diff means wotlkmangos was correct)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8282;  -- Highlord Mastrogonde No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7137; -- Immolatus No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7135; -- Infernal Bodyguard No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7136; -- Infernal Sentry No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6243; -- Gelihast No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4831; -- Lady Sarevess No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12902; -- Lorgus Jett No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4807; -- Blackfathom Myrmidon No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4805; -- Blackfathom Sea Witch No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4819; -- Blindlight Muckdweller No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4818; -- Blindlight Murloc No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4820; -- Blindlight Oracle No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4799; -- Fallenroot Hellcaller No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4798; -- Fallenroot Shadowstalker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4815; -- Murkshallow Snapclaw No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4977; -- Murkshallow Softshell No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4822; -- Snapping Crustacean No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4809; -- Twilight Acolyte No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4811; -- Twilight Aquamancer No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4814; -- Twilight Elementalist No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4812; -- Twilight Loreseeker No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4810; -- Twilight Reaver No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4813; -- Twilight Shadowmage No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9537; -- Hurley Blackbreath No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9024; -- Pyromancer Loregrain No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9543; -- Ribbly Screwspigot No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9042; -- Verek No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7361; -- Grubbis No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6207; -- Caverndeep Ambusher No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6206; -- Caverndeep Burrower No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6211; -- Caverndeep Reaver No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6212; -- Dark Iron Agent No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6329; -- Irradiated Pillager No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7603; -- Leprous Assistant No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6223; -- Leprous Defender No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6224; -- Leprous Machinesmith No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6222; -- Leprous Technician No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9736; -- Quartermaster Zigris No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10584; -- Urok Doomhowl No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11793; -- Celebrian Dryad No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12217; -- Corruptor No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12216; -- Poison Sprite No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11790; -- Putridus Satyr No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11792; -- Putridus Shadowstalker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11791; -- Putridus Trickster No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11794; -- Sister of Celebrian No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11519; -- Bazzalan No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11518; -- Jergosh the Invoker No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11517; -- Oggleflint No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11520; -- Taragaman the Hungerer No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11319; -- Ragefire Shaman No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11318; -- Ragefire Trogg No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11322; -- Searing Blade Cultist No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11323; -- Searing Blade Enforcer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11324; -- Searing Blade Warlock No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4428; -- Death Speaker Jargba No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6168; -- Roogug No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4515; -- Death's Head Acolyte No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4516; -- Death's Head Adept No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4517; -- Death's Head Priest No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4518; -- Death's Head Sage No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4519; -- Death's Head Seer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4625; -- Death's Head Ward Keeper No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4623; -- Quilguard Champion No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4531; -- Razorfen Beast Trainer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4532; -- Razorfen Beastmaster No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4442; -- Razorfen Defender No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4522; -- Razorfen Dustweaver No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4525; -- Razorfen Earthbreaker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4520; -- Razorfen Geomancer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4523; -- Razorfen Groundshaker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4530; -- Razorfen Handler No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4436; -- Razorfen Quilguard No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4438; -- Razorfen Spearhide No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6035; -- Razorfen Stalker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4440; -- Razorfen Totemic No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4437; -- Razorfen Warden No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4435; -- Razorfen Warrior No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4427; -- Ward Guardian No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7335; -- Death's Head Geomancer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7337; -- Death's Head Necromancer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3983; -- Interrogator Vishas No (Wrong) - CharmedSpellList != 0, but MechanicImmuneMask=MechanicImmuneMask|1
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4303; -- Scarlet Abbot No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4296; -- Scarlet Adept No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4288; -- Scarlet Beastmaster No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4301; -- Scarlet Centurion No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4302; -- Scarlet Champion No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4299; -- Scarlet Chaplain No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4297; -- Scarlet Conjuror No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4298; -- Scarlet Defender No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4291; -- Scarlet Diviner No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4289; -- Scarlet Evoker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4287; -- Scarlet Gallant No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4290; -- Scarlet Guardsman No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4540; -- Scarlet Monk No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4295; -- Scarlet Myrmidon No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4292; -- Scarlet Protector No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4293; -- Scarlet Scryer No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4283; -- Scarlet Sentry No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4286; -- Scarlet Soldier No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4294; -- Scarlet Sorcerer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4306; -- Scarlet Torturer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6575; -- Scarlet Trainee No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4300; -- Scarlet Wizard No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14861; -- Blood Steward of Kirtonos No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10471; -- Scholomance Acolyte No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10469; -- Scholomance Adept No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11582; -- Scholomance Dark Summoner No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11257; -- Scholomance Handler No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10476; -- Scholomance Necrolyte No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10477; -- Scholomance Necromancer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10470; -- Scholomance Neophyte No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10472; -- Scholomance Occultist No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10475; -- Scholomance Student No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4279; -- Odo the Blindwatcher No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3886; -- Razorclaw the Butcher No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3914; -- Rethilgore No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3927; -- Wolf Master Nandos No (Wrong wotlkmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3857; -- Shadowfang Glutton No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3853; -- Shadowfang Moonwalker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3859; -- Shadowfang Ragetooth No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3851; -- Shadowfang Whitescalp No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3854; -- Shadowfang Wolfguard No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 2529; -- Son of Arugal No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8580; -- Atal'alarion No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5273; -- Atal'ai High Priest No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5256; -- Atal'ai Warrior No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5259; -- Atal'ai Witch Doctor No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 636; -- Defias Blackguard No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1729; -- Defias Evoker No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 598; -- Defias Miner No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 634; -- Defias Overseer No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 657; -- Defias Pirate No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1732; -- Defias Squallshaper No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4416; -- Defias Strip Miner No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4417; -- Defias Taskmaster No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1725; -- Defias Watchman No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4418; -- Defias Wizard No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1731; -- Goblin Craftsman No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 622; -- Goblin Engineer No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3947; -- Goblin Shipbuilder No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 641; -- Goblin Woodcarver No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1716; -- Bazil Thredd No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1663; -- Dextren Ward No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1717; -- Hamhock No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1666; -- Kam Deepfury No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1696; -- Targorr the Dread No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1720; -- Bruegal Ironknuckle guessed based on remaining mobs in that dungeon (wotlkmangos was correct)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1707; -- Defias Captive No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1711; -- Defias Convict No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1708; -- Defias Inmate No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1715; -- Defias Insurgent No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1706; -- Defias Prisoner No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4854; -- Grimlok No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4849; -- Shadowforge Archaeologist No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4848; -- Shadowforge Darkcaster No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7030; -- Shadowforge Geologist No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4847; -- Shadowforge Relic Hunter No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7290; -- Shadowforge Sharpshooter No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7175; -- Stonevault Ambusher No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4855; -- Stonevault Brawler No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4850; -- Stonevault Cave Lurker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7321; -- Stonevault Flameweaver No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4853; -- Stonevault Geomancer No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7320; -- Stonevault Mauler No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4852; -- Stonevault Oracle No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 24830; -- Stonevault Pillager No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3671; -- Lady Anacondra No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3669; -- Lord Cobrahn No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3670; -- Lord Pythas No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3673; -- Lord Serpentis No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3840; -- Druid of the Fang No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5048; -- Deviate Adder No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7795; -- Hydromancer Velratha No (Wrong)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7608; -- Murta Grimgut No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7606; -- Oro Eyegouge No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7605; -- Raven No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8876; -- Sandfury Acolyte No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5649; -- Sandfury Blood Drinker No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7789; -- Sandfury Cretin No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7788; -- Sandfury Drudge No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7274; -- Sandfury Executioner No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5648; -- Sandfury Shadowcaster No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7246; -- Sandfury Shadowhunter No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7787; -- Sandfury Slave No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7247; -- Sandfury Soul Eater No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5650; -- Sandfury Witch Doctor No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8877; -- Sandfury Zealot No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7269; -- Scarab No (Wrong tbcmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7604; -- Sergeant Bly No (Wrong tbcmangos)

-- Vanilla Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7846; -- --- https://www.wowhead.com/tbc/npc=7846/teremus-the-devourer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9026; -- --- https://www.wowhead.com/tbc/npc=9026/overmaster-pyron
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5854; -- Mechanical, seemingly yes see below - https://www.wowhead.com/tbc/npc=5854/heavy-war-golem
-- https://www.wowhead.com/wotlk/npc=5853/tempered-war-golem#comments:id=1068263
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5853; -- Tempered War Golem --- https://www.wowhead.com/tbc/npc=5853/tempered-war-golem
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8279; -- Faulty War Golem --- https://www.wowhead.com/tbc/npc=8279/faulty-war-golem
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10202; -- Azurous --- https://www.wowhead.com/tbc/npc=10202/azurous
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7437; -- Cobalt Mageweaver --- https://www.wowhead.com/wotlk/npc=7437/cobalt-mageweaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7436; -- Cobalt Scalebane --- https://www.wowhead.com/wotlk/npc=7436/cobalt-scalebane
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7435; -- Cobalt Wyrmkin --- https://www.wowhead.com/wotlk/npc=7435/cobalt-wyrmkin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10196; -- General Colbatann --- https://www.wowhead.com/wotlk/npc=10196/general-colbatann
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10663; -- Manaclaw --- https://www.wowhead.com/wotlk/npc=10663/manaclaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10664; -- Scryer --- https://www.wowhead.com/wotlk/npc=10664/scryer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10662; -- Spellmaw --- https://www.wowhead.com/wotlk/npc=10662/spellmaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14457; -- Princess Tempestria --- https://www.wowhead.com/wotlk/npc=14457/princess-tempestria
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4829; -- Aku'mai --- https://www.wowhead.com/wotlk/npc=4829/akumai
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12876; -- Baron Aquanis --- https://www.wowhead.com/wotlk/npc=12876/baron-aquanis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4887; -- Ghamoo-ra --- https://www.wowhead.com/wotlk/npc=4887/ghamoo-ra
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4830; -- Old Serra'kis --- https://www.wowhead.com/wotlk/npc=4830/old-serrakis
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4824; -- Aku'mai Fisher --- https://www.wowhead.com/tbc/npc=4824/akumai-fisher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4978; -- Aku'mai Servant --- https://www.wowhead.com/wotlk/npc=4978/akumai-servant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4825; -- Aku'mai Snapjaw --- https://www.wowhead.com/tbc/npc=4825/akumai-snapjaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6047; -- Aqua Guardian --- https://www.wowhead.com/wotlk/npc=6047/aqua-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4823; -- Barbed Crustacean --- https://www.wowhead.com/tbc/npc=4823/barbed-crustacean
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4827; -- Deep Pool Threshfin --- https://www.wowhead.com/tbc/npc=4827/deep-pool-threshfin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4821; -- Skittering Crustacean --- https://www.wowhead.com/tbc/npc=4821/skittering-crustacean
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9016; -- Bael'Gar --- https://www.wowhead.com/wotlk/npc=9016/baelgar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9017; -- Lord Incendius --- https://www.wowhead.com/wotlk/npc=9017/lord-incendius
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9025; -- Lord Roccor --- https://www.wowhead.com/wotlk/npc=9025/lord-roccor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9938; -- Magmus --- https://www.wowhead.com/wotlk/npc=9938/magmus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9502; -- Phalanx --- https://www.wowhead.com/wotlk/npc=9502/phalanx
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9031; -- Anub'shiah --- https://www.wowhead.com/tbc/npc=9031/anubshiah
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9032; -- Hedrum the Creeper --- https://www.wowhead.com/tbc/npc=9032/hedrum-the-creeper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9035; -- Anger'rel --- https://www.wowhead.com/tbc/npc=9035/angerrel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9039; -- Doom'rel --- https://www.wowhead.com/tbc/npc=9039/doomrel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9040; -- Dope'rel --- https://www.wowhead.com/tbc/npc=9040/doperel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9034; -- Hate'rel --- https://www.wowhead.com/tbc/npc=9034/haterel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9037; -- Gloom'rel --- https://www.wowhead.com/tbc/npc=9037/gloomrel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9038; -- Seeth'rel --- https://www.wowhead.com/tbc/npc=9038/seethrel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9036; -- Vile'rel --- https://www.wowhead.com/tbc/npc=9036/vilerel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13280; -- Hydrospawn --- https://www.wowhead.com/wotlk/npc=13280/hydrospawn
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14308; -- Ferra --- https://www.wowhead.com/wotlk/npc=14308/ferra
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11488; -- Illyanna Ravenoak --- https://www.wowhead.com/wotlk/npc=11488/illyanna-ravenoak
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11487; -- Magister Kalendris --- https://www.wowhead.com/wotlk/npc=11487/magister-kalendris
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14690; -- Revanchion --- https://www.wowhead.com/wotlk/npc=14690/revanchion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11489; -- Tendris Warpwood --- https://www.wowhead.com/wotlk/npc=11489/tendris-warpwood
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6229; -- Crowd Pummeler 9-60 - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6235; -- Electrocutioner 6000 - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7800; -- Mekgineer Thermaplugg - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7079; -- Viscous Fallout ---	https://www.wowhead.com/wotlk/npc=7079/viscous-fallout
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6232; -- Arcane Nullifier X-21 - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6215; -- Chomper --- https://www.wowhead.com/wotlk/npc=6215/chomper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6219; -- Corrosive Lurker --- https://www.wowhead.com/wotlk/npc=6219/corrosive-lurker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6220; -- Irradiated Horror --- https://www.wowhead.com/wotlk/npc=6220/irradiated-horror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6218; -- Irradiated Slime --- https://www.wowhead.com/wotlk/npc=6218/irradiated-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6234; -- Mechanized Guardian - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6233; -- Mechanized Sentry - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6226; -- Mechano-Flamewalker - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6227; -- Mechano-Frostwalker - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6225; -- Mechano-Tank - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7849; -- Mobile Alert System - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6230; -- Peacekeeper Security Suit - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7915; -- Walking Bomb - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10268; -- Gizrul the Slavener --- https://www.wowhead.com/wotlk/npc=10268/gizrul-the-slavener
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10220; -- Halycon --- https://www.wowhead.com/wotlk/npc=10220/halycon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10596; -- Mother Smolderweb --- https://www.wowhead.com/wotlk/npc=10596/mother-smolderweb
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9568; -- Overlord Wyrmthalak --- https://www.wowhead.com/wotlk/npc=9568/overlord-wyrmthalak
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12203; -- Landslide --- https://www.wowhead.com/wotlk/npc=12203/landslide
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13282; -- Noxxion --- https://www.wowhead.com/wotlk/npc=13282/noxxion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12201; -- Princess Theradras --- https://www.wowhead.com/wotlk/npc=12201/princess-theradras
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12258; -- Razorlash --- https://www.wowhead.com/wotlk/npc=12258/razorlash
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13596; -- Rotgrip --- https://www.wowhead.com/wotlk/npc=13596/rotgrip
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12219; -- Barbed Lasher --- https://www.wowhead.com/tbc/npc=12219/barbed-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12223; -- Cavern Lurker --- https://www.wowhead.com/tbc/npc=12223/cavern-lurker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12224; -- Cavern Shambler --- https://www.wowhead.com/tbc/npc=12224/cavern-shambler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12220; -- Constrictor Vine --- https://www.wowhead.com/tbc/npc=12220/constrictor-vine
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13743; -- Corrupt Force of Nature --- https://www.wowhead.com/tbc/npc=13743/corrupt-force-of-nature
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12222; -- Creeping Sludge --- https://www.wowhead.com/tbc/npc=12222/creeping-sludge
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11789; -- Deep Borer --- https://www.wowhead.com/tbc/npc=11789/deep-borer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13141; -- Deeprot Stomper --- https://www.wowhead.com/tbc/npc=13141/deeprot-stomper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13142; -- Deeprot Tangler --- https://www.wowhead.com/tbc/npc=13142/deeprot-tangler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12221; -- Noxious Slime --- https://www.wowhead.com/tbc/npc=12221/noxious-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13456; -- Noxxion's Spawn --- https://www.wowhead.com/wotlk/npc=13456/noxxions-spawn
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12206; -- Primordial Behemoth --- https://www.wowhead.com/tbc/npc=12206/primordial-behemoth
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13533; -- Spewed Larva --- https://www.wowhead.com/tbc/npc=13533/spewed-larva
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13599; -- Stolid Snapjaw --- https://www.wowhead.com/tbc/npc=13599/stolid-snapjaw
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13323; -- Subterranean Diemetradon --- https://www.wowhead.com/tbc/npc=13323/subterranean-diemetradon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11784; -- Theradrim Guardian --- https://www.wowhead.com/tbc/npc=11784/theradrim-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11783; -- Theradrim Shardling --- https://www.wowhead.com/wotlk/npc=11783/theradrim-shardling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12207; -- Thessala Hydra --- https://www.wowhead.com/tbc/npc=12207/thessala-hydra
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12218; -- Vile Larva --- https://www.wowhead.com/tbc/npc=12218/vile-larva
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11320; -- Earthborer --- https://www.wowhead.com/tbc/npc=11320/earthborer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11321; -- Molten Elemental --- https://www.wowhead.com/tbc/npc=11321/molten-elemental
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4422; -- Agathelos the Raging --- https://www.wowhead.com/wotlk/npc=4422/agathelos-the-raging
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4511; -- Agam'ar --- https://www.wowhead.com/tbc/npc=4511/agamar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4541; -- Blood of Agamaggan --- https://www.wowhead.com/tbc/npc=4541/blood-of-agamaggan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6021; -- Boar Spirit --- https://www.wowhead.com/wotlk/npc=6021/boar-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4539; -- Greater Kraul Bat --- https://www.wowhead.com/tbc/npc=4539/greater-kraul-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4538; -- Kraul Bat --- https://www.wowhead.com/tbc/npc=4538/kraul-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4514; -- Raging Agam'ar --- https://www.wowhead.com/tbc/npc=4514/raging-agamar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4512; -- Rotting Agam'ar --- https://www.wowhead.com/tbc/npc=4512/rotting-agamar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4528; -- Stone Rumbler --- https://www.wowhead.com/wotlk/npc=4528/stone-rumbler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4535; -- Tamed Battleboar --- https://www.wowhead.com/wotlk/npc=4535/tamed-battleboar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4534; -- Tamed Hyena --- https://www.wowhead.com/wotlk/npc=4534/tamed-hyena
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4526; -- Wind Howler --- https://www.wowhead.com/wotlk/npc=4526/wind-howler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7358; -- Amnennar the Coldbringer --- https://www.wowhead.com/wotlk/npc=7358/amnennar-the-coldbringer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8567; -- Glutton --- https://www.wowhead.com/wotlk/npc=8567/glutton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14686; -- Lady Falther'ess --- https://www.wowhead.com/wotlk/npc=14686/lady-faltheress
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7357; -- Mordresh Fire Eye --- https://www.wowhead.com/wotlk/npc=7357/mordresh-fire-eye
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7355; -- Tuten'kash --- https://www.wowhead.com/wotlk/npc=7355/tutenkash
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7334; -- Battle Boar Horror --- https://www.wowhead.com/tbc/npc=7334/battle-boar-horror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7347; -- Boneflayer Ghoul --- https://www.wowhead.com/tbc/npc=7347/boneflayer-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7353; -- Freezing Spirit --- https://www.wowhead.com/tbc/npc=7353/freezing-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8585; -- Frost Spectre --- https://www.wowhead.com/wotlk/npc=8585/frost-spectre
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7352; -- Frozen Soul --- https://www.wowhead.com/tbc/npc=7352/frozen-soul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7341; -- Skeletal Frostweaver --- https://www.wowhead.com/tbc/npc=7341/skeletal-frostweaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8477; -- Skeletal Servant --- https://www.wowhead.com/wotlk/npc=8477/skeletal-servant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7340; -- Skeletal Shadowcaster --- https://www.wowhead.com/wotlk/npc=7340/skeletal-shadowcaster
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7342; -- Skeletal Summoner --- https://www.wowhead.com/tbc/npc=7342/skeletal-summoner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7345; -- Splinterbone Captain --- https://www.wowhead.com/tbc/npc=7345/splinterbone-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7346; -- Splinterbone Centurion --- https://www.wowhead.com/tbc/npc=7346/splinterbone-centurion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7343; -- Splinterbone Skeleton --- https://www.wowhead.com/tbc/npc=7343/splinterbone-skeleton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7344; -- Splinterbone Warrior --- https://www.wowhead.com/tbc/npc=7344/splinterbone-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7348; -- Thorn Eater Ghoul --- https://www.wowhead.com/tbc/npc=7348/thorn-eater-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7349; -- Tomb Fiend --- https://www.wowhead.com/wotlk/npc=7349/tomb-fiend
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7351; -- Tomb Reaver --- https://www.wowhead.com/wotlk/npc=7351/tomb-reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7333; -- Withered Battle Boar --- https://www.wowhead.com/tbc/npc=7333/withered-battle-boar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7329; -- Withered Quilguard --- https://www.wowhead.com/tbc/npc=7329/withered-quilguard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7328; -- Withered Reaver --- https://www.wowhead.com/tbc/npc=7328/withered-reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7332; -- Withered Spearhide --- https://www.wowhead.com/tbc/npc=7332/withered-spearhide
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7327; -- Withered Warrior --- https://www.wowhead.com/tbc/npc=7327/withered-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4543; -- Bloodmage Thalnos --- https://www.wowhead.com/wotlk/npc=4543/bloodmage-thalnos
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4542; -- High Inquisitor Fairbanks --- https://www.wowhead.com/wotlk/npc=4542/high-inquisitor-fairbanks
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14693; -- Scorn --- https://www.wowhead.com/tbc/npc=14693/scorn
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6426; -- Anguished Dead --- https://www.wowhead.com/tbc/npc=6426/anguished-dead
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 575; -- Fire Elemental ---  https://www.wowhead.com/wotlk/npc=575/fire-elemental
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6427; -- Haunting Phantasm --- https://www.wowhead.com/tbc/npc=6427/haunting-phantasm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6493; -- Illusionary Phantasm --- https://www.wowhead.com/wotlk/npc=6493/illusionary-phantasm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4304; -- Scarlet Tracking Hound --- https://www.wowhead.com/tbc/npc=4304/scarlet-tracking-hound
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4308; -- Unfettered Spirit --- https://www.wowhead.com/tbc/npc=4308/unfettered-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10506; -- Kirtonos the Herald --- https://www.wowhead.com/tbc/npc=10506/kirtonos-the-herald
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10503; -- Jandice Barov --- https://www.wowhead.com/tbc/npc=10503/jandice-barov
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11622; -- Rattlegore --- https://www.wowhead.com/tbc/npc=11622/rattlegore
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10433; -- Marduk Blackpool --- https://www.wowhead.com/tbc/npc=10433/marduk-blackpool
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10432; -- Vectus --- https://www.wowhead.com/tbc/npc=10432/vectus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10508; -- Ras Frostwhisper --- https://www.wowhead.com/tbc/npc=10508/ras-frostwhisper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10901; -- Lorekeeper Polkelt --- https://www.wowhead.com/tbc/npc=10901/lorekeeper-polkelt
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10507; -- The Ravenian --- https://www.wowhead.com/tbc/npc=10507/the-ravenian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10504; -- Lord Alexei Barov --- https://www.wowhead.com/tbc/npc=10504/lord-alexei-barov
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10502; -- Lady Illucia Barov --- https://www.wowhead.com/tbc/npc=10502/lady-illucia-barov
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10495; -- Diseased Ghoul --- https://www.wowhead.com/tbc/npc=10495/diseased-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11258; -- Frail Skeleton --- https://www.wowhead.com/wotlk/npc=11258/frail-skeleton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11551; -- Necrofiend --- https://www.wowhead.com/tbc/npc=11551/necrofiend
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10678; -- Plagued Hatchling --- https://www.wowhead.com/tbc/npc=10678/plagued-hatchling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10481; -- Reanimated Corpse --- https://www.wowhead.com/tbc/npc=10481/reanimated-corpse
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10485; -- Risen Aberration --- https://www.wowhead.com/tbc/npc=10485/risen-aberration
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10491; -- Risen Bonewarder --- https://www.wowhead.com/tbc/npc=10491/risen-bonewarder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10488; -- Risen Construct --- https://www.wowhead.com/tbc/npc=10488/risen-construct
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10489; -- Risen Guard --- https://www.wowhead.com/tbc/npc=10489/risen-guard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11598; -- Risen Guardian --- https://www.wowhead.com/wotlk/npc=11598/risen-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10482; -- Risen Lackey --- https://www.wowhead.com/tbc/npc=10482/risen-lackey
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10487; -- Risen Protector --- https://www.wowhead.com/tbc/npc=10487/risen-protector
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10486; -- Risen Warrior --- https://www.wowhead.com/tbc/npc=10486/risen-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11263; -- Spectral Projection --- https://www.wowhead.com/wotlk/npc=11263/spectral-projection
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10499; -- Spectral Researcher --- https://www.wowhead.com/tbc/npc=10499/spectral-researcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10500; -- Spectral Teacher --- https://www.wowhead.com/tbc/npc=10500/spectral-teacher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10498; -- Spectral Tutor --- https://www.wowhead.com/tbc/npc=10498/spectral-tutor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10478; -- Splintered Skeleton --- https://www.wowhead.com/tbc/npc=10478/splintered-skeleton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10480; -- Unstable Corpse --- https://www.wowhead.com/tbc/npc=10480/unstable-corpse
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3887; -- Baron Silverlaine --- https://www.wowhead.com/wotlk/npc=3887/baron-silverlaine
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4278; -- Commander Springvale --- https://www.wowhead.com/wotlk/npc=4278/commander-springvale
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4274; -- Fenrus the Devourer --- https://www.wowhead.com/wotlk/npc=4274/fenrus-the-devourer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14682; -- Sever --- https://www.wowhead.com/tbc/npc=14682/sever
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4627; -- Arugal's Voidwalker - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3861; -- Bleak Worg --- https://www.wowhead.com/wotlk/npc=3861/bleak-worg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3868; -- Blood Seeker --- https://www.wowhead.com/wotlk/npc=3868/blood-seeker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3864; -- Fel Steed --- https://www.wowhead.com/wotlk/npc=3864/fel-steed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3875; -- Haunted Servitor --- https://www.wowhead.com/wotlk/npc=3875/haunted-servitor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5097; -- Lupine Delusion --- https://www.wowhead.com/wotlk/npc=5097/lupine-delusion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3863; -- Lupine Horror --- https://www.wowhead.com/wotlk/npc=3863/lupine-horror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3865; -- Shadow Charger --- https://www.wowhead.com/wotlk/npc=3865/shadow-charger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3862; -- Slavering Worg --- https://www.wowhead.com/wotlk/npc=3862/slavering-worg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3873; -- Tormented Officer --- https://www.wowhead.com/wotlk/npc=3873/tormented-officer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3866; -- Vile Bat --- https://www.wowhead.com/wotlk/npc=3866/vile-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3877; -- Wailing Guardsman --- https://www.wowhead.com/wotlk/npc=3877/wailing-guardsman
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5058; -- Wolfguard Worg --- https://www.wowhead.com/tbc/npc=5058/wolfguard-worg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10813; -- Balnazzar - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10436; -- Baroness Anastari --- https://www.wowhead.com/tbc/npc=10436/baroness-anastari
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10440; -- Baron Rivendare --- https://www.wowhead.com/tbc/npc=10440/baron-rivendare
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11058; -- Fras Siabi --- https://www.wowhead.com/tbc/npc=11058/ezra-grimm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10435; -- Magistrate Barthilas --- https://www.wowhead.com/tbc/npc=10435/magistrate-barthilas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10437; -- Nerub'enkan --- https://www.wowhead.com/tbc/npc=10437/nerubenkan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11143; -- Postmaster Malown --- https://www.wowhead.com/tbc/npc=11143/postmaster-malown
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10439; -- Ramstein the Gorger --- https://www.wowhead.com/tbc/npc=10439/ramstein-the-gorger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11082; -- Stratholme Courier --- https://www.wowhead.com/tbc/npc=11082/stratholme-courier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10516; -- The Unforgiven --- https://www.wowhead.com/tbc/npc=10516/the-unforgiven
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10808; -- Timmy the Cruel --- https://www.wowhead.com/tbc/npc=10808/timmy-the-cruel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8443; -- Avatar of Hakkar --- https://www.wowhead.com/tbc/npc=8443/avatar-of-hakkar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5711; -- Ogom the Wretched --- https://www.wowhead.com/tbc/npc=5711/ogom-the-wretched
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5709; -- Shade of Eranikus --- https://www.wowhead.com/tbc/npc=5709/shade-of-eranikus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5712; -- Zolo --- https://www.wowhead.com/tbc/npc=5712/zolo
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5713; -- Gasher --- https://www.wowhead.com/tbc/npc=5713/gasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5714; -- Loro --- https://www.wowhead.com/tbc/npc=5714/loro
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5715; -- Hukku --- https://www.wowhead.com/tbc/npc=5715/hukku
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5716; -- Zul'Lor --- https://www.wowhead.com/tbc/npc=5716/zullor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5717; -- Mijan --- https://www.wowhead.com/tbc/npc=5717/mijan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5719; -- Morphaz --- https://www.wowhead.com/tbc/npc=5719/morphaz
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5720; -- Weaver --- https://www.wowhead.com/tbc/npc=5720/weaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5721; -- Dreamscythe --- https://www.wowhead.com/tbc/npc=5721/dreamscythe
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5722; -- Hazzas --- https://www.wowhead.com/tbc/npc=5722/hazzas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5270; -- Atal'ai Corpse Eater --- https://www.wowhead.com/tbc/npc=5270/atalai-corpse-eater
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5271; -- Atal'ai Deathwalker --- https://www.wowhead.com/tbc/npc=5271/atalai-deathwalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8317; -- Atal'ai Deathwalker's Spirit --- https://www.wowhead.com/tbc/npc=8317/atalai-deathwalkers-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8324; -- Atal'ai Skeleton --- https://www.wowhead.com/tbc/npc=8324/atalai-skeleton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8384; -- Deep Lurker --- https://www.wowhead.com/tbc/npc=8384/deep-lurker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8438; -- Hakkari Bloodkeeper --- https://www.wowhead.com/tbc/npc=8438/hakkari-bloodkeeper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5291; -- Hakkari Frostwing --- https://www.wowhead.com/tbc/npc=5291/hakkari-frostwing
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8437; -- Hakkari Minion --- https://www.wowhead.com/tbc/npc=8437/hakkari-minion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8336; -- Hakkari Sapper --- https://www.wowhead.com/tbc/npc=8336/hakkari-sapper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8658; -- Hukku's Imp - Demon (but controlled)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8657; -- Hukku's Succubus - Demon (but controlled)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8656; -- Hukku's Voidwalker - Demon (but controlled)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5226; -- Murk Worm --- https://www.wowhead.com/tbc/npc=5226/murk-worm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5277; -- Nightmare Scalebane --- https://www.wowhead.com/tbc/npc=5277/nightmare-scalebane
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8497; -- Nightmare Suppressor --- https://www.wowhead.com/tbc/npc=8497/nightmare-suppressor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5283; -- Nightmare Wanderer --- https://www.wowhead.com/tbc/npc=5283/nightmare-wanderer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8319; -- Nightmare Whelp --- https://www.wowhead.com/tbc/npc=8319/nightmare-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5280; -- Nightmare Wyrmkin --- https://www.wowhead.com/tbc/npc=5280/nightmare-wyrmkin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8257; -- Oozeling --- https://www.wowhead.com/tbc/npc=8257/oozeling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5228; -- Saturated Ooze --- https://www.wowhead.com/tbc/npc=5228/saturated-ooze
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8311; -- Slime Maggot --- https://www.wowhead.com/tbc/npc=8311/slime-maggot
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5708; -- Spawn of Hakkar --- https://www.wowhead.com/tbc/npc=5708/spawn-of-hakkar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5267; -- Unliving Atal'ai --- https://www.wowhead.com/tbc/npc=5267/unliving-atalai
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 642; -- Sneed's Shredder - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3450; -- Defias Companion --- https://www.wowhead.com/tbc/npc=3450/defias-companion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 2520; -- Remote-Controlled Golem - Mechanical (but controlled)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10363; -- General Drakkisath --- https://www.wowhead.com/tbc/npc=10363/general-drakkisath
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10339; -- Gyth --- https://www.wowhead.com/tbc/npc=10339/gyth
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9816; -- Pyroguard Emberseer --- https://www.wowhead.com/tbc/npc=9816/pyroguard-emberseer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10264; -- Solakar Flamewreath --- https://www.wowhead.com/tbc/npc=10264/solakar-flamewreath
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10430; -- The Beast --- https://www.wowhead.com/tbc/npc=10430/the-beast
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7206; -- Ancient Stone Keeper --- https://www.wowhead.com/tbc/npc=7206/ancient-stone-keeper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 2748; -- Archaedas --- https://www.wowhead.com/tbc/npc=2748/archaedas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7228; -- Ironaya --- https://www.wowhead.com/tbc/npc=7228/ironaya
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7023; -- Obsidian Sentinel - Mechanical https://www.wowhead.com/tbc/npc=7023/obsidian-sentinel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7078; -- Cleft Scorpid --- https://www.wowhead.com/tbc/npc=7078/cleft-scorpid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7405; -- Deadly Cleft Scorpid --- https://www.wowhead.com/tbc/npc=7405/deadly-cleft-scorpid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4863; -- Jadespine Basilisk --- https://www.wowhead.com/tbc/npc=4863/jadespine-basilisk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7209; -- Obsidian Shard - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4861; -- Shrike Bat --- https://www.wowhead.com/tbc/npc=4861/shrike-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4857; -- Stone Keeper --- https://www.wowhead.com/tbc/npc=4857/stone-keeper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4860; -- Stone Steward --- https://www.wowhead.com/tbc/npc=4860/stone-steward
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10120; -- Vault Warder --- https://www.wowhead.com/tbc/npc=10120/vault-warder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7022; -- Venomlash Scorpid --- https://www.wowhead.com/tbc/npc=7022/venomlash-scorpid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3653; -- Kresh --- https://www.wowhead.com/wotlk/npc=3653/kresh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3674; -- Skum --- https://www.wowhead.com/wotlk/npc=3674/skum
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5775; -- Verdan the Everliving --- https://www.wowhead.com/wotlk/npc=5775/verdan-the-everliving
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5053; -- Deviate Crocolisk --- https://www.wowhead.com/tbc/npc=5053/deviate-crocolisk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5056; -- Deviate Dreadfang --- https://www.wowhead.com/tbc/npc=5056/deviate-dreadfang
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5055; -- Deviate Lasher --- https://www.wowhead.com/tbc/npc=5055/deviate-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5762; -- Deviate Moccasin --- https://www.wowhead.com/wotlk/npc=5762/deviate-moccasin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8886; -- Deviate Python --- https://www.wowhead.com/tbc/npc=8886/deviate-python
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5761; -- Deviate Shambler --- https://www.wowhead.com/tbc/npc=5761/deviate-shambler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5756; -- Deviate Venomwing --- https://www.wowhead.com/tbc/npc=5756/deviate-venomwing
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5755; -- Deviate Viper --- https://www.wowhead.com/tbc/npc=5755/deviate-viper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5763; -- Nightmare Ectoplasm --- https://www.wowhead.com/wotlk/npc=5763/nightmare-ectoplasm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3637; -- Deviate Guardian --- https://www.wowhead.com/wotlk/npc=3637/deviate-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3636; -- Deviate Ravager --- https://www.wowhead.com/wotlk/npc=3636/deviate-ravager
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3640; -- Evolving Ectoplasm --- https://www.wowhead.com/wotlk/npc=3640/evolving-ectoplasm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7273; -- Gahz'rilla --- https://www.wowhead.com/classic/npc=7273/gahzrilla
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7272; -- Theka the Martyr --- https://www.wowhead.com/wotlk/npc=7272/theka-the-martyr
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7268; -- Sandfury Guardian --- https://www.wowhead.com/tbc/npc=7268/sandfury-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8156; -- Servant of Antu'sul --- https://www.wowhead.com/wotlk/npc=8156/servant-of-antusul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7786; -- Skeleton of Zum'rah --- https://www.wowhead.com/wotlk/npc=7786/skeleton-of-zumrah
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8120; -- Sul'lithuz Abomination --- https://www.wowhead.com/wotlk/npc=8120/sullithuz-abomination
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8138; -- Sul'lithuz Broodling --- https://www.wowhead.com/wotlk/npc=8138/sullithuz-broodling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8095; -- Sul'lithuz Sandcrawler --- https://www.wowhead.com/wotlk/npc=8095/sullithuz-sandcrawler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7276; -- Zul'Farrak Dead Hero --- https://www.wowhead.com/wotlk/npc=7276/zulfarrak-dead-hero
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7286; -- Zul'Farrak Zombie --- https://www.wowhead.com/wotlk/npc=7286/zulfarrak-zombie

-- Remaining Diff
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 721; -- Rabbit - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 929; -- Dreadlord Malganis (eyecandy)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 1420; -- Toad - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 2110; -- Black Rat - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 2914; -- Snake - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3835; -- Biletoad - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4075; -- Rat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 4076; -- Roach
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6145; -- School of Fish - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6491; -- https://www.wowhead.com/tbc/npc=6491/spirit-healer (Safety from classicmangos)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7275; -- https://www.wowhead.com/classic/npc=7275/shadowpriest-sezzziz
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7796; -- https://www.wowhead.com/classic/npc=7796/nekrum-gutchewer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10076; -- https://www.wowhead.com/classic/npc=10076/high-priestess-of-thaurissan
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10096; -- https://www.wowhead.com/classic/npc=10096/high-justice-grimstone
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10156; -- Scott's Test Dummy
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11978; -- https://www.wowhead.com/classic/npc=11978/not-used-neltharion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12804; -- https://www.wowhead.com/classic/npc=12804/ph-test-fire-god
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14352; -- https://www.wowhead.com/classic/npc=14352/duke-landressar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14831; -- https://www.wowhead.com/classic/npc=14831/unkillable-test-dummy-63-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15608; -- https://www.wowhead.com/classic/npc=15608/medivh
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16077; -- https://www.wowhead.com/classic/npc=16077/ph-alexs-test-dps-mob
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16128; -- https://www.wowhead.com/classic/npc=16128/rhonin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 18925; -- Solarium Agent - No
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20532; -- Infinite Defiler (1) - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20533; -- Infinite Saboteur (1) - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 20534; -- Infinite Slayer (1) - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 20555; -- Goc - No (Gronn)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21140; -- Rift Lord - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21148; -- Rift Keeper - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21181; -- Cyrukh the Firelord - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21251; -- Underbog Colossus - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21253; -- Tainted Water Elemental - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21260; -- Purified Water Elemental - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 21863; -- Serpentshrine Lurker - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22035; -- Pure Spawn of Hydross - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22036; -- Tainted Spawn of Hydross - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22171; -- Rift Keeper (1) - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22172; -- Rift Lord (1) - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 22250; -- Rancid Mushroom - ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22295; -- Deathforge Automaton - https://www.wowhead.com/tbc/npc=22295/deathforge-automaton
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22297; -- Throne-Guard Highlord - https://www.wowhead.com/tbc/npc=22297/throne-guard-highlord
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22301; -- Throne-Guard Sentinel - https://www.wowhead.com/tbc/npc=22301/throne-guard-sentinel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22302; -- Throne-Guard Champion - https://www.wowhead.com/tbc/npc=22302/throne-guard-champion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22303; -- Throne Hound - https://www.wowhead.com/tbc/npc=22303/throne-hound
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22448; -- Rexxar - https://www.wowhead.com/tbc/npc=22448/rexxar
-- Remaining wotlk diff, but npcs cant be mced
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 3872; -- Deathsworn Captain - https://www.wowhead.com/tbc/npc=3872/deathsworn-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5186; -- Basking Shark https://www.wowhead.com/classic/npc=5186/basking-shark
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5263; -- Mummified Atal'ai - https://www.wowhead.com/tbc/npc=5263/mummified-atalai
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5776; -- Evolving Ectoplasm (Red) https://www.wowhead.com/tbc/npc=5776/evolving-ectoplasm-red
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5777; -- Evolving Ectoplasm (Green) https://www.wowhead.com/tbc/npc=5777/evolving-ectoplasm-green
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5778; -- Evolving Ectoplasm (Black) https://www.wowhead.com/tbc/npc=5778/evolving-ectoplasm-black
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 5912; -- Deviate Faerie Dragon - https://www.wowhead.com/tbc/npc=5912/deviate-faerie-dragon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6488; -- Fallen Champion - https://www.wowhead.com/tbc/npc=6488/fallen-champion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 6489; -- Ironspine - https://www.wowhead.com/tbc/npc=6489/ironspine
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7273; -- https://www.wowhead.com/classic/npc=7273/gahzrilla
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 7998; -- Blastmaster Emi Shortfuse - https://www.wowhead.com/tbc/npc=7998/blastmaster-emi-shortfuse
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8130; -- Sul'lithuz Hatchling - https://www.wowhead.com/tbc/npc=8130/sullithuz-hatchling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8506; -- https://www.wowhead.com/classic/npc=8506/eranikus-the-chained
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8516; -- Belnistrasz - https://www.wowhead.com/tbc/npc=8516/belnistrasz
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8662; -- Idol Oven Fire Target - https://www.wowhead.com/tbc/npc=8662/idol-oven-fire-target
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8696; -- Henry Stern - https://www.wowhead.com/tbc/npc=8696/henry-stern
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8767; -- Sah'rhee - https://www.wowhead.com/tbc/npc=8767/sahrhee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8905; -- Warbringer Construct - https://www.wowhead.com/tbc/npc=8905/warbringer-construct
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8906; -- Ragereaver Golem - https://www.wowhead.com/tbc/npc=8906/ragereaver-golem
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8908; -- Molten War Golem - https://www.wowhead.com/tbc/npc=8908/molten-war-golem
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8909; -- Fireguard - https://www.wowhead.com/tbc/npc=8909/fireguard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8910; -- Blazing Fireguard - https://www.wowhead.com/tbc/npc=8910/blazing-fireguard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8911; -- Fireguard Destroyer - https://www.wowhead.com/tbc/npc=8911/fireguard-destroyer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 8982; -- Ironhand Guardian - https://www.wowhead.com/tbc/npc=8982/ironhand-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9096; -- Rage Talon Dragonspawn - https://www.wowhead.com/tbc/npc=9096/rage-talon-dragonspawn
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9416; -- Scarshield Worg - https://www.wowhead.com/tbc/npc=9416/scarshield-worg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 9696; -- Bloodaxe Worg - https://www.wowhead.com/tbc/npc=9696/bloodaxe-worg
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10083; -- Rage Talon Flamescale - https://www.wowhead.com/tbc/npc=10083/rage-talon-flamescale
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10221; -- Bloodaxe Worg Pup - https://www.wowhead.com/tbc/npc=10221/bloodaxe-worg-pup
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10296; -- https://www.wowhead.com/classic/npc=10296/vaelan ---
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10366; -- Rage Talon Dragon Guard - https://www.wowhead.com/tbc/npc=10366/rage-talon-dragon-guard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10371; -- Rage Talon Captain - https://www.wowhead.com/tbc/npc=10371/rage-talon-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10372; -- Rage Talon Fire Tongue - https://www.wowhead.com/tbc/npc=10372/rage-talon-fire-tongue
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10374; -- Spire Spider - https://www.wowhead.com/tbc/npc=10374/spire-spider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10375; -- Spire Spiderling - https://www.wowhead.com/tbc/npc=10375/spire-spiderling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10376; -- Crystal Fang - https://www.wowhead.com/tbc/npc=10376/crystal-fang
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10381; -- Ravaged Cadaver - https://www.wowhead.com/tbc/npc=10381/ravaged-cadaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10382; -- Mangled Cadaver - https://www.wowhead.com/tbc/npc=10382/mangled-cadaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10384; -- Spectral Citizen - https://www.wowhead.com/tbc/npc=10384/spectral-citizen
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10385; -- Ghostly Citizen - https://www.wowhead.com/tbc/npc=10385/ghostly-citizen
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10390; -- Skeletal Guardian - https://www.wowhead.com/tbc/npc=10390/skeletal-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10391; -- Skeletal Berserker - https://www.wowhead.com/tbc/npc=10391/skeletal-berserker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10405; -- Plague Ghoul - https://www.wowhead.com/tbc/npc=10405/plague-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10406; -- Ghoul Ravener - https://www.wowhead.com/tbc/npc=10406/ghoul-ravener
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10407; -- Fleshflayer Ghoul - https://www.wowhead.com/tbc/npc=10407/fleshflayer-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10408; -- Rockwing Gargoyle - https://www.wowhead.com/tbc/npc=10408/rockwing-gargoyle
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10409; -- Rockwing Screecher - https://www.wowhead.com/tbc/npc=10409/rockwing-screecher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10412; -- Crypt Crawler - https://www.wowhead.com/tbc/npc=10412/crypt-crawler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10413; -- Crypt Beast - https://www.wowhead.com/tbc/npc=10413/crypt-beast
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10414; -- Patchwork Horror - https://www.wowhead.com/tbc/npc=10414/patchwork-horror
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10415; -- Ash'ari Crystal - https://www.wowhead.com/tbc/npc=10415/ashari-crystal
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10416; -- Bile Spewer - https://www.wowhead.com/tbc/npc=10416/bile-spewer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10417; -- Venom Belcher - https://www.wowhead.com/tbc/npc=10417/venom-belcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10442; -- https://www.wowhead.com/classic/npc=10442/chromatic-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10463; -- Shrieking Banshee - https://www.wowhead.com/tbc/npc=10463/shrieking-banshee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10464; -- Wailing Banshee - https://www.wowhead.com/tbc/npc=10464/wailing-banshee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10740; -- Awbee - https://www.wowhead.com/tbc/npc=10740/awbee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10809; -- Stonespine - https://www.wowhead.com/tbc/npc=10809/stonespine
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10814; -- Chromatic Elite Guard - https://www.wowhead.com/tbc/npc=10814/chromatic-elite-guard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10981; -- Frostwolf - https://www.wowhead.com/classic/npc=10981/frostwolf
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 10990; -- Alterac Ram - https://www.wowhead.com/classic/npc=10990/alterac-ram
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11262; -- Onyxian Whelp --- - https://www.wowhead.com/tbc/npc=11262/onyxian-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11357; -- Son of Hakkar - https://www.wowhead.com/tbc/npc=11357/son-of-hakkar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11359; -- Soulflayer - https://www.wowhead.com/tbc/npc=11359/soulflayer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11360; -- Zulian Cub - https://www.wowhead.com/tbc/npc=11360/zulian-cub
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11361; -- Zulian Tiger - https://www.wowhead.com/tbc/npc=11361/zulian-tiger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11365; -- Zulian Panther - https://www.wowhead.com/tbc/npc=11365/zulian-panther
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11368; -- Bloodseeker Bat - https://www.wowhead.com/tbc/npc=11368/bloodseeker-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11370; -- Razzashi Broodwidow - https://www.wowhead.com/tbc/npc=11370/razzashi-broodwidow
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11371; -- Razzashi Serpent - https://www.wowhead.com/tbc/npc=11371/razzashi-serpent
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11372; -- Razzashi Adder - https://www.wowhead.com/tbc/npc=11372/razzashi-adder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11373; -- Razzashi Cobra - https://www.wowhead.com/tbc/npc=11373/razzashi-cobra
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11374; -- Hooktooth Frenzy - https://www.wowhead.com/tbc/npc=11374/hooktooth-frenzy
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11446; -- Gordok Spirit - https://www.wowhead.com/tbc/npc=11446/gordok-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11458; -- Petrified Treant - https://www.wowhead.com/tbc/npc=11458/petrified-treant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11459; -- Ironbark Protector - https://www.wowhead.com/tbc/npc=11459/ironbark-protector
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11461; -- Warpwood Guardian - https://www.wowhead.com/tbc/npc=11461/warpwood-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11462; -- Warpwood Treant - https://www.wowhead.com/tbc/npc=11462/warpwood-treant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11464; -- Warpwood Tangler - https://www.wowhead.com/tbc/npc=11464/warpwood-tangler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11465; -- Warpwood Stomper - https://www.wowhead.com/tbc/npc=11465/warpwood-stomper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11466; -- Highborne Summoner - https://www.wowhead.com/tbc/npc=11466/highborne-summoner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11467; -- Tsu'zee - https://www.wowhead.com/tbc/npc=11467/tsuzee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11469; -- Eldreth Seether - https://www.wowhead.com/tbc/npc=11469/eldreth-seether
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11470; -- Eldreth Sorcerer - https://www.wowhead.com/tbc/npc=11470/eldreth-sorcerer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11471; -- Eldreth Apparition - https://www.wowhead.com/tbc/npc=11471/eldreth-apparition
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11472; -- Eldreth Spirit - https://www.wowhead.com/tbc/npc=11472/eldreth-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11473; -- Eldreth Spectre - https://www.wowhead.com/tbc/npc=11473/eldreth-spectre
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11475; -- Eldreth Phantasm - https://www.wowhead.com/tbc/npc=11475/eldreth-phantasm
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11476; -- Skeletal Highborne - https://www.wowhead.com/tbc/npc=11476/skeletal-highborne
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11477; -- Rotting Highborne - https://www.wowhead.com/tbc/npc=11477/rotting-highborne
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11480; -- Arcane Aberration - https://www.wowhead.com/tbc/npc=11480/arcane-aberration
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11483; -- Mana Remnant - https://www.wowhead.com/tbc/npc=11483/mana-remnant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11491; -- Old Ironbark - https://www.wowhead.com/tbc/npc=11491/old-ironbark
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12129; -- Onyxian Warder --- - https://www.wowhead.com/tbc/npc=12129/onyxian-warder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12242; -- Spirit of Maraudos - https://www.wowhead.com/tbc/npc=12242/spirit-of-maraudos
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12243; -- Spirit of Veng - https://www.wowhead.com/tbc/npc=12243/spirit-of-veng
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12457; -- Blackwing Spellbinder - https://www.wowhead.com/tbc/npc=12457/blackwing-spellbinder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12460; -- Death Talon Wyrmguard - https://www.wowhead.com/tbc/npc=12460/death-talon-wyrmguard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12463; -- Death Talon Flamescale - https://www.wowhead.com/tbc/npc=12463/death-talon-flamescale
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12464; -- Death Talon Seether - https://www.wowhead.com/tbc/npc=12464/death-talon-seether
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12465; -- Death Talon Wyrmkin - https://www.wowhead.com/tbc/npc=12465/death-talon-wyrmkin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12467; -- Death Talon Captain - https://www.wowhead.com/tbc/npc=12467/death-talon-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12468; -- Death Talon Hatcher - https://www.wowhead.com/tbc/npc=12468/death-talon-hatcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12758; -- Onyxia Trigger - https://www.wowhead.com/tbc/npc=12758/onyxia-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12865; -- Ambassador Malcin - https://www.wowhead.com/tbc/npc=12865/ambassador-malcin
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13021; -- Warpwood Crusher - https://www.wowhead.com/tbc/npc=13021/warpwood-crusher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13022; -- Whip Lasher - https://www.wowhead.com/tbc/npc=13022/whip-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13036; -- Gordok Mastiff - https://www.wowhead.com/tbc/npc=13036/gordok-mastiff
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13160; -- Carrion Swarmer - https://www.wowhead.com/tbc/npc=13160/carrion-swarmer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13196; -- Phase Lasher - https://www.wowhead.com/tbc/npc=13196/phase-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13197; -- Fel Lash - https://www.wowhead.com/tbc/npc=13197/fel-lash
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13285; -- Death Lash - https://www.wowhead.com/tbc/npc=13285/death-lash
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13876; -- Mekgineer Trigger - https://www.wowhead.com/tbc/npc=13876/mekgineer-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14022; -- Corrupted Red Whelp - https://www.wowhead.com/tbc/npc=14022/corrupted-red-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14023; -- Corrupted Green Whelp - https://www.wowhead.com/tbc/npc=14023/corrupted-green-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14024; -- Corrupted Blue Whelp - https://www.wowhead.com/tbc/npc=14024/corrupted-blue-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14025; -- Corrupted Bronze Whelp - https://www.wowhead.com/tbc/npc=14025/corrupted-bronze-whelp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14303; -- Petrified Guardian - https://www.wowhead.com/tbc/npc=14303/petrified-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14358; -- Shen'dralar Ancient - https://www.wowhead.com/tbc/npc=14358/shendralar-ancient
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14398; -- Eldreth Darter - https://www.wowhead.com/tbc/npc=14398/eldreth-darter
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14516; -- Death Knight Darkreaver - https://www.wowhead.com/tbc/npc=14516/death-knight-darkreaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14532; -- Razzashi Venombrood - https://www.wowhead.com/tbc/npc=14532/razzashi-venombrood
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14646; -- Stratholme Trigger - https://www.wowhead.com/tbc/npc=14646/stratholme-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14695; -- Lord Blackwood - https://www.wowhead.com/tbc/npc=14695/lord-blackwood
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14758; -- Zul'Gurub Trigger - https://www.wowhead.com/tbc/npc=14758/zulgurub-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14821; -- Razzashi Raptor - https://www.wowhead.com/tbc/npc=14821/razzashi-raptor
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14825; -- Withered Mistress - https://www.wowhead.com/tbc/npc=14825/withered-mistress
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14826; -- Sacrificed Troll - https://www.wowhead.com/tbc/npc=14826/sacrificed-troll
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14880; -- Razzashi Skitterer - https://www.wowhead.com/tbc/npc=14880/razzashi-skitterer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15043; -- Zulian Crocolisk - https://www.wowhead.com/tbc/npc=15043/zulian-crocolisk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15067; -- Zulian Stalker - https://www.wowhead.com/tbc/npc=15067/zulian-stalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15091; -- Zul'Gurub Panther Trigger - https://www.wowhead.com/tbc/npc=15091/zulgurub-panther-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15168; -- Vile Scarab - https://www.wowhead.com/tbc/npc=15168/vile-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15229; -- Vekniss Soldier - https://www.wowhead.com/tbc/npc=15229/vekniss-soldier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15230; -- Vekniss Warrior - https://www.wowhead.com/tbc/npc=15230/vekniss-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15233; -- Vekniss Guardian - https://www.wowhead.com/tbc/npc=15233/vekniss-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15235; -- Vekniss Stinger - https://www.wowhead.com/tbc/npc=15235/vekniss-stinger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15236; -- Vekniss Wasp - https://www.wowhead.com/tbc/npc=15236/vekniss-wasp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15240; -- Vekniss Hive Crawler - https://www.wowhead.com/tbc/npc=15240/vekniss-hive-crawler
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15246; -- Qiraji Mindslayer - https://www.wowhead.com/tbc/npc=15246/qiraji-mindslayer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15247; -- Qiraji Brainwasher - https://www.wowhead.com/tbc/npc=15247/qiraji-brainwasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15249; -- Qiraji Lasher - https://www.wowhead.com/tbc/npc=15249/qiraji-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15250; -- Qiraji Slayer - https://www.wowhead.com/tbc/npc=15250/qiraji-slayer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15252; -- Qiraji Champion - https://www.wowhead.com/tbc/npc=15252/qiraji-champion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15262; -- Obsidian Eradicator - https://www.wowhead.com/tbc/npc=15262/obsidian-eradicator
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15264; -- Anubisath Sentinel - https://www.wowhead.com/tbc/npc=15264/anubisath-sentinel
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15277; -- Anubisath Defender - https://www.wowhead.com/tbc/npc=15277/anubisath-defender
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15300; -- Vekniss Drone - https://www.wowhead.com/tbc/npc=15300/vekniss-drone
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15311; -- Anubisath Warder - https://www.wowhead.com/tbc/npc=15311/anubisath-warder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15312; -- Obsidian Nullifier - https://www.wowhead.com/tbc/npc=15312/obsidian-nullifier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15316; -- Qiraji Scarab - https://www.wowhead.com/tbc/npc=15316/qiraji-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15318; -- Hive'Zara Drone - https://www.wowhead.com/tbc/npc=15318/hivezara-drone
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15319; -- Hive'Zara Collector - https://www.wowhead.com/tbc/npc=15319/hivezara-collector
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15320; -- Hive'Zara Soldier - https://www.wowhead.com/tbc/npc=15320/hivezara-soldier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15323; -- Hive'Zara Sandstalker - https://www.wowhead.com/tbc/npc=15323/hivezara-sandstalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15324; -- Qiraji Gladiator - https://www.wowhead.com/tbc/npc=15324/qiraji-gladiator
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15325; -- Hive'Zara Wasp - https://www.wowhead.com/tbc/npc=15325/hivezara-wasp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15327; -- Hive'Zara Stinger - https://www.wowhead.com/tbc/npc=15327/hivezara-stinger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15333; -- Silicate Feeder - https://www.wowhead.com/tbc/npc=15333/silicate-feeder
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15335; -- Flesh Hunter - https://www.wowhead.com/tbc/npc=15335/flesh-hunter
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15336; -- Hive'Zara Tail Lasher - https://www.wowhead.com/tbc/npc=15336/hivezara-tail-lasher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15338; -- Obsidian Destroyer - https://www.wowhead.com/tbc/npc=15338/obsidian-destroyer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15355; -- Anubisath Guardian - https://www.wowhead.com/tbc/npc=15355/anubisath-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15461; -- Shrieker Scarab - https://www.wowhead.com/tbc/npc=15461/shrieker-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15462; -- Spitting Scarab - https://www.wowhead.com/tbc/npc=15462/spitting-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15505; -- Canal Frenzy - https://www.wowhead.com/tbc/npc=15505/canal-frenzy
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15896; -- C'Thun Portal - https://www.wowhead.com/tbc/npc=15896/cthun-portal
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15974; -- Dread Creeper - https://www.wowhead.com/tbc/npc=15974/dread-creeper
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15975; -- Carrion Spinner - https://www.wowhead.com/tbc/npc=15975/carrion-spinner
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15976; -- Venom Stalker - https://www.wowhead.com/tbc/npc=15976/venom-stalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15977; -- Infectious Skitterer - https://www.wowhead.com/tbc/npc=15977/infectious-skitterer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15978; -- Crypt Reaver - https://www.wowhead.com/tbc/npc=15978/crypt-reaver
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15984; -- Sartura's Royal Guard - https://www.wowhead.com/tbc/npc=15984/sarturas-royal-guard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16017; -- Patchwork Golem - https://www.wowhead.com/tbc/npc=16017/patchwork-golem
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16018; -- Bile Retcher - https://www.wowhead.com/tbc/npc=16018/bile-retcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16020; -- Mad Scientist - https://www.wowhead.com/tbc/npc=16020/mad-scientist
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16021; -- Living Monstrosity - https://www.wowhead.com/tbc/npc=16021/living-monstrosity
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16022; -- Surgical Assistant - https://www.wowhead.com/tbc/npc=16022/surgical-assistant
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16024; -- Embalming Slime - https://www.wowhead.com/tbc/npc=16024/embalming-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16025; -- Stitched Spewer - https://www.wowhead.com/tbc/npc=16025/stitched-spewer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16029; -- Sludge Belcher - https://www.wowhead.com/tbc/npc=16029/sludge-belcher
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16034; -- Plague Beast - https://www.wowhead.com/tbc/npc=16034/plague-beast
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16037; -- Plagued Bat - https://www.wowhead.com/tbc/npc=16037/plagued-bat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16044; -- Mor Grayhoof Trigger - https://www.wowhead.com/tbc/npc=16044/mor-grayhoof-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16045; -- Isalien Trigger - https://www.wowhead.com/tbc/npc=16045/isalien-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16046; -- Jarien and Sothos Trigger - https://www.wowhead.com/tbc/npc=16046/jarien-and-sothos-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16047; -- Kormok Trigger - https://www.wowhead.com/tbc/npc=16047/kormok-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16048; -- Lord Valthalak Trigger - https://www.wowhead.com/tbc/npc=16048/lord-valthalak-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16057; -- Rotting Maggot - https://www.wowhead.com/tbc/npc=16057/rotting-maggot
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16067; -- Skeletal Steed - https://www.wowhead.com/tbc/npc=16067/skeletal-steed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16079; -- Theldren Trigger - https://www.wowhead.com/tbc/npc=16079/theldren-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16100; -- Ysida's Trigger - https://www.wowhead.com/tbc/npc=16100/ysidas-trigger
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16125; -- Unrelenting Deathknight - https://www.wowhead.com/tbc/npc=16125/unrelenting-deathknight
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16126; -- Unrelenting Rider - https://www.wowhead.com/tbc/npc=16126/unrelenting-rider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16127; -- Spectral Trainee - https://www.wowhead.com/tbc/npc=16127/spectral-trainee
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16145; -- Deathknight Captain - https://www.wowhead.com/tbc/npc=16145/deathknight-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16146; -- Deathknight - https://www.wowhead.com/tbc/npc=16146/deathknight-captain
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16148; -- Spectral Deathknight - https://www.wowhead.com/tbc/npc=16148/spectral-deathknight
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16149; -- Spectral Horse - https://www.wowhead.com/tbc/npc=16149/spectral-horse
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16150; -- Spectral Rider - https://www.wowhead.com/tbc/npc=16150/spectral-rider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16154; -- Risen Deathknight - https://www.wowhead.com/tbc/npc=16154/risen-deathknight
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16156; -- Dark Touched Warrior - https://www.wowhead.com/tbc/npc=16156/dark-touched-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16163; -- Deathknight Cavalier - https://www.wowhead.com/tbc/npc=16163/deathknight-cavalier
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16164; -- Shade of Naxxramas - https://www.wowhead.com/tbc/npc=16164/shade-of-naxxramas
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16165; -- Necro Knight - https://www.wowhead.com/tbc/npc=16165/necro-knight
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16167; -- Bony Construct - https://www.wowhead.com/tbc/npc=16167/bony-construct
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16168; -- Stoneskin Gargoyle - https://www.wowhead.com/tbc/npc=16168/stoneskin-gargoyle
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16218; -- Tesla Coil - https://www.wowhead.com/tbc/npc=16218/tesla-coil
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16236; -- Eye Stalk - https://www.wowhead.com/tbc/npc=16236/eye-stalk
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16243; -- Plague Slime - https://www.wowhead.com/tbc/npc=16243/plague-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16244; -- Infectious Ghoul - https://www.wowhead.com/tbc/npc=16244/infectious-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16286; -- Spore - https://www.wowhead.com/tbc/npc=16286/spore
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16290; -- Fallout Slime - https://www.wowhead.com/tbc/npc=16290/fallout-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16297; -- Mutated Grub - https://www.wowhead.com/tbc/npc=16297/mutated-grub
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16375; -- Sewage Slime - https://www.wowhead.com/tbc/npc=16375/sewage-slime
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16447; -- Plagued Ghoul - https://www.wowhead.com/tbc/npc=16447/plagued-ghoul
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16451; -- Deathknight Vindicator - https://www.wowhead.com/tbc/npc=16451/deathknight-vindicator
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16452; -- Necro Knight Guardian - https://www.wowhead.com/tbc/npc=16452/necro-knight-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16453; -- Necro Stalker - https://www.wowhead.com/tbc/npc=16453/necro-stalker
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16486; -- Web Wrap - https://www.wowhead.com/tbc/npc=16486/web-wrap
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16573; -- Crypt Guard - https://www.wowhead.com/tbc/npc=16573/crypt-guard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16698; -- Corpse Scarab - https://www.wowhead.com/tbc/npc=16698/corpse-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16783; -- Plague Slime (Blue) - https://www.wowhead.com/tbc/npc=16783/plague-slime-blue
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16784; -- Plague Slime (Red) - https://www.wowhead.com/tbc/npc=16784/plague-slime-red
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16785; -- Plague Slime (Green) - https://www.wowhead.com/tbc/npc=16785/plague-slime-green
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 17055; -- Maexxna Spiderling - https://www.wowhead.com/tbc/npc=17055/maexxna-spiderling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15549; -- Elder Morndeep - Humanoid Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15556; -- Elder Splitrock - Humanoid Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15560; -- Elder Stonefort - Humanoid Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15578; -- Elder Wildmane - Humanoid Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15593; -- Elder Starsong - Humanoid Not Needed
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16506; -- Naxxramas Worshipper - Humanoid - https://www.wowhead.com/classic/npc=16506/naxxramas-worshipper - https://www.wowhead.com/classic/guide/grand-widow-faerlina-naxxramas-raid-strategy
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 11885; -- Blighthound - https://www.wowhead.com/classic/npc=11885/blighthound
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12121; -- Draka - https://www.wowhead.com/classic/npc=12121/draka
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 12122; -- Duros - https://www.wowhead.com/classic/npc=12122/duros
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13016; -- Deeprun Rat - https://www.wowhead.com/classic/npc=13016/deeprun-rat
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13145; -- Lieutenant Grummus - https://www.wowhead.com/classic/npc=13145/lieutenant-grummus
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13146; -- Lieutenant Murp - https://www.wowhead.com/classic/npc=13146/lieutenant-murp
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13161; -- Aerie Gryphon - https://www.wowhead.com/classic/npc=13161/aerie-gryphon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13321; -- Frog - https://www.wowhead.com/classic/npc=13321/frog
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13618; -- Stabled Frostwolf - https://www.wowhead.com/classic/npc=13618/stabled-frostwolf
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 13676; -- Stabled Alterac Ram - https://www.wowhead.com/classic/npc=13676/stabled-alterac-ram
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14282; -- Frostwolf Bloodhound - https://www.wowhead.com/classic/npc=14282/frostwolf-bloodhound
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14283; -- Stormpike Owl - https://www.wowhead.com/classic/npc=14283/stormpike-owl
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14364; -- Shen'dralar Spirit - https://www.wowhead.com/classic/npc=14364/shendralar-spirit
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14396; -- Eye of Immol'thar - https://www.wowhead.com/classic/npc=14396/eye-of-immolthar
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14881; -- Spider - https://www.wowhead.com/classic/npc=14881/spider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14943; -- Guse's War Rider - https://www.wowhead.com/classic/npc=14943/guses-war-rider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14944; -- Jeztor's War Rider - https://www.wowhead.com/tbc/npc=14944/jeztors-war-rider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14945; -- Mulverick's War Rider - https://www.wowhead.com/tbc/npc=14945/mulvericks-war-rider
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14946; -- Slidore's Gryphon - https://www.wowhead.com/classic/npc=14946/slidores-gryphon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14947; -- Ichman's Gryphon - https://www.wowhead.com/tbc/npc=14947/ichmans-gryphon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 14948; -- Vipore's Gryphon - https://www.wowhead.com/tbc/npc=14948/vipores-gryphon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15384; -- World Trigger - https://www.wowhead.com/tbc/npc=15384
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15521; -- Hive'Zara Hatchling - https://www.wowhead.com/classic/npc=15521/hivezara-hatchling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15537; -- Anubisath Warrior - https://www.wowhead.com/classic/npc=15537/anubisath-warrior
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15538; -- Anubisath Swarmguard - https://www.wowhead.com/classic/npc=15538/anubisath-swarmguard
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15555; -- Hive'Zara Larva - https://www.wowhead.com/classic/npc=15555/hivezara-larva
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15621; -- Yauj Brood - https://www.wowhead.com/classic/npc=15621/yauj-brood
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15622; -- Vekniss Borer - https://www.wowhead.com/classic/npc=15622/vekniss-borer
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15630; -- Spawn of Fankriss - https://www.wowhead.com/classic/npc=15630/spawn-of-fankriss
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15718; -- Ouro Scarab - https://www.wowhead.com/classic/npc=15718/ouro-scarab
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15934; -- Hive'Zara Hornet - https://www.wowhead.com/classic/npc=15934/hivezara-hornet
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 15962; -- Vekniss Hatchling - https://www.wowhead.com/classic/npc=15962/vekniss-hatchling
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16981; -- Plagued Guardian - https://www.wowhead.com/classic/npc=16981/plagued-guardian
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16982; -- Plagued Construct - https://www.wowhead.com/classic/npc=16982/plagued-construct
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16983; -- Plagued Champion - https://www.wowhead.com/classic/npc=16983/plagued-champion
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` = 16984; -- Plagued Warrior - https://www.wowhead.com/classic/npc=16984/plagued-warrior

-- Unsure ones, which still need to be researched.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 1719; -- Warden Thelwater - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 2225; -- Zora Guthrek - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3343; -- Grelkor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3586; -- Miner Johnson - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3625; -- Rarck - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3678; -- Disciple of Naralex - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3679; -- Naralex - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3849; -- Deathstalker Adamant - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3850; -- Sorcerer Ashcrombe - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 3981; -- Vorrel Sengutz  (likely too as 3982 is too, forsaken with undercity faction seem to be immune in general) - XXX
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4444; -- Deathstalker Vincent - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4508; -- Willix the Importer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4510; -- Heralath Fallowbrook - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4787; -- Argent Guard Thaelrid - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4851; -- Stonevault Rockchewer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4255; -- Brogus Thunderbrew - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 4257; -- Lana Thunderbrew - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 5134; -- Jonivera Farmountain - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 5135; -- Svalbrad Farmountain - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 5139; -- Kurdrum Barleybeard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6231; -- Techbot - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6391; -- Holdout Warrior - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6392; -- Holdout Medic - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6407; -- Holdout Technician - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6547; -- Suffering Victim - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 6912; -- Remains of a Paladin - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7023; -- Obsidian Sentinel - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7607; -- Weegli Blastfuse - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7850; -- Kernobee - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 7897; -- Alarm-a-bomb 2600 - Mechanical
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8889; -- Anvilrage Overseer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8890; -- Anvilrage Warden - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8891; -- Anvilrage Guardsman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8892; -- Anvilrage Footman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8893; -- Anvilrage Soldier - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8894; -- Anvilrage Medic - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8895; -- Anvilrage Officer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8896; -- Shadowforge Peasant - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8897; -- Doomforge Craftsman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8898; -- Anvilrage Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8899; -- Doomforge Dragoon - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8900; -- Doomforge Arcanasmith - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8901; -- Anvilrage Reservist - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8902; -- Shadowforge Citizen - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8903; -- Anvilrage Captain - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8904; -- Shadowforge Senator - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8907; -- Wrath Hammer Construct - Mechanical in tbc+
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8912; -- Twilight's Hammer Torturer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8913; -- Twilight Emissary - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8914; -- Twilight Bodyguard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8915; -- Twilight's Hammer Ambassador - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8916; -- Arena Spectator - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8920; -- Weapon Technician - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8921; -- Bloodhound - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 8922; -- Bloodhound Mastiff - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9020; -- Commander Gor'shak - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9021; -- Kharan Mighthammer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9022; -- Dughal Stormwing - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9023; -- Marshal Windsor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9045; -- Scarshield Acolyte - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9097; -- Scarshield Legionnaire - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9197; -- Spirestone Battle Mage - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9198; -- Spirestone Mystic - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9199; -- Spirestone Enforcer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9200; -- Spirestone Reaver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9216; -- Spirestone Warlord - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9217; -- Spirestone Lord Magus - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9218; -- Spirestone Battle Lord - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9219; -- Spirestone Butcher - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9241; -- Smolderthorn Headhunter - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9258; -- Scarshield Raider - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9259; -- Firebrand Grunt - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9260; -- Firebrand Legionnaire - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9261; -- Firebrand Darkweaver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9263; -- Firebrand Dreadweaver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9264; -- Firebrand Pyromancer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9265; -- Smolderthorn Shadow Hunter - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9266; -- Smolderthorn Witch Doctor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9267; -- Smolderthorn Axe Thrower - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9268; -- Smolderthorn Berserker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9269; -- Smolderthorn Seer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9500; -- Mistress Nagmara - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9503; -- Private Rocknot - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9545; -- Grim Patron - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9547; -- Guzzling Patron - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9554; -- Hammered Patron - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9583; -- Bloodaxe Veteran - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9596; -- Bannok Grimaxe - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9676; -- Tink Sprocketwhistle - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9677; -- Ograbisi - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9678; -- Shill Dinger - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9679; -- Tobias Seecher - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9680; -- Crest Killer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9681; -- Jaz - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9692; -- Bloodaxe Raider - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9693; -- Bloodaxe Evoker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9716; -- Bloodaxe Warmonger - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9717; -- Bloodaxe Summoner - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9718; -- Ghok Bashguud - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9818; -- Blackhand Summoner - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9819; -- Blackhand Veteran - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 9956; -- Shadowforge Flame Keeper - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10043; -- Ribbly's Crony - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10116; -- Slave - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10263; -- Burning Felguard - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10299; -- Scarshield Infiltrator - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10317; -- Blackhand Elite - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10319; -- Blackhand Iron Guard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10364; -- Yaelika Farclaw - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10367; -- Shrye Ragefist - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10398; -- Thuzadin Shadowcaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10399; -- Thuzadin Acolyte - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10509; -- Jed Runewatcher - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10602; -- Urok Ogre Magus - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10680; -- Summoned Blackhand Dreadweaver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10681; -- Summoned Blackhand Veteran - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10742; -- Blackhand Dragon Handler - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10762; -- Blackhand Thug - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10776; -- Finkle Einhorn - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10917; -- Aurius - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10956; -- Naga Siren - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11073; -- Annora - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11347; -- Zealot Lor'Khan - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11348; -- Zealot Zath - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11387; -- Sandfury Speaker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11388; -- Witherbark Speaker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11389; -- Bloodscalp Speaker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11390; -- Skullsplitter Speaker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11391; -- Vilebranch Speaker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11450; -- Gordok Reaver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11451; -- Wildspawn Satyr - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11452; -- Wildspawn Rogue - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11453; -- Wildspawn Trickster - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11454; -- Wildspawn Betrayer - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11455; -- Wildspawn Felsworn - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11456; -- Wildspawn Shadowstalker - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11457; -- Wildspawn Hellcaller - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11600; -- Irondeep Shaman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11604; -- Whitewhisker Geomancer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11657; -- Morloch - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11663; -- Flamewaker Healer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11675; -- Snowblind Windcaller - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11677; -- Taskmaster Snivvle - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11834; -- Maur Grimtotem - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11837; -- Wildpaw Shaman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11838; -- Wildpaw Mystic - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12157; -- Winterax Shadow Hunter - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12459; -- Blackwing Warlock - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12461; -- Death Talon Overseer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12557; -- Grethok the Controller - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12944; -- Lokhtos Darkbargainer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13096; -- Coldmine Explorer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13097; -- Coldmine Surveyor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13099; -- Irondeep Explorer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13236; -- Primalist Thurloga - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13276; -- Wildspawn Imp - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13284; -- Frostwolf Shaman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13442; -- Arch Druid Renferal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13443; -- Druid of the Grove - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13539; -- Champion Coldmine Surveyor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13546; -- Seasoned Coldmine Explorer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13548; -- Champion Coldmine Explorer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13557; -- Champion Irondeep Surveyor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13718; -- The Nameless Prophet - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13956; -- Winterax Mystic - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13958; -- Winterax Seer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13959; -- Alterac Yeti - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 22604; -- Alterac Yeti (1) - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14021; -- Winterax Sentry - XXX
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14338; -- Knot Thimblejack - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14368; -- Lorekeeper Lydros - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14369; -- Shen'dralar Zealot - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14371; -- Shen'dralar Provisioner - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14381; -- Lorekeeper Javon - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14382; -- Lorekeeper Mykos - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14383; -- Lorekeeper Kildrath - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14385; -- Doomguard Minion - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14456; -- Blackwing Guardsman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14750; -- Gurubashi Bat Rider - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14882; -- Atal'ai Mistress - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14883; -- Voodoo Slave - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14941; -- High Priestess Jeklik Transform Visual - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15042; -- Zanza the Restless - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15111; -- Mad Servant - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15502; -- Andorgos - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15503; -- Kandrostrasz - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 15504; -- Vethsera - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16032; -- Falrin Treeshaper - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16080; -- Mor Grayhoof - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16118; -- Kormok - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16124; -- Unrelenting Trainee - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16365; -- Master Craftsman Omarion - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 16381; -- Archmage Tarsis Kir-Moldir - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 17876; -- Thrall - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10982; -- Whitewhisker Vermin - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10983; -- Winterax Troll - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10986; -- Snowblind Harpy - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10987; -- Irondeep Trogg - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 10991; -- Wildpaw Gnoll - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11442; -- Gordok Mauler - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11602; -- Irondeep Skullthumper - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11603; -- Whitewhisker Digger - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11605; -- Whitewhisker Overseer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11678; -- Snowblind Ambusher - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11679; -- Winterax Witch Doctor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11839; -- Wildpaw Brute - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11840; -- Wildpaw Alpha - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11878; -- Nathanos Blightcaller - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11997; -- Stormpike Herald - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 11998; -- Frostwolf Herald - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12047; -- Stormpike Mountaineer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12048; -- Alliance Sentinel - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12050; -- Stormpike Defender - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12051; -- Frostwolf Legionnaire - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12052; -- Frostwolf Warrior - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12053; -- Frostwolf Guardian - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12096; -- Stormpike Quartermaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12097; -- Frostwolf Quartermaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12127; -- Stormpike Guardsman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12156; -- Winterax Axe Thrower - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12159; -- Korrak the Bloodrager - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12778; -- Lieutenant Rachel Vaccar - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12779; -- Archmage Gaiman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12780; -- Sergeant Major Skyshadow - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12781; -- Master Sergeant Biggins - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12782; -- Captain O'Neal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12783; -- Lieutenant Karter - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12784; -- Lieutenant Jackspring - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12785; -- Sergeant Major Clate - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12786; -- Guard Quine - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12787; -- Guard Hammon - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12788; -- Legionnaire Teena - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12789; -- Blood Guard Hini'wana - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12790; -- Advisor Willington - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12791; -- Chieftain Earthbind - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12793; -- Brave Stonehide - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12794; -- Stone Guard Zarg - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12795; -- First Sergeant Hola'mahi - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12796; -- Raider Bork - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 12997; -- Monty - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13018; -- Nipsy - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13078; -- Umi Thorson - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13079; -- Keetar - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13080; -- Irondeep Guard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13086; -- Aggi Rumblestomp - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13088; -- Masha Swiftcut - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13089; -- Coldmine Guard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13116; -- Alliance Spirit Guide - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13117; -- Horde Spirit Guide - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13137; -- Lieutenant Rugba - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13138; -- Lieutenant Spencer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13139; -- Commander Randolph - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13140; -- Commander Dardosh - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13143; -- Lieutenant Stronghoof - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13144; -- Lieutenant Vol'talar - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13147; -- Lieutenant Lewis - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13151; -- Syndicate Master Ryson - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13152; -- Commander Malgor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13153; -- Commander Mulfort - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13176; -- Smith Regzar - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13179; -- Wing Commander Guse - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13180; -- Wing Commander Jeztor - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13181; -- Wing Commander Mulverick - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13216; -- Gaelden Hammersmith - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13218; -- Grunnda Wolfheart - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13257; -- Murgot Deepforge - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13296; -- Lieutenant Largent - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13297; -- Lieutenant Stouthandle - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13298; -- Lieutenant Greywand - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13299; -- Lieutenant Lonadin - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13300; -- Lieutenant Mancuso - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13316; -- Coldmine Peon - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13317; -- Coldmine Miner - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13318; -- Commander Mortimer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13319; -- Commander Duffy - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13320; -- Commander Karl Philips - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13325; -- Seasoned Mountaineer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13326; -- Seasoned Defender - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13327; -- Seasoned Sentinel - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13328; -- Seasoned Guardian - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13331; -- Veteran Defender - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13332; -- Veteran Guardian - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13335; -- Veteran Mountaineer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13336; -- Veteran Sentinel - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13358; -- Stormpike Bowman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13359; -- Frostwolf Bowman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13377; -- Master Engineer Zinfizzlex - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13396; -- Irondeep Miner - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13397; -- Irondeep Peon - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13421; -- Champion Guardian - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13422; -- Champion Defender - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13425; -- Champion Legionnaire - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13426; -- Champion Mountaineer - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13428; -- Champion Warrior - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13437; -- Wing Commander Ichman - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13438; -- Wing Commander Slidore - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13439; -- Wing Commander Vipore - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13441; -- Frostwolf Wolf Rider Commander - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13446; -- Field Marshal Teravaine - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13447; -- Corporal Noreg Stormpike - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13448; -- Sergeant Yazra Bloodsnarl - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13525; -- Seasoned Commando - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13536; -- Champion Coldmine Guard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13545; -- Champion Irondeep Raider - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13551; -- Champion Coldmine Invader - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13554; -- Champion Irondeep Guard - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13576; -- Stormpike Ram Rider - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13577; -- Stormpike Ram Rider Commander - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13597; -- Frostwolf Explosives Expert - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13598; -- Stormpike Explosives Expert - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13616; -- Frostwolf Stable Master - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13617; -- Stormpike Stable Master - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13797; -- Mountaineer Boombellow - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13798; -- Jotek - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 13957; -- Winterax Warrior - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14041; -- Haggle - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14121; -- Deeprun Diver - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14185; -- Najak Hexxen - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14186; -- Ravak Grimtotem - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14187; -- Athramanis - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14188; -- Dirk Swindle - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14351; -- Gordok Bushwacker - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14482; -- Xorothian Imp - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14483; -- Dread Guard - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14504; -- Dreadsteed Spirit - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14506; -- Lord Hel'nurath - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14668; -- Corrupted Infernal - Demon
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14762; -- Dun Baldar North Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14763; -- Dun Baldar South Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14764; -- Icewing Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14765; -- Stonehearth Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14766; -- Iceblood Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14767; -- Tower Point Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14768; -- East Frostwolf Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14769; -- West Frostwolf Marshal - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14770; -- Dun Baldar North Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14771; -- Dun Baldar South Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14772; -- East Frostwolf Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14773; -- Iceblood Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14774; -- Icewing Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14775; -- Stonehearth Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14776; -- Tower Point Warmaster - Humanoid
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` = 14777; -- West Frostwolf Warmaster - Humanoid

-- ================================================
-- Checking |1 and &~1 having heroic entry or more!
-- ================================================
-- Immune
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (
22526, -- Alliance Spirit Guide	13116
22527, -- Arch Druid Renferal	13442
22528, -- Athramanis	14187
22529, -- Champion Coldmine Explorer	13548
22530, -- Champion Coldmine Guard	13536
22531, -- Champion Coldmine Invader	13551
22532, -- Champion Coldmine Surveyor	13539
22535, -- Champion Irondeep Guard	13554
22536, -- Champion Irondeep Raider	13545
22537, -- Champion Irondeep Surveyor	13557
22538, -- Champion Legionnaire	13425
22541, -- Druid of the Grove	13443
22542, -- Dun Baldar North Marshal	14762
22543, -- Dun Baldar North Warmaster	14770
22544, -- Dun Baldar South Marshal	14763
22545, -- Dun Baldar South Warmaster	14771
22547, -- East Frostwolf Marshal	14768
22548, -- East Frostwolf Warmaster	14772
22549, -- Frostwolf Herald	11998
22551, -- Frostwolf Stable Master	13616
22552, -- Frostwolf Wolf Rider Commander	13441
22558, -- Horde Spirit Guide	13117
22559, -- Iceblood Marshal	14766
22560, -- Iceblood Warmaster	14773
22561, -- Icewing Marshal	14764
22562, -- Icewing Warmaster	14774
22567, -- Murgot Deepforge	13257
22568, -- Primalist Thurloga	13236
22569, -- Ravak Grimtotem	14186
22571, -- Smith Regzar	13176
22572, -- Stonehearth Marshal	14765
22573, -- Stonehearth Warmaster	14775
22574, -- Stormpike Herald	11997
22575, -- Stormpike Ram Rider Commander	13577
22577, -- Stormpike Stable Master	13617
22579, -- Tower Point Marshal	14767
22580, -- Tower Point Warmaster	14776
22588, -- Veteran Defender	13331
22589, -- Veteran Guardian	13332
22595, -- West Frostwolf Marshal	14769
22596, -- West Frostwolf Warmaster	14777
22597, -- Wing Commander Ichman	13437
22598, -- Wing Commander Mulverick	13181
22599, -- Winterax Sentry	14021
22604, -- Alterac Yeti	13959
22605, -- Captain Balinda Stonehearth	11949
22606, -- Captain Galvangar	11947
22608, -- Champion Defender	13422
22609, -- Champion Guardian	13421
22613, -- Commander Dardosh	13140
22614, -- Commander Duffy	13319
22615, -- Commander Karl Philips	13320
22616, -- Commander Louis Philips	13154
22617, -- Commander Malgor	13152
22618, -- Commander Mortimer	13318
22619, -- Commander Mulfort	13153
22620, -- Commander Randolph	13139
22621, -- Field Marshal Teravaine	13446
22622, -- Frostwolf Battleguard	14285
22623, -- Frostwolf Explosives Expert	13597
22627, -- Ivus the Forest Lord	13419
22630, -- Prospector Stonehewer	13816
22633, -- Stormpike Battleguard	14284
22634, -- Stormpike Explosives Expert	13598
22641, -- Drek'Thar	11946
22644, -- Vanndar Stormpike	11948
22645, -- Alliance Sentinel	12048
22646, -- Brogus Thunderbrew	4255
22648, -- Frostwolf Quartermaster	12097
22649, -- Frostwolf Warrior	12052
22650, -- Grelkor	3343
22651, -- Jonivera Farmountain	5134
22652, -- Kurdrum Barleybeard	5139
22653, -- Lana Thunderbrew	4257
22654, -- Rarck	3625
22655, -- Shrye Ragefist	10367
22657, -- Stormpike Mountaineer	12047
22658, -- Stormpike Quartermaster	12096
22659, -- Svalbrad Farmountain	5135
22660, -- Yaelika Farclaw	10364
22661, -- Zora Guthrek	2225
22662, -- Seasoned Mountaineer	13325
22663, -- Seasoned Sentinel	13327
22665, -- Frostwolf Legionnaire	12051
22666, -- Stormpike Guardsman	12127
22667, -- Veteran Mountaineer	13335
22668, -- Veteran Sentinel	13336
22670, -- Aggi Rumblestomp	13086
22671, -- Champion Mountaineer	13426
22673, -- Champion Warrior	13428
22674, -- Frostwolf Guardian	12053
22678, -- Frostwolf Shaman	13284
22680, -- Gaelden Hammersmith	13216
22681, -- Grunnda Wolfheart	13218
22683, -- Keetar	13079
22684, -- Masha Swiftcut	13088
22685, -- Morloch	11657
22690, -- Stormpike Defender	12050
22691, -- Stormpike Ram Rider	13576
22694, -- Taskmaster Snivvle	11677
22696, -- Umi Thorson	13078
22697, -- Wing Commander Jeztor	13180
22698, -- Wing Commander Slidore	13438
22699, -- Dirk Swindle	14188
22700, -- Lieutenant Greywand	13298
22702, -- Lieutenant Largent	13296
22703, -- Lieutenant Lewis	13147
22704, -- Lieutenant Lonadin	13299
22705, -- Lieutenant Mancuso	13300
22707, -- Lieutenant Rugba	13137
22708, -- Lieutenant Spencer	13138
22709, -- Lieutenant Stouthandle	13297
22710, -- Lieutenant Stronghoof	13143
22711, -- Lieutenant Vol'talar	13144
22712, -- Najak Hexxen	14185
22713, -- Seasoned Commando	13525
22714, -- Seasoned Defender	13326
22715, -- Seasoned Guardian	13328
22721, -- Wing Commander Guse	13179
22722, -- Wing Commander Vipore	13439
22723, -- Jotek	13798
22724, -- Mountaineer Boombellow	13797
22729, -- Coldmine Explorer	13096
22730, -- Coldmine Guard	13089
22732, -- Coldmine Miner	13317
22733, -- Coldmine Peon	13316
22734, -- Coldmine Surveyor	13097
22735, -- Corporal Noreg Stormpike	13447
22739, -- Frostwolf Bowman	13359
22741, -- Irondeep Explorer	13099
22743, -- Irondeep Guard	13080
22744, -- Irondeep Miner	13396
22745, -- Irondeep Peon	13397
22747, -- Irondeep Shaman	11600
22748, -- Irondeep Skullthumper	11602
22750, -- Irondeep Trogg	10987
22751, -- Seasoned Coldmine Explorer	13546
22759, -- Sergeant Durgen Stormpike	13777
22760, -- Sergeant Yazra Bloodsnarl	13448
22761, -- Snowblind Ambusher	11678
22762, -- Snowblind Harpy	10986
22763, -- Snowblind Windcaller	11675
22766, -- Stormpike Bowman	13358
22778, -- Whitewhisker Digger	11603
22779, -- Whitewhisker Geomancer	11604
22780, -- Whitewhisker Overseer	11605
22782, -- Whitewhisker Vermin	10982
22783, -- Wildpaw Alpha	11840
22784, -- Wildpaw Brute	11839
22785, -- Wildpaw Gnoll	10991
22786, -- Wildpaw Mystic	11838
22787, -- Wildpaw Shaman	11837
22788, -- Winterax Axe Thrower	12156
22790, -- Winterax Mystic	13956
22791, -- Winterax Seer	13958
22794, -- Winterax Troll	10983
22795, -- Winterax Warrior	13957
13424, -- Champion Guardsman
22533, -- Champion Guardsman	13424
13542, -- Champion Irondeep Explorer
22534, -- Champion Irondeep Explorer	13542
13378, -- Frostwolf Shredder Unit
22550, -- Frostwolf Shredder Unit	13378
13281, -- Furis
22553, -- Furis	13281
603, -- Grimtooth
22555, -- Grimtooth	603
13416, -- Stormpike Shredder Unit
22576, -- Stormpike Shredder Unit	13416
13526, -- Veteran Commando
22587, -- Veteran Commando	13526
13518, -- Veteran Outrunner
22590, -- Veteran Outrunner	13518
13522, -- Veteran Ranger
22591, -- Veteran Ranger	13522
13530, -- Veteran Reaver
22592, -- Veteran Reaver	13530
13527, -- Champion Commando
22607, -- Champion Commando	13527
13519, -- Champion Outrunner
22610, -- Champion Outrunner	13519
13523, -- Champion Ranger
22611, -- Champion Ranger	13523
13531, -- Champion Reaver
22612, -- Champion Reaver	13531
13330, -- Seasoned Warrior
22664, -- Seasoned Warrior	13330
13337, -- Veteran Warrior
22669, -- Veteran Warrior	13337
13427, -- Champion Sentinel
22672, -- Champion Sentinel	13427
13324, -- Seasoned Guardsman
22687, -- Seasoned Guardsman	13324
13329, -- Seasoned Legionnaire
22688, -- Seasoned Legionnaire	13329
13517, -- Seasoned Outrunner
22716, -- Seasoned Outrunner	13517
13521, -- Seasoned Ranger
22717, -- Seasoned Ranger	13521
13529, -- Seasoned Reaver
22718, -- Seasoned Reaver	13529
13333, -- Veteran Guardsman
22719, -- Veteran Guardsman	13333
13334, -- Veteran Legionnaire
22720, -- Veteran Legionnaire	13334
13534, -- Seasoned Coldmine Guard
22752, -- Seasoned Coldmine Guard	13534
13549, -- Seasoned Coldmine Invader
22753, -- Seasoned Coldmine Invader	13549
13537, -- Seasoned Coldmine Surveyor
22754, -- Seasoned Coldmine Surveyor	13537
13540, -- Seasoned Irondeep Explorer
22755, -- Seasoned Irondeep Explorer	13540
13552, -- Seasoned Irondeep Guard
22756, -- Seasoned Irondeep Guard	13552
13543, -- Seasoned Irondeep Raider
22757, -- Seasoned Irondeep Raider	13543
13555, -- Seasoned Irondeep Surveyor
22758, -- Seasoned Irondeep Surveyor	13555
13547, -- Veteran Coldmine Explorer
22770, -- Veteran Coldmine Explorer	13547
13535, -- Veteran Coldmine Guard
22771, -- Veteran Coldmine Guard	13535
13550, -- Veteran Coldmine Invader
22772, -- Veteran Coldmine Invader	13550
13538, -- Veteran Coldmine Surveyor
22773, -- Veteran Coldmine Surveyor	13538
13541, -- Veteran Irondeep Explorer
22774, -- Veteran Irondeep Explorer	13541
13553, -- Veteran Irondeep Guard
22775, -- Veteran Irondeep Guard	13553
13544, -- Veteran Irondeep Raider
22776, -- Veteran Irondeep Raider	13544
13556, -- Veteran Irondeep Surveyor
22777, -- Veteran Irondeep Surveyor	13556
13357, -- Frostwolf Mine Layer
22624, -- Frostwolf Mine Layer	13357
13977, -- Gash'nak the Cannibal
22625, -- Gash'nak the Cannibal	13977
14018, -- Rezrelek
22631, -- Rezrelek	14018
13356, -- Stormpike Mine Layer
22635, -- Stormpike Mine Layer	13356
14019, -- Tatterhide
22636, -- Tatterhide	14019
14016, -- Ushalac the Gloomdweller
22637, -- Ushalac the Gloomdweller	14016
13449, -- Warmaster Garrick
22639, -- Warmaster Garrick	13449
13516, -- Frostwolf Outrunner
22675, -- Frostwolf Outrunner	13516
13528, -- Frostwolf Reaver
22676, -- Frostwolf Reaver	13528
13440, -- Frostwolf Wolf Rider
22679, -- Frostwolf Wolf Rider	13440
13524, -- Stormpike Commando
22689, -- Stormpike Commando	13524
13520, -- Stormpike Ranger
22692, -- Stormpike Ranger	13520
13087, -- Coldmine Invader
22731, -- Coldmine Invader	13087
13081, -- Irondeep Raider
22746, -- Irondeep Raider	13081
13098, -- Irondeep Surveyor
22749, -- Irondeep Surveyor	13098
11606, -- Whitewhisker Tunnel Rat
22781, -- Whitewhisker Tunnel Rat	11606
14017, -- Withered Troll
22797); -- Withered Troll	14017

-- Not
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry` IN (
22525, -- Aerie Gryphon	13161
22581, -- Trigger Guse	14026
22582, -- Trigger Ichman	14029
22583, -- Trigger Jeztor	14028
22584, -- Trigger Mulverick	14027
22585, -- Trigger Slidore	14030
22586, -- Trigger Vipore	14031
22540, -- Drakan	12121
22546, -- Duros	12122
22556, -- Guse's War Rider	14943
22557, -- Herald	14848
22563, -- Ichman's Gryphon	14947
22564, -- Jeztor's War Rider	14944
22566, -- Mulverick's War Rider	14945
22570, -- Slidore's Gryphon	14946
22593, -- Vipore's Gryphon	14948
22594, -- War Rider	13178
22626, -- Ice Giant	10985
22629, -- Lokholar the Ice Lord	13256
22632, -- Risen Ancient	13496
22642, -- Fjordune the Greater	11676
22701, -- Lieutenant Grummus	13145
22706, -- Lieutenant Murp	13146
22727, -- Alterac Ram	10990
22728, -- Blizzard Elemental	10989
22737, -- Frostwolf	10981
22738, -- Frostwolf Bloodhound	14282
22764, -- Stabled Alterac Ram	13676
22765, -- Stabled Frostwolf	13618
22767); -- Stormpike Owl	14283

