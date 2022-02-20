/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode	
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,ps.EnglishProductSubcategoryName as [Sub Category] --Joined in from subcategory Table
	  , pc.EnglishProductCategoryName as [Product Category] --Joined in from category Table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as [Product Model Name]
      --,[LargePhoto]
      ,p.[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
     -- ,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (p.[Status],'Outdated') As [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left Join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  left Join [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  order by p.ProductKey asc