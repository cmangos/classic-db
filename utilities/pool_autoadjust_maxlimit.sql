-- MySQL dump 10.13  Distrib 5.5.27, for Linux (x86_64)
--
-- Host: localhost    Database: mangos
-- ------------------------------------------------------
-- Server version   5.5.27-log

-- Queries by The Wanderer (from UDB forums)
-- some pools aggregate using pool_pool, others do it using pool_gameobject directly, so we need two different update queries


-- first, the pool_gameobject updates:
update pool_template pt join (select pgo.pool_entry, count(1) zone_total from pool_gameobject pgo join pool_template pt on pgo.pool_entry=pt.entry where pt.description like "MASTER%" or pt.description like "%MASTER" group by pool_entry) tpgo on pt.entry = tpgo.pool_entry set pt.max_limit=ceil(tpgo.zone_total/3);

-- second, the pool_pool updates:
update pool_template pt join (select pp.mother_pool, count(1) pool_total from pool_pool pp join pool_template pt on pp.mother_pool=pt.entry where pt.description like "MASTER%" or pt.description like "%MASTER" group by mother_pool) tpp on pt.entry = tpp.mother_pool set pt.max_limit=ceil(tpp.pool_total/3);
