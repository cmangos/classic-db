-- Add script for spell 9096 (Rift Spawn Manifestation) triggering spell 9738 (Rift Spawn Becomes Visible)
DELETE FROM dbscripts_on_spell WHERE id=9096;
INSERT INTO dbscripts_on_spell VALUES
(9096, 0, 0, 15, 9738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rift Spawn - cast Rift Spawn Becomes Visible');
