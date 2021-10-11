/* Get the total amount of time that a student has spent on all assignments.
This should work for any student but use 'Ibrahim Schimmel' for now. */
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

/* Get the total amount of time that all students from a specific cohort have spent on all assignments.
This should work for any cohort but use FEB12 for now. */
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';