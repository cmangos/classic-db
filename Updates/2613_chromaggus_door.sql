-- fix chromaggus lever not opening porticullis
UPDATE dbscripts_on_go_template_use SET search_radius=70 WHERE Id IN(179148) AND command=11;
