-- Sample data for Students
INSERT INTO Students (student_id, name, class, date_of_birth) VALUES
(1, 'Aarav Mehta', '10A', '2008-06-15'),
(2, 'Sara Khan', '10A', '2008-09-20'),
(3, 'Rahul Sharma', '10B', '2007-12-05');

-- Sample data for Subjects
INSERT INTO Subjects (subject_id, subject_name) VALUES
(101, 'Mathematics'),
(102, 'Science'),
(103, 'English');

-- Sample data for Marks
INSERT INTO Marks (mark_id, student_id, subject_id, marks_obtained) VALUES
(1, 1, 101, 88),
(2, 1, 102, 76),
(3, 2, 101, 91),
(4, 2, 103, 85),
(5, 3, 102, 79),
(6, 3, 103, 72);
