-- Fixed target of spell 23018 (Use Dragon Orb) it should target the trigger NPC not the Orb GO itself
UPDATE spell_script_target SET type=1, targetEntry=14449 WHERE entry=23018;

-- Fixed triggers and spawners used in Razorgore the Untamed encounter (used WotLK DB values)
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35, ExtraFlags=0 WHERE entry=14449;
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35, UnitFlags=33587968 WHERE entry=14459;

-- Made friendly generator/dummy NPCs invisible
UPDATE creature_template SET ExtraFlags=128 WHERE Entry IN (14459, 12434);
