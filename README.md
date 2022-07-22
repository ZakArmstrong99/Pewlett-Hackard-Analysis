# Pewlett-Hackard-Analysis
## Overview:
The purpose of this analysis was to generate tables containing the titles of Pewleett Hackard employees retiring, each employees unique title, and the count of how many employees are retiring. Another goal of the analysis was to find the employees who are eligible for a mentorship. All of this was done in order to be prepared for the next wave of retiring employees. Using PostgreSQL with pgAdmin, a database was created that contains all the necessary data to make queries and tables for the analysis.

## Results:
- The first step was to create a table containings the employees who are retiring along with their titles, starting date, and to date column indicating if the employee currently holds the title. This was done by combining the employees table and titles table. When looking at the table, some of the employees are duplicated because they have had multiple titles. That being said, this table is necessary and will be further filtered in the next table.

![retirement_titles](https://user-images.githubusercontent.com/107213807/180091620-2b3bd107-28a2-4da5-b89f-327688882644.png)

- Next step was to create a table with the unique titles that contains the lastest title of working employees. This was done by filtering the retirement titles table where the to_date column equals 9999-01-01. This indicates that the employee currently holds the title and removes any duplicate employees. This table removes the dates found in the previous table as they aren't necessary due to the filtering.

![unique_titles](https://user-images.githubusercontent.com/107213807/180091664-e674094e-48b8-488e-9b40-1bfbdd23b98c.png)

- After creating the unique titles table, the next table contains the count how many employees with each title will be retiring soon. This table was made by taking the title column from the unique_titles table and using the count function on the column, and displaying both.

![retiring_titles](https://user-images.githubusercontent.com/107213807/180092014-839cb34a-acde-49cf-8f9f-7a4b898ff61a.png)

- The final step was to create a table which shows the employees eligible to become part of the mentorship program. This was done by combining certain columns from the employees table, department employee table, and titles table. Then the table was filtered to contain employees born between 01-01-1965 and 12-31-1965, which is the age of eligibilty. An important part of making this table was the DISTINCT ON function. This is because some employees have held multiple titles and for the table to be accurate we need the latest titles. The DISCTINCT ON fucntion in combination with filtering the table where the to_date column is 9999-01-01 will return the desired results.

![mentorship_eligibility](https://user-images.githubusercontent.com/107213807/180564810-aa7d0140-9dfb-4be6-8229-ca4b86b08073.png)


## Summary:
