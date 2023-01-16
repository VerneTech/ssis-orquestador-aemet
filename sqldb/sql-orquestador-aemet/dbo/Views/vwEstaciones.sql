Create view dbo.vwEstaciones as
SELECT  [id]
      ,[nombre]
	  ,latitud
      ,Latitud_dec = (cast(left([latitud],2)  as numeric(18,8))
	  +cast(SUBSTRING([latitud],3,2) as numeric(10,6))/60 
	   +cast(substring(latitud,5,2) as numeric(10,6))/3600) * case when RIGHT(latitud,1)='S' then -1 else 1 end
      ,[longitud]
	  , longitud_dec= (cast(left([longitud],2)  as numeric(18,8))
	  +cast(SUBSTRING([longitud],3,2) as numeric(10,6))/60 
	   +cast(substring([longitud],5,2) as numeric(10,6))/3600) * case when RIGHT(longitud,1)='W' then -1 else 1 end
      ,[altitud]
      ,[provincia]
      ,[indsinop]
      ,[LoadDate]
  FROM [dbo].[Estaciones]