# Pewlett-Hackard-Analysis
## Overview:
The purpose of this analysis was to generate csvs containing the titles of Pewleett Hackard employees retiring, each employees unique title, and the count of how many employees are retiring. Another goal of the analysis was to find the employees who are eligible for a mentorship. All of this was done in order to be prepared for the next wave of retiring employees. Using PostgreSQL with pgAdmin, a database was created that contains all the necessary data to make queries and tables for the analysis.

## Results:
- The first step was to create a table containings the employees who are retiring along with their titles, starting date, to date column indicating if the employee is working or already retired. This was done by combining the employees table and titles table.
- Next step was to create a table with the unique titles that contains the lastest title of working employees. This was done by filtering the retirement titles table where the to_date column equals 9999-01-01, which indicates that the employee currently holds the title.
-
-
## Summary:
