SELECT
    job_title_short AS title,
    job_location AS location, 
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date ,
    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM 
    job_postings_fact
LIMIT 5;    


SELECT 
    COUNT (job_id),
    EXTRACT(MONTH FROM job_posted_date) AS MONTH
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Engineer'
GROUP BY
    MONTH 
ORDER BY 
    COUNT(job_id)DESC;


SELECT
    salary_year_avg
FROM
    job_postings_fact
LIMIT
    20;