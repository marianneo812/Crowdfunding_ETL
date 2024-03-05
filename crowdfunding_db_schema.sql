-- Contacts Table Creation
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- Category Table Creation
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Subcategory Table Creation
CREATE TABLE subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

-- Campaign Table Creation
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(50),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id INT,
    subcategory_id INT,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
