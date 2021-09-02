CREATE TABLE user
(
	id int primary key AUTO_INCREMENT,
	firstname varchar(50),
	lastname varchar(50),
	email varchar(30),
	phone varchar(30),
	password varchar(100),
	address varchar(250),
	is_admin bit(1)
);
