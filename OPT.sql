CREATE DATABASE OPT;

USE OPT;

CREATE TABLE providers
(
	p_id int auto_increment NOT NULL,
    enterprise VARCHAR(50) NOT NULL,
    city VARCHAR(20) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    recomended_contact_person VARCHAR(50) NULL,
    email VARCHAR(50) NOT NULL,
    additional_email VARCHAR(50),
    PRIMARY KEY(p_id) 
);

CREATE TABLE workers
(
	w_id int auto_increment NOT NULL,
	first_name Varchar(20) NOT NULL,
	last_name Varchar(20) NOT NULL,
	worker_position Varchar(20) NOT NULL,
    date_of_birth date NOT NULL,
    phone_number Varchar(20) NOT NULL,
    email Varchar(50) NOT NULL,
    primary key(w_id)	
);

CREATE TABLE regular_customers
(
	c_id int auto_increment NOT NULL,
    worker_id int NOT NULL,
	first_name Varchar(20) NOT NULL,
	last_name Varchar(20) NOT NULL,
    date_of_birth date NOT NULL,
    phone_number Varchar(20) NOT NULL,
    email Varchar(50) NOT NULL,
    FOREIGN KEY(worker_id) references workers(w_id),
    PRIMARY KEY(c_id)  
);

INSERT INTO providers
(enterprise, city, address, phone_number, recomended_contact_person, email, additional_email)
VALUES 
('MVP', 'Kyiv', 'Korolova 1', '+380675546325', '-', 'mvp@gmail.com', '-'),
('AGT', 'Kyiv', 'Zalyznycha 6', '+380685546355', 'Olga', 'agt@gmail.com', 'olga1998@gmail.com');

INSERT INTO workers
(first_name, last_name, worker_position, date_of_birth, phone_number, email)
VALUES
('Serhii', 'Golova', 'manager', '1991-05-10', '+380685546376', 'srg@gmail.com'),
('Anna', 'Sokol', 'constructor', '1992-06-20', '+380956646376', 'anns@gmail.com'),
('Iryna', 'Scherban', 'manager', '1990-11-10', '+380935546376', 'ir569@gmail.com'),
('Adam', 'Sandler', 'director', '1979-08-12', '+480355546376', 'adams@gmail.com');

INSERT INTO regular_customers
(worker_id, first_name, last_name, date_of_birth, phone_number, email)
VALUES 
(2, 'Glib', 'Parkhomenko', '2001-06-10', '+380676946376', 'glib@gmail.com'),
(1, 'Jimmy', 'Hendrix', '1988-07-15', '+480676947376', 'jh@gmail.com'),
(2, 'Olena', 'Teliga', '1981-10-10', '+380686946376', 'olena@gmail.com'),
(2, 'Bob', 'Marley', '1980-12-12', '+180566946376', 'bob@gmail.com'),
(1, 'Don', 'Kihot', '1652-06-10', '-', 'sancho@pansa.com');

SELECT * FROM providers;
SELECT * FROM workers;
SELECT * FROM regular_customers;