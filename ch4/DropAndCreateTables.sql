DROP PROCEDURE IF EXISTS dbo.DropAndCreateTables 
GO 

CREATE PROCEDURE dbo.DropAndCreateTables 
    @Schema varchar(5)  
AS
    BEGIN 
    DECLARE @SQL varchar(4000) 
    IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'stage') 
    EXEC ('CREATE SCHEMA [stage]')

    SET @SQL = 'DROP TABLE IF EXISTS [' + @Schema + '].[DimCity]; 
    CREATE TABLE [' + @Schema + '].[DimCity]( 
    [CityKey] [int] NOT NULL, 
    [WWICityID] [int] NOT NULL, 
    [City] [varchar](50) NOT NULL, 
    [StateProvince] [varchar](50) NOT NULL, 
    [Country] [varchar](60) NOT NULL, 
    [Continent] [varchar](30) NOT NULL, 
    [SalesTerritory] [varchar](50) NOT NULL, 
    [Region] [varchar](30) NOT NULL, 
    [Subregion] [varchar](30) NOT NULL, 
    [Location] [varchar](50) NULL, 
    [LatestRecordedPopulation] [bigint] NOT NULL, 
    [ValidFrom] [datetime2](6) NOT NULL, 
    [ValidTo] [datetime2](6) NOT NULL, 
    [LineageKey] [int] NOT NULL); 
    
    DROP TABLE IF EXISTS [' + @Schema + '].[FactSale]; 

    CREATE TABLE [' + @Schema + '].[FactSale]( 
        [SaleKey] [bigint] NOT NULL, 
        [CityKey] [int] NOT NULL, 
        [CustomerKey] [int] NOT NULL, 
        [BillToCustomerKey] [int] NOT NULL, 
        [StockItemKey] [int] NOT NULL, 
        [InvoiceDateKey] [date] NOT NULL, 
        [DeliveryDateKey] [date] NULL, 
        [SalespersonKey] [int] NOT NULL, 
        [WWIInvoiceID] [int] NOT NULL, 
        [Description] [varchar](8000) NOT NULL, 
        [Package] [varchar](50) NOT NULL, 
        [Quantity] [int] NOT NULL, 
        [UnitPrice] [decimal](18, 2) NOT NULL, 
        [TaxRate] [decimal](18, 3) NOT NULL, 
        [TotalExcludingTax] [decimal](18, 2) NOT NULL, 
        [TaxAmount] [decimal](18, 2) NOT NULL, 
        [Profit] [decimal](18, 2) NOT NULL, 
        [TotalIncludingTax] [decimal](18, 2) NOT NULL, 
        [TotalDryItems] [int] NOT NULL, 
        [TotalChillerItems] [int] NOT NULL, 
        [LineageKey] [int] NOT NULL); 
    DROP TABLE IF EXISTS [' + @Schema + '].[DimDate]; 
    CREATE TABLE [' + @Schema + '].[DimDate]( 
        [Date] [date] NOT NULL, 
        [DayNumber] [int] NOT NULL, 
        [Day] [varchar](10) NOT NULL, 
        [Month] [varchar](10) NOT NULL, 
        [ShortMonth] [varchar](3) NOT NULL, 
        [CalendarMonthNumber] [int] NOT NULL, 
        [CalendarMonthLabel] [varchar](20) NOT NULL, 
        [CalendarYear] [int] NOT NULL, 
        [CalendarYearLabel] [varchar](10) NOT NULL, 
        [FiscalMonthNumber] [int] NOT NULL, 
        [FiscalMonthLabel] [varchar](20) NOT NULL, 
        [FiscalYear] [int] NOT NULL, 
        [FiscalYearLabel] [varchar](10) NOT NULL, 
        [ISOWeekNumber] [int] NOT NULL);' 
    EXEC (@SQL) 
END 
GO 
  
EXEC dbo.DropAndCreateTables @Schema = 'stage' 
EXEC dbo.DropAndCreateTables @Schema = 'dbo' 
GO 
