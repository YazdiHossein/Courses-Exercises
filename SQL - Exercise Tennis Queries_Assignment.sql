SELECT 
    *
FROM
    players;
SELECT 
    *
FROM
    committee_members;
SELECT 
    *
FROM
    matches;
SELECT 
    *
FROM
    penalties;
SELECT 
    *
FROM
    teams;

/* The answers for optional assignment of "Tennis Players" */
SELECT 
    *
FROM
    penalties
ORDER BY amount DESC
LIMIT 10;

/* Who was the chairman of the committee on January 1, 1990? */
SELECT 
    NAME
FROM
    committee_members
        INNER JOIN
    players ON committee_members.PLAYERNO = players.PLAYERNO
WHERE
    POSITION = 'Chairman'
        AND BEGIN_DATE = '1990-01-01';

/* Find all players whose name begins with ‘Pa’ and return their name, initials and DOB */
select PLAYERNO, name, initials, BIRTH_DATE from players where name like 'Pa%';

/* Find all players whose name begins with ‘Pa’ and return their initials and name as “F. Murphy” and date of birth */
SELECT 
    name, initials, birth_date
FROM
    players
WHERE
    name LIKE 'Pa%';
ALTER TABLE players ADD New_Name VARCHAR(15) AFTER initials;
UPDATE players 
SET 
    new_name = 'Murphy F.'
WHERE
    name LIKE 'Pa%';

/* As above but format the birth date as mm-dd-yyy */
SELECT 
    DATE_FORMAT(birth_date, '%m-%d-%y'), name, initials, new_name
FROM
    players;

/* Retrieve all players whose number is between six and ten */
SELECT 
    *
FROM
    players
WHERE
    playerno > 5 AND playerno < 10;
/* OR */
SELECT 
    *
FROM
    players
WHERE
    playerno BETWEEN 5 AND 10;

/* Extract the day, month and year as separate columns for birth_date from players */
SELECT 
    EXTRACT(YEAR FROM birth_date) AS birth_year,
    EXTRACT(MONTH FROM birth_date) AS birth_month,
    EXTRACT(DAY FROM birth_date) AS birth_day
FROM
    players;

/* Select all players born between 1956 and 1962 inclusive */
SELECT 
    *
FROM
    players
WHERE
    birth_date BETWEEN '1956-01-01' AND '1962-01-01';
/* OR */
SELECT 
    *
FROM
    players
WHERE
    birth_date > '1956-01-01'
        AND birth_date < '1962-01-01';

/* What is the current age of the players */
SELECT 
    birth_date
FROM
    players;
/* And now */
SELECT 
    TIMESTAMPDIFF(YEAR,
        birth_date,
        CURDATE()) AS age, birth_date, name, initials
FROM
    players;

/* What is the date (mm-dd-yyyy) in 19 days time? */
SELECT DATE_ADD(CURDATE(), INTERVAL 19 DAY);

/* Get the match number and the difference between sets won and sets lost */
SELECT 
    (won - lost) AS Diff_Result
FROM
    matches;

/* Select the playerno, sex from players and generate a field (gender) indicating whether they are Male or Female */
SELECT playerno, sex AS gender FROM players;
ALTER TABLE players ADD gender VARCHAR(10);
UPDATE players 
SET 
    gender = 'Male'
WHERE
    sex = 'M';
UPDATE players 
SET 
    gender = 'Female'
WHERE
    sex = 'F';

/* Retrieve the players who live in the following towns – Inglewood, Plymouth, Midhurst, Douglas – order by town and then by name */
SELECT 
    name, town
FROM
    players
WHERE
    town = 'Inglewood' OR town = 'Plymouth'
        OR town = 'Midhurst'
        OR town = 'Douglas'
ORDER BY town , name;

/* How many players come from each town and only show those with more than 1 player */
SELECT 
    town, COUNT(town), name
FROM
    players
GROUP BY town
HAVING COUNT(town) > 1;
/* The answer is Stratford, Inglewood, and Eltham but Douglas, Midhurst, and Plymouth */

/* Show the player name and the total amount each has paid in penalties.*/
/* Answers are shown both in one step and separate steps */
SELECT 
    amount, SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
GROUP BY playerno;
SELECT 
    SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
WHERE
    ply.playerno = 6;
SELECT 
    SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
WHERE
    ply.playerno = 8;
SELECT 
    SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
WHERE
    ply.playerno = 27;
SELECT 
    SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
WHERE
    ply.playerno = 44;
SELECT 
    SUM(amount), name, ply.playerno
FROM
    penalties AS pen
        INNER JOIN
    players AS ply ON pen.playerno = ply.playerno
WHERE
    ply.playerno = 104;

/* Create a view for the previous query */
CREATE VIEW payment_for_penalties AS SELECT amount, SUM(amount), name, pen.playerno FROM penalties AS pen JOIN players AS ply ON pen.playerno = ply.playerno GROUP BY name;
SELECT 
    *
FROM
    payment_for_penalties;

/* The four following lines are the answers for one question as "Retrieve the players who have NO penalties" */
ALTER TABLE players ADD penalty_REC VARCHAR(5);
UPDATE players 
SET 
    penalty_REC = 'No';
UPDATE players 
SET 
    penalty_REC = 'yes'
WHERE
       playerno = 6 
	OR playerno = 8
	OR playerno = 27
	OR playerno = 44
	OR playerno = 104;
SELECT 
    *
FROM
    players
WHERE
    penalty_REC = 'NO';

/* Create a stored procedure to insert penalties, retrieve and print the newly created paymentno */
ALTER TABLE penalties modify column PAYMENTNO int auto_increment;
SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'tennis' AND TABLE_NAME = 'penalties';
DELIMITER //
CREATE PROCEDURE insert_penalties(IN p_paymentno INT, IN p_playerno INT, IN p_payment_date VARCHAR(10), IN p_amount VARCHAR(10))
BEGIN 
INSERT INTO penalties(paymentno, playerno, payment_date, amount) VALUES(p_playerno, p_payment_date, p_amount);
END ;
CALL insert_penalties(9, 7, '1990-07-09', '45');

/* In which town do more than 4 players live */
SELECT 
    town, COUNT(town) 
FROM
    players
GROUP BY town HAVING COUNT(town) > 4;
/* The answer is "Stratford" */

/* Get the playerno of those who have incurred more than $150 of penalties */
SELECT playerno, SUM(amount) FROM penalties GROUP BY playerno HAVING SUM(amount) > 150;

/* Get the number of each player who has incurred as penalty payments as player 104. Exclude player 104 from the list. */
SELECT playerno, sum(amount) FROM penalties WHERE playerno != 104 GROUP BY playerno HAVING SUM(amount) = 50;

/* For each player whose number is less than 60, get the number of years between the year in which that player joined the club and that of player 100*/
SELECT 
    *
FROM
    players
WHERE
    playerno < 60;
ALTER TABLE players ADD Interval_Years INT;
UPDATE players 
SET 
    Interval_years = 1979 - joined;

/* The End */

