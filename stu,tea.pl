% student(StudentName, Subject, Code)
student(raj,   math,   m101).
student(rita,  physics,p102).
student(amit,  math,   m101).
student(neha,  chem,   c103).

% teacher(TeacherName, Subject, Code)
teacher(sharma, math,    m101).
teacher(verma,  physics, p102).
teacher(gupta,  chem,    c103).

% relation: student taught by teacher
teaches(Teacher, Student) :-
    teacher(Teacher, Sub, Code),
    student(Student, Sub, Code).
