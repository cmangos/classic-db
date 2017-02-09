-- Fixed stats of summoned NPC 15302 (Shade of Taerar)
UPDATE creature_template SET minlevelhealth=66620, maxlevelhealth=66620, healthmultiplier=20, minlevelmana=0, maxlevelmana=0, scale=2, ArmorMultiplier=1, DamageMultiplier=20,
minmeleedmg=110, maxmeleedmg=146, minrangeddmg=0, maxrangeddmg=0, meleeattackpower=268, rangedattackpower=32, meleebaseattacktime=2000,rangedbaseattacktime=2000, maxlootgold=0 WHERE entry=15302;
