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
/* P7 - Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM [STATION]
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u') AND LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P8 - Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates. */ -- (MS SQL SERVER)

SELECT DISTINCT CITY FROM [STATION]
WHERE LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P9 - Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM [STATION]
WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P10 - Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM [STATION]
WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') OR LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P11 - Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM [STATION]
WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') AND LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table STUDENTS */

DROP TABLE IF EXISTS [dbo].[STUDENTS];
CREATE TABLE [dbo].[STUDENTS] (
	[ID][int] NOT NULL
	, [NAME][varchar](10) NOT NULL
	, [MARKS][int] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[STUDENTS] ([ID], [NAME], [MARKS]) VALUES
	(19, 'Samantha', 87)
	, (21, 'Julia', 96)
	, (11, 'Britney', 95)
	, (32, 'Kristeen', 100)
	, (12, 'Dyana', 55)
	, (13, 'Jenny', 66)
	, (14, 'Christene', 88)
	, (15, 'Meera', 24)
	, (16, 'Priya', 76)
	, (17, 'Priyanka', 77)
	, (18, 'Paige', 74)
	, (19, 'Jane', 64)
	, (21, 'Belvet', 78)
	, (31, 'Scarlet', 80)
	, (41, 'Salma', 81)
	, (51, 'Amanda', 34)
	, (61, 'Heraldo', 94)
	, (71, 'Stuart', 99)
	, (81, 'Aamina', 77)
	, (76, 'Amina', 89)
	, (91, 'Vivek', 84)
	, (17, 'Evil', 79)
	, (16, 'Devil', 76)
	, (34, 'Fanny', 75)
	, (38, 'Danny', 75)

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P1 - Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID. */

SELECT [NAME] FROM [STUDENTS] WHERE MARKS > 75
ORDER BY RIGHT([NAME], 3), ID ASC;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table EMPLOYEE */

DROP TABLE IF EXISTS [DBO].[EMPLOYEE];
CREATE TABLE [DBO].[EMPLOYEE] (
	[EMPLOYEE_ID][int] NOT NULL
	, [NAME][varchar](10) NOT NULL
	, [MONTHS][int] NOT NULL
	, [SALARY][int] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [DBO].[EMPLOYEE] ([EMPLOYEE_ID], [NAME], [MONTHS], [SALARY]) VALUES
	(330, 'Rose', 5, 2248)
	, (1233, 'Angela', 7, 1296)
	, (1901, 'Frank', 10, 2763)
	, (2035, 'Patrick', 1, 4583)
	, (2405, 'Lisa', 7, 4350)
	, (2974, 'Kimberly', 11, 2874)
	, (3190, 'Bonnie', 11, 3758)
	, (3506, 'Michael', 9, 1936)
	, (3708, 'Todd', 22, 4046)
	, (4428, 'Joe', 22, 3802)
	, (5962, 'Earl', 11, 2958)
	, (6060, 'Robert', 22, 4128)
	, (6418, 'Amy', 2, 4832)
	, (7466, 'Pamela', 1, 4199)
	, (9102, 'Maria', 11, 2958)
	, (11863, 'Joe', 18, 1721)
	, (12004, 'Linda', 15, 2306)
	, (12387, 'Melissa', 20, 1854)
	, (13835, 'Carol', 20, 4340)
	, (15151, 'Paula', 15, 1526)
	, (15286, 'Marilyn', 10, 3087)
	, (15675, 'Jennifer', 2, 2336)
	, (16493, 'Harry', 14, 4755)
	, (17858, 'David', 13, 3658)
	, (19035, 'Julia', 4, 2195)
	, (19172, 'Kevin', 1, 2113)
	, (21638, 'Paul', 6, 3120)
	, (22684, 'James', 14, 1370)
	, (23621, 'Kelly', 7, 1923)
	, (24011, 'Robin', 22, 1880)
	, (24611, 'Ralph', 22, 1495)
	, (25109, 'Gloria', 2, 1979)
	, (25120, 'Victor', 20, 1557)
	, (28247, 'David', 23, 2212)
	, (30183, 'Joyce', 20, 2748)
	, (30712, 'Donna', 8, 2604)
	, (32502, 'Michelle', 1, 2086)
	, (32654, 'Stephanie', 17, 1444)
	, (33086, 'Gerald', 23, 2206)
	, (33132, 'Walter', 11, 4180)
	, (37008, 'Christina', 8, 3100)
	, (38246, 'Brandon', 3, 4339)
	, (38272, 'Elizabeth', 23, 3967)
	, (38964, 'Joseph', 4, 2194)
	, (39789, 'Lawrence', 9, 1872)
	, (40797, 'Marilyn', 15, 2112)
	, (41228, 'Lori', 13, 4350)
	, (44436, 'Matthew', 15, 4673)
	, (45285, 'Jesse', 1, 3768)
	, (47458, 'John', 13, 3104)
	, (47496, 'Martha', 15, 4020)
	, (47920, 'Timothy', 10, 1745)
	, (48129, 'Christine', 22, 3738)
	, (50664, 'Anthony', 22, 4912)
	, (51741, 'Paula', 1, 2492)
	, (52923, 'Kimberly', 17, 1955)
	, (55238, 'Louise', 1, 2717)
	, (56775, 'Martin', 16, 1385)
	, (57065, 'Paul', 23, 3379)
	, (58343, 'Antonio', 21, 3268)
	, (59256, 'Jacqueline', 14, 3913)
	, (60119, 'Diana', 13, 5149)
	, (61191, 'John', 5, 1775)
	, (65288, 'Dorothy', 22, 3792)
	, (65375, 'Evelyn', 6, 4079)
	, (66442, 'Phillip', 9, 1894)
	, (67137, 'Evelyn', 15, 1311)
	, (68942, 'Debra', 20, 3704)
	, (69085, 'David', 11, 1845)
	, (69234, 'Willie', 12, 5088)
	, (69475, 'Brandon', 19, 2279)
	, (69787, 'Ann', 9, 1311)
	, (70963, 'Emily', 8, 5247)
	, (71569, 'Dorothy', 22, 4088)
	, (72030, 'Jonathan', 4, 5009)
	, (72370, 'Dorothy', 18, 3174)
	, (72785, 'Marilyn', 1, 1860)
	, (72974, 'Norma', 21, 1558)
	, (74662, 'Nancy', 6, 3223)
	, (76876, 'Andrew', 11, 1746)
	, (77609, 'Keith', 2, 1219)
	, (78101, 'Benjamin', 7, 4414)
	, (79744, 'Charles', 11, 1911)
	, (80475, 'Alan', 16, 1853)
	, (80895, 'Tammy', 8, 1591)
	, (81381, 'Anna', 16, 1569)
	, (82828, 'James', 23, 4398)
	, (85287, 'Robin', 23, 2078)
	, (87170, 'Jean', 18, 3895)
	, (87355, 'Andrew', 15, 1446)
	, (89017, 'Roy', 8, 3443)
	, (90507, 'Diana', 9, 5101)
	, (90558, 'Christina', 23, 3498)
	, (92908, 'Jesse', 13, 4753)
	, (95322, 'Joyce', 18, 1577)
	, (95983, 'Patricia', 23, 1469)
	, (96963, 'Gregory', 16, 5071)
	, (97178, 'Brian', 19, 3144)
	, (98271, 'Christine', 3, 3796)
	, (98491, 'Lillian', 3, 1920)

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P1 - Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order. */

SELECT [NAME] FROM [EMPLOYEE] ORDER BY [NAME];

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* P2 - Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id. */

SELECT [NAME] FROM [EMPLOYEE] WHERE [SALARY] > 2000 AND [MONTHS] < 10
ORDER BY [EMPLOYEE_ID] ASC;


--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table TRIANGLES */

DROP TABLE IF EXISTS [DBO].[TRIANGLES];
CREATE TABLE [DBO].[TRIANGLES] (
	[A][int] NOT NULL
	, [B][int] NOT NULL
	, [C][int] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [DBO].[TRIANGLES] ([A], [B], [C]) VALUES
	(10, 10, 10)
	, (11, 11, 11)
	, (30, 32, 30)
	, (40, 40, 40)
	, (20, 20, 21)
	, (21, 21, 21)
	, (20, 22, 21)
	, (20, 20, 40)
	, (20, 22, 21)
	, (30, 32, 41)
	, (50, 22, 51)
	, (20, 12, 61)
	, (20, 22, 50)
	, (50, 52, 51)
	, (80, 80, 80)


/*
	P1 - Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
	Output one of the following statements for each record in the table:

	>Equilateral: It's a triangle with  sides of equal length.
	>Isosceles: It's a triangle with  sides of equal length.
	>Scalene: It's a triangle with  sides of differing lengths.
	>Not A Triangle: The given values of A, B, and C don't form a triangle.

*/

SELECT
    IIF(A+B<=C OR A+C<=B OR B+C<=A, 'Not A Triangle'
		, IIF((A = B AND A <> C) OR (B = C AND A <> C) OR (A = C AND A <> B), 'Isosceles'
			, IIF(A = B AND B = C, 'Equilateral', 'Scalene')))									AS TRIANGLE_TYPE
FROM TRIANGLES;


--				(MySQL)
--				SELECT
--				    IF(A+B<=C OR A+C<=B OR B+C<=A, "Not A Triangle"
--						, IF((A = B AND A <> C) OR (B = C AND A <> C) OR (A = C AND A <> B), "Isosceles"
--							, IF(A = B AND B = C, "Equilateral", "Scalene"))) AS TRIANGLE_TYPE
--				FROM TRIANGLES;


