CREATE TABLE [dbo].[Municipios] (
    [id]            VARCHAR (50)    NOT NULL,
    [id_old]        INT             NULL,
    [nombre]        VARCHAR (255)   NULL,
    [capital]       VARCHAR (255)   NULL,
    [latitud]       NUMERIC (12, 8) NULL,
    [longitud]      NUMERIC (12, 8) NULL,
    [altitud]       INT             NULL,
    [habitantes]    INT             NULL,
    [zona_comarcal] INT             NULL,
    [LoadDate]      DATETIME        CONSTRAINT [DF_Municipios_LoadDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED ([id] ASC)
);

