-- Smart Job Market Intelligence
-- SQL Analysis Queries

-- Query 1: Top 10 Highest Paying Job Titles
SELECT job_title, 
       ROUND(AVG(salary_in_usd), 2) AS avg_salary,
       COUNT(*) AS total_jobs
FROM jobs
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 10;

-- Query 2: Experience Level wise Salary
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary,
       COUNT(*) AS total_jobs
FROM jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;

-- Query 3: Company Size wise Salary
SELECT company_size,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary,
       COUNT(*) AS total_jobs
FROM jobs
GROUP BY company_size
ORDER BY avg_salary DESC;

-- Query 4: Remote Work wise Salary
SELECT 
    CASE 
        WHEN remote_ratio = 0 THEN 'On-Site'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        WHEN remote_ratio = 100 THEN 'Full Remote'
    END AS work_type,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY remote_ratio
ORDER BY avg_salary DESC;

-- Query 5: Year wise Salary Trend
SELECT work_year,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary,
       COUNT(*) AS total_jobs
FROM jobs
GROUP BY work_year
ORDER BY work_year ASC;