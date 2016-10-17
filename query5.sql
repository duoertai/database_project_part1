select count(distinct(u1.UserID)) from Users as u1, Item_Seller as u2 where u1.UserID = u2.SellerID and u1.Rating > 1000;
