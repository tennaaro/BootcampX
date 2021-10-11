/* Ordering name of students alphabetically */
SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

/* Finding count of all students who's cohort id is in 1, 2, 3 */
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

/* Finding name and id of students where they don't have email or phone number */
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;

/* Finding studnets where email is not gmail and have no phone number */
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

/* Get all of the students currently enrolled. and order by cohort_id */
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

/* Get all graduates without a linked Github account. */
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;

/* Select all rollover students.
Get the student's name, student's start_date, cohort's name, and cohort's start_date.
Alias the column names to be more descriptive.
Order by the start date of the cohort. */
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;