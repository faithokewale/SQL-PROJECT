/* Question: What skills are required to do the top paying Data Engineering jobs?
- Use the top 10 data engineering jobs from the first query.
- Add the specific skills required for those roles.
- why? it provides a detailed look at which high paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries.
*/

WITH top_paying_jobs AS (
SELECT
    job_id,
    job_title,
    job_location,
    salary_year_avg,
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
LIMIT 10)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id 
ORDER BY salary_year_avg DESC 

/* Here are the key insights from the skill data across these 10 top-paying data engineering roles:
Python dominates. It appears in 7 of the 10 jobs — more than any other skill — and its ecosystem
(Pandas, NumPy, PySpark) adds even more weight. If you're a data engineer, Python is essentially non-negotiable.
Big Data and streaming skills are the salary differentiators. 
Hadoop and Kafka are tied at 3 mentions each, but their associated roles average ~$300k — higher than Python's $277k average.
Niche skills like PySpark, Kubernetes, Pandas, and NumPy all average $325k, appearing in the single highest-paying role.
Core Python + Big Data makes up ~68% of all skill mentions. 
Cloud tools (AWS, GCP, Azure) appear only once each, suggesting these top-paying roles prioritize distributed systems expertise over cloud generalism.
ML/AI skills (TensorFlow, PyTorch, Keras) are present but command lower salaries (~$251k), likely because they appear in more specialized or mid-tier roles rather than the absolute top.
Roles require breadth. The average is 4.4 skills per job, ranging from 1 to 8 — suggesting employers want engineers who can move across the stack.
*/