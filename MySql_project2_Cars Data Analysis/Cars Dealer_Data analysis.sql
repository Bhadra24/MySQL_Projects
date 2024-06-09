create database cars;
use cars;

-- Read Data--
select*from car_dekho;

#1 Total Cars: To get a count of total records
select count(*) from car_dekho;

#2 How may cars will be available in 2023
select count(*) from car_dekho where year=2023;

#3 How many cars will be available in 2020,2021,2022
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

#4 Client asked to print the total of all cars by year as I dont see all the details.
select year, count(*) from car_dekho group by year;

#5 Client asked the car dealer agent that how many diesel cars will be there in 2020?
select fuel, year, count(*) from car_dekho where year=2020 and fuel='Diesel';

#6 Client asked the car dealer agent that how many petrol cars will be there in 2020?
select fuel, year, count(*) from car_dekho where year=2020 and fuel='Petrol';

#7 The manager told the employee to print all the fuel cars(petrol, diesel and CNG) come by all year?
select fuel, year, count(*) from car_dekho group by fuel, year;

#8 Manager said there were more than 100 cars in a given year, which year had more than 100 cars ?
select year, count(*) from car_dekho group by year having count(*)>100;

#9 The manager asked the employee to get the complete list of all cars count details between 2015 and 2023?
select count(*) from car_dekho where year between 2015 and 2023;

#10 The manager asked the employee to get the complete list of all cars details between 2015 to 2023?
select * from car_dekho where year between 2015 and 2023;













































