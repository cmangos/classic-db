-- Fix stealth for NPC 3457 (Razormane Stalker)
-- Thanks @Tobschinski. Closes https://github.com/cmangos/issues/issues/2436
UPDATE creature_template_addon SET auras='7939 22766' WHERE entry=3457;
