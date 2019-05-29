-- Fix Lunar Festival Moonglade Teleport in Thunder Bluff: range was too small to target trigger
UPDATE dbscripts_on_go_template_use SET search_radius=10 WHERE id=180867;

