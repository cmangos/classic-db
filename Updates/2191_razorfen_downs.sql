-- Fix Z for 3 creatures falling below map in Razorfen Downs
UPDATE creature SET position_z=35.91 WHERE guid=87211;
UPDATE creature SET position_z=44.75 WHERE guid=42725;
UPDATE creature SET position_z=42.47 WHERE guid=87206;
