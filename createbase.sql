drop table if exists employee;
drop table if exists phone_number_employee;
drop table if exists receptionist;
drop table if exists doctor;
drop table if exists nurse;
drop table if exists client;
drop table if exists phone_number_client;
drop table if exists permanent_doctor;
drop table if exists trainee_doctor;
drop table if exists supervision_report;
drop table if exists appointment;
drop table if exists consultation;
drop table if exists consultation_assistant;
drop table if exists diagnostic_code;
drop table if exists diagnostic_code_relation;
drop table if exists consultation_diagnostic;
drop table if exists medication;
drop table if exists prescription;
drop table if exists procdure;
drop table if exists procedure_in_consultation;
drop table if exists procedure_radiology;
drop table if exists teeth;
drop table if exists procedure_charting;


create table employee(
    vat varchar(255),
    name varchar(255),
    birth_date date,
    street varchar(255),
    city varchar(255),
    zip varchar(10),
    iban varchar(255),
    salary int,
    UNIQUE (iban),
    CHECK (salary>=0),
    primary key(vat)
);

create table phone_number_employee(
    vat varchar(255),
    phone varchar(255),
    primary key(vat, phone),
    foreign key(vat) references employee(vat)
);

create table receptionist(
    vat varchar(255),
    primary key(vat),
    foreign key(vat) references employee(vat)
);

create table doctor(
    vat varchar(255),
    specialization varchar(255),
    biography text(800),
    e_mail varchar(255),
    UNIQUE(e_mail),
    primary key(vat),
    foreign key(vat) references employee(vat));

create table nurse(
    vat varchar(255),
    primary key(vat),
    foreign key(vat) references employee(vat)
);

create table client(
    vat varchar(255),
    name varchar(255),
    birth_date date,
    street varchar(255),
    city varchar(255),
    zip varchar(10),
    gender varchar(20),
    age tinyint,
    CHECK(age>=0),
    primary key(vat)
);

create table phone_number_client(
    vat varchar(255),
    phone varchar(255),
    primary key(vat, phone),
    foreign key(vat) references client(vat)
);

create table permanent_doctor(
    vat varchar(255),
    years tinyint,
    primary key(vat),
    foreign key(vat) references doctor(vat)
);

create table trainee_doctor(
    vat varchar(255),
    supervisor varchar(255),
    primary key(vat),
    foreign key(supervisor) references permanent_doctor(vat)
);

create table supervision_report(
    vat varchar(255),
    date_timestamp datetime,
    description text,
    evaluation tinyint,
    CHECK (evaluation>0 and evaluation<6),
    primary key(vat, date_timestamp),
    foreign key(vat) references trainee_doctor(vat)
);

create table appointment(
    vat_doctor  varchar(255),
    date_timestamp datetime,
    description text,
    vat_client varchar(255),
    primary key(vat_doctor, date_timestamp),
    foreign key(vat_doctor) references doctor(vat),
    foreign key(vat_client) references client(vat)
);

create table consultation(
    vat_doctor varchar(255),
    date_timestamp datetime,
    soap_s text,
    soap_o text,
    soap_a text,
    soap_p text,
    primary key(vat_doctor, date_timestamp),
    foreign key(vat_doctor, date_timestamp) references appointment(vat_doctor, date_timestamp)
);

create table consultation_assistant(
    vat_doctor varchar(255),
    date_timestamp datetime,
    vat_nurse varchar(255),
    primary key(vat_doctor, date_timestamp),
    foreign key(vat_doctor, date_timestamp) references consultation(vat_doctor, date_timestamp),
	foreign key(vat_nurse) references nurse(vat)
);

create table diagnostic_code(
	id varchar(255),
	description text,
	primary key(id)
);

create table diagnostic_code_relation(
	id_1 varchar(255),
	id_2 varchar(255),
	dc_type int,
	primary key(id_1, id_2),
	foreign key(id_1) references diagnostic_code(id),
	foreign key(id_2) references diagnostic_code(id)
);

create table consultation_diagnostic(
	vat_doctor varchar(255),
	date_timestamp datetime,
	id varchar(255),
	primary key(vat_doctor, date_timestamp, id),
	foreign key(vat_doctor, date_timestamp) references consultation(vat_doctor, date_timestamp),
	foreign key(id) references diagnostic_code(id)
);

create table medication(
	name varchar(255),
	lab varchar(255),
	primary key(name, lab)
);

create table prescription(
	name varchar(255),
	lab varchar(255),
	vat_doctor varchar(255),
	date_timestamp datetime,
	id varchar(255),
	dosage varchar(255),
	description text,
	primary key(name, lab, vat_doctor, date_timestamp, id),
	foreign key(vat_doctor, date_timestamp, id) references consultation_diagnostic(vat_doctor, date_timestamp, id),
	foreign key(name, lab) references medication(name, lab)
);

create table procdure(
	name varchar(255),
	procdure_type int,
	primary key(name)
);

create table procedure_in_consultation(
	name varchar(255),
	vat_doctor varchar(255),
	date_timestamp datetime,
	description text,
	primary key(name, vat_doctor, date_timestamp),
	foreign key(name) references procdure(name),
	foreign key(vat_doctor, date_timestamp) references consultation(vat_doctor, date_timestamp)
);

create table procedure_radiology(
	name varchar(255),
	file_name varchar(255),
	vat_doctor varchar(255),
	date_timestamp datetime,
	primary key(name, file_name, vat_doctor, date_timestamp),
	foreign key(name, vat_doctor, date_timestamp) references procedure_in_consultation(name, vat_doctor, date_timestamp)
);

create table teeth(
	quadrant int,
	nmbr int,
	name varchar(255),
	primary key(quadrant, nmbr)
);

create table procedure_charting(
	name varchar(255),
	vat_doctor varchar(255),
	date_timestamp datetime,
	quadrant int,
	nmbr int,
	descr int,
	measure int,
	primary key(name, vat_doctor, date_timestamp, quadrant, nmbr),
	foreign key(name, vat_doctor, date_timestamp) references procedure_in_consultation(name, vat_doctor, date_timestamp),
	foreign key(quadrant, nmbr) references teeth(quadrant, nmbr)
);

/*2.1*/

INSERT INTO client (vat,name,birth_date,street,city,zip,gender,age)
VALUES ('A001', 'James Jones', '1990-05-07', 'Berna', 'London', '80-852', 'male', 29),
('B001', 'Daniel Morris', '1990-05-07', 'Venus', 'Rome', '50-012', 'male', 29);

INSERT INTO phone_number_client (vat,phone) 
VALUES ('A001', '546 897 231'),
('B001', '566 237 411');

INSERT INTO employee(vat,name,birth_date,street,city,zip,IBAN,salary)
VALUES ('E001', 'Jane Sweettooth');

INSERT INTO doctor(vat,specialization,biography,e_mail)
VALUES ('E001', 'A');

INSERT INTO appointment(vat_doctor,date_timestamp,description,vat_client)
VALUES ('E001');

INSERT INTO consultation(vat_doctor, date_timestamp, soap_s, soap_o, soap_a, soap_p)
VALUES ('E001');

SELECT distinct VAT, name, pnc.phone
FROM client as cl, employee as e, doctor as d, counsultation as co, phone_number_client as pnc
WHERE e.name = "Jane Sweettooth" and d.VAT = e.VAT and d.VAT = co.VAT_doctor 
and cl.VAT = co.VAT_client and pnc.VAT = cl.VAT;

/*2.2

employee(VAT,name,birth_date,street,city,zip,IBAN,salary)

phone_number_employee(VAT,phone)

doctor(VAT,specialization,biography,e-mail)

permanent_doctor(VAT,years)

trainee_doctor(vat,supervisor)

supervision_report(VAT,date_timestamp,description,evaluation)

*/
INSERT INTO employee(vat,name,birth_date,street,city,zip,iban,salary)
VALUES();

INSERT INTO phone_number_employee(vat,phone) 
VALUES (),
();

INSERT INTO doctor(vat,specialization,biography,e_mail)
VALUES ()

INSERT INTO permanent_doctor(VAT,years)
VALUES()

INSERT INTO trainee_doctor(vat,supervisor)
VALUES()

INSERT INTO supervision_report(VAT,date_timestamp,description,evaluation)
VALUES()

SELECT distinct td.vat, te.name, pe.name, sr.evaluation, sr.description
FROM employee as te, employee as pe, trainee_doctor as td, supervision_report as sr
WHERE (sr.evaluation < 5 OR sr.description LIKE '%insufficient%') 
    AND (sr.vat = td.vat AND td.supervisor = pe.vat AND td.vat = te.vat)
    ORDER BY sr.evaluation DESC;
