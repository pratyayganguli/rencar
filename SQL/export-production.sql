DROP DATABASE `rencar-prod`;
CREATE DATABASE `rencar-prod`;
USE `rencar-prod`;

CREATE TABLE user(
                    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    name VARCHAR(255) NOT NULL,
                    email VARCHAR(100) NOT NULL UNIQUE,
                    password VARCHAR(255) NOT NULL,
                    status BOOLEAN NOT NULL DEFAULT 0
);
CREATE TABLE UserProfile(
					id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
					user_id INT NOT NULL, 
					license_file VARCHAR(100) NOT NULL,
					profile_pic_file VARCHAR(100) NOT NULL,
					status BOOLEAN NOT NULL DEFAULT 0,
                    FOREIGN KEY (user_id) REFERENCES user(id)
);				
CREATE TABLE admin(
					id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
					username VARCHAR(255) NOT NULL,
					password VARCHAR(255) NOT NULL,
					status BOOLEAN NOT NULL DEFAULT 0
);
CREATE TABLE manufacturer(
					id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
					name VARCHAR(255),
					status BOOLEAN NOT NULL DEFAULT 0
);
CREATE TABLE CarModel(
					id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
					name VARCHAR(255),
					manufacturer_id INT NOT NULL,
                    FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(id),
					status BOOLEAN NOT NULL DEFAULT 0					
);	
CREATE TABLE visitor(
                    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                    ip_address VARCHAR(16) NOT NULL,
                    visit_date VARCHAR(10) NOT NULL
);
CREATE TABLE car(
				    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
					model_id INT NOT NULL,
					manufacturer_id INT NOT NULL,
					rent VARCHAR(5) NOT NULL,
					status BOOLEAN NOT NULL DEFAULT 0
);
CREATE TABLE car_owner(
                    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    owner_name VARCHAR(100) NOT NULL,
                    car_id INT NOT NULL,
                    status BOOLEAN NOT NULL DEFAULT 0,
                    FOREIGN KEY (car_id) REFERENCES car(id) 
);
CREATE TABLE driver(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(255) NOT NULL,
					unique_license_number VARCHAR(255) NOT NULL,
					car_id INT,
					status BOOLEAN NOT NULL DEFAULT 0,
					FOREIGN KEY (car_id) REFERENCES car(id)
);
CREATE TABLE payment(
					id INT PRIMARY KEY AUTO_INCREMENT,
					amount VARCHAR(6) NOT NULL,
					mode_of_payment VARCHAR(20) NOT NULL,
					card_number VARCHAR(16) NOT NULL,
					booking_id INT NOT NULL,
					status BOOLEAN NOT NULL DEFAULT 0	
);

INSERT INTO admin(username, password) VALUES('rencar.pratyay', SHA1('123'));
INSERT INTO admin(username, password) VALUES('rencar.default', SHA1('142'));
INSERT INTO admin(username, password) VALUES('rencar.priyanshu', SHA1('220'));
INSERT INTO admin(username, password) VALUES('rencar.prashanth', SHA1('222'));

INSERT INTO visitor(ip_address, visit_date) VALUES('120.34.12.11', '12-01-2021');
INSERT INTO visitor(ip_address, visit_date) VALUES('121.44.22.13', '13-02-2021');
INSERT INTO visitor(ip_address, visit_date) VALUES('101.31.12.32', '02-01-2022');
INSERT INTO visitor(ip_address, visit_date) VALUES('107.30.42.23', '13-07-2021');
INSERT INTO visitor(ip_address, visit_date) VALUES('140.30.42.23', '14-04-2022');

INSERT INTO car(model_id, manufacturer_id, rent) VALUES(1, 2, '1500');
INSERT INTO car(model_id, manufacturer_id, rent) VALUES(2, 3, '1600');
INSERT INTO car(model_id, manufacturer_id, rent) VALUES(3, 1, '1700');

INSERT INTO car_owner(owner_name, car_id) VALUES('Yamish Yadav', 2);
INSERT INTO car_owner(owner_name, car_id) VALUES('Rakesh Sharma', 1);
INSERT INTO car_owner(owner_name, car_id) VALUES('Rahul Singh', 1);

INSERT INTO user(name, email, password) VALUES('Ratul Deb', 'rdeb21@mail', SHA1('112'));
INSERT INTO user(name, email, password) VALUES('Rayid Khan', 'mailme1001@mail', SHA1('123'));
INSERT INTO user(name, email, password) VALUES('Utkarsh Padh', 'ytech1101@mail', SHA1('232'));
INSERT INTO user(name, email, password) VALUES('Samar Datta', 'tesla@mail', SHA1('242'));
INSERT INTO user(name, email, password) VALUES('Simran Yadav', 'one8@mail', SHA1('242'));

INSERT INTO driver(name, unique_license_number, car_id) VALUES('Kanwar Singh', '108B112' 2);
INSERT INTO driver(name, unique_license_number, car_id) VALUES('Prashant Srikanth', '107B122' 3);
INSERT INTO driver(name, unique_license_number, car_id) VALUES('Rashmi Battar', '106B742' 1);
INSERT INTO driver(name, unique_license_number, car_id) VALUES('Sasha Singh', '407B742' 2);
INSERT INTO driver(name, unique_license_number, car_id) VALUES('Saurabh Das', '312B812' 1);
INSERT INTO driver(name, unique_license_number, car_id) VALUES('Poshan Deb', '512Y812' 1);

SELECT * FROM car;
SELECT * FROM user;
SELECT * FROM admin;
SELECT * FROM driver;
SELECT * FROM visitor;
SELECT * FROM carmodel;
SELECT * FROM car_owner;
SELECT * FROM manufacturer;

DESC car;
DESC car_owner;
DESC user;
DESC admin;
DESC visitor;