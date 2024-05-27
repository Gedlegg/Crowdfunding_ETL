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
* **crowdfunding_db_ERD_sketch**: PNG file with the QuickDBD ERD sketch.
* **crowdfunding_db_ERD_pgAdmin**: PNG file with the final pgAdmin ERD.
* **category_tb_Screenshot**: PNG file with the select statement run to verify `category` table has the correct data.
* **subcategory_tb_Screensho**t: PNG file with the select statement run to verify `subcategory` table has the correct data.
* **contacts_tb_Screenshot**: PNG file with the select statement run to verify `contacts` table has the correct data.
* **campaign_tb_Screenshot**: PNG file with the select statement run to verify `campaign` table has the correct data.
* **Resources** : Folder containing the original Excel files (`crowdfunding.xlsx` and `contacts.xlsx`).

## Contributors

* Gedlegeorgis Gobezie Geda
* Ria Arora

## Tasks

Based on the requirements provided, the work divided between **Ria Arora** and **Gedlegeorgis Geda** to efficiently complete the tasks:

### **Tasks for Ria Arora:**

1. **Create and Export Category DataFrame:**

* Extract and transform the `crowdfunding.xlsx` excel data to create a category DataFrame
* Split `category & sub-category` **column to `category`** and `subcategory` columns.
* Create a DataFrame named `category_df` with columns `category_id` and ` category` .
* Ensure `category_id` contains sequential entries from `cat1` to ` catn`.
* Populate the `category` column with category titles.
* Export `category_df` as ` category.csv` .

2. **Create and Export Subcategory DataFrame:**

* Create a DataFrame named `subcategory_df` with columns `subcategory_id` and ` subcategory`.
* Ensure `subcategory_id` contains sequential entries from `subcat1` to ` subcatn`.
* Populate the `subcategory` column with subcategory titles.
* Export `subcategory_df` as `subcategory.csv`.

3. **Sketch Crowdfunding Database ERD:**

* Inspect the four CSV files, and then sketch an ERD of the tables by using `**QuickDBD**`.
* Export the screenshot of sketched ERD `crowdfunding_db_ERD_sketch.png`.

### **Tasks for Gedlegeorgis Geda:**

1. **Create and Export Campaign DataFrame:**

* Extract and transform the `crowdfunding.xlsx` Excel data to create a campaign DataFrame
* Create a DataFrame named `campaign_df` with the specified columns.
* Transform `campaign_df` to have the following columns:
* Rename the ` blurb`, `launched_at`**,** and `deadline` columns.
* Convert the `goal` and `pledged` columns to a `float` data type.
* Format the `launch_date` and `end_date` columns to datetime format.
* Merge the `campaign_df` with the `category_df` on the "category" column and the `subcategory_df` on the "subcategory" column.
* Drop unwanted columns.
* Export `campaign_df` as `campaign.csv`.

2. **Create and Export Contacts DataFrame:**

* Create a DataFrame named `contacts_df` with columns `contact_id`, `first_name` , `last_name`, and `email`.
* Populate the DataFrame with sample data.
* Export `contacts_df` as `contacts_csv`.

3. **Create Crowdfunding Database and Import Data:**

* Create a database named `crowdfunding_db` using `crowdfunding_db_schema.sql`.
* Import each CSV file into the appropriate table in the database.
* Display the data from each table using a SELECT * statement.
