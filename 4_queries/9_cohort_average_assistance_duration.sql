SELECT avg(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.id
  ORDER BY total_duration
  ) AS total_duration;