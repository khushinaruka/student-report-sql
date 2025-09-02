

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class VARCHAR(10),
    date_of_birth DATE
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
