
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Item_Category;
DROP TABLE IF EXISTS Item_Seller;
DROP TABLE IF EXISTS Bid;

CREATE TABLE Users
(

UserID varchar(1000),
Rating int,
Location varchar(1000),
Country varchar(200),
PRIMARY KEY (UserID)

);

CREATE TABLE Categories
(

Category varchar(1000),
PRIMARY KEY (Category)

);

CREATE TABLE Items
(

ItemID int,
Name varchar(1000),
Started timestamp,
Ends timestamp,
Currently float,
First_Bid float,
Buy_Price float,
Number_of_Bids int,
Description text,
PRIMARY KEY (ItemID)

);


CREATE TABLE  Item_Category
(

ItemID int,
Category varchar(1000),
PRIMARY KEY (ItemID, Category),
FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
FOREIGN KEY (Category) REFERENCES Categories(Category)

);

CREATE TABLE Item_Seller
(

ItemID int,
SellerID varchar(1000),
PRIMARY KEY(ItemID),
FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
FOREIGN KEY (SellerID) REFERENCES Users(UserID)

);

CREATE TABLE Bid
(

BidderID varchar(1000),
ItemID int,
Time timestamp,
Amount float,
PRIMARY KEY (BidderID, ItemID, Time, Amount),
FOREIGN KEY (BidderID) REFERENCES Users(UserID),
FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);
