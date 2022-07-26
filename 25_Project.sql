/*
Name:- Brijesh Ramoliya
Roll no:- 91900133025

*/
                                       /*Hotel Management system */
								 
SET search_path TO "public";

CREATE TABLE Customers(c_Id BIGINT,Name varchar(50),Address varchar(50),Phone_no BIGINT);

INSERT INTO Customers(c_Id,Name,Address,Phone_no) VALUES (422021104582,'Rohan','Rajkot',8750123641);
INSERT INTO Customers(c_Id,Name,Address,Phone_no) VALUES (122190802105,'Mohan','Junagadh',87501236);
INSERT INTO Customers(c_Id,Name,Address,Phone_no) VALUES (919128004325,'Ronak','Morbi',8750123641);
INSERT INTO Customers(c_Id,Name,Address,Phone_no) VALUES (872155204322,'Admin','Anand',8750123641);
INSERT INTO Customers(c_Id,Name,Address,Phone_no) VALUES (312187005222,'Parth','Patan',8750123641);

CREATE TABLE Hotel(Hotel_name varchar(50),no_of_Room INT,Address varchar(50),Hotel_Phone_no INT);

INSERT INTO Hotel(Hotel_name,no_of_Room,Address,Hotel_Phone_no) VALUES ('Hotel Taj',500,'Rajkot',025-85210);
INSERT INTO Hotel(Hotel_name,no_of_Room,Address,Hotel_Phone_no) VALUES ('Hotel Shree',140,'Gondal',045-25211);
INSERT INTO Hotel(Hotel_name,no_of_Room,Address,Hotel_Phone_no) VALUES ('Hotel Elite',650,'Morbi',090-45210);
INSERT INTO Hotel(Hotel_name,no_of_Room,Address,Hotel_Phone_no) VALUES ('Hotel Bliss',220,'Junagadh',021-85301);
INSERT INTO Hotel(Hotel_name,no_of_Room,Address,Hotel_Phone_no) VALUES ('Hotel Crowne Plaza',400,'Jetpur',255-30215);

CREATE TABLE Room(Room_no INT,Room_Type varchar(50),Room_Id INT,Room_rate varchar(50));

INSERT INTO Room(Room_no,Room_Type,Room_Id,Room_rate) VALUES (500,'2Bad',211,'1 day-200');
INSERT INTO Room(Room_no,Room_Type,Room_Id,Room_rate) VALUES (140,'1Bad',40,'1 day-500');
INSERT INTO Room(Room_no,Room_Type,Room_Id,Room_rate) VALUES (650,'1Bad',540,'1 day-1000');
INSERT INTO Room(Room_no,Room_Type,Room_Id,Room_rate) VALUES (220,'3Bad',150,'1 day-5000');
INSERT INTO Room(Room_no,Room_Type,Room_Id,Room_rate) VALUES (400,'2Bad',355,'1 day-2000');

CREATE TABLE Parking(car_name varchar(50),car_no varchar(50));

INSERT INTO Parking(car_name,car_no) VALUES ('Creta','GJ 30 GGHH 4090');
INSERT INTO Parking(car_name,car_no) VALUES ('Verna','GJ 36 ABCD 1122');
INSERT INTO Parking(car_name,car_no) VALUES ('Rolls Royce','GJ 25 DBXM 4096');
INSERT INTO Parking(car_name,car_no) VALUES ('swift dzire','GJ 11 XJUA 4325');
INSERT INTO Parking(car_name,car_no) VALUES ('BMW','GJ 05 SWRQ 8739');

CREATE TABLE staff(Manager_name varchar(50),Cleaning_staff_name varchar(50),Waiter_name varchar(50),Gard_name varchar(50),safe_name varchar(50));

INSERT INTO staff(Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name) VALUES ('mohan','Golu','Gogi','Pinku','Monu');
INSERT INTO staff(Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name) VALUES ('Roy','Admin','Ravi','raj','Jenu');
INSERT INTO staff(Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name) VALUES ('Lalit','Niraj','Tiger','Priyank','Samip');
INSERT INTO staff(Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name) VALUES ('Lalo','Tushar','Parth','Rahul','sahil');
INSERT INTO staff(Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name) VALUES ('Ramesh','Milan','Axit','Sanjay','Keyur');

CREATE TABLE Reseruation(C_Id varchar(50),Res_date TIMESTAMP,Room_No INT,Discount INT);

INSERT INTO Reseruation(C_Id,Res_date,Room_No,Discount) VALUES ('Rohan','25-06-2021 8:50 AM',211,50);
INSERT INTO Reseruation(C_Id,Res_date,Room_No,Discount) VALUES ('Mohan','01-01-2021 10:00 AM',40,10);
INSERT INTO Reseruation(C_Id,Res_date,Room_No,Discount) VALUES ('Ronak','05-08-2021 12:00 PM',540,5);
INSERT INTO Reseruation(C_Id,Res_date,Room_No,Discount) VALUES ('Admin','12-11-2020 7:35 AM',150,25);
INSERT INTO Reseruation(C_Id,Res_date,Room_No,Discount) VALUES ('Parth','07-9-2020 10:30 PM',350,20);



/* 1)LIKE */
SELECT * FROM Reseruation WHERE C_Id LIKE 'R%';

/* 2)ORDER BY */
SELECT * FROM  Hotel ORDER BY Address;
SELECT * FROM Hotel ORDER BY Hotel_name,no_of_Room,Address,Hotel_Phone_no DESC;

/* 3)VIEW */
CREATE VIEW view AS SELECT Room_no FROM Room WHERE Room_Id=540;

/* 4)OUTPUT ONE ROW */
SELECT C_Id,Res_date,Room_No,Discount FROM Reseruation WHERE Room_no =211;

/* 5)MIN && MAX*/
SELECT * FROM Reseruation WHERE Discount=(SELECT MIN(Discount) FROM Reseruation);
SELECT * FROM Room WHERE Room_Id=(SELECT MAX(Room_Id) FROM Room);

/* 6)ADD NEW COLUMN */
ALTER TABLE Hotel ADD COLUMN Location varchar(50);
ALTER TABLE Hotel ADD COLUMN Full_name varchar(50);

/* 7)UPDATE NEW COLUMN */
UPDATE Hotel SET Location = 'Junagadh'  WHERE no_of_Room=150;

/* 8)UPDATE */
UPDATE Parking SET car_name= 'AUDI'  WHERE car_no='GJ 11 XJUA 4325';

/* 9)LIMIT */
SELECT * FROM staff LIMIT 7;

/* 10)DISTINCT */
SELECT DISTINCT Manager_name,Cleaning_staff_name,Waiter_name,Gard_name,safe_name FROM staff;



SELECT * FROM Customers;
SELECT * FROM Hotel;
SELECT * FROM Room;
SELECT * FROM Parking;
SELECT * FROM staff;
SELECT * FROM Reseruation;

