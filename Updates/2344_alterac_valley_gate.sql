-- Alterac Valley: Starting gate is now correctly non-interactable: 
update gameobject_template set faction = 114, flags = 32 where entry = 180424;