-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

Create Table customers (
  id Serial Primary Key, 
  first_name Text Not Null, 
  last_name Text Not Null
)

Create Table tickets (
  id Serial Primary Key, 
  seat_num Text Not Null, 
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL, 
  airline TEXT NOT NULL,
  customer_id Int Not Null References customers,
  depart_airport Int Not Null References airports, 
  arrival_airport Int Not Null References airports
)

Create Table airports (
  id Serial Primary Key, 
  name_of_airport Text, 
  city TEXT NOT NULL,
  country TEXT NOT NULL,
)

Insert Into customers (first_name, last_name) Values
('Jennifer', 'Finch'),
('Thadeus', 'Gathercoal'),
('Sonja', 'Pauley'),
('Waneta', 'Skeleton'),
('Berkie', 'Wycliff'),
('Alvin', 'Leathes'),
('Cory', 'Squibbes')


Insert Into tickets (seat_num, departure, arrival, airline, customer_id, depart_airport, arrival_airport) Values 
('33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 'United', 1, 2),
('8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 'British Airways', 2, 3, 4),
('12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 'Delta', 3, 5, 6),
('20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', 'Delta', 1, 2, 7),
('23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 'TUI Fly Belgium', 4, 8, 9),
('18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 'Air China', 2, 10, 11),
('9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 'United', 5, 12, 13),
('1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 'American Airlines', 6, 14, 15),
('32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 'American Airlines', 5, 13, 16),
('10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 'Avianca Brasil', 7, 17, 18)


Insert Into airports (city, country) Values 
('Washington DC', 'United States'), 1
('Seattle', 'United States'),2
('Tokyo', 'Japan'),3
('London', 'United Kingdom'),4
('Los Angeles', 'United States'),5
('Las Vegas', 'United States'),6
('Mexico City', 'Mexico'),7
('Paris', 'France'),8
('Casablanca', 'Morocco'),9
('Dubai', 'UAE'),10
('Beijing', 'China'),11
('New York', 'United States'),12
('Charlotte', 'United States'),13
('Cedar Rapids', 'United States'),14
('Chicago', 'United States'),15
('New Orleans', 'United States'),16
('Sao Paolo', 'Brazil'),17
('Santiago', 'Chile')18