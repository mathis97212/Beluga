CREATE TABLE beluga_game_entity
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    hp INT,
    mp INT,
    type VARCHAR(255) NOT NULL,
    meta JSON,
    creation_date TIMESTAMP,
    last_action TIMESTAMP,
    last_ip_use VARCHAR(255) NOT NULL,
    weapon_used INT,
    FOREIGN KEY (weapon_used) REFERENCES beluga_game_weapon(id)
);

CREATE TABLE beluga_game_weapon
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    meta JSON,
    creation_date TIMESTAMP,
    attack INT,
    defense INT,
);

CREATE TABLE beluga_game_session
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    meta JSON,
    creation_date DATETIME,
    creation_date DEFAULT,
    creation_date CURRENT_TIMESTAMP,
    last_action DATETIME,
    list_entity JSON,
);