-- Create a new database
CREATE DATABASE crowdfunding_db;

-- Create a new table `category`
CREATE TABLE category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR NOT NULL
);

-- Create a new table `subcategory`
CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR NOT NULL
);

-- Create a new table `contacts`
CREATE TABLE contacts (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR NOT NULL
);

-- Create a new table `campaign`
CREATE TABLE campaign (
  cf_id INT PRIMARY KEY,
  contact_id INT REFERENCES contacts(contact_id),
  company_name VARCHAR NOT NULL,
  description TEXT NOT NULL,
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR NOT NULL,
  currency VARCHAR NOT NULL,
  launch_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR REFERENCES category(category_id),
  subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);