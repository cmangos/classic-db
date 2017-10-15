-- Added missing visual to GO 179784 (Suppression Device) in Blackwing Lair
UPDATE gameobject_template SET Extraflags=1 WHERE entry=179784;
