INSERT INTO PAPA_PIES_RESTARAUNT_LLC VALUES ('Papa Pies Restaraunt LLC', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 5);

INSERT INTO Papa_Pies_Location VALUES (00001, '1 Main St', 'Boston', 'MA', '02126', 1234.00, 'Papa Pies Restaraunt LLC');
INSERT INTO Papa_Pies_Location VALUES (00002, '2 Main St', 'Sayville', 'NY', '11782', 1334.00, 'Papa Pies Restaraunt LLC');
INSERT INTO Papa_Pies_Location VALUES (00003, '3 Main St', 'Marietta', 'PA', '17547', 1434.00, 'Papa Pies Restaraunt LLC');
INSERT INTO Papa_Pies_Location VALUES (00004, '4 Main St', 'Edgewater', 'NJ', '07020', 1534.00, 'Papa Pies Restaraunt LLC');
INSERT INTO Papa_Pies_Location VALUES (00005, '5 Main St', 'Trenton', 'FL', '32693', 1434.00, 'Papa Pies Restaraunt LLC');

INSERT INTO Schedule VALUES (01011, 00001, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '10:00pm', '11:00am', '10:00pm', '11:00am', '7:30pm');
INSERT INTO Schedule VALUES (01021, 00002, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '10:00pm', '11:00am', '10:00pm', '11:00am', '7:30pm');
INSERT INTO Schedule VALUES (01031, 00003, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '10:00pm', '11:00am', '10:00pm', '11:00am', '7:30pm');
INSERT INTO Schedule VALUES (01041, 00004, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '10:00pm', '11:00am', '10:00pm', '11:00am', '7:30pm');
INSERT INTO Schedule VALUES (01051, 00005, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '10:00pm', '11:00am', '10:00pm', '11:00am', '7:30pm');

--location 1
INSERT INTO Employee VALUES (02011, 'John', '10 Main St', 'Boston', 'MA', '02126', '617-111-1111', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Cooks', 'F', 00001);
INSERT INTO Full_Time_Employee VALUES (02011, 17.00, 40);
INSERT INTO Employee VALUES (02012, 'Jess', '11 Main St', 'Boston', 'MA', '02126', '617-111-1112', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Head Chef', 'S', 00001);
INSERT INTO Salary_Employee VALUES (02012, 125000, 40);
INSERT INTO Employee VALUES (02013, 'Kyleigh', '12 Main St', 'Boston', 'MA', '02126', '617-111-1113', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Manager', 'S', 00001);
INSERT INTO Salary_Employee VALUES (02013, 130000, 40);
INSERT INTO Employee VALUES (02014, 'Josh', '13 Main St', 'Boston', 'MA', '02126', '617-111-1114', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Server', 'F', 00001);
INSERT INTO Full_Time_Employee VALUES (02014, 15, 35);
INSERT INTO Employee VALUES (02015, 'Max', '14 Main St', 'Boston', 'MA', '02126', '617-111-1115', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Front End', 'F', 00001);
INSERT INTO Full_Time_Employee VALUES (02015, 15, 39);
INSERT INTO Employee VALUES (02016, 'Kenny', '15 Main St', 'Boston', 'MA', '02126', '617-111-1116', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Bussers', 'P', 00001);
INSERT INTO Part_Time_Employee VALUES (02016, 15, 36, 'KennyRestrictions.doc');
INSERT INTO E_Availability VALUES (12016, 02016, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

--location 2
INSERT INTO Employee VALUES (02021, 'Joe', '12 Main St', 'Sayville', 'NY', '11782', '631-111-1112', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Cooks', 'F', 00002);
INSERT INTO Full_Time_Employee VALUES (02021, 17.00, 40);
INSERT INTO Employee VALUES (02022, 'Makayla', '13 Main St', 'Sayville', 'NY', '11782', '631-111-1113', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Head Chef', 'S', 00002);
INSERT INTO Salary_Employee VALUES (02022, 125000, 40);
INSERT INTO Employee VALUES (02023, 'Melissa', '14 Main St', 'Sayville', 'NY', '11782', '631-111-1114', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Manager', 'S', 00002);
INSERT INTO Salary_Employee VALUES (02023, 130000, 40);
INSERT INTO Employee VALUES (02024, 'Nick', '15 Main St', 'Sayville', 'NY', '11782', '631-111-1115', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Server', 'F', 00002);
INSERT INTO Full_Time_Employee VALUES (02024, 15, 35);
INSERT INTO Employee VALUES (02025, 'Ricky', '16 Main St', 'Sayville', 'NY', '11782', '631-111-1116', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Front End', 'F', 00002);
INSERT INTO Full_Time_Employee VALUES (02025, 15, 39);
INSERT INTO Employee VALUES (02026, 'Roberta', '17 Main St', 'Sayville', 'NY', '11782', '631-111-1117', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'Bussers', 'P', 00002);
INSERT INTO Part_Time_Employee VALUES (02026, 15, 36, 'RobertaRestrictions.doc');
INSERT INTO E_Availability VALUES (12026, 02026, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

--location 3
INSERT INTO Employee VALUES (02031, 'Pat', '13 Main St', 'Marietta', 'PA', '17547', '570-111-1113', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Cooks', 'F', 00003);
INSERT INTO Full_Time_Employee VALUES (02031, 17.00, 40);
INSERT INTO Employee VALUES (02032, 'Tom', '14 Main St', 'Marietta', 'PA', '17547', '570-111-1114', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Head Chef', 'S', 00003);
INSERT INTO Salary_Employee VALUES (02032, 125000, 40);
INSERT INTO Employee VALUES (02033, 'Tyler', '15 Main St', 'Marietta', 'PA', '17547', '570-111-1115', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Manager', 'S', 00003);
INSERT INTO Salary_Employee VALUES (02033, 130000, 40);
INSERT INTO Employee VALUES (02034, 'Spencer', '16 Main St', 'Marietta', 'PA', '17547', '570-111-1116', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Server', 'F', 00003);
INSERT INTO Full_Time_Employee VALUES (02034, 15, 35);
INSERT INTO Employee VALUES (02035, 'Russell', '17 Main St', 'Marietta', 'PA', '17547', '570-111-1117', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Front End', 'F', 00003);
INSERT INTO Full_Time_Employee VALUES (02035, 15, 39);
INSERT INTO Employee VALUES (02036, 'Paula', '18 Main St', 'Marietta', 'PA', '17547', '570-111-1118', TO_DATE('2021-01-03', 'YYYY-MM-DD'), 'Bussers', 'P', 00003);
INSERT INTO Part_Time_Employee VALUES (02036, 15, 36, 'PaulaRestrictions.doc');
INSERT INTO E_Availability VALUES (12036, 02036, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

--location 4
INSERT INTO Employee VALUES (02041, 'Chris', '14 Main St', 'Edgewater', 'NJ', '07020', '917-111-1114', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Cooks', 'F', 00004);
INSERT INTO Full_Time_Employee VALUES (02041, 17.00, 40);
INSERT INTO Employee VALUES (02042, 'Nicole', '15 Main St', 'Edgewater', 'NJ', '07020', '917-111-1115', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Head Chef', 'S', 00004);
INSERT INTO Salary_Employee VALUES (02042, 125000, 40);
INSERT INTO Employee VALUES (02043, 'Matt', '16 Main St', 'Edgewater', 'NJ', '07020', '917-111-1116', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Manager', 'S', 00004);
INSERT INTO Salary_Employee VALUES (02043, 130000, 40);
INSERT INTO Employee VALUES (02044, 'Lauren', '17 Main St', 'Edgewater', 'NJ', '07020', '917-111-1117', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Server', 'F', 00004);
INSERT INTO Full_Time_Employee VALUES (02044, 15, 35);
INSERT INTO Employee VALUES (02045, 'Kevin', '18 Main St', 'Edgewater', 'NJ', '07020', '917-111-1118', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Front End', 'F', 00004);
INSERT INTO Full_Time_Employee VALUES (02045, 15, 39);
INSERT INTO Employee VALUES (02046, 'Jimmy', '19 Main St', 'Edgewater', 'NJ', '07020', '917-111-1119', TO_DATE('2021-01-04', 'YYYY-MM-DD'), 'Bussers', 'P', 00004);
INSERT INTO Part_Time_Employee VALUES (02046, 15, 36, 'JimmyRestrictions.doc');
INSERT INTO E_Availability VALUES (12046, 02046, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

--location 5
INSERT INTO Employee VALUES (02051, 'Steve', '15 Main St', 'Trenton', 'FL', '32693', '904-111-1115', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Cooks', 'F', 00005);
INSERT INTO Full_Time_Employee VALUES (02051, 17.00, 40);
INSERT INTO Employee VALUES (02052, 'Jack', '16 Main St', 'Trenton', 'FL', '32693', '904-111-1116', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Head Chef', 'S', 00005);
INSERT INTO Salary_Employee VALUES (02052, 125000, 40);
INSERT INTO Employee VALUES (02053, 'Ian', '17 Main St', 'Trenton', 'FL', '32693', '904-111-1117', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Manager', 'S', 00005);
INSERT INTO Salary_Employee VALUES (02053, 130000, 40);
INSERT INTO Employee VALUES (02054, 'Hudson', '18 Main St', 'Trenton', 'FL', '32693', '904-111-1118', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Server', 'F', 00005);
INSERT INTO Full_Time_Employee VALUES (02054, 15, 35);
INSERT INTO Employee VALUES (02055, 'Holly', '19 Main St', 'Trenton', 'FL', '32693', '904-111-1119', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Front End', 'F', 00005);
INSERT INTO Full_Time_Employee VALUES (02055, 15, 39);
INSERT INTO Employee VALUES (02056, 'Frank', '20 Main St', 'Trenton', 'FL', '32693', '904-111-1120', TO_DATE('2021-01-05', 'YYYY-MM-DD'), 'Bussers', 'P', 00005);
INSERT INTO Part_Time_Employee VALUES (02056, 15, 36, 'FrankRestrictions.doc');
INSERT INTO E_Availability VALUES (12056, 02056, '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', '11:00am', '9:00pm', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A');

INSERT INTO Supplier VALUES (03001, 'Supplier 1', '110 Main St', 'Boston', 'MA', '02126', '617-111-1121', 00001);
INSERT INTO Supplier VALUES (03002, 'Supplier 2', '120 Main St', 'Sayville', 'NY', '11782', '631-111-1122', 00002);
INSERT INTO Supplier VALUES (03003, 'Supplier 3', '130 Main St', 'Marietta', 'PA', '17547', '570-111-1123', 00003);
INSERT INTO Supplier VALUES (03004, 'Supplier 4', '140 Main St', 'Edgewater', 'NJ', '07020', '917-111-1124', 00004);
INSERT INTO Supplier VALUES (03005, 'Supplier 5', '150 Main St', 'Trenton', 'FL', '32693', '904-111-1125', 00005);

--location 1
INSERT INTO Equipment_Item VALUES (04011, 'Forks', 80, 'Next to Kitchen', 1.12, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04012, 'Spoons', 80, 'Next to Kitchen', 1.13, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04013, 'Knives', 80, 'Next to Kitchen', 1.11, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04014, 'Steak Knives', 30, 'Kitchen', 6.56, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04015, 'Ladles', 10, 'Kitchen', 4.20, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04016, 'Spatulas', 13, 'Kitchen', 10.72, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04017, 'Measuring Cups', 12, 'Kitchen', 2.14, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04018, 'Sponges', 5, 'Kitchen', 3.98, 00001, 03001); 
INSERT INTO Equipment_Item VALUES (04019, 'Wash Cloths', 20, 'Next to Kitchen', 3.14, 00001, 03001); 

--location 2
INSERT INTO Equipment_Item VALUES (04021, 'Forks', 80, 'Next to Kitchen', 1.12, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04022, 'Spoons', 80, 'Next to Kitchen', 1.13, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04023, 'Knives', 80, 'Next to Kitchen', 1.11, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04024, 'Steak Knives', 30, 'Kitchen', 6.56, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04025, 'Ladles', 10, 'Kitchen', 4.20, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04026, 'Spatulas', 13, 'Kitchen', 10.72, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04027, 'Measuring Cups', 12, 'Kitchen', 2.14, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04028, 'Sponges', 5, 'Kitchen', 3.98, 00002, 03002); 
INSERT INTO Equipment_Item VALUES (04029, 'Wash Cloths', 20, 'Next to Kitchen', 3.14, 00002, 03002); 

--location 3
INSERT INTO Equipment_Item VALUES (04031, 'Forks', 80, 'Next to Kitchen', 1.12, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04032, 'Spoons', 80, 'Next to Kitchen', 1.13, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04033, 'Knives', 80, 'Next to Kitchen', 1.11, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04034, 'Steak Knives', 30, 'Kitchen', 6.56, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04035, 'Ladles', 10, 'Kitchen', 4.20, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04036, 'Spatulas', 13, 'Kitchen', 10.72, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04037, 'Measuring Cups', 12, 'Kitchen', 2.14, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04038, 'Sponges', 5, 'Kitchen', 3.98, 00003, 03003); 
INSERT INTO Equipment_Item VALUES (04039, 'Wash Cloths', 20, 'Next to Kitchen', 3.14, 00003, 03003); 

--location 4
INSERT INTO Equipment_Item VALUES (04041, 'Forks', 80, 'Next to Kitchen', 1.12, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04042, 'Spoons', 80, 'Next to Kitchen', 1.13, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04043, 'Knives', 80, 'Next to Kitchen', 1.11, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04044, 'Steak Knives', 30, 'Kitchen', 6.56, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04045, 'Ladles', 10, 'Kitchen', 4.20, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04046, 'Spatulas', 13, 'Kitchen', 10.72, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04047, 'Measuring Cups', 12, 'Kitchen', 2.14, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04048, 'Sponges', 5, 'Kitchen', 3.98, 00004, 03004); 
INSERT INTO Equipment_Item VALUES (04049, 'Wash Cloths', 20, 'Next to Kitchen', 3.14, 00004, 03004); 

--location 5
INSERT INTO Equipment_Item VALUES (04051, 'Forks', 80, 'Next to Kitchen', 1.12, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04052, 'Spoons', 80, 'Next to Kitchen', 1.13, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04053, 'Knives', 80, 'Next to Kitchen', 1.11, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04054, 'Steak Knives', 30, 'Kitchen', 6.56, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04055, 'Ladles', 10, 'Kitchen', 4.20, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04056, 'Spatulas', 13, 'Kitchen', 10.72, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04057, 'Measuring Cups', 12, 'Kitchen', 2.14, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04058, 'Sponges', 5, 'Kitchen', 3.98, 00005, 03005); 
INSERT INTO Equipment_Item VALUES (04059, 'Wash Cloths', 20, 'Next to Kitchen', 3.14, 00005, 03005); 

--location 1
INSERT INTO Ingredient VALUES (05011, 'Tomatoes', 500, 30.23, 'T', 00001, 03001);
INSERT INTO Seasonal_Ingredient VALUES (05011, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05012, 'Mozzarella Cheese', 400, 62.46, 'F', 00001, 03001);
INSERT INTO Ingredient VALUES (05013, 'Lettuce', 300, 56.38, 'T', 00001, 03001);
INSERT INTO Seasonal_Ingredient VALUES (05013, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05014, 'Flour', 200, 64.25, 'F', 00001, 03001);
INSERT INTO Ingredient VALUES (05015, 'Eggplant', 100, 24.56, 'T', 00001, 03001);
INSERT INTO Seasonal_Ingredient VALUES (05015, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05016, 'Chicken', 100, 35.68, 'F', 00001, 03001);
INSERT INTO Ingredient VALUES (05017, 'Sparkling Water', 1500, 0.25, 'F', 00001, 03001);
INSERT INTO Ingredient VALUES (05018, 'Wine', 500, 10.00, 'F', 00001, 03001);

--location 2
INSERT INTO Ingredient VALUES (05021, 'Tomatoes', 500, 30.23, 'T', 00002, 03002);
INSERT INTO Seasonal_Ingredient VALUES (05021, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05022, 'Mozzarella Cheese', 400, 62.46, 'F', 00002, 03002);
INSERT INTO Ingredient VALUES (05023, 'Lettuce', 300, 56.38, 'T', 00002, 03002);
INSERT INTO Seasonal_Ingredient VALUES (05023, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05024, 'Flour', 200, 64.25, 'F', 00002, 03002);
INSERT INTO Ingredient VALUES (05025, 'Eggplant', 100, 24.56, 'T', 00002, 03002);
INSERT INTO Seasonal_Ingredient VALUES (05025, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05026, 'Chicken', 100, 35.68, 'F', 00002, 03002);
INSERT INTO Ingredient VALUES (05027, 'Sparkling Water', 1500, 0.25, 'F', 00002, 03002);
INSERT INTO Ingredient VALUES (05028, 'Wine', 500, 10.00, 'F', 00002, 03002);

--location 3
INSERT INTO Ingredient VALUES (05031, 'Tomatoes', 500, 30.23, 'T', 00003, 03003);
INSERT INTO Seasonal_Ingredient VALUES (05031, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05032, 'Mozzarella Cheese', 400, 62.46, 'F', 00003, 03003);
INSERT INTO Ingredient VALUES (05033, 'Lettuce', 300, 56.38, 'T', 00003, 03003);
INSERT INTO Seasonal_Ingredient VALUES (05033, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05034, 'Flour', 200, 64.25, 'F', 00003, 03003);
INSERT INTO Ingredient VALUES (05035, 'Eggplant', 100, 24.56, 'T', 00003, 03003);
INSERT INTO Seasonal_Ingredient VALUES (05035, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05036, 'Chicken', 100, 35.68, 'F', 00003, 03003);
INSERT INTO Ingredient VALUES (05037, 'Sparkling Water', 1500, 0.25, 'F', 00003, 03003);
INSERT INTO Ingredient VALUES (05038, 'Wine', 500, 10.00, 'F', 00003, 03003);

--location 4
INSERT INTO Ingredient VALUES (05041, 'Tomatoes', 500, 30.23, 'T', 00004, 03004);
INSERT INTO Seasonal_Ingredient VALUES (05041, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05042, 'Mozzarella Cheese', 400, 62.46, 'F', 00004, 03004);
INSERT INTO Ingredient VALUES (05043, 'Lettuce', 300, 56.38, 'T', 00004, 03004);
INSERT INTO Seasonal_Ingredient VALUES (05043, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05044, 'Flour', 200, 64.25, 'F', 00004, 03004);
INSERT INTO Ingredient VALUES (05045, 'Eggplant', 100, 24.56, 'T', 00004, 03004);
INSERT INTO Seasonal_Ingredient VALUES (05045, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05046, 'Chicken', 100, 35.68, 'F', 00004, 03004);
INSERT INTO Ingredient VALUES (05047, 'Sparkling Water', 1500, 0.25, 'F', 00004, 03004);
INSERT INTO Ingredient VALUES (05048, 'Wine', 500, 10.00, 'F', 00004, 03004);

--location 5
INSERT INTO Ingredient VALUES (05051, 'Tomatoes', 500, 30.23, 'T', 00005, 03005);
INSERT INTO Seasonal_Ingredient VALUES (05051, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05052, 'Mozzarella Cheese', 400, 62.46, 'F', 00005, 03005);
INSERT INTO Ingredient VALUES (05053, 'Lettuce', 300, 56.38, 'T', 00005, 03005);
INSERT INTO Seasonal_Ingredient VALUES (05053, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05054, 'Flour', 200, 64.25, 'F', 00005, 03005);
INSERT INTO Ingredient VALUES (05055, 'Eggplant', 100, 24.56, 'T', 00005, 03005);
INSERT INTO Seasonal_Ingredient VALUES (05055, 'Apr', 'Sep');
INSERT INTO Ingredient VALUES (05056, 'Chicken', 100, 35.68, 'F', 00005, 03005);
INSERT INTO Ingredient VALUES (05057, 'Sparkling Water', 1500, 0.25, 'F', 00005, 03005);
INSERT INTO Ingredient VALUES (05058, 'Wine', 500, 10.00, 'F', 00005, 03005);

--location 1
INSERT INTO Menu_Item VALUES (06011, 'Chicken Alfredo Tortellini', 'Dinner', 10, 20.00, 500, 'F', 00001);
INSERT INTO Menu_Item VALUES (06012, 'Fresh Chicken Marsala', 'Dinner', 13, 19.00, 350, 'F', 00001);
INSERT INTO Menu_Item VALUES (06013, 'Plain Pizza', 'Dinner', 15, 18.00, 400, 'F', 00001);
INSERT INTO Menu_Item VALUES (06014, 'Caesar Salad', 'Side', 4, 17.00, 200, 'T', 00001);
INSERT INTO Seasonal_Menu_Item VALUES (06014, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06015, 'Roasted Eggplant', 'Side', 4, 16.00, 10, 'T', 00001);
INSERT INTO Seasonal_Menu_Item VALUES (06015, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06016, 'Sparkling Water', 'Drink', 1, 2.00, 2500, 'F', 00001);
INSERT INTO Menu_Item VALUES (06017, 'Wine', 'Drink', 1, 8.00, 1000, 'F', 00001);

--location 2
INSERT INTO Menu_Item VALUES (06021, 'Chicken Alfredo Tortellini', 'Dinner', 10, 20.00, 500, 'F', 00002);
INSERT INTO Menu_Item VALUES (06022, 'Fresh Chicken Marsala', 'Dinner', 13, 19.00, 350, 'F', 00002);
INSERT INTO Menu_Item VALUES (06023, 'Plain Pizza', 'Dinner', 15, 18.00, 400, 'F', 00002);
INSERT INTO Menu_Item VALUES (06024, 'Caesar Salad', 'Side', 4, 17.00, 200, 'T', 00002);
INSERT INTO Seasonal_Menu_Item VALUES (06024, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06025, 'Roasted Eggplant', 'Side', 4, 16.00, 10, 'T', 00002);
INSERT INTO Seasonal_Menu_Item VALUES (06025, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06026, 'Sparkling Water', 'Drink', 1, 2.00, 2500, 'F', 00002);
INSERT INTO Menu_Item VALUES (06027, 'Wine', 'Drink', 1, 8.00, 1000, 'F', 00002);

--location 3
INSERT INTO Menu_Item VALUES (06031, 'Chicken Alfredo Tortellini', 'Dinner', 10, 20.00, 500, 'F', 00003);
INSERT INTO Menu_Item VALUES (06032, 'Fresh Chicken Marsala', 'Dinner', 13, 19.00, 350, 'F', 00003);
INSERT INTO Menu_Item VALUES (06033, 'Plain Pizza', 'Dinner', 15, 18.00, 400, 'F', 00003);
INSERT INTO Menu_Item VALUES (06034, 'Caesar Salad', 'Side', 4, 17.00, 200, 'T', 00003);
INSERT INTO Seasonal_Menu_Item VALUES (06034, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06035, 'Roasted Eggplant', 'Side', 4, 16.00, 10, 'T', 00003);
INSERT INTO Seasonal_Menu_Item VALUES (06035, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06036, 'Sparkling Water', 'Drink', 1, 2.00, 2500, 'F', 00003);
INSERT INTO Menu_Item VALUES (06037, 'Wine', 'Drink', 1, 8.00, 1000, 'F', 00003);

--location 4
INSERT INTO Menu_Item VALUES (06041, 'Chicken Alfredo Tortellini', 'Dinner', 10, 20.00, 500, 'F', 00004);
INSERT INTO Menu_Item VALUES (06042, 'Fresh Chicken Marsala', 'Dinner', 13, 19.00, 350, 'F', 00004);
INSERT INTO Menu_Item VALUES (06043, 'Plain Pizza', 'Dinner', 15, 18.00, 400, 'F', 00004);
INSERT INTO Menu_Item VALUES (06044, 'Caesar Salad', 'Side', 4, 17.00, 200, 'T', 00004);
INSERT INTO Seasonal_Menu_Item VALUES (06044, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06045, 'Roasted Eggplant', 'Side', 4, 16.00, 10, 'T', 00004);
INSERT INTO Seasonal_Menu_Item VALUES (06045, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06046, 'Sparkling Water', 'Drink', 1, 2.00, 2500, 'F', 00004);
INSERT INTO Menu_Item VALUES (06047, 'Wine', 'Drink', 1, 8.00, 1000, 'F', 00004);

--location 5
INSERT INTO Menu_Item VALUES (06051, 'Chicken Alfredo Tortellini', 'Dinner', 10, 20.00, 500, 'F', 00005);
INSERT INTO Menu_Item VALUES (06052, 'Fresh Chicken Marsala', 'Dinner', 13, 19.00, 350, 'F', 00005);
INSERT INTO Menu_Item VALUES (06053, 'Plain Pizza', 'Dinner', 15, 18.00, 400, 'F', 00005);
INSERT INTO Menu_Item VALUES (06054, 'Caesar Salad', 'Side', 4, 17.00, 200, 'T', 00005);
INSERT INTO Seasonal_Menu_Item VALUES (06054, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06055, 'Roasted Eggplant', 'Side', 4, 16.00, 10, 'T', 00005);
INSERT INTO Seasonal_Menu_Item VALUES (06055, 'Apr', 'Sep');
INSERT INTO Menu_Item VALUES (06056, 'Sparkling Water', 'Drink', 1, 2.00, 2500, 'F', 00005);
INSERT INTO Menu_Item VALUES (06057, 'Wine', 'Drink', 1, 8.00, 1000, 'F', 00005);

--INSERT INTO Menu_Item_Ingredient_Pair VALUES (11211, 11126); i dont know what goes with what

--location 1
INSERT INTO Facilities VALUES (07011, 'D', 00001);
INSERT INTO Dining_Area VALUES (07011, 10, 40, 'F');
INSERT INTO Facilities VALUES (07012, 'D', 00001);
INSERT INTO Dining_Area VALUES (07012, 12, 50, 'T');
INSERT INTO Outside_Dining VALUES (07012, 10);
INSERT INTO Facilities VALUES (07013, 'K', 00001);
INSERT INTO Kitchen VALUES (07013);

--location 2
INSERT INTO Facilities VALUES (07021, 'D', 00002);
INSERT INTO Dining_Area VALUES (07021, 10, 40, 'F');
INSERT INTO Facilities VALUES (07022, 'D', 00002);
INSERT INTO Dining_Area VALUES (07022, 12, 50, 'T');
INSERT INTO Outside_Dining VALUES (07022, 10);
INSERT INTO Facilities VALUES (07023, 'K', 00002);
INSERT INTO Kitchen VALUES (07023);

--location 3
INSERT INTO Facilities VALUES (07031, 'D', 00003);
INSERT INTO Dining_Area VALUES (07031, 10, 40, 'F');
INSERT INTO Facilities VALUES (07032, 'D', 00003);
INSERT INTO Dining_Area VALUES (07032, 12, 50, 'T');
INSERT INTO Outside_Dining VALUES (07032, 10);
INSERT INTO Facilities VALUES (07033, 'K', 00003);
INSERT INTO Kitchen VALUES (07033);

--location 4
INSERT INTO Facilities VALUES (07041, 'D', 00004);
INSERT INTO Dining_Area VALUES (07041, 10, 40, 'F');
INSERT INTO Facilities VALUES (07042, 'D', 00004);
INSERT INTO Dining_Area VALUES (07042, 12, 50, 'T');
INSERT INTO Outside_Dining VALUES (07042, 10);
INSERT INTO Facilities VALUES (07043, 'K', 00004);
INSERT INTO Kitchen VALUES (07043);

--location 5
INSERT INTO Facilities VALUES (07051, 'D', 00005);
INSERT INTO Dining_Area VALUES (07051, 10, 40, 'F');
INSERT INTO Facilities VALUES (07052, 'D', 00005);
INSERT INTO Dining_Area VALUES (07052, 12, 50, 'T');
INSERT INTO Outside_Dining VALUES (07052, 10);
INSERT INTO Facilities VALUES (07053, 'K', 00005);
INSERT INTO Kitchen VALUES (07053);

--location 1
INSERT INTO Appliance VALUES (08011, 07013, 'Stove', 3, 03001);
INSERT INTO Appliance VALUES (08012, 07013, 'Oven', 2, 03001);
INSERT INTO Appliance VALUES (08013, 07013, 'Fridge', 4, 03001);
INSERT INTO Appliance VALUES (08014, 07013, 'Fryer', 2, 03001);

--location 2
INSERT INTO Appliance VALUES (08021, 07023, 'Stove', 3, 03002);
INSERT INTO Appliance VALUES (08022, 07023, 'Oven', 2, 03002);
INSERT INTO Appliance VALUES (08023, 07023, 'Fridge', 4, 03002);
INSERT INTO Appliance VALUES (08024, 07023, 'Fryer', 2, 03002);

--location 3
INSERT INTO Appliance VALUES (08031, 07033, 'Stove', 3, 03003);
INSERT INTO Appliance VALUES (08032, 07033, 'Oven', 2, 03003);
INSERT INTO Appliance VALUES (08033, 07033, 'Fridge', 4, 03003);
INSERT INTO Appliance VALUES (08034, 07033, 'Fryer', 2, 03003);

--location 4
INSERT INTO Appliance VALUES (08041, 07043, 'Stove', 3, 03004);
INSERT INTO Appliance VALUES (08042, 07043, 'Oven', 2, 03004);
INSERT INTO Appliance VALUES (08043, 07043, 'Fridge', 4, 03004);
INSERT INTO Appliance VALUES (08044, 07043, 'Fryer', 2, 03004);

--location 5
INSERT INTO Appliance VALUES (08051, 07053, 'Stove', 3, 03005);
INSERT INTO Appliance VALUES (08052, 07053, 'Oven', 2, 03005);
INSERT INTO Appliance VALUES (08053, 07053, 'Fridge', 4, 03005);
INSERT INTO Appliance VALUES (08054, 07053, 'Fryer', 2, 03005);

INSERT INTO Competition_Metrics VALUES (09011, 9876543.21, 1234567.89, 0987654.32, 0123456.78, 00001);
INSERT INTO Competition_Metrics VALUES (09012, 8876543.21, 2234567.89, 0887654.32, 0223456.78, 00002);
INSERT INTO Competition_Metrics VALUES (09013, 7876543.21, 3234567.89, 0787654.32, 0323456.78, 00003);
INSERT INTO Competition_Metrics VALUES (09014, 6876543.21, 4234567.89, 0687654.32, 0423456.78, 00004);
INSERT INTO Competition_Metrics VALUES (09015, 5876543.21, 5234567.89, 0587654.32, 0523456.78, 00005);