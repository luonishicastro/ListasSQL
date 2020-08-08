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
	, (1661, 'Sayama', 'JPN', 'Saitama', 162472)
	, (1613, 'Neyagawa', 'JPN', 'Osaka', 257315)
	, (1630, 'Ageo', 'JPN', 'Saitama', 209442)
	, (1681, 'Omuta', 'JPN', 'Fukuoka', 142889)
	, (1739, 'Tokuyama', 'JPN', 'Yamaguchi', 107078)
	
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P1- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. */

SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P2- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. */

SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P3 - Query all columns (attributes) for every row in the CITY table. */

SELECT * FROM CITY

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P4 - Query all columns for a city in CITY with the ID 1661. */

SELECT * FROM CITY WHERE ID = 1661;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P5 - Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. */

SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P6 - Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. */

SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table STATION */

DROP TABLE IF EXISTS [DBO].[STATION];
CREATE TABLE [DBO].[STATION] (
	[ID][int] NOT NULL
	, [CITY][varchar](21) NOT NULL
	, [STATE][varchar](2) NOT NULL
	, [LAT_N][decimal](15, 10) NOT NULL
	, [LONG_W][decimal](15, 10) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [DBO].[STATION] ([ID], [CITY], [STATE], [LAT_N], [LONG_W])
VALUES
	(794, 'Kissee Mills', 'MO', 139.6503652000, 73.4160988400)
	, (824, 'Loma Mar', 'CA', 48.6978857200, 130.5393541000)
	, (603, 'Sandy Hook', 'CT', 72.3374801400, 148.2400769000)
	, (478, 'Tipton', 'IN', 33.5479270100, 97.9428603600)
	, (619, 'Arlington', 'CO', 75.1799307900, 92.9461589400)
	, (711, 'Turner', 'AR', 50.2438053400, 101.4580163000)
	, (839, 'Slidell', 'LA', 85.3227030400, 151.8743276000)
	, (411, 'Negreet', 'LA', 98.9707194000, 105.3376115000)
	, (588, 'Glencoe', 'KY', 46.3873924400, 136.0427027000)
	, (665, 'Chelsea', 'IA', 98.7221093700, 59.6891300200)
	, (342, 'Chignik Lagoon', 'AK', 103.1995264000, 153.0084273000)
	, (733, 'Pelahatchie', 'MS', 38.5816159500, 28.1195070300)
	, (441, 'Hanna City', 'IL', 50.9893298700, 136.7811010000)
	, (811, 'Dorrance', 'KS', 102.0888316000, 121.5614372000)
	, (698, 'Albany', 'CA', 49.7511276500, 80.2121131700)
	, (325, 'Monument', 'KS', 70.5230095300, 141.7680413000)
	, (414, 'Manchester', 'MD', 73.5158072400, 37.1460286900)
	, (113, 'Prescott', 'IA', 39.9323442100, 65.7932782300)
	, (971, 'Graettinger', 'IA', 94.6628366500, 150.3826243000)
	, (266, 'Cahone', 'CO', 116.2321963000, 127.0095540000)
	, (650, 'Clancy', 'MT', 45.8299685400, 164.3786750000)
	, (791, 'Scotts Valley', 'CA', 119.9347043000, 90.9520199600)
	, (324, 'Norwood', 'MN', 144.4891504000, 34.8852933600)
	, (442, 'Elkton', 'MD', 103.2547878000, 156.7289171000)
	, (633, 'Bertha', 'MN', 39.9488902800, 105.3111577000)
	, (109, 'Bridgeport', 'MI', 50.6898811900, 79.9013785900)
	, (780, 'Cherry', 'IL', 68.2970846700, 46.7038350600)
	, (492, 'Regina', 'KY', 131.5515912000, 90.2382629100)
	, (965, 'Griffin', 'GA', 38.7414690400, 151.7182093000)
	, (778, 'Pine Bluff', 'AR', 60.4100168700, 145.7882763000)
	, (337, 'Mascotte', 'FL', 121.4608708000, 146.1675503000)
	, (259, 'Baldwin', 'MD', 81.7357216500, 40.4397386000)
	, (955, 'Netawaka', 'KS', 109.2057274000, 119.7404946000)
	, (752, 'East Irvine', 'CA', 106.2316586000, 115.2528621000)
	, (886, 'Pony', 'MT', 99.2583129200, 162.8777336000)
	, (200, 'Franklin', 'LA', 82.2406279400, 31.7787272500)
	, (384, 'Amo', 'IN', 103.5871398000, 159.4306474000)
	, (518, 'Vulcan', 'MO', 108.6087788000, 91.5613894400)
	, (188, 'Prairie Du Rocher', 'IL', 75.5769226400, 70.7057988100)
	, (161, 'Alanson', 'MI', 90.6531996000, 72.1195229700)
	, (486, 'Delta', 'LA', 136.5385281000, 49.7308676600)
	, (406, 'Carver', 'MN', 45.8925110400, 122.0696810000)
	, (940, 'Paron', 'AR', 59.1383428700, 104.3412062000)
	, (237, 'Winchester', 'ID', 38.3703344300, 80.0549859000)
	, (465, 'Jerome', 'AZ', 121.7110583000, 34.4061039700)
	, (591, 'Baton Rouge', 'LA', 129.8353108000, 71.7507484800)
	, (570, 'Greenview', 'CA', 80.5000041200, 57.5880040400)
	, (429, 'Lucerne Valley', 'CA', 35.6176342900, 48.4057460100)
	, (278, 'Cromwell', 'MN', 128.8462234000, 53.5125406100)
	, (927, 'Quinter', 'KS', 59.5825700400, 25.3613215200)
	, (59, 'Whitewater', 'MO', 82.7180974300, 71.4260769600)
	, (21, 'Round Pond', 'ME', 127.4428771000, 124.0040106000)
	, (29, 'Clarkdale', 'AZ', 58.1941729700, 73.9478993800)
	, (66, 'Rockton', 'IL', 116.1223935000, 86.8383300400)
	, (68, 'Pheba', 'MS', 90.9456098800, 127.3003694000)
	, (77, 'Eleele', 'HI', 80.9097123600, 152.5215045000)
	, (52, 'Auburn', 'IA', 95.4892694900, 137.0748386000)
	, (10, 'North Berwick', 'ME', 70.8337171900, 27.3200413500)
	, (19, 'Oconee', 'GA', 92.5622072200, 119.4774310000)
	, (23, 'Grandville', 'MI', 38.8525623900, 70.1377628900)
	, (40, 'Susanville', 'CA', 128.2498724000, 80.3167947500)
	, (27, 'Rosie', 'AR', 72.7589687500, 161.9173483000)

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P1 - Query a list of CITY and STATE from the STATION table. */

SELECT [CITY], [STATE] FROM [STATION];

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P2 - Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. */

SELECT DISTINCT CITY FROM [STATION] WHERE ID % 2 = 0;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P3 - Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. */

SELECT COUNT(1)-COUNT(DISTINCT(CITY)) FROM [STATION];

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P4 - Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. */

; WITH CITY_LENS AS (
	SELECT CITY, (LEN(CITY)) AS [LEN] FROM [STATION]
	GROUP BY CITY
), MAX_CITY_LEN AS (
	SELECT TOP 1 * FROM CITY_LENS
	ORDER BY [LEN] DESC
), MIN_CITY_LEN AS (
	SELECT TOP 1 * FROM CITY_LENS
	ORDER BY [LEN] ASC
) SELECT * FROM MIN_CITY_LEN UNION ALL SELECT * FROM MAX_CITY_LEN;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P5 - Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. */

SELECT CITY FROM [STATION] WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P6 - Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM [STATION] WHERE LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P7 - */