SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    january_jobs 

UNION ALL-- combines another Table

SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    february_jobs

UNION ALL-- COMBBINES Another table

SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    march_jobs 