-- Create separate tables for January, February, and March job postings
-- by extracting the month from job_posted_date and filtering:

CREATE TABLE January_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE February_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE March_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

CREATE TABLE January_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE February_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE March_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT * 
FROM January_jobs
ORDER BY job_posted_date 


--      CASE EXPRESSIONS
-- Create a new column called location_category:
-- If job_location = 'Anywhere', label it as 'Remote'
-- If job_location = 'New York, NY', label it as 'Local'
-- Otherwise, label it as 'On-site'

SELECT  
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category;


-- Categorize Data Analyst job salaries into buckets (High, Standard, Low)
-- based on salary_year_avg, and order the results from highest to lowest salary

SELECT
    job_title,
    salary_year_avg,
    CASE
        WHEN salary_year_avg >= 100000 THEN 'High Salary'
        WHEN salary_year_avg >= 60000 THEN 'Standard Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC;


SELECT 
    job_title_short,
    salary_year_avg,
    CASE
        WHEN salary_year_avg >= 120000 THEN 'High salary'
        WHEN salary_year_avg >= 70000 THEN 'Medium paying'
        ELSE 'Low salary'
    END AS salary_category 
FROM job_postings_fact
WHERE job_title_short = 'Data Engineer'
ORDER BY salary_year_avg DESC
LIMIT 20