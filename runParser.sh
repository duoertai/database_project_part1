#!/bin/sh
python parser.py items-*.json

sort -n Users.dat_raw | uniq > Users.dat
sort -n Items.dat_raw | uniq > Items.dat
sort -n Categories.dat_raw | uniq > Categories.dat
sort -n Item_Category.dat_raw | uniq > Item_Category.dat
sort -n Item_Seller.dat_raw | uniq > Item_Seller.dat
sort -n Bid.dat_raw | uniq > Bid.dat
