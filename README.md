# Superstore Sales Time Series Analysis using SQL

This project involves performing time series analysis on a superstore sales dataset using SQL queries. The primary goal is to analyze sales trends, evaluate moving averages, and examine day-to-day patterns using SQL window functions. Python’s `pandas` library is used for initial data loading, while `SQLAlchemy` helps connect to the database for executing the SQL queries.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Dataset](#dataset)
3. [Installation](#installation)
4. [Usage](#usage)
5. [SQL Analysis](#sql-analysis)
6. [Project Structure](#project-structure)
7. [Requirements](#requirements)
8. [Contact](#contact)

## Project Overview
This project performs time series analysis on superstore sales data using SQL. Key tasks include:

- Calculating the sales for the next and previous rows using window functions.
- Ranking sales data in descending order.
- Aggregating and calculating monthly and daily sales averages.
- Analyzing discounts over consecutive days.
- Evaluating moving averages using SQL.

The analysis is facilitated using SQL queries executed on a PostgreSQL database. Python is used for data loading and database connection setup.

## Dataset
The dataset used for this project is `superstore_train.csv`, which contains detailed sales records, including fields such as sales, order date, and discount information. The dataset should be located in the `Dataset` directory.

## Installation
To set up the project, follow these steps:

1. Clone the repository or download the project files.
2. Navigate to the project directory.
3. Install the required libraries by running:

    ```bash
    pip install -r requirements.txt
    ```

4. Ensure you have PostgreSQL or any other database supported by SQLAlchemy set up.

## Usage
1. Place the `superstore_train.csv` dataset in the `Dataset` directory.
2. Open the Python script and configure the database connection details.
3. Run the Python script to load the dataset and establish a connection to the SQL database.

    ```bash
    python your_script.py
    ```

4. Once the data is loaded, you can execute SQL queries for time series analysis, such as calculating moving averages, using window functions, and other time-based analyses.

## SQL Analysis
The SQL queries used for analysis include:

1. **Lead and Lag Functions**: Used to calculate the sales for the next and previous rows.
   
   ```sql
   LEAD(Sales, 1) OVER (ORDER BY "order_date") AS sales_next;
   LAG(Sales, 1) OVER (ORDER BY "order_date") AS sales_previous;
