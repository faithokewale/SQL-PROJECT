This repository tracks my transition from SQL fundamentals to advanced database architecture and data manipulation.
# Introduction 
🚀 End-to-end SQL analysis identifying high-demand, high-paying Data Engineering skills

This project analyzes job postings data to identify the most valuable skills for Data Engineers based on both demand and average salary.

Using SQL, I joined and transformed relational datasets to calculate skill demand and compensation trends, focusing on remote roles with available salary data.

The results highlight the most optimal skills to prioritize for career growth in Data Engineering.

# Background
Driven by a quest to navigate the Data Engineering job market more effectively, this project was born from a desire to identify high-paying and in-demand skills, helping streamline the path toward optimal career opportunities.

The dataset used for this analysis is sourced from SQL learning resources at https://lukebarousse.com/sql, providing insights into job titles, salaries, locations, and essential skills.

### Key Questions Explored

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:

- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.

🛠️ Technical Skills:
* Database Design: Built relational structures using primary and foreign keys for data integrity.
* Data Manipulation (DML): Practiced complex INSERT and UPDATE operations in 0_test_data.sql.
* Schema Refactoring: Used ALTER TABLE to clean and optimize data structures.
* Professional Workflow: Managed environment transitions (SQLite to local PostgreSQL) and version control using Git/GitHub.

# Analysis
Each query for this project aimed at investigating specific aspects of the data engineering job market. Here’s how I approached each question:

### 1. Top paying Data Engineering jobs 
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field.

### [View SQL Query](./project/1_top_paying_job.sql)
![Top Paying Roles](assets\top_payind_Data_eng.png)

Key Findings

* Specialization beats seniority — plain "Data Engineer" roles (Rust, Golang, AI specialists) average $271k, outpaying Staff and Principal titles
* Salary floor is $205k — every top-30 role is remote and full-time, confirming remote work is standard at the top of the market
* Recruiters dominate — staffing firms (Engtal, Harnham, Signify, Durlston) account for 8 of 30 top postings; high pay isn't exclusive to FAANG
* Q1 is peak hiring season — Jan–Mar = 50% of top postings; September is the secondary window
* Meta is the most active direct employer — 4 postings across engineering and management titles

### 2. Skills for Top Paying Jobs
To understand what skills are required for the top-paying jobs, I joined the job postings with the skills data, providing insights into what employers value for high-compensation roles.

### [View SQL Query](./project/2_skills_top_paying_job.sql)
![Top Paying Skills](assets\top.skills.top.roles.png)
What skills are required for top paying roles?

* Python is non-negotiable — appears in 7 of 10 top roles; its ecosystem (Pandas, NumPy, PySpark) dominates skill mentions.
* Big Data skills are salary differentiators — Hadoop & Kafka average ~$300k; niche stack skills (PySpark, Kubernetes) hit $325k.
* Cloud is secondary — AWS, GCP, Azure appear only once each; distributed systems expertise ranks higher
* ML/AI skills pay less — TensorFlow, PyTorch, Keras average ~$251k, sitting below the top salary tier.
* Breadth is expected — average 4.4 skills per role, ranging up to 8.

### 3. In-Demand Skills for Data Engineering
This query helped identify the skills most frequently requested in job postings, directing focus to areas with high demand.

### [View SQL Query](./project/3_top_demanded_skills.sql)
![Top Demanded Skills](assets\demand.count.png)
What are the most in-demand skills for data engineering?

* SQL & Python are the foundation — with 113k and 108k mentions respectively, they appear in nearly every data engineering job posting. Non-negotiable baseline skills
* Cloud is the third pillar — AWS (62k) and Azure (61k) are virtually tied, together dwarfing Spark. Cloud fluency is now a core expectation, not a bonus
* Spark rounds out the top 5 — at 54k mentions it confirms that distributed data processing remains central to the role
* The demand cliff is steep — SQL has 2x the demand of Spark, meaning the gap between "must-have" and "good-to-have" skills is enormous. 

### 4. Top Skills Based on Salary/Demand
Exploring the average salaries associated with different skills revealed which skills are the highest paying and their demand in the job market.

### [View SQL Query](./project/4_top_paying_skills.sql)
![Top Paying Skills/Demand](assets\demandXSal.png)
What are the optimal skills based on salary & demand?

SQL & Python are table stakes — 100k+ postings each but absent from top-25 salary list; ubiquity compresses pay
Scarcity ≠ opportunity — Node, ggplot2, solidity pay well but have <30 postings; high-risk, tiny job pool
Mongo & Cassandra are the sweet spot — strong salary ($150k–$179k) with real demand (120–269 postings)
Kafka & Scala are commoditizing — highest demand (800k+ postings) but salary suppressed by oversupply
Shell & Kubernetes are "table stakes" traps — 365–371 postings but bottom-tier salaries in the top 25.

### 5. Most Optimal Skills to Learn
Combining insights from demand and salary data, this query aimed to pinpoint skills that are both in high demand and have high salaries, offering a strategic focus for skill development.

### [View SQL Query](./project/5_optimal_skills.sql)
![Optimal Skills](assets\optimal.sklls.png)

What are the most optimal skills for data engineers (salary + demand)?

* Kafka is the #1 strategic skill — $151k avg salary with 134 postings, the best balance of pay and real market demand
* Spark is the high-volume sweet spot — 237 postings at $140k; highest demand among above-average paying skills
* Kubernetes & NumPy are specialist premiums — $158k each but under 60 postings; worth pursuing as a second specialization
* SQL & Python remain essential but not differentiators — 500+ postings each yet salaries sit at $129–132k; price of entry, not a premium
* Cloud trio (AWS, Azure, Snowflake) dominates mid-tier — collectively 600+ postings, salaries cluster $129–134k; expected but not exceptional
Key takeaway: the optimal learning path is SQL/Python first to get hired, then Kafka + Spark to get paid more.

# Conclusion

This project demonstrates that navigating the Data Engineering job market effectively requires more than identifying high-paying roles—it demands understanding the relationship between skill demand, salary, and market saturation.

The analysis reveals that foundational skills like SQL and Python are essential for entry into the field but do not command premium salaries due to their ubiquity. In contrast, technologies such as Kafka and Spark emerge as high-value differentiators, offering the strongest balance between demand and compensation. While niche tools can yield high salaries, their limited demand makes them less reliable for long-term career strategy.

Ultimately, the most effective learning path is strategic: build a solid foundation with core skills, then specialize in high-impact technologies that sit at the intersection of demand and salary. This approach provides a clearer, data-driven roadmap for advancing as an aspiring Data Engineer.

## What I Learned

Through this project, I strengthened my ability to work with real-world datasets using SQL and gained a deeper understanding of how data can inform decision-making.

* **Advanced Querying:** Improved my use of joins, aggregations, and CTEs to analyze relational datasets effectively.
* **Data Analysis:** Learned how to combine demand and salary metrics to extract meaningful insights from job market data.
* **Data Modeling:** Gained practical experience working with fact and dimension tables in a structured database environment.
* **Analytical Thinking:** Developed a stronger ability to translate business questions into structured SQL queries.



