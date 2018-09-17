SELECT (CASE WHEN grade <8 THEN NULL ELSE name END) name, grade, marks
FROM
(select name, grade, marks
FROM students, grades
WHERE marks between min_Mark and Max_Mark)
ORDER BY grade DESC, name, decode(name,NULL,marks);