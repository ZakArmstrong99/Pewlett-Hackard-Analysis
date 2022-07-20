# Pewlett-Hackard-Analysis
## Overview:
The purpose of this analysis was to generate csvs containing the titles of Pewleett Hackard employees retiring, each employees unique title, and the count of how many employees are retiring. Another goal of the analysis was to find the employees who are eligible for a mentorship. All of this was done in order to be prepared for the next wave of retiring employees. Using PostgreSQL with pgAdmin, a database was created that contains all the necessary data to make queries and tables for the analysis.

## Results:
- The first step was to create a table containings the employees who are retiring along with their titles, starting date, to date column indicating if the employee is working or already retired. This was done by combining the employees table and titles table.
- Next step was to create a table with the unique titles that contains the lastest title of working employees. This was done by filtering the retirement titles table where the to_date column equals 9999-01-01, which indicates that the employee currently holds the title.
- After creating the unique titles table, the next table contains the count how many employees with each title will be retiring soon. The previous unique titles table was necessary as some employees held multiple titles and the retiring title table would be inaccurate since it would contain current employees older titles.
- The final step was to create a table which shows the employees eligible to become mentors. This was done by combining certain columns from the employees table, department employee table, and titles table. Then the table was filtered to contain employees born between 01-01-1965 and 12-31-1965, which is the age of eligibilty.
## Summary:
