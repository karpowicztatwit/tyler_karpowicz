CREATE TABLE Papa_Pies_Restaraunt_LLC (
  LLCID VARCHAR2(30),
  Date_Founded DATE,
  No_Locations NUMBER(2,0),
  CONSTRAINT Papa_Pies_Restaraunt_LLC_PK PRIMARY KEY (LLCID)
);

CREATE TABLE Papa_Pies_Location (
  Location_ID NUMBER(5,0) Not Null,
  Address VARCHAR2(20) Not Null,
  City    VARCHAR2(20) Not Null,
  State   VARCHAR2(2) Not Null,
  Zip VARCHAR(5) Not Null,
  Lease_Cost NUMBER(6,2) Not Null,
  LLCID VARCHAR2(30) Not Null,
  CONSTRAINT Papa_Pies_Location_PK PRIMARY KEY (Location_ID),
  CONSTRAINT Papa_Pies_Location_FK2 FOREIGN KEY (LLCID) REFERENCES Papa_Pies_Restaraunt_LLC(LLCID)
);

CREATE TABLE Schedule (
  Schedule_ID NUMBER(5,0) Not Null,
  Location_ID NUMBER(5,0) Not Null,
  Monday_Start VARCHAR2(8) Not Null,
  Monday_End VARCHAR2(8) Not Null,
  Tuesday_Start VARCHAR2(8) Not Null,
  Tuesday_End VARCHAR2(8) Not Null,
  Wednesday_Start VARCHAR2(8) Not Null,
  Wednesday_End VARCHAR2(8) Not Null,
  Thursday_Start VARCHAR2(8) Not Null,
  Thursday_End VARCHAR2(8) Not Null,
  Friday_Start VARCHAR2(8) Not Null,
  Friday_End VARCHAR2(8) Not Null,
  Saturday_Start VARCHAR2(8) Not Null,
  Saturday_End VARCHAR2(8) Not Null,
  Sunday_Start VARCHAR2(8) Not Null,
  Sunday_End VARCHAR2(8) Not Null,
  CONSTRAINT Schedule_PK PRIMARY KEY (Schedule_ID),
  CONSTRAINT Schedule_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);

CREATE TABLE Employee (
  Employee_ID NUMBER(5,0),
  Employee_Name VARCHAR2(30),
  Home_Address VARCHAR2(20),
  City    VARCHAR2(20),
  State   VARCHAR2(2),
  Zip VARCHAR(5),
  Phone_Number VARCHAR2(12),
  Employment_Date DATE,
  Position VARCHAR2(20) CHECK(Position IN ('Cooks', 'Head Chef', 'Manager', 'Server', 'Front End', 'Bussers')),
  Employee_Type VARCHAR2(1) CHECK(Employee_Type IN ('F', 'P', 'S')),
  Location_ID NUMBER(4,0),
  CONSTRAINT Employee_PK PRIMARY KEY (Employee_ID),
  CONSTRAINT Employee_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);

CREATE TABLE Full_Time_Employee (
  FTEmployee_ID NUMBER(5,0),
  Hourly_Pay NUMBER(5,2),
  Hours_Worked NUMBER(4,2),
  CONSTRAINT Full_Time_Employee_PK PRIMARY KEY (FTEmployee_ID),
  CONSTRAINT Full_Time_Employee_FK FOREIGN KEY (FTEmployee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Salary_Employee (
  SEmployee_ID NUMBER(5,0),
  Salary NUMBER(8,2),
  Hours_Worked DECIMAL(4,2),
  CONSTRAINT Salary_Employee_PK PRIMARY KEY (SEmployee_ID),
  CONSTRAINT Salary_Employee_FK FOREIGN KEY (SEmployee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Part_Time_Employee (
  PTEmployee_ID NUMBER(5,0),
  Hourly_Pay NUMBER(5,2),
  Hours_Worked DECIMAL(4,2),
  Restrictions VARCHAR2(30),
  CONSTRAINT Part_Time_Employee_PK PRIMARY KEY (PTEmployee_ID),
  CONSTRAINT Part_Time_Employee_FK FOREIGN KEY (PTEmployee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE E_Availability (
  Availability_ID NUMBER(5,0),
  PTEmployee_ID NUMBER(5,0),
  Monday_Start VARCHAR2(8),
  Monday_End VARCHAR2(8),
  Tuesday_Start VARCHAR2(8),
  Tuesday_End VARCHAR2(8),
  Wednesday_Start VARCHAR2(8),
  Wednesday_End VARCHAR2(8),
  Thursday_Start VARCHAR2(8),
  Thursday_End VARCHAR2(8),
  Friday_Start VARCHAR2(8),
  Friday_End VARCHAR2(8),
  Saturday_Start VARCHAR2(8),
  Saturday_End VARCHAR2(8),
  Sunday_Start VARCHAR2(8),
  Sunday_End VARCHAR2(8),
  CONSTRAINT Availability_PK PRIMARY KEY (Availability_ID),
  CONSTRAINT Availability_FK FOREIGN KEY (PTEmployee_ID) REFERENCES Part_Time_Employee(PTEmployee_ID)
);

CREATE TABLE Supplier (
  Supplier_ID NUMBER(5,0),
  Name    VARCHAR2(20),
  Address VARCHAR2(20),
  City    VARCHAR2(20),
  State   VARCHAR2(2),
  Zip VARCHAR(5),
  Telephone   VARCHAR2(12),
  Location_ID NUMBER(5,0),
  CONSTRAINT Supplier_PK PRIMARY KEY (Supplier_ID),
  CONSTRAINT Supplier_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);

CREATE TABLE Equipment_Item (
  Equipment_Item_ID NUMBER(5,0),
  Item_Type VARCHAR2(20),
  Amount NUMBER(2,0),
  Location_Within VARCHAR2(20),
  Cost NUMBER(7,2),
  Location_ID NUMBER(5,0),
  Supplier_ID NUMBER(5,0),
  CONSTRAINT Equipment_Item_PK PRIMARY KEY (Equipment_Item_ID),
  CONSTRAINT Equipment_Item_FK1 FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID),
  CONSTRAINT Equipment_Item_FK2 FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Ingredient (
  Ingredient_ID NUMBER(5,0),
  Name VARCHAR2(20),
  Stock NUMBER(4,0),
  Cost NUMBER(6,2),
  Seasonal VARCHAR2(1) CHECK(Seasonal IN ('T', 'F')),
  Location_ID NUMBER(5,0),
  Supplier_ID NUMBER(5,0),
  CONSTRAINT Ingredient_PK PRIMARY KEY (Ingredient_ID),
  CONSTRAINT Ingredient_FK1 FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID),
  CONSTRAINT Ingredient_FK2 FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Seasonal_Ingredient (
  SIngredient_ID NUMBER(5,0),
  Start_Month VARCHAR2(3),
  End_Month VARCHAR2(3),
  CONSTRAINT Seasonal_Ingredient_PK PRIMARY KEY (SIngredient_ID),
  CONSTRAINT Seasonal_Ingredient_FK FOREIGN KEY (SIngredient_ID) REFERENCES Ingredient(Ingredient_ID)
);

CREATE TABLE Menu_Item (
  Menu_Item_ID NUMBER(5,0),
  Item_Name VARCHAR2(30),
  Item_Type VARCHAR2(10),
  Est_Prep_Time NUMBER(2,0),
  Cost NUMBER(4,2),
  Amount_Sold NUMBER(4,0),
  Seasonal VARCHAR2(1) CHECK(Seasonal IN ('T', 'F')),
  Location_ID NUMBER(5,0),
  CONSTRAINT Menu_Item_PK PRIMARY KEY (Menu_Item_ID),
  CONSTRAINT Menu_Item_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);

CREATE TABLE Seasonal_Menu_Item (
  SMenu_Item_ID NUMBER(5,0),
  Start_Month VARCHAR2(3),
  End_Month VARCHAR2(3),
  CONSTRAINT Seasonal_Menu_Item_PK PRIMARY KEY (SMenu_Item_ID),
  CONSTRAINT Seasonal_Menu_Item_FK FOREIGN KEY (SMenu_Item_ID) REFERENCES Menu_Item(Menu_Item_ID)
);

CREATE TABLE Menu_Item_Ingredient_Pair (
  Menu_Item_ID NUMBER(5,0),
  Ingredient_ID NUMBER(5,0),
  CONSTRAINT Menu_Item_Ingredient_Pair_FK1 FOREIGN KEY (Menu_Item_ID) REFERENCES Menu_Item(Menu_Item_ID),
  CONSTRAINT Menu_Item_Ingredient_Pair_FK2 FOREIGN KEY (Ingredient_ID) REFERENCES Ingredient(Ingredient_ID)
);

CREATE TABLE Facilities (
  Facilities_ID NUMBER(5,0),
  Facility_Type VARCHAR(1) CHECK(Facility_Type IN ('D', 'K')),
  Location_ID NUMBER(5,0),
  CONSTRAINT Facilities_PK PRIMARY KEY (Facilities_ID),
  CONSTRAINT Facilities_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);

CREATE TABLE Dining_Area (
  DAFacilities_ID NUMBER(5,0),
  Amount_of_Tables NUMBER(2,0),
  Amount_of_Chairs NUMBER(3,0),
  Outside VARCHAR2(1) CHECK(Outside IN ('T', 'F')),
  CONSTRAINT Dining_Area_PK PRIMARY KEY (DAFacilities_ID),
  CONSTRAINT Dining_Area_FK FOREIGN KEY (DAFacilities_ID) REFERENCES Facilities(Facilities_ID)
);

CREATE TABLE Outside_Dining (
  ODAFacilities_ID NUMBER(5,0),
  Amount_of_Umbrellas NUMBER(2,0),
  CONSTRAINT Outside_Dining_PK PRIMARY KEY (ODAFacilities_ID),
  CONSTRAINT Outside_Dining_FK FOREIGN KEY (ODAFacilities_ID) REFERENCES Dining_Area(DAFacilities_ID)
);

CREATE TABLE Kitchen (
  KFacilities_ID NUMBER(5,0),
  CONSTRAINT Kitchen_PK PRIMARY KEY (KFacilities_ID),
  CONSTRAINT Kitchen_FK FOREIGN KEY (KFacilities_ID) REFERENCES Facilities(Facilities_ID)
);

CREATE TABLE Appliance (
  Appliance_ID NUMBER(5,0),
  KFacilities_ID NUMBER(5,0),
  Appliance_Type VARCHAR2(20),
  Appliance_Amount NUMBER(2,0),
  Supplier_ID NUMBER(5,0),
  CONSTRAINT Appliance_PK PRIMARY KEY (Appliance_ID),
  CONSTRAINT Appliance_FK1 FOREIGN KEY (KFacilities_ID) REFERENCES Kitchen(KFacilities_ID),
  CONSTRAINT Appliance_FK2 FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Competition_Metrics (
  Competition_Metrics_ID NUMBER(5,0),
  Extra_Income_Promotional NUMBER(9,2),
  Extra_Income_Renovation NUMBER(9,2),
  Extra_Cost_Promotional NUMBER(9,2),
  Extra_Cost_Renovation NUMBER(9,2),
  Location_ID NUMBER(5,2),
  CONSTRAINT Competition_Metrics_PK PRIMARY KEY (Competition_Metrics_ID),
  CONSTRAINT Competition_Metrics_FK FOREIGN KEY (Location_ID) REFERENCES Papa_Pies_Location(Location_ID)
);