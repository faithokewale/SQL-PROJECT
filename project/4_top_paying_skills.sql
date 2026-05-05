/* Question: what are the top skills based on salary?
-- Look at the average salary associated with each skill for Data Engineering positions.
-- Focuses on roles with specified salaries, regardless of location.
-- why? It reveals how different skills impacy salary level for data engineering
   and helps identify the most financial rewarding skills to acquire or improve.
*/   

SELECT skills,
       ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM 
    job_postings_fact 
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Engineer' AND 
    salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25

  


  -- The following code shows demand + avg salary per skill
SELECT 
    skills,
    COUNT(*) AS demand_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact 
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Engineer'
AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25;


/* The "high pay" leaders are mostly scarcity plays, not demand. Node ($181k), ggplot2 ($176k), solidity ($166k), and vue ($159k) all have fewer than 30 job postings. Their high salaries are a scarcity premium — employers paying up because very few candidates have those skills. They're not safe career bets; they're high-risk, high-reward niches.
Kafka and Scala reveal a classic supply-demand gap. They're the most-demanded skills (872 and 794 postings respectively) yet sit near the bottom of the salary ranking (~$143k). High supply of candidates with these skills is likely suppressing pay — they're essential but not scarce.
Mongo is the standout "sweet spot" skill. It combines genuinely solid demand (120 postings) with the second-highest salary ($179k). That's the best of both worlds — meaningful job availability without the salary compression that hits Kafka/Scala.
Cassandra is another overlooked gem. 269 postings at $150k puts it in the high-demand, high-salary quadrant — yet it barely got attention in salary-only rankings. Worth noting for anyone building a specialization.
Shell and Kubernetes are "table stakes" traps. Both have massive demand (365 and 371 postings) but salaries scraping the bottom of the top 25. They're expected on every resume, so they don't differentiate you. Worth having, but don't lead with them.
The key takeaway: salary alone is a misleading signal. The most strategically valuable skills are those where demand is meaningful (not just 1–2 postings) but salary stays high — that combination points to genuine market scarcity rather than just rare job listings.
*/