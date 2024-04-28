#!/bin/bash

# Ask for the RDS database endpoint
read -p "Enter the RDS DB Instance Endpoint URL: " DB_ENDPOINT

# Ask for the MySQL database username
read -p "Enter your MySQL username: " DB_USER

# Prompt for the MySQL password using a secure method
echo "Enter your MySQL password: "
read -s DB_PASSWORD

# Name of the database to be created
DB_NAME="customer_core_db"

# Connect to the MySQL database and create the new database
mysql -u $DB_USER -p$DB_PASSWORD -h $DB_ENDPOINT -e "CREATE DATABASE ${DB_NAME};"

echo "Database ${DB_NAME} created successfully."

