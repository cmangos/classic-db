-- Added missing spells of NPC 11350 (Gurubashi Axe Thrower) when mind-controlled by players
-- Source: http://wowwiki.wikia.com/wiki/Gurubashi_Axe_Thrower?oldid=323926
-- Thanks @Phatcat for pointing, this closes #126
UPDATE creature_template_spells SET spell2=22887, spell3=24018, spell4=8269 WHERE entry=11350;
