--Cleansed Dim_Customer Table --
SELECT 
		c.[CustomerKey]
     -- ,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName]
      --,[MiddleName]
      ,c.[LastName]
	  ,c.[FirstName] + c.[LastName] AS [FULL Name]
      --,[NameStyle]
      --,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
      , Case c.[Gender] When 'M' Then 'Male' When 'F' Then 'Female' End As Gender
     -- ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase]
     -- ,[CommuteDistance]
	 ,g.City as [Customer City] --joined customer city from geography table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  left Join [AdventureWorksDW2019].[dbo].[DimGeography] as g ON c.GeographyKey = g.GeographyKey
  order by CustomerKey ASC --orderby customer key in ascending order