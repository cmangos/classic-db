-- Fix quest 309 Protecting the Shipment completion point with the patched SD2 script
UPDATE quest_template SET SpecialFlags = 2 WHERE entry = 309;
