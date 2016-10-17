select count(*)  from (select count(*) as cnt, ItemID from Item_Category group by ItemID) where cnt = 4;
