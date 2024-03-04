--liquibase formatted sql
--changeset jenn:20240402-create-T_student-table labels:jira-219,r1
CREATE TABLE T_student(
  student_fname VARCHAR(50),
  student_lname VARCHAR(50),
  state CHAR(2),
  notes VARCHAR (355)
);
--rollback DROP TABLE T_student;

--changeset jenn:20240402-insert-a-row-student1 labels:jira-219,r1
INSERT INTO T_student (student_fname, student_lname, state, testdml_rep,notes)
VALUES ('Jennifer', ’Lewis', 'AR', 'Random comment for notes');
