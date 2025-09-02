-- 1. List all students
SELECT * FROM Students;

-- 2. Show all subjects with marks scored by each student
SELECT s.name AS student_name, sub.subject_name, m.marks_obtained
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id;

-- 3. Get average marks for each subject
SELECT sub.subject_name, AVG(m.marks_obtained) AS average_marks
FROM Marks m
JOIN Subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name;

-- 4. Get total marks per student
SELECT s.name, SUM(m.marks_obtained) AS total_marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.name;

-- 5. Find top scorer in each subject
SELECT sub.subject_name, s.name AS top_student, m.marks_obtained
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE (sub.subject_id, m.marks_obtained) IN (
    SELECT subject_id, MAX(marks_obtained)
    FROM Marks
    GROUP BY subject_id
);
