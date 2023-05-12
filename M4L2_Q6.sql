SELECT CONCAT_WS(",",students.last_name, students.first_name) AS Student,
courses.course_full_name
FROM students LEFT OUTER JOIN enrollments
ON (students.student_id = enrollments.student_id)
LEFT OUTER JOIN courses ON (enrollments.course_code = courses.course_code);