/* Question: what are the top paying data engineering jobs?
- identify the top 10 data engineering jobs that are available remotely.
- Focuses on job_postings with specified salaries (remove null).
- why? Highlight the top paying oppurtunities for Data engineers, offering insights to employment oppurtunities
*/ 

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    company_dim.name
FROM 
    job_postings_fact
LEFT JOIN company_dim 
ON job_postings_fact.company_id = company_dim.company_id 
WHERE job_title_short = 'Data Engineer' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY  
    salary_year_avg DESC 
LIMIT 10