--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table CITY */

DROP TABLE IF EXISTS [DBO].[CITY];
CREATE TABLE [dbo].[CITY](
	[ID] [int] NOT NULL
	, [NAME] [varchar](17) NOT NULL
	, [COUNTRYCODE] [varchar](3) NOT NULL
	, [DISTRICT] [varchar](20) NOT NULL
	, [POPULATION] [int] NOT NULL
) ON [PRIMARY]
GO


INSERT INTO [DBO].[CITY] ([ID], [NAME], [COUNTRYCODE], [DISTRICT], [POPULATION])
VALUES
	(6, 'Rotterdam', 'NLD', 'Zuid-Holland', 593321)
	, (3878, 'Scottsdale', 'USA', 'Arizona', 202705)
	, (3965, 'Corona', 'USA', 'California', 124966)
	, (3973, 'Concord', 'USA', 'California', 121780)
	, (3977, 'Cedar Rapids', 'USA', 'Iowa', 120758)
	, (3982, 'Coral Springs', 'USA', 'Florida', 117549)
	, (4054, 'Fairfield', 'USA', 'California', 92256)
	, (4058, 'Boulder', 'USA', 'Colorado', 91238)
	, (4061, 'Fall River', 'USA', 'Massachusetts', 90555)


--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P1- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. */

SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';


--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P2- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. */

SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P3 - Query all columns (attributes) for every row in the CITY table. */

SELECT * FROM CITY