-- Defias Northshire Abbey - aggro texts 
DELETE FROM dbscript_random_templates WHERE id = 35;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(35,0,7133,0,'Defias Thug / Garrick Padfoot - Random Aggro Text'),
(35,0,7134,0,'Defias Thug / Garrick Padfoot - Random Aggro Text');
-- Defias melee 
DELETE FROM dbscript_random_templates WHERE id = 36;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(36,0,1865,0,'Defias melee Generic  - Random Aggro Texts'),
(36,0,1866,0,'Defias melee Generic - Random Aggro Texts');
-- Defias casters
DELETE FROM dbscript_random_templates WHERE id = 37;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(37,0,1866,0,'Defias Casters Generic - Random Aggro Texts'),
(37,0,1867,0,'Defias Casters Generic - Random Aggro Texts');

