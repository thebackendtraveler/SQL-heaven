SELECT start_date, course_code
FROM enrollments
WHERE student_id IN
(SELECT student_id
FROM students
WHERE first_name = "Justin"
AND last_name = "Case");