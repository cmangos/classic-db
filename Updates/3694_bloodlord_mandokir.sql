-- Fix spell for Bloodlord Mandokir that was using TBC id
UPDATE creature_spell_list SET SpellId=19134 WHERE Id=1138201 AND position=4; -- Intimidating Shout
