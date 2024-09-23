--liquibase formatted sql
--changeset jenn:20240402-create-T_student-table labels:jira-219,r1 
--comment: create T_student table
CREATE TABLE T_student(
  student_fname VARCHAR(50),
  student_lname VARCHAR(50),
  state CHAR(2),
  notes VARCHAR (355)
);
--rollback DROP TABLE T_student;

--changeset jenn:20240402-insert-a-row-student1 labels:jira-219,r1 context:dev
--comment: Add Viktor record into student table
INSERT INTO T_student (student_fname, student_lname, state, testdml_rep,notes)
VALUES ('Viktor', 'Hargreeves', 'NY', 'Random comment for notes');

--changeset jenn:20240402-delete-a-row-student1 labels:jira-220,r1 context:dev
--comment: remove Jenn from student table
DELETE FROM T_student
--rollback INSERT INTO T_student (student_fname, student_lname, state, testdml_rep,notes)
--rollback VALUES ('Viktor', 'Hargreeves', 'NY', 'Random comment for notes'); 

--changeset student2:altertblcompany-corpstruc labels:r1, company 
--comment: add country column to company table
alter table company add column corp_structure varchar(5) DEFAULT='NA'
--rollback ALTER TABLE person DROP COLUMN country;

