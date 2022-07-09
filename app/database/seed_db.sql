
-- create user table --
CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);



-- insert DATA -- 
INSERT INTO user (
    first_name, 
    last_name, 
    hobbies
) VALUES (
    "Aldrian", 
    "Almonte", 
    "hiking"
);

--Read DATA --
SELECT * FROM user;



-- create another record --
INSERT INTO user (
    first_name, 
    last_name, 
    hobbies
) VALUES (
    "Crsytal",
    "Garcia",
    "reading"
);


INSERT INTO user (
    first_name, 
    last_name, 
    hobbies
) VALUES (
    "Clifford", 
    "Moss", 
    "barking"
);