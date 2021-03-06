CREATE DATABASE Taxi
COLLATE Cyrillic_General_CI_AS
GO

USE Taxi
GO

CREATE TABLE dbo.Cars (
  id int IDENTITY(1, 1) NOT NULL,
  model nchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
  madein date NOT NULL,
  reg_number nchar(12) COLLATE Cyrillic_General_CI_AS NOT NULL,
  color nchar(15) COLLATE Cyrillic_General_CI_AS NOT NULL,
  CONSTRAINT Cars_pk PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

CREATE TABLE dbo.Drivers (
  id int IDENTITY(1, 1) NOT NULL,
  first_name nvarchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
  second_name nvarchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
  family_name nvarchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
  birth_date date NOT NULL,
  address nvarchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
  startdate date NOT NULL,
  CONSTRAINT Drivers_pk PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO

CREATE TABLE dbo.Trips (
  id int IDENTITY(1, 1) NOT NULL,
  car_id int NOT NULL,
  driver_id int NOT NULL,
  start_date datetime NOT NULL,
  end_date datetime NOT NULL,
  CONSTRAINT Trips_pk PRIMARY KEY CLUSTERED (id)
    WITH (
      PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF,
      ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
ON [PRIMARY]
GO


SET IDENTITY_INSERT dbo.Cars ON
GO

INSERT INTO dbo.Cars (id, model, madein, reg_number, color)
VALUES
  (1, N'Volga', '20180101', N'A786YC78', N'white')
GO

INSERT INTO dbo.Cars (id, model, madein, reg_number, color)
VALUES
  (2, N'Lada', '20190101', N'A788YC78', N'yellow')
GO

INSERT INTO dbo.Cars (id, model, madein, reg_number, color)
VALUES
  (3, N'Volkswagen', '20200101', N'A789YC78', N'red')
GO

INSERT INTO dbo.Cars (id, model, madein, reg_number, color)
VALUES
  (4, N'Renault', '20170101', N'A790YC78', N'black')
GO

SET IDENTITY_INSERT dbo.Cars OFF
GO


SET IDENTITY_INSERT dbo.Drivers ON
GO

INSERT INTO dbo.Drivers (id, first_name, second_name, family_name, birth_date, address, startdate)
VALUES
  (1, N'Василий', N'Петрович', N'Николаев', '19850524', N'Ленинский проспект д.10 кв.16', '20160208')
GO

INSERT INTO dbo.Drivers (id, first_name, second_name, family_name, birth_date, address, startdate)
VALUES
  (2, N'Иван', N'Денисович', N'Бабушкин', '19900115', N'Ленинградский проспект д.21 кв.46', '20170208')
GO

INSERT INTO dbo.Drivers (id, first_name, second_name, family_name, birth_date, address, startdate)
VALUES
  (3, N'Игорь', N'Владимирович', N'Петров', '19920825', N'Советская улица д.32 кв.52', '20180208')
GO

INSERT INTO dbo.Drivers (id, first_name, second_name, family_name, birth_date, address, startdate)
VALUES
  (4, N'Сергей', N'Михайлович', N'Иванов', '19950825', N'Комсомольский проспект д.17 кв.64', '20170208')
GO

SET IDENTITY_INSERT dbo.Drivers OFF
GO


SET IDENTITY_INSERT dbo.Trips ON
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (1, 1, 1, '20210110 09:00:00', '20210110 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (2, 2, 2, '20210110 09:00:00', '20210110 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (3, 3, 3, '20210110 09:00:00', '20210110 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (4, 4, 4, '20210110 09:00:00', '20210110 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (5, 1, 4, '20210111 09:00:00', '20210111 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (6, 2, 3, '20210111 09:00:00', '20210111 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (7, 3, 2, '20210111 09:00:00', '20210111 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (8, 4, 1, '20210111 09:00:00', '20210111 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (9, 1, 2, '20210112 09:00:00', '20210112 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (10, 2, 3, '20210112 09:00:00', '20210112 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (11, 3, 4, '20210112 09:00:00', '20210112 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (12, 4, 1, '20210112 09:00:00', '20210112 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (21, 1, 3, '20210113 09:00:00', '20210113 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (22, 2, 4, '20210113 09:00:00', '20210113 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (23, 3, 1, '20210113 09:00:00', '20210113 18:00:00')
GO

INSERT INTO dbo.Trips (id, car_id, driver_id, start_date, end_date)
VALUES
  (24, 4, 2, '20210113 09:00:00', '20210113 18:00:00')
GO

SET IDENTITY_INSERT dbo.Trips OFF
GO


ALTER TABLE dbo.Trips
ADD CONSTRAINT Trips_fk FOREIGN KEY (car_id)
  REFERENCES dbo.Cars (id)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE dbo.Trips
ADD CONSTRAINT Trips_fk2 FOREIGN KEY (driver_id)
  REFERENCES dbo.Drivers (id)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

