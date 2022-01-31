DROP DATABASE rencar_db;

CREATE DATABASE IF NOT EXISTS rencar_db;

USE rencar_db;

CREATE TABLE Admin(
					id INT PRIMARY KEY AUTO_INCREMENT,
					username VARCHAR(255),
					password VARCHAR(255),
					creator_id INT NOT NULL,
					status INT DEFAULT 1
					);

CREATE TABLE User(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(255),
					email VARCHAR(255),
					password VARCHAR(255),
					status INT DEFAULT 1
					);				

CREATE TABLE UserProfile(
					id INT PRIMARY KEY AUTO_INCREMENT,
					user_id INT NOT NULL, 
					license_file VARCHAR(100) NOT NULL,
					profile_pic_file VARCHAR(100) NOT NULL,
					status INT DEFAULT 0
					);				

CREATE TABLE Car(
					id INT PRIMARY KEY AUTO_INCREMENT,
					model_id INT NOT NULL,
					manufacturer_id INT NOT NULL,
					rent VARCHAR(5) NOT NULL,
					status INT DEFAULT 1
					);
				
CREATE TABLE Manufacturer(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(255),
					status INT DEFAULT 1
					);

CREATE TABLE CarModel(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(100),
					manufacturer_id INT,
					status INT DEFAULT 1					
					);	
				
CREATE TABLE State(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(100),
					status INT DEFAULT 1	
					);
				
CREATE TABLE City(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(100) NOT NULL,
					state_id INT NOT NULL,
					status INT DEFAULT 1	
					);

CREATE TABLE Location(
					id INT PRIMARY KEY AUTO_INCREMENT,
					name VARCHAR(100) NOT NULL,
					city_id INT NOT NULL,
					details VARCHAR(255),
					status INT DEFAULT 1	
					);

CREATE TABLE Booking(
					id INT PRIMARY KEY AUTO_INCREMENT,
					person_name VARCHAR(255) NOT NULL,
					person_email VARCHAR(255) NOT NULL,
					person_phone VARCHAR(255) NOT NULL,
					booking_date DATETIME NOT NULL,
					starting_date DATETIME NOT NULL,
					ending_date DATETIME NOT NULL,
					state_id INT NOT NULL,
					city_id INT NOT NULL,
					location_id INT NOT NULL,
					car_id INT NOT NULL,
					amount VARCHAR(6),
					status INT DEFAULT 1
					);
					
CREATE TABLE Driver(
					id INT PRIMARY KEY AUTO_INCREMENT,
					firstname VARCHAR(255) NOT NULL,
					lastname VARCHAR(255) NOT NULL,
					unique_license_number VARCHAR(255) NOT NULL,
					car_id INT,
					status INT DEFAULT 1
					);

CREATE TABLE Payment(
					id INT PRIMARY KEY AUTO_INCREMENT,
					amount VARCHAR(6) NOT NULL,
					mode_of_payment VARCHAR(20) NOT NULL,
					card_number VARCHAR(16) NOT NULL,
					booking_id INT NOT NULL,
					status INT DEFAULT 1	
					);

INSERT INTO User(name, email, password) VALUES('abc', 'test@mail.com', 'test123');	
INSERT INTO User(name, email, password) VALUES('test', 'test123@mail.com', '123');	

INSERT INTO Admin(username, password, creator_id) VALUES('rencar.admin', 'test123', 100);

INSERT INTO Manufacturer(name) VALUES('Tata');
INSERT INTO Manufacturer(name) VALUES('Mahindra');
INSERT INTO Manufacturer(name) VALUES('Ford');
INSERT INTO Manufacturer(name) VALUES('Hyundai');
INSERT INTO Manufacturer(name) VALUES('Renault');
INSERT INTO Manufacturer(name) VALUES('Maruti Suzuki');

INSERT INTO CarModel(name, manufacturer_id) VALUES('Nexon', 1);
INSERT INTO CarModel(name, manufacturer_id) VALUES('XUV 700', 2);
INSERT INTO CarModel(name, manufacturer_id) VALUES('Scorpio', 2);

INSERT INTO State(name) VALUES('Rajasthan');
INSERT INTO State(name) VALUES('Tripura');
INSERT INTO State(name) VALUES('Assam');
INSERT INTO State(name) VALUES('Meghalaya');
INSERT INTO State(name) VALUES('Manipur');
INSERT INTO State(name) VALUES('Nagaland');
INSERT INTO State(name) VALUES('Sikkim');
INSERT INTO City(name, state_id) VALUES('Jaipur', 1);

INSERT INTO City(name, state_id) VALUES('Agartala', 2);
INSERT INTO City(name, state_id) VALUES('Shillong', 4);
INSERT INTO City(name, state_id) VALUES('Kohima', 6);