CREATE DATABASE Concerts;
GO


USE Concerts

CREATE TABLE Shows
(
S_Id int NOT NULL PRIMARY KEY,
Band varchar(255),
City varchar(255),
Venue varchar(255),
StartTime datetime,
);




CREATE TABLE Tickets
(
S_Id int FOREIGN KEY REFERENCES Shows(S_Id),
T_Id int NOT NULL PRIMARY KEY,
Price numeric(10,5)
);


CREATE TABLE Customers
(
C_Id int NOT NULL PRIMARY KEY,
T_Id int FOREIGN KEY REFERENCES Tickets(T_Id),
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);


Select 'Database Created'

Select 'Inserting Data'
USE [Concerts]
GO

INSERT INTO [dbo].[Shows]
           ([S_Id]
           ,[Band]
           ,[City]
           ,[Venue]
           ,[StartTime])
     VALUES
           (1
           ,'Coldplay'
           ,'London'
           ,'O2'
           ,GETDATE())
GO

INSERT INTO [dbo].[Shows]
           ([S_Id]
           ,[Band]
           ,[City]
           ,[Venue]
           ,[StartTime])
     VALUES
           (2
           ,'Coldplay'
           ,'London'
           ,'O2'
           ,GETDATE()+5)
GO

INSERT INTO [dbo].[Shows]
           ([S_Id]
           ,[Band]
           ,[City]
           ,[Venue]
           ,[StartTime])
     VALUES
           (3
           ,'Coldplay'
           ,'London'
           ,'O2'
           ,GETDATE()+10)
GO


INSERT INTO [dbo].[Tickets]
           ([S_Id]
           ,[T_Id]
           ,[Price])
     VALUES
           (1
           ,1
           ,90.50
           )
GO

INSERT INTO [dbo].[Tickets]
           ([S_Id]
           ,[T_Id]
           ,[Price])
     VALUES
           (1
           ,2
           ,19.50
           )
GO

INSERT INTO [dbo].[Tickets]
           ([S_Id]
           ,[T_Id]
           ,[Price])
     VALUES
           (1
           ,3
           ,9.50
           )
GO

INSERT INTO [dbo].[Tickets]
           ([S_Id]
           ,[T_Id]
           ,[Price])
     VALUES
           (2
           ,4
           ,9.50
           )
GO

INSERT INTO [dbo].[Customers]
           ([C_Id]
            ,[T_Id]
            ,LastName 
            ,FirstName 
            ,Address 
            ,City )
     VALUES
           (1
           ,1
           ,'one'
           ,'user'
           ,'london'
           ,'london')
GO

INSERT INTO [dbo].[Customers]
           ([C_Id]
            ,[T_Id]
            ,LastName 
            ,FirstName 
            ,Address 
            ,City )
     VALUES
           (2
           ,2
           ,'two'
           ,'user'
           ,'london'
           ,'london')
GO

INSERT INTO [dbo].[Customers]
           ([C_Id]
            ,[T_Id]
            ,LastName 
            ,FirstName 
            ,Address 
            ,City )
     VALUES
           (3
           ,4
           ,'three'
           ,'user'
           ,'london'
           ,'london')
GO