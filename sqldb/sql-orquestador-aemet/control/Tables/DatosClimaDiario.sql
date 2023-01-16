CREATE TABLE [control].[DatosClimaDiario] (
    [Id]                      INT           NOT NULL,
    [id_estacion]             VARCHAR (50)  NULL,
    [Fecha_ini]               DATETIME      NULL,
    [Fecha_fin]               DATETIME      NULL,
    [access-message]          VARCHAR (255) NULL,
    [access-status]           INT           NULL,
    [ResponseURI-access]      VARCHAR (510) NULL,
    [ResponseURI-data]        VARCHAR (510) NULL,
    [remaining-request-count] INT           NULL,
    [request-date-time]       DATETIME      NULL,
    [aemet-message]           VARCHAR (255) NULL,
    [aemet-num]               INT           NULL,
    [aemet-estado]            VARCHAR (50)  NULL,
    [server]                  VARCHAR (50)  NULL,
    [LoadDate]                DATETIME      CONSTRAINT [DF__DatosClim__LoadD__2E1BDC42] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_DatosClimaDiario_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

