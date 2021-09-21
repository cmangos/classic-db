-- Small fixes for NPC 17231 (Garden Gas) : always use invisible model, fix faction and make unselectable
UPDATE creature SET modelid=11686 WHERE id=17231;
UPDATE creature_template SET Faction=114, UnitFlags=UnitFlags|33554432 WHERE Entry=17231;
