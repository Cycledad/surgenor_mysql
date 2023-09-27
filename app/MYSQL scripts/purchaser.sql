DROP TABLE IF EXISTS Purchaser;
CREATE TABLE Purchaser (
	id INTEGER NOT NULL AUTO_INCREMENT,
	username varchar(20) not null unique,
	purchaserDeptId INTEGER NOT NULL,
	purchaserActive BOOLEAN NOT NULL,    
	purchaserDateInActive date,
	purchaserDateCreated date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)
);

insert into purchaser (username, purchaserdeptid, purchaseractive, purchaserdateinactive) values('username', 1, 1, '2023-09-14');

DROP TABLE IF EXISTS ARCHIVE_Purchaser;
CREATE TABLE ARCHIVE_Purchaser (
	id INTEGER NOT NULL AUTO_INCREMENT,
	username varchar(20) not null,
	purchaserDeptId INTEGER NOT NULL,
	purchaserActive BOOLEAN NOT NULL,   
	purchaserDateInActive date,
	purchaserDateCreated date DEFAULT(now()) NOT NULL,
	dateArchived date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS PurchaseOrder;
CREATE TABLE PurchaseOrder(
id INTEGER NOT NULL AUTO_INCREMENT,
purchaseOrderDate date DEFAULT(now()) NOT NULL,
purchaseOrderReceivedDate date,
purchaseOrderActive BOOLEAN DEFAULT(1) NOT NULL,
purchaseOrderDateDeleted date,
purchaseOrderNbr INTEGER NOT NULL,
purchaseOrderPurchaserId INTEGER NOT NULL,
purchaseOrderPurchaserDeptId INTEGER NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO PurchaseOrder(purchaseOrderDate, purchaseOrderReceivedDate, purchaseOrderActive, purchaseOrderNbr, purchaseOrderPurchaserId,purchaseOrderPurchaserDeptId)
values('2023-10-01', '2023-11-29', 0, 1,1,1);

DROP TABLE IF EXISTS ARCHIVE_PurchaseOrder;
CREATE TABLE ARCHIVE_PurchaseOrder(
id INTEGER NOT NULL AUTO_INCREMENT,
purchaseOrderDate date DEFAULT(now()) NOT NULL,
dateArchived date DEFAULT(now()) NOT NULL,
purchaseOrderReceivedDate date,
purchaseOrderActive BOOLEAN DEFAULT(1) NOT NULL,
purchaseOrderDateDeleted date,
purchaseOrderNbr INTEGER NOT NULL,
purchaseOrderPurchaserId INTEGER NOT NULL,
purchaseOrderPurchaserDeptId INTEGER NOT NULL,
PRIMARY KEY(id)
);

DROP TABLE IF EXISTS ARCHIVE_OrderTbl;
CREATE TABLE ARCHIVE_OrderTbl (
	id INTEGER NOT NULL AUTO_INCREMENT,
	OrderNbr INTEGER NOT NULL,
	OrderSupplierId INTEGER NOT NULL,
	deptName varchar(100) NOT NULL,
	OrderPartDesc varchar(100) NOT NULL,
	OrderQuantity INTEGER NOT NULL,
	OrderPartPrice REAL DEFAULT(0.0) NOT NULL,
	OrderReceivedDate date,
	OrderReceivedBy varchar(100),
	OrderReturnDate date,
	OrderReturnQuantity INTEGER,
	PO varchar(100),
	OrderUsername varchar(20) NOT NULL,
	OrderActive BOOLEAN DEFAULT(1) NOT NULL,
	dateArchived date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)
    );
    
DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
	id INTEGER NOT NULL AUTO_INCREMENT,
	supplierName varchar(100) NOT NULL,	
	supplierProv varchar(25) NOT NULL,
	supplierActive BOOLEAN NOT NULL,    /* boolean */
	supplierDateCreated date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)	
    );
    
DROP TABLE IF EXISTS ARCHIVE_Supplier;
CREATE TABLE ARCHIVE_Supplier (
	id INTEGER NOT NULL AUTO_INCREMENT,
	supplierName varchar(100) NOT NULL,
	supplierProv varchar(25) NOT NULL,
	supplierActive BOOLEAN NOT NULL,    /* boolean */
	supplierDateCreated date DEFAULT(now()) NOT NULL,
	dateArchived date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)
    );    
    
DROP TABLE IF EXISTS OrderNbrTbl;
CREATE TABLE OrderNbrTbl (
	orderNbr INTEGER NOT NULL unique
);    

drop table if exists Department;
CREATE TABLE Department (
	id	INTEGER AUTO_INCREMENT,
	deptName varchar(100) NOT NULL UNIQUE,
	dateCreated	date DEFAULT(now()) NOT NULL,
	active BOOLEAN NOT NULL,    /* boolean */
	dateInActive date,
	PRIMARY KEY(id)
);

drop table if exists ARCHIVE_Department;
CREATE TABLE ARCHIVE_Department (
	id	INTEGER AUTO_INCREMENT,
	deptName varchar(100) NOT NULL,
	dateCreated	date DEFAULT(now()) NOT NULL,
	dateArchived date DEFAULT(now()) NOT NULL,
	active BOOLEAN NOT NULL,    /* boolean */
	dateInActive date,
	PRIMARY KEY(id)
);

drop table if exists User;
CREATE TABLE User (
	id	INTEGER AUTO_INCREMENT,
	givenName   varchar(25) NOT NULL,
	surname     varchar(50) NOT NULL,
	username	varchar(20) NOT NULL UNIQUE,
	password	varchar(250) NOT NULL UNIQUE,
	createDate	date DEFAULT(now()) NOT NULL,
	active	BOOLEAN DEFAULT(1) NOT NULL, /* boolean */
	dateInActive date,
	securityLevel INTEGER,
	PRIMARY KEY(id)
    );

insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('admin', '$2b$12$QFMmOK4vmBjhXUcPYjUATe7bxuiFCmBUG2xvc8mpLqM8T8wr9piFm', 'admin', 'admin', now(), 1, 5);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('kevin', '$2b$12$QvBCaPauAgQsJEEhBv8lSusozWKYlDRr.SBjHLLqaWNUMZ7sH2c.W', 'Kevin', 'Davis', now(), 1, 5);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('JesseyGB', '$2b$12$HOD9pOgXvghsww3n4q07..fvbpTjwCD2xW66BG.SMczbq6SOlZZgu', 'Jessey', 'Gromoll-Branchaud', now(), 1, 5);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('AlainC', '$2b$12$yHpt2OwHMl9BQumcxa0jz.7kJ6ojSkMHT3snTr4weWgvRpUxkMJMK', 'ALAIN', 'CHARETTE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('ClaudiaD', '$2b$12$PZp3wbXsiOjHfMTL9FAdZ.MX1n4vqYSxdmn//fvwp9ll5q7dpC32G', 'CLAUDIA', 'DUSHIME', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('RonBergeron', '$2b$12$X/UJEmoblfmu/BudPl7kJ.vkdKsBGPChrG1pClCvU..Qe2NUS7vOi', 'RON', 'BERGERON', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('DavidB', '$2b$12$1sYOJLhZoQk7Voh9C6a4BOyEyIxFFF3rOdgpxpxzFtHCX9iVuuXBa', 'DAVID', 'BOISSELY', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('EricD', '$2b$12$46ckdTUHTio2FlUw8hfJbeVDfYEOZgs2ymptNB/x5ZxR7I55r44Cy', 'ERIC', 'DAGENAIS', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('GabrielI', '$2b$12$tgWNSbMqX/w2FolAdvZKcuFtZMbmiakb0nqT9ZPPtkJdYsPGlx7BG', 'GABRIEL', 'IONETE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('ChristineK', '$2b$12$IE0Jf1gudM2WVZQii4zw9OJNSljIc9RldaA3sgHXhxQ/nFzX2pDLe', 'CHRISTINE', 'KNIGHT', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('LiseL', '$2b$12$rTXuZZJ.jf5DiEyKm8o51ed0VbyNYJObnfGPlL6iYrKlUF6I3MFDq', 'LISE', 'LEDUC', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('StephaneR', '$2b$12$KQiPeEF06tdvrBL6ybhGJe7tDoxFrzyLxQMtSxi5X6HFI6lfd3UzW', 'STEPHANE', 'ROBITAILLE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('JuniorV', '$2b$12$aY6mhe5Xz7fNng.Uc0aHFuKvq2zDvfmjGTXrVEoTl547xERBJma1C', 'JEAN-MARC (JUNIOR)', 'VALLIERES', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('NicholasC', '$2b$12$lSBJK861h2ZwZ.zGpJK4Uurt8p3zcSJI/929r9RZZeuQABHmUdKNe', 'NICHOLAS', 'CHARTRAND', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('DanielS', '$2b$12$t7KLgUs3kLyrHpykzn58ZODtAwJqYtYqKkZZBDRzgyfHsm3DDxQS6', 'DANIEL', 'SAVOIE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('FrancisC', '$2b$12$GsgpFJxgcWyQxP.YNzCKG.L1QPTBKwaLIUy4lodM6zkymE6v18eo.', 'FRANCIS', 'CHARBONNEAU', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('SimonL', '$2b$12$xpnG74u5kahNrHu6449wu.q3uBDz15VGbik0hoBed4zRCtzouOYj2', 'SIMON', 'LANDREVILLE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('BeryM', '$2b$12$zas2tthe5FQ8sY1EMnr4BOHwvthVpIK6B/t1A4e.8kj66gx2mT5WK', 'BERY', 'MEDIKA', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('MartinL', '$2b$12$zbaagiBSdDyjAJ3CSacg1e0LzcL6SJBonli5W7l94.SagV1wNq6By', 'MARTIN', 'LEGARE', now(), 1, 0);
insert into user (username, password, givenName, surname, createDate, active, securityLevel) values('BenjaminB', '$2b$12$HX9oxlh6Qdvprm/PQffl.eLSrrDI.0qTam0.sEfWuB9O5oyqB6Sz2', 'BENJAMIN', 'BONIN', now(), 1, 0);

drop table if exists ARCHIVE_User;
CREATE TABLE ARCHIVE_User (
	id	INTEGER AUTO_INCREMENT,
	givenName   varchar(25) NOT NULL,
	surname     varchar(50) NOT NULL,
	username	varchar(20) NOT NULL,
	password	varchar(250) NOT NULL,
	createDate	date DEFAULT(now()) NOT NULL,
	dateArchived date DEFAULT(now()) NOT NULL,
	active	BOOLEAN DEFAULT(1) NOT NULL, /* boolean */
	dateInActive date,
	securityLevel INTEGER,
	PRIMARY KEY(id)
    );
    
drop table if exists ProvincialTaxRates;
CREATE TABLE ProvincialTaxRates (
	id	INTEGER AUTO_INCREMENT,
	provincialCode varchar(02) NOT NULL UNIQUE,
	taxRate	float NOT NULL,
	label varchar(30) NOT NULL,
	active BOOLEAN DEFAULT(1) NOT NULL,    /* boolean */
	PRIMARY KEY(id)
);    

insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('QC', 14.975, 'Sales tax rate (PST+QST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('ON', 13, 'Sales tax rate (HST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('AB', 5, 'Sales tax rate (GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('BC', 12, 'Sales tax rate (PST+GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('MB', 12, 'Sales tax rate (PST+GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('NB', 15, 'Sales tax rate (HST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('NL', 15, 'Sales tax rate (HST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('NT', 5, 'Sales tax rate (GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('NS', 15, 'Sales tax rate (HST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('NU', 5, 'Sales tax rate (GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('PE', 15, 'Sales tax rate (HST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('SK', 11, 'Sales tax rate (PST+GST) %', 1);
insert into ProvincialTaxRates(provincialCode, taxRate, label, active) values('YK', 5, 'Sales tax rate (GST) %', 1);

drop table if exists ARCHIVE_ProvincialTaxRates;
CREATE TABLE ARCHIVE_ProvincialTaxRates (
	id	INTEGER AUTO_INCREMENT,
	provincialCode varchar(02) NOT NULL,
	taxRate	float NOT NULL,
	label varchar(30) NOT NULL,
	active BOOLEAN DEFAULT(1) NOT NULL,    /* boolean */
    dateArchived date DEFAULT(now()) NOT NULL,
	PRIMARY KEY(id)
);

DROP TABLE IF EXISTS OrderTbl;
CREATE TABLE OrderTbl (
	id INTEGER NOT NULL AUTO_INCREMENT,
	OrderNbr INTEGER NOT NULL,
	OrderSupplierId INTEGER NOT NULL,
	deptName varchar(100) NOT NULL,
	OrderPartDesc varchar(100) NOT NULL,
	OrderQuantity INTEGER NOT NULL,
	OrderPartPrice REAL DEFAULT(0.0) NOT NULL,
	OrderReceivedDate date,
	OrderReceivedBy varchar(100),
	OrderReturnDate date,
	OrderReturnQuantity INTEGER,
	PO varchar(100),
	OrderUsername varchar(100) NOT NULL,
	OrderActive BOOLEAN DEFAULT(1) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(OrderSupplierId) REFERENCES Supplier (id),
	FOREIGN KEY(OrderNbr) REFERENCES purchaseOrder (purchaseOrderNbr)	
);