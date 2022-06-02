-- write your queries here


-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id.
Select * From owners o
    Left Join vehicles v On o.id = v.owner_id;


-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. 
    --The first_name should be ordered in ascending order.
Select first_name, last_name, Count(*) as count From owners o 
    Join vehicles v On o.id = v.owner_id
    Group By o.id 
    Order By first_name Asc;


--Count the number of cars for each owner and display the average price for each of the cars as integers. 
    -- Display the owners first_name, last_name, average price and count of vehicles. 
    -- The first_name should be ordered in descending order. Only display results with more than one vehicle 
    -- and an average price greater than 10000.
Select first_name, last_name, Round(Avg(price)) as average_price, Count(*) as count From owners o
    Join vehicles v on o.id = v.owner_id
    Group By o.id
    Having Count(*) > 1 And Avg(price) > 10000
    Order By first_name Desc;