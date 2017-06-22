-- Set the new ACID AIs (Gurubashi Blood Drinker, Gurubashi Warrior)
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN ('11353', '11355');
