SELECT e2.course_code, e2.start_date, s2.first_name, s2.last_name
FROM students AS s1, students AS s2, enrollments AS e1, enrollments As e2
WHERE s1.first_name = "Justin"
AND s1.last_name = "Case"
AND e1.course_code = "SQL1"
AND e1.student_id = s1.student_id
AND e2.course_code = e1.course_code
AND e2.start_date = e1.start_date
AND e2.student_id = s2.student_id;