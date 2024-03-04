--liquibase formatted sql

--changeset studentl:createtblperson labels:r1 context:dev
--comment: example comment
create table person (
    personId SERIAL primary key not null,
    fname varchar(50) not null,
    lname varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    birthDate date,
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset student1:createtblcompany labels:r1 context:dev
--comment: example comment
create table company (
    companyId SERIAL primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30),
    state char(2),
    zip varchar(10)
)


--changeset student2:altertblperson-country labels:r1 context:dev
--comment: example comment
alter table company add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

--changeset student2:grantall labels:r1 context:dev
--comment: example comment
GRANT ALL on company;


--changeset student1:createIdxexample labels:r1,qcdemo context:dev
--comment: create index for searching by last name on person table
CREATE INDEX IF NOT EXISTS lnameSearch on person( lname);
--rollback DROP INDEX lnameSearch;