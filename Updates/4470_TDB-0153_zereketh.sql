-- has to have player only flag unless confirmed - and adjusted comment style for easier reading
UPDATE creature_spell_targeting SET Param3=Param3|2, Comments='Attack - random player non tank aura not present' WHERE Id=120;
UPDATE creature_spell_targeting SET Param3=Param3|2, Comments='Attack - random player aura not present' WHERE Id=121;

