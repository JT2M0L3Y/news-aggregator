/**
 * Course: CPSC 321 - Database Management Systems
 * Name: Jonathan Smoley
 * Assignment: Final Project
 * Last Modified: 12/6/2022
 */


DROP TABLE IF EXISTS ListItem;
DROP TABLE IF EXISTS Articles;
DROP TABLE IF EXISTS Preferences;
DROP TABLE IF EXISTS Producer;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Topics;

-- Table to store user data
CREATE TABLE Users (
    username VARCHAR(20),
    password VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,

    PRIMARY KEY (username),
    UNIQUE (email)
);

-- Table to store current article topics
CREATE TABLE Topics (
    topic VARCHAR(20),

    PRIMARY KEY (topic)
);

-- Table to store article publishers
CREATE TABLE Producer (
    publisher VARCHAR(50),
    
    PRIMARY KEY (publisher)
);

-- Table to store user's publisher preferences
CREATE TABLE Preferences (
    username VARCHAR(20),
    org VARCHAR(50),

    PRIMARY KEY (username, org),
    FOREIGN KEY (username) REFERENCES Users (username),
    FOREIGN KEY (org) REFERENCES Producer(publisher)
);

-- Table to store a generic list of articles
CREATE TABLE Articles (
    article_id INT,
    title VARCHAR(100) NOT NULL,
    url VARCHAR(200) NOT NULL,
    publisher VARCHAR(50) NOT NULL,
    topic VARCHAR(20) NOT NULL,
    description VARCHAR(1000),
    date_published DATETIME,

    PRIMARY KEY (article_id),
    FOREIGN KEY (publisher) REFERENCES Producer (publisher),
    FOREIGN KEY (topic) REFERENCES Topics (topic),
    UNIQUE (url)
);

-- Table to store a list of user's picked articles
CREATE TABLE ListItem (
    username VARCHAR(20),
    article_id INT,

    PRIMARY KEY (username, article_id),
    FOREIGN KEY (username) REFERENCES Users (username),
    FOREIGN KEY (article_id) REFERENCES Articles (article_id)
    -- UNIQUE (article_id)
);
