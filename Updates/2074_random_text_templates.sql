-- Fix random text templates
DELETE FROM dbscript_random_templates WHERE id=1 OR (id=4 AND target_id=-1311);
INSERT INTO `dbscript_random_templates` VALUES
(4, 0, -1311, 0, 'Lil Timmy - Random OOC Texts');
