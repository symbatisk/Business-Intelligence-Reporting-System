CREATE TABLE Membership (
	  Membership_ID VARCHAR(5) PRIMARY KEY,
    Membership_Type VARCHAR(45),
    Sessions INT,
    Price decimal(10,2)
);


CREATE TABLE Client(
	  Client_ID VARCHAR(6) PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(100),
    Phone_Number VARCHAR(20),
    Email VARCHAR(100),
    Age INT,
    VIP_Status VARCHAR(10)
);

CREATE TABLE Staff (
    Staff_ID VARCHAR(6) PRIMARY KEY,    
    Name VARCHAR(100),
    National_ID VARCHAR(20),
    Address VARCHAR(100),
    Phone_Number VARCHAR(20),
    Email VARCHAR(100),
    Salary DECIMAL(10,2),
    Job_Title VARCHAR(50) 
);


CREATE TABLE  Expenses(
    Expenses_ID Varchar(6) PRIMARY KEY,
    Category VARCHAR(100),
    Description VARCHAR(200),
    Amount decimal(10,2),
    Date DATE,
    Staff_ID VARCHAR(6) NULL,
    FOREIGN KEY (Staff_ID )REFERENCES Staff(Staff_ID)
);


CREATE TABLE Income (
	Income_ID VARCHAR(6) PRIMARY KEY,
  Client_ID VARCHAR(6),
  Membership_ID VARCHAR(5),
  Date_Of_Payment DATE,
  End_Date Date,
  Staff_ID VARCHAR(6) NULL,
  FOREIGN KEY (Staff_ID )REFERENCES Staff(Staff_ID),
  FOREIGN KEY (Membership_ID) REFERENCES Membership(Membership_ID),
  FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
);