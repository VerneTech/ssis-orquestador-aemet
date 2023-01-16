CREATE TABLE [dbo].[Estaciones] (
    [id]        VARCHAR (50) NULL,
    [nombre]    VARCHAR (50) NULL,
    [latitud]   VARCHAR (50) NULL,
    [longitud]  VARCHAR (50) NULL,
    [altitud]   VARCHAR (50) NULL,
    [provincia] VARCHAR (50) NULL,
    [indsinop]  VARCHAR (50) NULL,
    [LoadDate]  DATETIME     DEFAULT (getdate()) NOT NULL
);

