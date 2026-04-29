/* Find job postings from the first quarter that have a salary greater than $70k
-- combine job posting tables from the first quarter of 2023 (jan-mar)
-- Get job posting with an average yearly salary > $70,000.
*/
SELECT *
FROM (
    SELECT *
    FROM 
        january_jobs 

    UNION ALL 

    SELECT *
    FROM 
        february_jobs 
    UNION ALL

    SELECT *
    FROM 
        march_jobs 
) AS quarter1_job_postings 

WHERE quarter1_job_postings.salary_year_avg > 70000