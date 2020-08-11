--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=

/* THE PADS */

/*
	Generate the following two result sets:
	>Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses).
	For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
	>Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: There are a total of [occupation_count] [occupation]s.
	where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name.
	If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

	Note: There will be at least two entries in the table for each type of occupation.

	Sample Input: An OCCUPATIONS table that contains the following records: 'Samantha', 'Doctor' / 'Julia', 'Actor' / 'Maria', 'Actor' / 'Meera', 'Singer' / 'Ashley', 'Professor' / 'Ketty', 'Professor' / 'Christeen', 'Professor' / 'Jane', 'Actor' / 'Jenny', 'Doctor' / 'Priya', 'Singer'

	Sample Output:
		Ashely(P)
		Christeen(P)
		Jane(A)
		Jenny(D)
		Julia(A)
		Ketty(P)
		Maria(A)
		Meera(S)
		Priya(S)
		Samantha(D)
		There are a total of 2 doctors.
		There are a total of 2 singers.
		There are a total of 3 actors.
		There are a total of 3 professors.


	Explanation:
	The results of the first query are formatted to the problem description's specifications.
	The results of the second query are ascendingly ordered first by number of names corresponding to each profession (2<=2<=3<=3), and then alphabetically by profession (doctor <= singer and actor <= professor).

*/

DROP TABLE IF EXISTS [dbo].[OCCUPATIONS]

CREATE TABLE [dbo].[OCCUPATIONS] (
	[Name] [varchar](9)
	, [Occupation] [varchar](9)
) ON [PRIMARY]


INSERT INTO [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES
	('Ashley', 'Professor')
	, ('Samantha', 'Actor')
	, ('Julia', 'Doctor')
	, ('Britney', 'Professor')
	, ('Maria', 'Professor')
	, ('Meera', 'Professor')
	, ('Priya', 'Doctor')
	, ('Priyanka', 'Professor')
	, ('Jennifer', 'Actor')
	, ('Ketty', 'Actor')
	, ('Belvet', 'Professor')
	, ('Naomi', 'Professor')
	, ('Jane', 'Singer')
	, ('Jenny', 'Singer')
	, ('Kristeen', 'Singer')
	, ('Christeen', 'Singer')
	, ('Eve', 'Actor')
	, ('Aamina', 'Doctor')


SELECT
	[Name]+'('+LEFT([Occupation], 1)+')' AS [Name]
FROM [OCCUPATIONS]
ORDER BY [Name]

; WITH CTE AS (
	SELECT
		[occupation]
		, COUNT(1) AS [occupation_count]
	FROM [OCCUPATIONS]
	GROUP BY [Occupation]
) SELECT 'There are a total of '+ CAST([occupation_count] AS VARCHAR(1)) + ' ' + LOWER([occupation])+'s.' AS [occurrences]
FROM CTE
ORDER BY [occupation_count], [occupation];


--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Print Prime Numbers - Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).
 Output Example: 2&3&5&7 */


DECLARE @RANGE [int] = 1
DECLARE @PRIMOS [varchar](max) = '2'

WHILE (@RANGE < 1000)
BEGIN
	DECLARE @CONT [int] = @RANGE-1
	WHILE (@CONT>0)
	BEGIN
		IF (@RANGE%@CONT = 0)
		BEGIN
			BREAK
		END
		ELSE
		BEGIN
			IF @CONT = 2
			BEGIN
				SET @PRIMOS = @PRIMOS+'&'+CAST(@RANGE AS VARCHAR(3))
			END
		END
		SET @CONT = @CONT - 1
	END
	SET @RANGE = @RANGE + 1
END

PRINT(@PRIMOS)


--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table OCCUPATIONS */

DROP TABLE IF EXISTS [DBO].[OCCUPATIONS];
CREATE TABLE [DBO].[OCCUPATIONS] (
	[NAME][varchar](15) NOT NULL
	, [OCCUPATION][varchar](10) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [DBO].[OCCUPATIONS] ([NAME], [OCCUPATION]) VALUES
	('Ashley', 'Professor')
	,('Samantha', 'Actor')
	,('Julia', 'Doctor')
	,('Britney', 'Professor')
	,('Maria', 'Professor')
	,('Meera', 'Professor')
	,('Priya', 'Doctor')
	,('Priyanka', 'Professor')
	,('Jennifer', 'Actor')
	,('Ketty', 'Actor')
	,('Belvet', 'Professor')
	,('Naomi', 'Professor')
	,('Jane', 'Singer')
	,('Jenny', 'Singer')
	,('Kristeen', 'Singer')
	,('Christeen', 'Singer')
	,('Eve', 'Actor')
	,('Aamina', 'Doctor')


/*
	P1 - Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its
	corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
*/

SELECT
    MIN(CASE WHEN OCCUPATION = 'Doctor' THEN NAME ELSE NULL END) AS Doctor
    , MIN(CASE WHEN OCCUPATION = 'Professor' THEN NAME ELSE NULL END) AS Professor
    , MIN(CASE WHEN OCCUPATION = 'Singer' THEN NAME ELSE NULL END) AS Singer
    , MIN(CASE WHEN OCCUPATION = 'Actor' THEN NAME ELSE NULL END) AS Actor
FROM (
    SELECT
        a.Occupation
        , a.Name
        , (SELECT COUNT(*) FROM Occupations AS b
          WHERE a.Occupation = b.Occupation AND a.Name > b.Name) AS rnk
    FROM Occupations a
) AS c
GROUP BY c.rnk
ORDER BY c.rnk;

--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=
/* Table BST */


DROP TABLE IF EXISTS [DBO].[BST];
CREATE TABLE [dbo].[BST](
	[N] [int] NULL
	, [P] [int] NULL
) ON [PRIMARY]
GO


INSERT INTO [DBO].[BST] ([N], [P]) VALUES
	(1, 2)
	, (3, 2)
	, (5, 6)
	, (7, 6)
	, (2, 4)
	, (6, 4)
	, (4, 15)
	, (8, 9)
	, (10, 9)
	, (12, 13)
	, (14, 13)
	, (9, 11)
	, (13, 11)
	, (11, 15)
	, (15, NULL)

/*
	You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

	Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
	
	Root: If node is root node.
	Leaf: If node is leaf node.
	Inner: If node is neither root nor leaf node.
*/



DECLARE @SIZE INT = (SELECT COUNT(1) FROM [BST])+1
DECLARE @CAMADAS INT = (SELECT LOG(@SIZE, 2)

DECLARE @ROOT INT = (SELECT N FROM [BST] WHERE P IS NULL)


SELECT * FROM [BST] ORDER BY P