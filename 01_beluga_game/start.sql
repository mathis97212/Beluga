CREATE TABLE beluga_game_entity
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    hp INT,
    mp INT,
    type VARCHAR(255),
    meta JSON,
    creation_date TIMESTAMP,
    last_action TIMESTAMP,
    last_ip_use VARCHAR(255),
    weapon_used INT,
    FOREIGN KEY (weapon_used) REFERENCES beluga_game_weapon(id)
);

CREATE TABLE beluga_game_weapon
(
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    meta JSON,
    creation_date TIMESTAMP,
    attack INT,
    defense INT
);

CREATE TABLE beluga_game_session
(
    id AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    meta JSON,
    creation_date TIMESTAMP,
    last_action TIMESTAMP,
    list_entity JSON
);