﻿CREATE TABLE Customer
(
	Id NUMBER GENERATED ALWAYS AS IDENTITY,
	Name NVARCHAR2(255) NOT NULL,
	Surname NVARCHAR2(255) NOT NULL,
	DocumentId NVARCHAR2(255) NOT NULL UNIQUE,
	RentalId NUMBER NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(RentalId) REFERENCES Rental(Id)
);
