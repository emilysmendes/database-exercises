USE codeup_test_db;

SHOW tables;

DESCRIBE albums;

SELECT * FROM albums ;


# SELECT * FROM albums WHERE name = 'Sgt Peppers Lonely Hearts Club';

SELECT * FROM albums WHERE name = 'Nevermind';


SELECT * FROM albums WHERE release_date = 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999;
