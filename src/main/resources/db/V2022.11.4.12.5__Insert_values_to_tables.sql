

INSERT INTO TEACHER(first_name, last_name, email, experience) VALUES ('Albert', 'Einstein', 'albert@mai.ru', 'Уаствовал в создании законов физики');
INSERT INTO TEACHER(first_name, last_name, email, experience) VALUES ('Issak', 'Newton', 'issak@mail.ru', 'изобрел законы Ньютона');

INSERT INTO STUDENT(first_name, last_name, email, age, rate) VALUES ('VLADIMIR', 'KOVALENKO', 'phoekoby@mail.ru', 18, 100);
INSERT INTO STUDENT(first_name, last_name, email, age, rate) VALUES ('AAAA', 'BBBBBB', 'smth@mail.ru', 28, 50);
INSERT INTO STUDENT(first_name, last_name, email, age, rate) VALUES ('ADSAD', 'dsgsadgas', 'smth2@mail.ru', 20, 2);


INSERT INTO COURSE(title, description, hours_count) VALUES ('Java от слов к делу', 'Научимся писать высоконагруженные приложения на Java',48);
INSERT INTO COURSE(title, description, hours_count) VALUES ('Тестирование', 'Научимся тестировать',94);


INSERT INTO enrolled_student(course_id, student_id) VALUES (1,1);
INSERT INTO enrolled_student(course_id, student_id) VALUES (1,2);
INSERT INTO enrolled_student(course_id, student_id) VALUES (1,3);

INSERT INTO enrolled_student(course_id, student_id) VALUES (2,1);
INSERT INTO enrolled_student(course_id, student_id) VALUES (2,3);

INSERT INTO course_teachers(course_id, teacher_id) VALUES (1, 1);
INSERT INTO course_teachers(course_id, teacher_id) VALUES (1, 2);

INSERT INTO course_teachers(course_id, teacher_id) VALUES (2, 1);


INSERT INTO class(course_id, time_course, teacher_id) VALUES (1, TIMESTAMP '2022-11-07 18:00:00', 1);
INSERT INTO class(course_id, time_course, teacher_id) VALUES (1, TIMESTAMP '2022-11-14 18:00:00', 1);
INSERT INTO class(course_id, time_course, teacher_id) VALUES (1, TIMESTAMP '2022-11-21 18:00:00', 2);
INSERT INTO class(course_id, time_course, teacher_id) VALUES (1, TIMESTAMP '2022-11-28 18:00:00', 2);

INSERT INTO class(course_id, time_course, teacher_id) VALUES (2, TIMESTAMP '2022-11-28 18:00:00', 1);
INSERT INTO class(course_id, time_course, teacher_id) VALUES (2, TIMESTAMP '2022-11-28 18:00:00', 1);

