CREATE TABLE campaign (
    cf_id int PRIMARY KEY NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (100) NOT NULL,
    description varchar (300) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar (100) NOT NULL,
    backers_count int NOT NULL,
    country varchar (100)  NOT NULL,
    currency varchar (100) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar (100) NOT NULL,
    subcategory_id varchar (100) NOT NULL,
	foreign key (subcategory_id) references subcategory(subcategory_id),
	foreign key (category_id) references category(category_id),
	foreign key (contact_id) references contacts(contact_id)
);

CREATE TABLE category (
    category_id varchar (50) PRIMARY KEY NOT NULL,
    category varchar (50) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id varchar(50) PRIMARY KEY NOT NULL,
    subcategory_name varchar(50) NOT NULL
);

CREATE TABLE contacts (
    contact_id int PRIMARY KEY NOT NULL,
    first_name varchar (50) NOT NULL,
    last_name varchar (50) NOT NULL,
    email varchar (100) NOT NULL
);