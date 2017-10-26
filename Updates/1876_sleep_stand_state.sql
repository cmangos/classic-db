-- Fixed addons for creatures with visual sleep aura. The stand state is handled by the aura itself
UPDATE creature_addon SET bytes1=0 WHERE auras IN ('16093', '6606');
