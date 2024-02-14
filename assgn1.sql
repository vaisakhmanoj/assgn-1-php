CREATE DATABASE IF NOT EXISTS football_team;
USE football_team;


CREATE TABLE IF NOT EXISTS positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(50) NOT NULL
);

-- Insert sample positions
INSERT INTO positions (position_name) VALUES ('Striker'), ('Midfielder'), ('Defender'), ('Goalkeeper');

-- Create a table for players
CREATE TABLE IF NOT EXISTS players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    position_id INT,
    FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

-- Insert sample players
INSERT INTO players (player_name, position_id) VALUES
('Cristiano Ronaldo', 1),
('Lionel Messi', 2),
('Virgil van Dijk', 3),
('Alisson Becker', 4);
