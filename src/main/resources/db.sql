DROP SCHEMA IF EXISTS genclips;

CREATE SCHEMA genclips;

USE genclips;

DROP TABLE IF EXISTS user;

CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    CHECK (CHAR_LENGTH(password) >= 8 AND CHAR_LENGTH(password) <= 15)
);

CREATE TABLE videos (
	video_id INT PRIMARY KEY AUTO_INCREMENT,
    url varchar(300) NOT NULL,
    prompt TEXT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) references user (user_id)
);

