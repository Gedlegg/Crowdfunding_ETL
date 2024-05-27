# Project 2 Crowdfunding_ETL

## Project Overview

The Crowdfunding ETL (Extract, Transform, Load) Project is designed to process and manage data from a crowdfunding platform. The project involves extracting data from provided Excel files, transforming it into a suitable format, and loading it into a PostgreSQL database. 

## Project Steps

The project is divided into several key steps, each corresponding to specific deliverables:

1. **Extract and Transform Data for Category DataFrames**
2. **Extract and Transform Data for Subcategory DataFrames**
3. **Extract and Transform Data for Campaign DataFrame**
4. **Extract and Transform Data for Contacts DataFrame**
5. **Create and Populate the Crowdfunding Database**

## Detailed Steps

### Step 1: Create the Category and Subcategory DataFrames

1. **Extract and Transform** :

* Extract data from the `crowdfunding.xlsx` file.
* Create a `category` DataFrame with the following columns:
  * `category_id`: Sequential IDs (`cat1`, `cat2`, ..., `catn`).
  * `category`: Unique category titles.
* Create a `subcategory` DataFrame with the following columns:
  * `subcategory_id`: Sequential IDs (`subcat1`, `subcat2`, ..., `subcatn`).
  * `subcategory`: Unique subcategory titles.
* Export the DataFrames as `category.csv` and `subcategory.csv`.

### Step 2: Create the Campaign DataFrame

1. **Extract and Transform** :

* Extract data from the `crowdfunding.xlsx` file.
* Create a `campaign` DataFrame with the following columns:
  * `cf_id`: Campaign ID.
  * `contact_id`: ID from the contacts file.
  * `company_name`: Name of the company.
  * `description`: Campaign description (from the "blurb" column).
  * `goal`: Funding goal (converted to float).
  * `pledged`: Amount pledged (converted to float).
  * `outcome`: Campaign outcome.
  * `backers_count`: Number of backers.
  * `country`: Country code.
  * `currency`: Currency code.
  * `launch_date`: Launch date (converted to datetime).
  * `end_date`: Deadline date (converted to datetime).
  * `category_id`: Matching ID from the `category` DataFrame.
  * `subcategory_id`: Matching ID from the `subcategory` DataFrame.
* Export the DataFrame as `campaign.csv`.

### Step 3: Create the Contacts DataFrame

1. **Extract and Transform** :

* Extract data from the `contacts.xlsx` file.
* Create a `contacts` DataFrame with the following columns:
  * `contact_id`: Contact ID.
  * `first_name`: First name (extracted from "name").
  * `last_name`: Last name (extracted from "name").
  * `email`: Email address.
* Export the DataFrame as `contacts.csv`.

### Step 4: Create the Crowdfunding Database

1. **Database Schema** :

* Design an Entity-Relationship Diagram (ERD) for the database.
* Create a database schema (`crowdfunding_db_schema.sql`) defining tables, primary keys, foreign keys, and constraints.

2. **Database Creation** :

* Create a PostgreSQL database named `crowdfunding_db`.
* Use the schema to create tables in the correct order to handle foreign keys.
* Import each CSV file into its corresponding SQL table.

3. **Verification** :

* Run SELECT statements to verify that each table contains the correct data.

## File Structure

* **ETL_Mini_Project_YourInitials.ipynb** : Jupyter notebook with all ETL steps.
* **category.csv** : CSV file containing the category data.
* **subcategory.csv** : CSV file containing the subcategory data.
* **campaign.csv** : CSV file containing the campaign data.
* **contacts.csv** : CSV file containing the contacts data.
* **crowdfunding_db_schema.sql** : SQL file with the database schema.
* **Resources** : Folder containing the original Excel files (`crowdfunding.xlsx` and `contacts.xlsx`).

## Contributors

* Gedlegeorgis Gobezie Geda
* Ria Arora
