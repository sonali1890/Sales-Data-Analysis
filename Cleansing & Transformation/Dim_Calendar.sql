-- Cleansed DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  -- ,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] As Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year 
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  CalendarYear >= 2020