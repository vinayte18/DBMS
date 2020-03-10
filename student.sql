CREATE TABLE STUDENT(
    REGNO VARCHAR2(20),
    NAME VARCHAR2(20),
    MAJOR VARCHAR2(5),
    BDATE DATE,
    PRIMARY KEY(REGNO)
    );
    
CREATE TABLE COURSE(
    COURSE_ID INT,
    CNAME VARCHAR2(20),
    DEPT VARCHAR2(4),
    PRIMARY KEY(COURSE_ID)
    );

CREATE TABLE TEXT(
    ISBN INT,
    BOOK_TITLE VARCHAR2(50),
    PUBLISHER VARCHAR2(20),
    AUTHOR VARCHAR2(20),
    PRIMARY KEY(ISBN)
    );

CREATE TABLE ADOPTION(
    COURSE_ID INT,
    SEM INT,
    ISBN INT,
    PRIMARY KEY(COURSE_ID, ISBN),
    FOREIGN KEY(COURSE_ID) REFERENCES COURSE(COURSE_ID),
    FOREIGN KEY(ISBN) REFERENCES TEXT(ISBN)
    );
    
CREATE TABLE ENROLL(
    REGNO VARCHAR2(20),
    COURSE_ID INT,
    SEM INT,
    MARKS INT,
    PRIMARY KEY(REGNO, COURSE_ID),
    FOREIGN KEY(REGNO) REFERENCES STUDENT(REGNO),
    FOREIGN KEY(COURSE_ID) REFERENCES COURSE(COURSE_ID)
    );
    
INSERT INTO STUDENT VALUES('&REGNO', '&NAME', '&MAJOR', '&DATE');
INSERT INTO COURSE VALUES(&COURSE_ID, '&CNAME', '&DEPT');
INSERT INTO TEXT VALUES(&ISBN, '&BOOK_TITLE', '&PUBLISHER', '&AUTHOR');
INSERT INTO ADOPTION VALUES(&COURSE_ID, &SEM, &ISBN);
INSERT INTO ENROLL VALUES('&REGNO', &COURSE_ID, &SEM, &MARKS);

SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM TEXT;
SELECT * FROM ADOPTION;
SELECT * FROM ENROLL;

INSERT INTO TEXT VALUES('4242', 'PYTHON PROG', 'PHI', 'DAVE R');
INSERT INTO ADOPTION VALUES(40, 4, 4242);

SELECT C.CNAME, T.ISBN, T.BOOK_TITLE 
FROM COURSE C, TEXT T 
WHERE (
)
ORDER BY C.CNAME;

SELECT C.CNAME 
FROM COURSE C, ADOPTION A, TEXT T 
WHERE T.ISBN = A.ISBN AND C.COURSE_ID = A.COURSE_ID AND ;
