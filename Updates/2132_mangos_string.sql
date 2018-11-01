-- Add information about aura stacks to .list auras 
UPDATE mangos_string SET content_default='id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s stacks: %d' WHERE entry = 468;

-- Extend mangos strings for movegens command 
UPDATE mangos_string SET content_default='   Targeted to player %s (lowguid %u) distance %f angle %f' WHERE entry IN(532);
UPDATE mangos_string SET content_default='   Targeted to creature %s (lowguid %u) distance %f angle %f' WHERE entry IN(533);
