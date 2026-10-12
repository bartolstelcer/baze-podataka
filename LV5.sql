-- Zadatak 1.

CREATE TABLE ime_osobe (
ime VARCHAR(50),
ime_naopako VARCHAR(50)
);

CREATE FUNCTION okreni_naopako_funkcija (@ime VARCHAR(50))
RETURNS VARCHAR(50)
AS
BEGIN
DECLARE @tmp VARCHAR(50);
SET @tmp = REVERSE(@ime);
RETURN @tmp;
END

CREATE PROCEDURE okreni_naopako_procedura (@ime VARCHAR(50))
AS
BEGIN
DECLARE @tmp VARCHAR(50);
SET @tmp = REVERSE(@ime);
PRINT 'Ime naopako: ' + @tmp;
RETURN(0)
END

CREATE TRIGGER okreni_naopako_okidac
ON ime_osobe
instead of INSERT
AS
BEGIN
DECLARE @ime VARCHAR(50);
DECLARE @tmp VARCHAR(50);
SELECT @ime = ime FROM inserted;
SET @tmp = REVERSE(@ime);
INSERT INTO ime_osobe (ime, ime_naopako) VALUES (@ime, @tmp);
END

SELECT dbo.okreni_naopako_funkcija ('Bartol') AS 'Ime naopako';
exec okreni_naopako_procedura 'Bartol';
INSERT INTO ime_osobe (ime) VALUES ('Bartol');
SELECT * FROM ime_osobe;

-- Zadatak 2.

CREATE PROCEDURE horoskopski_znak (@datum DATETIME)
AS
BEGIN
DECLARE @dan INT;
DECLARE @mjesec INT;
SET @dan = DAY(@datum);
SET @mjesec = MONTH(@datum);

IF (@mjesec = 1 AND @dan >= 20) OR (@mjesec = 2 AND @dan <= 18)
PRINT 'VODENJAK';
ELSE IF (@mjesec = 2 AND @dan >= 19) OR (@mjesec = 3 AND @dan <= 20)
PRINT 'RIBA';
ELSE IF (@mjesec = 3 AND @dan >= 21) OR (@mjesec = 4 AND @dan <= 19)
PRINT 'OVAN';
ELSE IF (@mjesec = 4 AND @dan >= 20) OR (@mjesec = 5 AND @dan <= 20)
PRINT 'BIK';
ELSE IF (@mjesec = 5 AND @dan >= 21) OR (@mjesec = 6 AND @dan <= 20)
PRINT 'BLIZANCI';
ELSE IF (@mjesec = 6 AND @dan >= 21) OR (@mjesec = 7 AND @dan <= 22)
PRINT 'RAK';
ELSE IF (@mjesec = 7 AND @dan >= 23) OR (@mjesec = 8 AND @dan <= 22)
PRINT 'LAV';
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'DJEVICA'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'VAGA'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'SKORPION'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'STRIJELAC'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'JARAC'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'VODENJAK'
ELSE IF (@mjesec = 8 AND @dan >= 23) OR (@mjesec = 9 AND @dan <= 22)
PRINT 'RIBE'
END

exec horoskopski_znak '08/06/2003';