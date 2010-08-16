SELECT *  FROM `gameobject`
WHERE
    `map` = 1 AND
    `position_x` > 1327 AND
    `position_x` < 1337 AND
    `position_y` > -4432 AND
    `position_y` < -4406

ORDER BY `gameobject`.`guid` ASC

