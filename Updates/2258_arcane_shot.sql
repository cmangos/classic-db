/* Fix Arcane Shot scaling with ranged AP (it shouldn't) */
UPDATE spell_bonus_data SET ap_bonus = 0 WHERE entry = 3044;
