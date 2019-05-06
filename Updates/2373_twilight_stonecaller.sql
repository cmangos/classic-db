-- Port Twilight Stonecaller 11882 Visual Casting Nature Channeling 13236 to ACID
-- otherwise it is not executed correctly and they just idle and only perform it after they are "leashed" one time
-- All do it and all are stationary, so this solution is the easiest way to do it.
UPDATE creature_template_addon SET emote=0, auras=NULL WHERE entry=11882; -- 193 13236
