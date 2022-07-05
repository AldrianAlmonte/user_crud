CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);


INSERT INTO user(

)

CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    v_type INTEGER NOT NULL,
    license_plate VARCHAR(45) NOT NULL,
    color VARCHAR(45),
    brand VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    active BOOLEAN DEFAULT 1,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (v_type) REFERENCES vehicle_type(id)
);

INSERT INTO vehicle_type (description)  VALUES("motorcycle")
INSERT INTO vehicle_type (description)  VALUES("car")
INSERT INTO vehicle_type (description)  VALUES("truck")
INSERT INTO vehicle_type (description)  VALUES("SUV")

INSERT INTO vehicle (
    color,
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "red".
    "HELLO1",
    1,
    1,
    "Honda",
    "CBR"
);

INSERT INTO vehicle (
    color,
    license_plate,
    v_type,
    user_id,
    brand,
    model
) VALUES (
    "black".
    "HEYTHERE",
    4,
    1,
    "Ford",
    "Explorer"
);

SELECT  user.last_name,
        user.first_name,
        user.hobbies,
        user.active,
        vehicle.