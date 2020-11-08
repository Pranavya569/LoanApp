
DROP DATATBASE if exists loanApp;
CREATE DATABASE loanApp;

Use loanApp;


CREATE TABLE User(
    uname varchar(20) unique not null primary key,
    pword varchar(20) not null,
    role varchar(20) not null
);

Insert into User values
    ("admin","admin","Admin"),
    ("Anu","anu123","User");
    

CREATE TABLE LoanInfo(
loanAppNum int AUTO_INCREMENT PRIMARY KEY,
loanName varchar(30) NOT NULL,
loanAmt int NOT NULL,
loanAppDate date NOT NULL,
businessStructure varchar(30) NOT NULL,
billingIndicator varchar(30) NOT NULL,
taxIndicator varchar(30) NOT NULL,
address varchar(255) NOT NULL,
email varchar(255) NOT NULL,
mobile int(10) NOT NULL,
status varchar(30)
);


CREATE TABLE LoanApproved(
loanAmtSanctioned int NOT NULL,
loanTerm varchar(30) NOT NULL,
payStartDate date NOT NULL,
loanClosureDate date NOT null,
interestRate int NOT NULL,
emi int NOT NULL,
loanAppNum int not null references LoanApplication(loanAppNum),
CONSTRAINT LoanSanctioned_ibfk_1 FOREIGN KEY (loanAppNum) references LoanApplication(loanAppNum) 
);
ALTER TABLE LoanApplication AUTO_INCREMENT = 100;

