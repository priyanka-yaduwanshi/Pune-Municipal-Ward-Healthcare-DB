USE punehealthcaredb;

CREATE TABLE Wards (
    Ward_No INT PRIMARY KEY,
    Ward_Name VARCHAR(50) NOT NULL,
    City_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Facilities (
    Facility_ID INT PRIMARY KEY,
    Ward_No INT NOT NULL,
    Hospital_Name VARCHAR(100) NOT NULL,
    Facility_Type VARCHAR(50),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    FOREIGN KEY (Ward_No) REFERENCES Wards(Ward_No)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Facility_ID INT NOT NULL,
    Staff_Name VARCHAR(50) NOT NULL,
    Role VARCHAR(30),
    ContactNo VARCHAR(10),
    FOREIGN KEY (Facility_ID) REFERENCES Facilities(Facility_ID)
);

CREATE TABLE Inventory (
    Item_ID INT PRIMARY KEY,
    Facility_ID INT NOT NULL,
    Item_Name VARCHAR(50),
    Quantity INT CHECK (Quantity >= 0),
    Status VARCHAR(20),
    FOREIGN KEY (Facility_ID) REFERENCES Facilities(Facility_ID)
);