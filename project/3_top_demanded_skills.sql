/* Question: What are the top demanded skills for data engineering roles?
-- join job postings to inner join table similar to practice problem 7.
-- identify the top 5 skills demanaded for data emgineering roles
-- Focuses on all jop postings
-- This retrieves the top 5 skills with the highest demand in the job market for data engineering,
providing insights for job seekers.
*/ 

SELECT skills,
        COUNT(skills_job_dim.job_id) AS demand_count
FROM 
    job_postings_fact 
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Engineer'
GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5


