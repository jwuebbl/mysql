CREATE DATABASE IF NOT EXISTS myapp;

use myapp;

CREATE TABLE IF NOT EXISTS `accounts` (
    id int NOT NULL AUTO_INCREMENT,
    username varchar(50) NOT NULL unique,
    password varchar(255) NULL,
    email varchar(100) NULL,
    chips INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS `roulette_spins` (
    spin_id int NOT NULL AUTO_INCREMENT,
    winning_space int NOT NULL,
    winning_color varchar(5),
    PRIMARY KEY (spin_id)
);

CREATE TABLE IF NOT EXISTS `leagueGames` (
    gameNum int NOT NULL AUTO_INCREMENT,
    accountId int NOT NULL,
    leagueChar varchar(50) NOT NULL,
    kills int NOT NULL,
    deaths int NOT NULL,
    assists int NOT NULL,
    winLoss varchar(1) NOT NULL,
    time_stamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (gameNum),
    FOREIGN KEY (accountId) REFERENCES accounts(id)
);

DELIMITER //
CREATE PROCEDURE `addLeageGame`(IN arg_accountId INT, IN arg_leagueChar varchar(50), IN arg_kills INT, IN arg_deaths INT, IN arg_assists INT, IN arg_winLoss varchar(1))
BEGIN
	INSERT INTO leagueGames (gameNum, accountId, leagueChar, kills, deaths, assists, winLoss) VALUES (null, arg_accountId, arg_leagueChar, arg_kills, arg_deaths, arg_assists, arg_winLoss);
END //
DELIMITER ;