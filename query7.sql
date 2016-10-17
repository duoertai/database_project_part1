select count(distinct(u1.category)) from Item_Category as u1, Items as u2, Bid as u3 where u1.ItemID = u2.ItemID and u2.ItemID = u3.ItemID and u3.Amount > 100;
