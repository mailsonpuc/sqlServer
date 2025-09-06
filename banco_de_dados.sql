-- base_de_dados.dbo.profiles definition

-- Drop table

-- DROP TABLE base_de_dados.dbo.profiles;

CREATE TABLE base_de_dados.dbo.profiles (
	id int IDENTITY(1,1) NOT NULL,
	bio varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	description varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_id int NULL,
	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_unique UNIQUE (user_id)
);


-- base_de_dados.dbo.profiles foreign keys

ALTER TABLE base_de_dados.dbo.profiles ADD CONSTRAINT profiles_users_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.dbo.users(id) ON DELETE CASCADE ON UPDATE CASCADE;




-- base_de_dados.dbo.roles definition

-- Drop table

-- DROP TABLE base_de_dados.dbo.roles;

CREATE TABLE base_de_dados.dbo.roles (
	id int IDENTITY(1,1) NOT NULL,
	name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT roles_pk PRIMARY KEY (id)
);




-- base_de_dados.dbo.users definition

-- Drop table

-- DROP TABLE base_de_dados.dbo.users;

CREATE TABLE base_de_dados.dbo.users (
	id int IDENTITY(1,1) NOT NULL,
	first_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	last_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	email varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	password_hash varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	created_at datetime DEFAULT getdate() NOT NULL,
	updated_at datetime NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (id),
	CONSTRAINT users_unique UNIQUE (id),
	CONSTRAINT users_unique_email UNIQUE (email)
);




-- base_de_dados.dbo.users_roles definition

-- Drop table

-- DROP TABLE base_de_dados.dbo.users_roles;

CREATE TABLE base_de_dados.dbo.users_roles (
	user_id int NOT NULL,
	role_id int NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id,role_id)
);


-- base_de_dados.dbo.users_roles foreign keys

ALTER TABLE base_de_dados.dbo.users_roles ADD CONSTRAINT users_roles_roles_FK FOREIGN KEY (role_id) REFERENCES base_de_dados.dbo.roles(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE base_de_dados.dbo.users_roles ADD CONSTRAINT users_roles_users_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.dbo.users(id) ON DELETE CASCADE ON UPDATE CASCADE;

