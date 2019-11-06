insert into employee(vat, name, birth_date, street, city, zip, IBAN, salary)
values
	('E001', 'Jane Sweettooth', '1965-02-23', 'Serwenda', 'Moscow', '12-121', 'IB0001', 5000),
	('E002', 'Kate Sweettooth', '1955-11-11', 'Serwenda', 'Moscow', '12-121', 'IB0002', 15000),
	('E003', 'Mariano Bungalow', '1958-04-14', 'Serwenda', 'Moscow', '12-121', 'IB0003', 2000),
	('E004', 'Domenico Pelluci', '1976-06-16', 'Serwenda', 'Moscow', '12-121', 'IB0004', 1500),
	('E005', 'Stan Kowalski', '1966-07-17', 'Serwenda', 'Moscow', '12-121', 'IB0005', 1000),
	('E006', 'Alec Earnheart', '1967-04-21', 'Serwenda', 'Moscow', '12-121', 'IB0006', 1000),
	('E007', 'Joonsoo Makataze', '1980-03-21', 'Serwenda', 'Moscow', '12-121', 'IB0007', 1000),
	('E008', 'Vergund Tamata', '1983-07-23', 'Serwenda', 'Moscow', '12-121', 'IB0008', 3000),
	('E009', 'Monika Veluzio', '1990-08-11', 'Serwenda', 'Moscow', '12-121', 'IB0009', 5000),
	('E010', 'Carlos Lopez', '1967-12-14', 'Serwenda', 'Moscow', '12-121', 'IB0010', 4550);

insert into phone_number_employee (vat, phone) 
values 
	('E001', '116 197 232'),
	('E002', '226 237 433'),
	('E003', '336 337 412'),
	('E004', '446 437 512'),
	('E005', '556 531 411'),
	('E006', '661 637 411'),
	('E007', '773 737 411'),
	('E008', '882 837 411'),
	('E009', '991 937 411'),
	('E010', '393 937 411');

insert into client (vat, name, birth_date, street, city, zip, gender, age)
values 
	('C001', 'James Jones', '1990-06-07', 'Berna', 'London', '80-852', 'male', 29),
	('C002', 'Daniel Morris', '1985-09-07', 'Praca de Scola', 'Rome', '50-012', 'male', 34),
	('C003', 'Boris Merc', '1988-12-07', 'Kosinskiego', 'Warsaw', '01-015', 'male', 31),
	('C004', 'Onte Bam', '1996-01-07', 'Verde de Verde', 'Tokio', '50-555', 'female', 23),
	('C005', 'Stefania Petru', '1992-02-07', 'Domingo', 'Lisbon', '00-012', 'female', 27),
	('C006', 'Antoni Klepanowicz', '1999-02-07', 'Pastela', 'Lisbon', '00-012', 'male', 20),
	('C007', 'Jan Kowalski', '2006-04-07', 'Benfica', 'Lisbon', '00-012', 'male', 13),
	('C008', 'Theresa Willborrow', '2003-05-12', 'Lisbon', 'Lisbon', '00-012', 'female', 16),
	('C009', 'John Dwarfer', '2008-05-14', 'Berna', 'Sevilla', '50-112', 'male', 11),
	('C010', 'Miguel Sanchez', '2010-05-13', 'Segunda', 'Porto', '53-012', 'male', 9);

insert into phone_number_client (vat, phone) 
values 
	('C001', '146 897 232'),
	('C002', '266 237 433'),
	('C003', '366 237 412'),
	('C004', '466 237 512'),
	('C005', '566 431 411'),
	('C006', '641 237 411'),
	('C007', '713 237 411'),
	('C008', '852 237 411'),
	('C009', '911 237 411'),
	('C010', '333 237 411');

insert into doctor(vat, specialization, biography, e_mail)
values
	('E001', 'A', 'biography1', 'e1@sibd.pt'),
	('E002', 'B', 'biography2', 'e2@sibd.pt'),
	('E003', 'C', 'biography3', 'e3@sibd.pt'),
	('E004', 'D', 'biography4', 'e4@sibd.pt');

insert into nurse(vat)
values
	('E005'),
	('E006'),
	('E007'),
	('E008');

insert into receptionist(vat)
values
	('E009'),
	('E010');

insert into permanent_doctor(vat, years)
values
	('E001', 25),
	('E002', 10);

insert into trainee_doctor(vat, supervisor)
values
	('E003', 'E001'),
	('E004', 'E002');
	
insert into supervision_report(vat, date_timestamp, description, evaluation)
values
	('E003', '2019-04-01 09:50:00', 'insufficient', 1),
	('E004', '2019-04-01 09:50:00', 'ok', 3),
	('E003', '2019-06-10 09:50:00', 'ok', 4),
	('E004', '2019-06-10 09:50:00', 'ok', 4);

insert into appointment(vat_doctor, date_timestamp, description, vat_client)
values
	('E001', '2018-01-11 11:50:00', 'description_1' , 'C001'),
	('E001', '2015-02-11 10:50:00', 'description_2' , 'C001'),
	('E001', '2019-03-11 09:50:00', 'description_3' , 'C002'),
	('E001', '2019-04-11 10:50:00', 'description_4' , 'C002'),
	('E002', '2019-05-11 16:50:00', 'description_5' , 'C003'),
	('E002', '2019-06-11 17:50:00', 'description_6' , 'C003'),
	('E002', '2019-07-11 13:50:00', 'description_7' , 'C004'),
	('E002', '2019-08-11 13:20:00', 'description_8' , 'C004'),
	('E003', '2018-09-11 14:30:00', 'description_9' , 'C005'),
	('E003', '2019-01-11 11:40:00', 'description_10' , 'C005'),
	('E003', '2012-02-11 14:10:00', 'description_11' , 'C006'),
	('E003', '2013-03-11 15:10:00', 'description_12' , 'C006'),
	('E004', '2014-04-11 11:10:00', 'description_13' , 'C007'),
	('E004', '2014-05-11 12:50:00', 'description_14' , 'C007'),
	('E004', '2000-01-01 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-02 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-03 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-04 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-05 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-06 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-07 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-08 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-09 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-10 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-11 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-12 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-13 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-14 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-15 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-16 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-17 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-18 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-19 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-20 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-21 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-22 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-23 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-24 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-25 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-26 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-27 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-01-28 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-01 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-02 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-03 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-04 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-05 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-06 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-07 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-08 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-09 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-10 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-11 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-12 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-13 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-14 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-15 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-16 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-17 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-18 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-19 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-20 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-21 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-22 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-23 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-24 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-25 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-26 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-27 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-02-28 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-01 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-02 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-03 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-04 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-05 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-06 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-07 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-08 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-09 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-10 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-11 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-12 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-13 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-14 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-15 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-16 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-17 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-18 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-19 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-20 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-21 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-22 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-23 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-24 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-25 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-26 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-27 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-03-28 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-10 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-11 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-12 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-13 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-14 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-15 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-16 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-17 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-18 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-19 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-20 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-21 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-22 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-23 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-24 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-25 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-26 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-27 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-28 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-29 13:40:00', 'description_15' , 'C001'),
	('E004', '2000-04-30 13:40:00', 'description_15' , 'C001'),
	('E004', '2018-05-24 14:50:00', 'description_16' , 'C008');

insert into consultation(vat_doctor, date_timestamp, soap_s, soap_o, soap_a, soap_p)
values
	('E001', '2018-01-11 11:50:00', 's1' , 'gingivitis', 'a1' , 'p1'),
	('E002', '2019-05-11 16:50:00', 's2' , 'periodontosis', 'a2' , 'p2'),
	('E003', '2018-09-11 14:30:00', 's3' , 'o3', 'a3' , 'p3'),
	('E004', '2014-04-11 11:10:00', 's4' , 'o4', 'a4' , 'p4'),
	('E001', '2015-02-11 10:50:00', 's5' , 'gingivitis', 'a5' , 'p5'),
	('E002', '2019-06-11 17:50:00', 's6' , 'periodontosis', 'a6' , 'p6'),
	('E003', '2019-01-11 11:40:00', 's7' , 'gingivitis', 'a7' , 'p7'),
	('E004', '2014-05-11 12:50:00', 's8' , 'o8', 'a8' , 'p8'),
	('E001', '2019-03-11 09:50:00', 's9' , 'o9', 'a9' , 'p9');

insert into consultation_assistant(vat_doctor, date_timestamp, vat_nurse)
values
	('E001', '2018-01-11 11:50:00', 'E005'),
	('E002', '2019-05-11 16:50:00', 'E006'),
	('E003', '2018-09-11 14:30:00', 'E007'),
	('E004', '2014-04-11 11:10:00', 'E008'),
	('E001', '2015-02-11 10:50:00', 'E005'),
	('E002', '2019-06-11 17:50:00', 'E006'),
	('E003', '2019-01-11 11:40:00', 'E007'),
	('E004', '2014-05-11 12:50:00', 'E008'),
	('E001', '2019-03-11 09:50:00', 'E005');
	
insert into diagnostic_code(id, description)
values
	('0001', 'description1'),
	('0002', 'description2'),
	('0003', 'description3'),
	('0004', 'description4'),
	('0005', 'description5'),
	('0006', 'description6');
	
insert into diagnostic_code_relation(id_1, id_2, dc_type)
values
	('0001', '0002', 0),
	('0001', '0003', 1),
	('0001', '0004', 2),
	('0001', '0005', 3),
	('0001', '0006', 4),
	('0004', '0002', 0),
	('0004', '0003', 1),
	('0002', '0004', 2),
	('0002', '0005', 1),
	('0002', '0006', 4);

insert into consultation_diagnostic(vat_doctor, date_timestamp, id)
values
	('E001', '2018-01-11 11:50:00', '0001'),
	('E002', '2019-05-11 16:50:00', '0001'),
	('E003', '2018-09-11 14:30:00', '0002'),
	('E004', '2014-04-11 11:10:00', '0002'),
	('E001', '2015-02-11 10:50:00', '0002'),
	('E002', '2019-06-11 17:50:00', '0004'),
	('E003', '2019-01-11 11:40:00', '0004'),
	('E004', '2014-05-11 12:50:00', '0005');
	
insert into medication(name, lab)
values
	('Asanta', 'Monsanto'),
	('AsantaDuoForte', 'Monsanto'),
	('Prostamax', 'Bayer'),
	('Dentix', 'Bayer'),
	('DentalCareX', 'Polfarma'),
	('Rebuilder', 'Polfarma'),
	('HealthProstamo', 'Monsanto'),
	('Cirrus', 'Januszex'),
	('VertaBraeDental', 'Januszex'),
	('Plus C', 'Monsanto');

insert into prescription(name, lab, vat_doctor, date_timestamp, id, dosage, description)
values
	('Asanta', 'Monsanto', 'E001', '2018-01-11 11:50:00', '0001', '1g',  'desc1'),
	('Prostamax', 'Bayer', 'E002', '2019-05-11 16:50:00', '0001', '2g',  'desc2'),
	('Rebuilder', 'Polfarma', 'E003', '2018-09-11 14:30:00', '0002', '3g',  'desc3'),
	('DentalCareX', 'Polfarma', 'E004', '2014-04-11 11:10:00', '0002', '3g',  'desc4'),
	('Plus C', 'Monsanto', 'E001', '2015-02-11 10:50:00', '0002', '3g',  'desc5'),
	('AsantaDuoForte', 'Monsanto', 'E002', '2019-06-11 17:50:00', '0004', '5g',  'desc6');

insert into procdure(name, procdure_type)
values
	('dental removal', 0),
	('dental cleaning', 1),
	('dental adding', 2),
	('dental reflush', 3),
	('p1', 4),
	('p2', 5),
	('p3', 6),
	('p4', 7),
	('p5', 8);
	
insert into teeth(quadrant, nmbr, name)
values
	(1, 1, 'n1'),
	(1, 2, 'n2'),
	(1, 3, 'n3'),
	(1, 4, 'n4'),
	(2, 1, 'n1'),
	(2, 2, 'n2'),
	(2, 3, 'n3'),
	(2, 4, 'n4'),
	(3, 1, 'n1'),
	(3, 2, 'n2'),
	(3, 3, 'n3'),
	(3, 4, 'n4');
	
insert into procedure_in_consultation(name, vat_doctor, date_timestamp, description)
values
	('dental removal', 'E001', '2018-01-11 11:50:00', 'd1'),
	('dental reflush', 'E002', '2019-05-11 16:50:00', 'd3'),
	('dental removal', 'E003', '2018-09-11 14:30:00', 'd4'),
	('p1', 'E004', '2014-04-11 11:10:00', 'd5'),
	('dental removal', 'E001', '2015-02-11 10:50:00', 'd6'),
	('p3', 'E002', '2019-06-11 17:50:00', 'd7'),
	('dental removal', 'E003', '2019-01-11 11:40:00', 'd8'),	
	('dental removal', 'E004', '2014-05-11 12:50:00', 'd9');
	
insert into procedure_radiology(name, filee, vat_doctor, date_timestamp)
values
	('dental removal', 'f1', 'E001', '2018-01-11 11:50:00'),
	('dental reflush', 'f2', 'E002', '2019-05-11 16:50:00'),
	('dental removal', 'f3', 'E003', '2018-09-11 14:30:00'),
	('p1', 'f4', 'E004', '2014-04-11 11:10:00'),
	('dental removal', 'f5', 'E003', '2019-01-11 11:40:00'),
	('dental removal', 'f6', 'E004', '2014-05-11 12:50:00');
	
insert into procedure_charting(name, vat_doctor, date_timestamp, quadrant, nmbr, descr, measure)
values
	('dental removal', 'E001', '2018-01-11 11:50:00', 1, 1, 3, 1.0),
	('dental reflush', 'E002', '2019-05-11 16:50:00', 3, 3, 1, 2.0),
	('dental removal', 'E003', '2018-09-11 14:30:00', 1, 1, 1, 2.0),
	('p1', 'E004', '2014-04-11 11:10:00', 1, 2, 1, 1.0),
	('dental removal', 'E001', '2015-02-11 10:50:00', 1, 3, 1, 3.0),
	('p3', 'E002', '2019-06-11 17:50:00', 3, 4, 3, 3.0),
	('dental removal', 'E003', '2019-01-11 11:40:00', 1, 4, 2, 4.0),
	('dental removal', 'E004', '2014-05-11 12:50:00', 3, 4, 3, 2.0);