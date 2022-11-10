CREATE TABLE IF NOT EXISTS TEACHER
(
    id         SERIAL PRIMARY KEY,
    first_name varchar(50)  NOT NULL,
    last_name  varchar(50)  NOT NULL,
    email      varchar(50)  NOT NULL,
    experience varchar(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS STUDENT
(
    id         SERIAL PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name  varchar(50) NOT NULL,
    email      varchar(50) NOT NULL,
    age        int4        NOT NULL,
    rate       int4        NOT NULL CHECK ( rate <= 100 and rate >= 0 )
);

CREATE TABLE IF NOT EXISTS COURSE
(
    id          SERIAL PRIMARY KEY,
    title       varchar(50)  NOT NULL,
    description varchar(250) NOT NULL,
    hours_count int4         NOT NULL CHECK ( hours_count > 0 )
);

CREATE TABLE IF NOT EXISTS ENROLLED_STUDENT
(
    course_id  int references COURSE (id) ON DELETE CASCADE  NOT NULL,
    student_id int references STUDENT (id) ON DELETE CASCADE NOT NULL,
    PRIMARY KEY (course_id, student_id)
);


CREATE TABLE IF NOT EXISTS COURSE_TEACHERS
(
    course_id  int references COURSE (id) ON DELETE CASCADE  NOT NULL,
    teacher_id int references TEACHER (id) ON DELETE CASCADE NOT NULL,
    PRIMARY KEY (course_id, teacher_id)
);


CREATE TABLE IF NOT EXISTS CLASS
(
    id          SERIAL PRIMARY KEY,
    course_id   int references COURSE (id) ON DELETE CASCADE  NOT NULL,
    time_course timestamp                                     NOT NULL,
    teacher_id  int references TEACHER (id) ON DELETE CASCADE NOT NULL
);

CREATE TABLE IF NOT EXISTS ACADEMIC_PERFORMANCE
(
    id         SERIAL PRIMARY KEY,
    student_id int                       NOT NULL,
    course_id  int                       NOT NULL,
    class_id   int references CLASS (id) NOT NULL,
    presence   boolean                   NOT NULL,
    homework   boolean                   NOT NULL,
    mark       int4 CHECK ( mark > 0 and mark <= 5 ),
    FOREIGN KEY (course_id, student_id) REFERENCES enrolled_student(course_id, student_id)

)
