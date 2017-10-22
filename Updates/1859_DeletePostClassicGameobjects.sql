-- Delete post Classic gameobject records.
-- http://www.wowhead.com/object=186266/deserter-propaganda#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186272/tool-kit#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186273/damaged-diving-gear#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186450/zeppelin-cargo#comments, added in patch 2.3.0.7561.
DELETE
FROM
	`gameobject`
WHERE
	`entry` IN (
		186266,
		186272,
		186273,
		186450
	);


-- Delete post Classic gameobject_template records.
-- http://www.wowhead.com/object=184862/fel-reaver-energy-matrix#comments, added in patch 3.3.5.12340.
-- http://www.wowhead.com/object=186266/deserter-propaganda#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186272/tool-kit#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186273/damaged-diving-gear#comments, added in patch 2.3.0.7561.
-- http://www.wowhead.com/object=186450/zeppelin-cargo#comments, added in patch 2.3.0.7561.
DELETE
FROM
	`gameobject_template`
WHERE
	`entry` IN (
		184862,
		186266,
		186272,
		186273,
		186450
	);
