SELECT teachers.name as teacher, students.name as student, completed_at - started_at as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;