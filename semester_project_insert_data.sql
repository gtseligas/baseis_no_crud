--
--	Delete everything from the tables
--

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

DELETE FROM organisation;
DELETE FROM university;
DELETE FROM research_center;
DELETE FROM corporation;
DELETE FROM researcher;
DELETE FROM executive;
DELETE FROM research_field;
DELETE FROM organisation_phone;
DELETE FROM program;
DELETE FROM researcher_project;
DELETE FROM project_field;
DELETE FROM project;
DELETE FROM deliverable;


Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('1','NTUA','National Tehchnical University of Athens', 'Iroon Polytechneioy', '39', '13030', 'Athens', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('1','1000000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('2','NKUA','National Kapodistrian University of Athens', 'Panepistimiou', '15', '13231', 'Athens', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('2','2000000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('3','UWA','University of West Attica', 'Eptanisou', '20', '13231', 'Athens', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('3','1500000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('4','AUA','Agricultular University of Athens', 'Mesogeion', '1', '15420', 'Athens', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('4','100000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('5','UTH','University of Thessaly', 'Agias', '2', '69420', 'Larisa', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('5','200000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('6','ATH','Athena', 'Tsakalof', '42', '69420', 'Athens', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('6','1000000','300000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('7','ZS','Zeus', 'Zaimi', '41', '12420', 'Athens', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('7','1400000','350000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('8','POS','Poseidon', 'Ethnikis Antistaseos', '5', '17171', 'Corfu', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('8','1500000','1000000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('9','INT','Intracom', 'Katechaki', '6', '13231', 'Athens', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('9','10000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('10','SKR','Skroutz', 'Ampelakioy', '4', '13231', 'Larisa', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('10','15000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('11','GGL','Google', 'Dublin Avenue', '121', '12450', 'Dublin', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('11','24000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('12','AMZ','Amazon', 'Norman Powel', '150', '12451', 'London', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('12','13400000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('13','UPi','University of Piraeus', 'Poseidonos', '60', '13131', 'Athens', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('13','3000000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('14','UoP','University of Patras', 'Patron', '15', '16261', 'Patras', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('14','2500000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('15','UoL','University of London', 'Oxford', '114', '55131', 'London', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('15','6000000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('16','IU','Ionian University', 'Kerkyras', '1', '55551', 'Corfu', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('16','500000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('17','MIT','Massachuchets Institute of Technology', 'Boston', '220', '71420', 'Boston', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('17','900000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('18','CM','Center of Medicine', 'Enipeos', '51', '13220', 'Athens', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('18','1100000','350000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('19','CB','Center of Biology', 'Nikonos', '11', '13420', 'Athens', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('19','1500000','310000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('20','CC','Center of Chemistry', 'Platonos', '15', '19271', 'Patras', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('20','1780000','1900000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('21','FB','Facebook', 'Oxbridge', '116', '55531', 'London', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('21','90000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('22','AT','Akamai Technology', 'Stanford', '115', '15231', 'Boston', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('22','19000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('23','EF','Efood', 'Solonos', '60', '19450', 'Athens', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('23','44000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('24','IBM','IBM', 'Harley', '250', '12451', 'London', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('24','93400000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('25','INT','Intel', 'Bond', '260', '12451', 'London', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('25','12300000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('26','TSL','Tesla', 'Kanari', '25', '13451', 'Thessaloniki', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('26','11000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('27','UT','Uber Telecom', 'Kyproy', '2', '13451', 'Thessaloniki', 'corporation');

Insert into corporation
 (`organisation_id`,`capital`,`category`)
Values
('27','12000000','corporation');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('28','CCS','Center of Comp Sci', 'Panos', '19', '24271', 'Athens', 'research_center');

Insert into research_center
 (`organisation_id`,`priv_budget`,`publ_budget`,`category`)
Values
('28','1230000','2100000','research_center');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('29','UA','University of Aegean', 'Samoy', '20', '72320', 'Samos', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('29','100000','university');

Insert into organisation
 (`organisation_id`,`abbreviation`,`organisation_name`,`street`,`str_number`,`postal_code`,`city`,`category`)
Values
('30','UoC','University of Crete', 'Kritis', '15', '12420', 'Crete', 'university');

Insert into university
 (`organisation_id`,`budget`,`category`)
Values
('30','900000','university');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('1','Giorgos','Tseligas','male','2000-11-26','2020-12-20','1');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('2','Loykas','Sfoyntoyris','male','2000-5-13','2021-11-20','1');
 
Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('3','Foivos','Ntoylas','male','2001-10-05','2019-01-20','2');
 
Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('4','Makis','Basileioy','male','1995-10-04','2021-01-20','2');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('5','Manolis','Loylas','male','1960-10-05','2000-04-20','3');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('6','Nikolas','Loylas','male','1948-10-05','2001-03-25','3');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('7','Nikos','Masoyras','male','2000-11-08','2019-10-20','4');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('8','Marios','Romanos','male','2000-03-07','2021-03-07','4');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('9','Aggelos','Kiayias','male','1960-10-11','2000-10-20','5');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('10','Dionysis','Kavouras','male','1989-10-30','2017-06-25','5');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('11','Dimitris','Fotakis','male','1965-10-05','2008-08-10','6');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('12','Nikos','Papaspyrou','male','1970-10-05','2004-07-25','7');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('13','Manolis','Ftoylis','male','1998-10-21','2019-07-23','8');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('14','Manos','Manoy','male','1950-11-25','2011-02-03','9');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('15','Sasa','Mpasta','female','1980-07-12','2019-02-03','10');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('16','Niky','Saolidoy','female','1970-06-12','2002-12-03','11');
 
 Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`gender`,`birth_date`,`hire_date`,`organisation_id`)
Values
 ('17','Eirini','Eleftherioy','female','2000-05-11','2022-01-13','12');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('1','Eirini','Riga');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('2','Basiliki','Feraiou');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('3','Mpampis','Pipis');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('4','Kyriakos','Mitsotakis');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('5','Alexis','Tsipras');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('6','Vaggelis','Marinakis');

Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('7','Panagiotis','Kontogiannis');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('8','Stratos','Xrysopoulos');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('9','Sotiris','Tsiavos');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('10','Xristina','Rapti');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('11','Efi','Nikoloay');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('12','Xristina','Gkika');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('13','Eirini','Mpoyxla');
 
 Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('14','Xristos','Tsolkas');

Insert into executive
 (`executive_id`,`first_name`,`last_name`)
Values
 ('15','Marios','Andreou');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('1','Mathematics');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('2','Electrical Engineering');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('3','Computer Science');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('4','Geology');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('5','Physics');

Insert into research_field
 (`field_id`,`title`)
Values
 ('6','Mechanical Engineering');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('7','Civil Engineering');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('8','Electronic Engineering');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('9','Chemistry');

Insert into research_field
 (`field_id`,`title`)
Values
 ('10','Biology'); 
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('11','Medicine');

Insert into research_field
 (`field_id`,`title`)
Values
 ('12','Archaeology');
 
 Insert into research_field
 (`field_id`,`title`)
Values
 ('13','History');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('1','2105019555');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('1','2105019544');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('2','2105019556');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('2','2105019136');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('3','2102519555');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('4','2105019420');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('5','2495019555');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('6','2249419555');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('7','6983707305');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('8','249405968');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('9','6969696969');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('9','6969696719');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('10','1188011880');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('10','1188011881');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('11','6978919555');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('11','6978919554');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('12','2494019555'); 
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('12','6972683971');
 
 Insert into organisation_phone
 (`organisation_id`,`phone_number`)
Values
 ('12','2494019888');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('1','West Attica','HIPEAC');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('2','West Attica','Orion');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('3','Macedonia','Ranger');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('4','Peloponnese','Horizon');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('5','Peloponnese','Tourism Regeneration');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('6','Peloponnese','STEP');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('7','Thessaly','ATHLOS');

Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('8','Thessaly','WIFIC');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('9','West Attica','BOOST');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('10','West Attica','Andromeda');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('11','North Attica','Perseus');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('18','Giorgos','Ioannou','2015-11-12','19','1977-5-8','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('19','Giorgos','Vasileiou','2016-9-29','28','1982-6-1','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('20','Giorgos','Nikolaou','2011-8-23','22','1971-3-12','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('21','Giorgos','Dimitriou','2010-10-14','27','1962-5-31','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('22','Giorgos','Panagiotou','2012-12-16','10','1965-7-7','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('23','Giorgos','Eleftheriou','2014-8-6','22','1977-8-29','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('24','Giorgos','Georgiou','2012-10-14','24','1963-9-24','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('25','Giorgos','Pappas','2014-9-22','20','1977-11-12','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('26','Giorgos','Panagopoylos','2021-2-10','21','1981-11-29','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('27','Giorgos','Papadopoulos','2016-11-15','29','1978-5-14','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('28','Giannis','Ioannou','2012-3-5','7','1975-10-6','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('29','Giannis','Vasileiou','2019-9-7','5','1963-10-29','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('30','Giannis','Nikolaou','2010-11-13','25','1980-9-21','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('31','Giannis','Dimitriou','2013-8-25','13','1986-6-30','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('32','Giannis','Panagiotou','2019-10-21','25','1971-12-23','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('33','Giannis','Eleftheriou','2016-3-5','6','1987-6-30','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('34','Giannis','Georgiou','2018-7-25','28','1982-10-12','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('35','Giannis','Pappas','2010-7-6','18','1976-6-5','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('36','Giannis','Panagopoylos','2013-12-9','22','1964-5-4','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('37','Giannis','Papadopoulos','2014-11-29','28','1976-4-28','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('38','Nikos','Ioannou','2011-10-4','20','1977-4-13','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('39','Nikos','Vasileiou','2012-1-23','11','1971-3-10','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('40','Nikos','Nikolaou','2019-1-8','11','1968-12-13','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('41','Nikos','Dimitriou','2021-6-5','22','1984-9-6','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('42','Nikos','Panagiotou','2012-8-13','7','1980-9-16','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('43','Nikos','Eleftheriou','2019-4-26','25','1978-1-5','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('44','Nikos','Georgiou','2015-7-19','8','1979-3-7','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('45','Nikos','Pappas','2021-2-9','22','1968-1-14','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('46','Nikos','Panagopoylos','2016-2-19','6','1977-11-22','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('47','Nikos','Papadopoulos','2013-6-30','4','1980-8-14','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('48','Marios','Ioannou','2018-1-17','16','1988-6-29','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('49','Marios','Vasileiou','2011-4-7','24','1963-8-20','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('50','Marios','Nikolaou','2018-7-28','9','1960-7-19','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('51','Marios','Dimitriou','2015-3-2','13','1989-2-13','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('52','Marios','Panagiotou','2020-3-25','9','1982-12-22','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('53','Marios','Eleftheriou','2021-5-11','25','1975-5-21','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('54','Marios','Georgiou','2018-1-13','6','1975-3-20','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('55','Marios','Pappas','2015-7-22','19','1979-1-27','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('56','Marios','Panagopoylos','2012-2-24','23','1981-12-19','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('57','Marios','Papadopoulos','2015-9-30','20','1965-9-17','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('58','Dimitris','Ioannou','2015-10-4','23','1978-10-25','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('59','Dimitris','Vasileiou','2011-2-24','28','1962-5-5','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('60','Dimitris','Nikolaou','2014-6-23','27','1962-7-16','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('61','Dimitris','Dimitriou','2019-1-16','20','1988-6-25','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('62','Dimitris','Panagiotou','2011-2-19','30','1962-1-3','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('63','Dimitris','Eleftheriou','2013-5-6','8','1979-8-13','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('64','Dimitris','Georgiou','2016-2-12','27','1979-12-19','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('65','Dimitris','Pappas','2011-11-5','2','1968-12-11','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('66','Dimitris','Panagopoylos','2018-3-5','16','1961-12-21','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('67','Dimitris','Papadopoulos','2011-9-21','7','1972-9-5','male');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('68','Eleni','Ioannou','2011-7-17','7','1988-11-22','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('69','Eleni','Vasileiou','2012-2-22','27','1979-4-14','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('70','Eleni','Nikolaou','2018-1-18','25','1989-4-30','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('71','Eleni','Dimitriou','2012-10-6','3','1965-11-11','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('72','Eleni','Panagiotou','2018-8-10','3','1968-6-14','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('73','Eleni','Eleftheriou','2011-11-2','15','1977-3-9','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('74','Eleni','Georgiou','2010-2-17','19','1989-3-26','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('75','Eleni','Pappas','2015-3-3','6','1973-12-19','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('76','Eleni','Panagopoylos','2016-6-29','18','1980-8-8','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('77','Eleni','Papadopoulos','2019-5-27','22','1973-8-11','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('78','Maria','Ioannou','2017-10-3','3','1972-6-12','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('79','Maria','Vasileiou','2020-3-27','21','1962-9-30','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('80','Maria','Nikolaou','2019-3-19','2','1974-11-20','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('81','Maria','Dimitriou','2018-12-27','15','1986-2-17','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('82','Maria','Panagiotou','2017-12-10','9','1984-2-26','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('83','Maria','Eleftheriou','2020-3-26','15','1961-11-13','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('84','Maria','Georgiou','2020-12-11','11','1984-5-15','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('85','Maria','Pappas','2016-6-11','18','1970-11-29','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('86','Maria','Panagopoylos','2017-1-9','16','1978-10-6','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('87','Maria','Papadopoulos','2017-3-22','9','1987-10-19','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('88','Katerina','Ioannou','2017-3-31','18','1980-11-14','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('89','Katerina','Vasileiou','2011-6-15','17','1985-5-3','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('90','Katerina','Nikolaou','2012-8-26','4','1976-4-4','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('91','Katerina','Dimitriou','2014-9-2','2','1960-9-12','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('92','Katerina','Panagiotou','2012-1-18','26','1989-2-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('93','Katerina','Eleftheriou','2021-1-23','11','1977-7-10','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('94','Katerina','Georgiou','2011-10-3','2','1974-9-8','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('95','Katerina','Pappas','2012-1-12','1','1960-10-31','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('96','Katerina','Panagopoylos','2017-8-28','14','1984-5-25','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('97','Katerina','Papadopoulos','2011-9-27','8','1966-7-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('98','Dimitra','Ioannou','2019-2-1','8','1981-10-3','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('99','Dimitra','Vasileiou','2018-1-17','10','1987-6-27','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('100','Dimitra','Nikolaou','2011-8-8','24','1965-5-3','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('101','Dimitra','Dimitriou','2016-11-16','30','1974-7-6','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('102','Dimitra','Panagiotou','2018-4-13','18','1983-12-11','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('103','Dimitra','Eleftheriou','2010-3-9','2','1985-4-9','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('104','Dimitra','Georgiou','2011-4-29','7','1975-6-15','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('105','Dimitra','Pappas','2012-8-8','22','1985-7-22','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('106','Dimitra','Panagopoylos','2011-6-8','7','1974-3-10','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('107','Dimitra','Papadopoulos','2011-1-22','22','1962-6-30','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('108','Konstantina','Ioannou','2017-3-22','25','1975-3-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('109','Konstantina','Vasileiou','2012-12-26','14','1972-1-28','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('110','Konstantina','Nikolaou','2021-3-26','3','1962-11-22','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('111','Konstantina','Dimitriou','2021-12-15','11','1989-1-11','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('112','Konstantina','Panagiotou','2019-11-10','22','1969-2-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('113','Konstantina','Eleftheriou','2014-3-18','16','1984-12-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('114','Konstantina','Georgiou','2014-4-30','13','1961-2-25','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('115','Konstantina','Pappas','2019-1-8','22','1989-2-20','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('116','Konstantina','Panagopoylos','2015-10-18','26','1970-3-2','female');

Insert into researcher
 (`researcher_id`,`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`)
values('117','Konstantina','Papadopoulos','2017-5-22','10','1983-1-19','female');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('1','7409488245');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('1','5171152761');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('1','4232216857');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('2','1892795431');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('3','3341138742');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('3','7793198650');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('3','2860248650');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('4','0061389344');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('5','0661849637');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('6','8291359840');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('6','7636154209');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('7','3726016575');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('7','4120014607');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('7','1777733599');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('8','1826603801');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('8','2509478351');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('8','2016406189');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('9','4143988087');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('10','8383710734');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('10','9651099683');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('10','4849925533');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('11','7438088068');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('11','1989722828');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('12','0781586124');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('12','2586265392');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('12','4618211976');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('13','9520039181');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('13','9532525867');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('14','2294196982');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('15','5491250839');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('15','3967997693');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('15','5766582544');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('16','6163355328');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('16','2536186214');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('17','2915036492');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('18','3440596342');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('19','8758125744');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('19','4442930778');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('19','7303825203');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('20','2975343211');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('20','3253512226');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('21','0703400531');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('21','0675004549');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('21','5648216831');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('22','8492070607');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('22','0567384926');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('22','5774579830');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('23','2367155402');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('23','6061117300');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('23','4830129038');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('24','5770893074');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('24','7837100834');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('25','0145620356');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('25','6676771916');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('26','7276513995');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('26','9265324442');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('26','7923731578');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('27','8324115951');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('27','0645308913');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('28','7463652810');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('28','3155221748');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('28','2363035280');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('29','2259108507');

Insert into organisation_phone
 (`organisation_id`,`phone_number`)
values('30','0534104859');

Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('12','West Attica','HIPEAC2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('13','West Attica','Orion2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('14','Macedonia','Ranger2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('15','Peloponnese','Horizon2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('16','Peloponnese','Tourism Regen2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('17','Peloponnese','STEP2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('18','Thessaly','ATHLOS2');

Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('19','Thessaly','WIFIC2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('20','West Attica','BOOST2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('21','West Attica','Andromeda2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('22','North Attica','Perseus2');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('23','West Attica','HIPEAC3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('24','West Attica','Orion3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('25','Macedonia','Ranger3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('26','Peloponnese','Horizon3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('27','Peloponnese','Tourism Regen3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('28','Peloponnese','STEP3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('29','Thessaly','ATHLOS3');

Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('30','Thessaly','WIFIC3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('31','West Attica','BOOST3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('32','West Attica','Andromeda3');
 
 Insert into program
 (`program_id`,`administration`,`program_name`)
Values
 ('33','North Attica','Perseus3');


/*
Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('1','1996-9-5','1998-9-10','Pushing the boundaries of technology in semiconductor technologies','smarty4covid0','900000','63','1996-2-26','5','2','1','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('2','2006-11-13','2008-11-25','It aims to create new technologies in semiconductor technologies','CCHM0','400000','96','2005-12-2','7','11','6','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('3','2021-6-23','2023-6-4','The project aims at the design, implementation and evaluation of semiconductor technologies','SMART-BLISTER0','300000','72','2021-3-7','8','7','8','11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('4','2022-9-8','2025-8-22','The project aims at the development of an Intelligent system in semiconductor technologies','EDUSAFE0','700000','80','2021-7-31','2','1','3','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('5','2021-12-29','2023-4-30','Aims to produce beyond state of the art multilevel research in broadband communications','xEnox','200000','65','1990-12-17','5','9','11','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('6','2021-12-29','2023-4-30','Aims to produce beyond state of the art multilevel research in semiconductor technologies','mBioRF0','200000','65','2020-12-17','5','9','11','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('7','1997-11-29','1999-5-5','The scope of the project is a multiscientific view of semiconductor technologies','DEM-II-MED0','500000','87','1997-6-1','3','3','9','11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('8','1997-3-4','1999-6-15','The scope of the project is to conduct a study that aims in the development of semiconductor technologies','SIFEM0','700000','67','1997-1-19','4','5','7','11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('9','2016-10-26','2018-10-6','The project aims at the development of semiconductor technologies','EDURES0','900000','67','2016-10-22','3','10','1','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('10','1997-12-14','1999-2-9','Conducting innovative research in power distribution and smart energy production methods','HydroFSP0','600000','100','1997-8-29','9','12','1','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('11','2018-5-13','2020-5-31','Pushing the boundaries of technology in power distribution and smart energy production methods','VOC2DEAF0','700000','87','2018-5-13','7','7','10','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('12','1998-7-17','2001-7-24','It aims to create new technologies in power distribution and smart energy production methods','PHOTONIC0','500000','77','1998-5-5','5','9','10','4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('13','2004-12-16','2007-4-18','The project aims at the design, implementation and evaluation of power distribution and smart energy production methods','ARES0','1000000','93','2004-2-18','1','6','8','15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('14','2004-12-5','2007-1-29','The project aims at the development of an Intelligent system in power distribution and smart energy production methods','PISCES0','1000000','97','2004-2-24','8','5','11','3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('15','1997-12-15','2001-3-10','The goal of the project is to study, design and develop a novel system inpower distribution and smart energy production methods','QUEENS0','800000','77','1997-5-29','8','5','1','10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('16','2006-12-29','2009-12-16','Aims to produce beyond state of the art multilevel research in power distribution and smart energy production methods','uBio0','900000','62','2005-12-28','4','9','10','13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('17','2022-2-10','2023-2-23','The scope of the project is a multiscientific view of power distribution and smart energy production methods','medINV0','500000','96','2021-2-22','6','5','3','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('18','2021-6-10','2023-10-21','The scope of the project is to conduct a study that aims in the development of power distribution and smart energy production methods','RAmONES0','500000','64','2020-12-22','4','5','7','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('19','2020-8-10','2024-2-12','The project aims at the development of power distribution and smart energy production methods','AlgoX0','700000','73','2019-11-28','9','3','10','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('20','2008-9-11','2011-10-18','Conducting innovative research in seismic wave signal processing','ENDORSE1','400000','84','2007-10-9','6','2','4','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('21','2020-7-28','2022-6-15','Pushing the boundaries of technology in seismic wave signal processing','smarty4covid1','100000','70','2019-7-22','4','9','11','10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('22','1996-2-29','1999-8-26','It aims to create new technologies in seismic wave signal processing','CCHM1','300000','65','1995-12-3','4','5','2','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('23','2003-9-27','2005-12-15','The project aims at the design, implementation and evaluation of seismic wave signal processing','SMART-BLISTER1','600000','78','2003-2-7','1','9','5','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('24','2021-7-7','2023-9-23','The project aims at the development of an Intelligent system in seismic wave signal processing','EDUSAFE1','100000','94','2019-5-27','3','3','9','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('25','2021-6-4','2024-6-12','The goal of the project is to study, design and develop a novel system inseismic wave signal processing','MOSAIC1','100000','73','2021-2-24','7','3','9','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('26','2014-9-18','2018-3-20','Aims to produce beyond state of the art multilevel research in seismic wave signal processing','mBioRF1','600000','65','2014-6-16','3','6','11','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('27','2020-5-13','2023-12-9','The scope of the project is a multiscientific view of seismic wave signal processing','DEM-II-MED1','700000','61','2019-8-24','8','7','2','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('28','2013-12-5','2015-3-28','The scope of the project is to conduct a study that aims in the development of seismic wave signal processing','SIFEM1','700000','60','2013-12-4','9','9','4','6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('29','2008-8-5','2011-12-5','The project aims at the development of seismic wave signal processing','EDURES1','800000','71','2008-4-29','10','9','1','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('30','2006-11-9','2009-8-24','Conducting innovative research in solar energy production techniques','HydroFSP1','1000000','91','2006-7-3','6','5','11','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('31','2021-5-2','2024-5-30','Pushing the boundaries of technology in solar energy production techniques','VOC2DEAF1','400000','88','2020-12-7','9','7','11','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('32','2016-6-14','2020-6-4','It aims to create new technologies in solar energy production techniques','PHOTONIC1','500000','69','2016-1-8','10','3','4','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('33','2013-2-17','2016-9-16','The project aims at the design, implementation and evaluation of solar energy production techniques','ARES1','300000','87','2012-4-16','10','6','11','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('34','2005-2-12','2006-12-14','The project aims at the development of an Intelligent system in solar energy production techniques','PISCES1','500000','91','2004-10-18','2','10','5','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('35','2006-6-29','2007-12-15','The goal of the project is to study, design and develop a novel system insolar energy production techniques','QUEENS1','900000','93','2005-11-24','4','12','7','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('36','2016-5-5','2018-7-17','Aims to produce beyond state of the art multilevel research in solar energy production techniques','uBio1','100000','87','2016-5-4','7','8','5','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('37','2000-1-7','2001-11-17','The scope of the project is a multiscientific view of solar energy production techniques','medINV1','1000000','92','1999-6-22','10','4','3','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('38','2007-7-2','2010-4-19','The scope of the project is to conduct a study that aims in the development of solar energy production techniques','RAmONES1','100000','77','2007-3-14','8','8','1','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('39','2011-9-14','2013-2-22','The project aims at the development of solar energy production techniques','AlgoX1','600000','98','2011-5-14','2','3','9','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('40','2009-4-4','2011-7-5','Conducting innovative research in ancient artifact restoration methods','ENDORSE2','800000','66','2008-4-26','6','3','8','4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('41','2013-2-7','2016-6-9','Pushing the boundaries of technology in ancient artifact restoration methods','smarty4covid2','400000','98','2013-1-15','9','6','9','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('42','2017-6-4','2021-2-15','It aims to create new technologies in ancient artifact restoration methods','CCHM2','700000','73','2017-1-7','9','12','6','10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('43','2021-4-18','2023-8-5','The project aims at the design, implementation and evaluation of ancient artifact restoration methods','SMART-BLISTER2','100000','69','2021-1-30','9','12','6','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('44','2022-4-9','2025-11-20','The project aims at the development of an Intelligent system in ancient artifact restoration methods','EDUSAFE2','500000','62','2021-5-19','6','2','10','3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('45','2004-4-3','2008-2-8','The goal of the project is to study, design and develop a novel system inancient artifact restoration methods','MOSAIC2','900000','78','2004-4-2','6','5','2','15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('46','2021-11-10','2023-10-31','Aims to produce beyond state of the art multilevel research in ancient artifact restoration methods','mBioRF2','900000','95','2020-11-24','10','10','6','1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('47','2021-9-30','2023-5-13','The scope of the project is a multiscientific view of ancient artifact restoration methods','DEM-II-MED2','600000','84','2021-7-10','10','8','3','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('48','2017-3-27','2020-7-5','The scope of the project is to conduct a study that aims in the development of ancient artifact restoration methods','SIFEM2','100000','87','2017-3-12','5','7','2','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('49','2012-12-18','2014-3-6','The project aims at the development of ancient artifact restoration methods','EDURES2','500000','79','2012-6-23','4','8','5','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('50','2022-6-9','2025-3-27','Conducting innovative research in molecular technologies','HydroFSP2','800000','71','2021-5-31','9','8','9','15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('51','2022-2-14','2025-11-14','Pushing the boundaries of technology in molecular technologies','VOC2DEAF2','900000','60','2021-3-1','4','3','11','15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('52','2021-2-21','2024-7-11','It aims to create new technologies in molecular technologies','PHOTONIC2','800000','96','2020-7-9','10','10','7','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('53','2021-6-3','2023-3-16','The project aims at the design, implementation and evaluation of molecular technologies','ARES2','100000','77','2021-3-31','9','7','4','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('54','2005-4-9','2008-2-9','The project aims at the development of an Intelligent system in molecular technologies','PISCES2','100000','97','2004-10-21','1','3','3','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('55','1994-10-27','1996-7-25','The goal of the project is to study, design and develop a novel system inmolecular technologies','QUEENS2','600000','97','1993-12-15','6','1','1','3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('56','2021-5-2','2025-3-21','Aims to produce beyond state of the art multilevel research in molecular technologies','uBio2','800000','84','2020-10-14','6','7','2','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('57','2012-6-24','2015-12-16','The scope of the project is a multiscientific view of molecular technologies','medINV2','900000','81','2012-6-8','2','3','4','6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('58','1995-6-29','1999-6-1','The scope of the project is to conduct a study that aims in the development of molecular technologies','RAmONES2','1000000','94','1995-6-13','8','12','2','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('59','2020-1-26','2024-1-14','The project aims at the development of molecular technologies','AlgoX2','1000000','75','2019-8-31','5','5','4','1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('60','2008-2-5','2009-11-30','Conducting innovative research in remote surgery technologies','ENDORSE3','1000000','72','2007-10-21','8','7','8','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('61','2020-1-2','2021-2-21','Pushing the boundaries of technology in remote surgery technologies','smarty4covid3','200000','82','2019-2-18','6','8','6','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('62','2004-8-10','2007-9-11','It aims to create new technologies in remote surgery technologies','CCHM3','500000','64','2004-3-11','7','9','9','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('63','2002-11-14','2005-9-27','The project aims at the design, implementation and evaluation of remote surgery technologies','SMART-BLISTER3','100000','83','2002-5-8','8','5','10','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('64','2004-2-26','2006-1-5','The project aims at the development of an Intelligent system in remote surgery technologies','EDUSAFE3','900000','93','2003-5-7','3','5','5','6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('65','2017-4-2','2019-3-7','The goal of the project is to study, design and develop a novel system inremote surgery technologies','MOSAIC3','900000','85','2016-11-6','3','8','1','6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('66','2012-1-19','2014-7-18','Aims to produce beyond state of the art multilevel research in remote surgery technologies','mBioRF3','300000','77','2011-3-1','8','6','10','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('67','2018-3-2','2020-2-11','The scope of the project is a multiscientific view of remote surgery technologies','DEM-II-MED3','700000','66','2017-9-5','10','1','3','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('68','2004-9-23','2005-10-17','The scope of the project is to conduct a study that aims in the development of remote surgery technologies','SIFEM3','900000','95','2003-10-20','6','5','1','5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('69','2021-7-6','2023-4-24','The project aims at the development of remote surgery technologies','EDURES3','100000','89','2020-10-22','4','5','10','10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('70','2018-4-24','2021-3-7','Conducting innovative research in broadband modulation techniques','HydroFSP3','1000000','65','2017-12-12','2','6','11','13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('71','2019-10-1','2022-8-26','Pushing the boundaries of technology in broadband modulation techniques','VOC2DEAF3','100000','65','2018-10-21','2','11','1','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('72','2008-8-19','2011-12-8','It aims to create new technologies in broadband modulation techniques','PHOTONIC3','900000','77','2007-11-16','2','1','2','13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('73','2006-4-27','2010-4-20','The project aims at the design, implementation and evaluation of broadband modulation techniques','ARES3','400000','84','2006-1-14','4','8','11','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('74','2019-2-11','2022-6-15','The project aims at the development of an Intelligent system in broadband modulation techniques','PISCES3','400000','99','2018-10-16','4','9','5','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('75','2004-10-8','2007-5-19','The goal of the project is to study, design and develop a novel system inbroadband modulation techniques','QUEENS3','300000','98','2004-4-14','6','6','11','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('76','2007-9-5','2009-3-17','Aims to produce beyond state of the art multilevel research in broadband modulation techniques','uBio3','700000','80','2007-3-22','5','9','2','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('77','2020-3-24','2023-7-17','The scope of the project is a multiscientific view of broadband modulation techniques','medINV3','200000','77','2019-3-17','4','5','9','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('78','2010-8-25','2014-2-16','The scope of the project is to conduct a study that aims in the development of broadband modulation techniques','RAmONES3','600000','63','2009-12-8','8','11','7','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('79','2008-5-1','2011-1-25','The project aims at the development of broadband modulation techniques','AlgoX3','200000','83','2008-4-2','6','9','9','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('80','2020-4-12','2022-3-18','Conducting innovative research in automatic error correction generation techniques','ENDORSE4','800000','93','2019-7-11','8','1','6','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('81','2022-2-28','2025-1-15','Pushing the boundaries of technology in automatic error correction generation techniques','smarty4covid4','600000','89','2021-10-8','5','2','5','4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('82','1997-8-24','2000-6-23','It aims to create new technologies in automatic error correction generation techniques','CCHM4','500000','84','1996-12-25','1','3','10','13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('83','1992-3-20','1993-11-27','The project aims at the design, implementation and evaluation of automatic error correction generation techniques','SMART-BLISTER4','500000','67','1991-10-20','7','6','6','15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('84','2008-2-1','2010-7-3','The project aims at the development of an Intelligent system in automatic error correction generation techniques','EDUSAFE4','400000','63','2007-7-3','9','12','2','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('85','2010-10-11','2012-1-8','The goal of the project is to study, design and develop a novel system inautomatic error correction generation techniques','MOSAIC4','100000','74','2010-2-3','8','7','6','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('86','1990-9-10','1992-10-31','Aims to produce beyond state of the art multilevel research in automatic error correction generation techniques','mBioRF4','300000','81','1990-4-5','9','8','11','16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('87','2017-1-22','2020-7-11','The scope of the project is a multiscientific view of automatic error correction generation techniques','DEM-II-MED4','100000','85','2016-6-7','4','11','3','2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('88','2000-4-21','2002-9-10','The scope of the project is to conduct a study that aims in the development of automatic error correction generation techniques','SIFEM4','800000','89','2000-4-6','5','1','5','4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('89','1998-2-17','2000-12-23','The project aims at the development of automatic error correction generation techniques','EDURES4','100000','96','1998-2-12','6','9','1','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('90','1999-12-10','2003-9-17','Conducting innovative research in algorithmic lower bound proof methods','HydroFSP4','1000000','77','1999-4-20','3','11','10','17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('91','2008-9-17','2009-11-24','Pushing the boundaries of technology in algorithmic lower bound proof methods','VOC2DEAF4','200000','90','2008-6-11','2','5','7','1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('92','1997-7-28','1998-12-30','It aims to create new technologies in algorithmic lower bound proof methods','PHOTONIC4','1000000','86','1996-10-2','1','3','11','13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('93','2013-12-25','2016-4-12','The project aims at the design, implementation and evaluation of algorithmic lower bound proof methods','ARES4','300000','76','2013-6-25','1','6','2','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('94','2008-7-17','2011-8-12','The project aims at the development of an Intelligent system in algorithmic lower bound proof methods','PISCES4','500000','73','2008-4-8','4','9','4','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('95','2022-12-21','2024-3-28','The goal of the project is to study, design and develop a novel system inalgorithmic lower bound proof methods','QUEENS4','800000','73','2021-6-29','5','7','1','7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('96','1990-4-27','1992-10-25','Aims to produce beyond state of the art multilevel research in algorithmic lower bound proof methods','uBio4','100000','91','1990-3-25','2','4','9','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('97','2008-4-6','2009-11-24','The scope of the project is a multiscientific view of algorithmic lower bound proof methods','medINV4','400000','87','2007-6-30','2','12','1','3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('98','2000-6-5','2002-4-16','The scope of the project is to conduct a study that aims in the development of algorithmic lower bound proof methods','RAmONES4','200000','69','1999-8-22','3','10','11','11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('99','1994-12-3','1996-8-25','The project aims at the development of algorithmic lower bound proof methods','AlgoX4','600000','97','1993-12-4','5','9','5','9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('100','2005-1-8','2008-12-9','Conducting innovative research in semiconductor technologies','ENDORSE0','1000000','70','2004-4-7','2','3','8','17');


Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('101','2019-6-9','2020-9-2','Conducting innovative research in semiconductor technologies','ENDORSE0','400000','87','2019-5-25','13','17','25','36');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('102','2014-2-20','2017-3-8','Pushing the boundaries of technology in semiconductor technologies','smarty4covid0','100000','62','2013-12-20','5','29','4','75');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('103','1997-10-29','1999-10-26','It aims to create new technologies in semiconductor technologies','CCHM0','500000','72','1997-8-28','8','15','18','87');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('104','2010-8-18','2012-10-12','The project aims at the design, implementation and evaluation of semiconductor technologies','SMART-BLISTER0','300000','60','2010-1-12','3','15','1','40');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('105','2009-8-13','2013-5-20','The project aims at the development of an Intelligent system in semiconductor technologies','EDUSAFE0','900000','96','2009-3-16','7','24','3','111');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('106','1994-5-17','1995-11-2','The goal of the project is to study, design and develop a novel system insemiconductor technologies','MOSAIC0','100000','90','1993-7-16','3','13','13','61');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('107','2005-9-7','2008-11-28','Aims to produce beyond state of the art multilevel research in semiconductor technologies','mBioRF0','100000','88','2005-4-15','11','4','30','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('108','2015-6-2','2018-4-9','The scope of the project is a multiscientific view of semiconductor technologies','DEM-II-MED0','300000','69','2014-12-31','1','18','18','80');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('109','2008-10-18','2011-8-31','The scope of the project is to conduct a study that aims in the development of semiconductor technologies','SIFEM0','600000','86','2007-12-23','13','25','29','29');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('110','2014-11-4','2016-1-21','The project aims at the development of semiconductor technologies','EDURES0','800000','79','2014-8-16','7','7','28','54');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('111','2020-5-7','2023-4-3','Conducting innovative research in power distribution and smart energy production methods','HydroFSP0','200000','82','2019-8-18','15','16','7','81');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('112','2004-1-29','2006-6-21','Pushing the boundaries of technology in power distribution and smart energy production methods','VOC2DEAF0','300000','69','2003-8-1','4','12','3','72');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('113','2022-3-8','2025-9-22','It aims to create new technologies in power distribution and smart energy production methods','PHOTONIC0','500000','64','2021-5-21','3','28','32','29');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('114','2004-12-16','2007-4-18','The project aims at the design, implementation and evaluation of power distribution and smart energy production methods','ARES0','1000000','93','2004-2-18','11','18','30','109');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('115','2013-7-16','2015-5-13','The project aims at the development of an Intelligent system in power distribution and smart energy production methods','PISCES0','100000','75','2012-9-10','6','15','26','100');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('116','2002-1-18','2003-11-25','The goal of the project is to study, design and develop a novel system inpower distribution and smart energy production methods','QUEENS0','200000','100','2001-4-14','1','6','26','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('117','2010-9-6','2013-9-14','Aims to produce beyond state of the art multilevel research in power distribution and smart energy production methods','uBio0','300000','97','2009-9-9','2','27','8','83');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('118','2004-8-11','2006-1-15','The scope of the project is a multiscientific view of power distribution and smart energy production methods','medINV0','800000','77','2004-2-11','1','21','9','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('119','2000-10-16','2001-11-23','The scope of the project is to conduct a study that aims in the development of power distribution and smart energy production methods','RAmONES0','200000','84','1999-11-10','4','9','9','78');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('120','2008-3-11','2009-6-8','The project aims at the development of power distribution and smart energy production methods','AlgoX0','400000','76','2008-2-15','13','21','11','47');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('121','2019-3-19','2020-12-29','Conducting innovative research in seismic wave signal processing','ENDORSE1','300000','82','2019-2-7','13','1','5','19');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('122','2020-10-21','2022-8-24','Pushing the boundaries of technology in seismic wave signal processing','smarty4covid1','300000','84','2020-4-18','6','8','21','29');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('123','2002-2-12','2003-2-20','It aims to create new technologies in seismic wave signal processing','CCHM1','200000','82','2001-3-9','11','25','11','37');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('124','2017-4-4','2019-8-21','The project aims at the design, implementation and evaluation of seismic wave signal processing','SMART-BLISTER1','300000','68','2016-5-4','3','3','26','117');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('125','2013-8-5','2017-6-15','The project aims at the development of an Intelligent system in seismic wave signal processing','EDUSAFE1','300000','99','2013-6-26','1','4','30','76');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('126','2003-12-18','2006-9-11','The goal of the project is to study, design and develop a novel system inseismic wave signal processing','MOSAIC1','900000','81','2003-5-24','2','27','21','51');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('127','2003-10-31','2006-3-25','Aims to produce beyond state of the art multilevel research in seismic wave signal processing','mBioRF1','200000','100','2003-4-19','14','16','31','12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('128','2021-8-31','2024-8-30','The scope of the project is a multiscientific view of seismic wave signal processing','DEM-II-MED1','300000','72','2021-6-10','11','21','24','76');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('129','2003-8-24','2005-11-11','The scope of the project is to conduct a study that aims in the development of seismic wave signal processing','SIFEM1','300000','74','2003-7-12','2','16','25','108');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('130','2003-11-20','2005-9-3','The project aims at the development of seismic wave signal processing','EDURES1','300000','87','2003-3-30','3','13','16','68');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('131','2000-4-1','2001-5-4','Conducting innovative research in solar energy production techniques','HydroFSP1','800000','90','1999-9-20','2','15','14','1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('132','2022-1-29','2024-10-12','Pushing the boundaries of technology in solar energy production techniques','VOC2DEAF1','1000000','70','2021-7-27','7','25','19','32');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('133','2007-5-2','2009-11-26','It aims to create new technologies in solar energy production techniques','PHOTONIC1','400000','69','2006-5-3','4','11','10','106');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('134','2002-3-31','2005-12-7','The project aims at the design, implementation and evaluation of solar energy production techniques','ARES1','100000','80','2001-9-24','5','3','12','79');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('135','1993-5-9','1994-8-6','The project aims at the development of an Intelligent system in solar energy production techniques','PISCES1','100000','61','1993-3-17','12','12','31','101');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('136','1997-9-13','1999-3-4','The goal of the project is to study, design and develop a novel system insolar energy production techniques','QUEENS1','700000','70','1997-1-11','13','5','11','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('137','1994-7-20','1998-4-21','Aims to produce beyond state of the art multilevel research in solar energy production techniques','uBio1','1000000','76','1994-7-4','13','2','28','6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('138','2000-11-23','2003-7-2','The scope of the project is a multiscientific view of solar energy production techniques','medINV1','400000','67','2000-2-28','6','9','24','92');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('139','2001-4-25','2004-1-19','The scope of the project is to conduct a study that aims in the development of solar energy production techniques','RAmONES1','800000','91','2000-8-5','7','2','16','68');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('140','2002-9-28','2004-5-16','The project aims at the development of solar energy production techniques','AlgoX1','800000','88','2001-12-23','8','7','9','20');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('141','1993-4-9','1996-10-12','Conducting innovative research in ancient artifact restoration methods','ENDORSE2','800000','63','1993-3-29','14','25','24','99');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('142','2019-11-11','2022-12-30','Pushing the boundaries of technology in ancient artifact restoration methods','smarty4covid2','700000','99','2019-8-14','3','22','18','105');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('143','2021-11-4','2023-3-5','It aims to create new technologies in ancient artifact restoration methods','CCHM2','1000000','84','2021-2-3','3','26','20','117');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('144','2020-12-3','2022-7-23','The project aims at the design, implementation and evaluation of ancient artifact restoration methods','SMART-BLISTER2','200000','68','2020-9-13','11','3','16','14');
*/

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('1','2014-2-16','2016-3-30','Conducting innovative research in semiconductor technologies','ENDORSE0','500000','88','2013-8-14','11','25','1','58');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','1','Deliverable 1','This is deliverable 1','2016-2-1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('2','2004-12-6','2006-6-14','Pushing the boundaries of technology in semiconductor technologies','smarty4covid0','800000','85','2004-12-2','1','4','10','73');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','2','Deliverable 1','This is deliverable 1','2005-10-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','2','Deliverable 2','This is deliverable 2','2005-11-2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('3','1991-9-30','1992-10-18','It aims to create new technologies in semiconductor technologies','CCHM0','800000','79','1991-1-11','11','22','12','56');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','3','Deliverable 1','This is deliverable 1','1992-5-29');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('4','1993-4-22','1996-6-22','The project aims at the design, implementation and evaluation of semiconductor technologies','SMART-BLISTER0','1000000','65','1992-4-24','12','18','24','97');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','4','Deliverable 1','This is deliverable 1','1995-11-7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','4','Deliverable 2','This is deliverable 2','1993-10-8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('5','2014-8-19','2016-3-19','The project aims at the development of an Intelligent system in semiconductor technologies','EDUSAFE0','700000','80','2014-1-18','13','8','31','75');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('6','1998-7-17','2001-7-24','The goal of the project is to study, design and develop a novel system insemiconductor technologies','MOSAIC0','1000000','63','1998-5-5','7','13','5','109');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','6','Deliverable 1','This is deliverable 1','1999-6-24');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','6','Deliverable 2','This is deliverable 2','2001-1-27');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('7','2018-3-27','2020-9-29','Aims to produce beyond state of the art multilevel research in semiconductor technologies','mBioRF0','900000','80','2017-7-24','9','1','12','66');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','7','Deliverable 1','This is deliverable 1','2018-5-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','7','Deliverable 2','This is deliverable 2','2018-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','7','Deliverable 3','This is deliverable 3','2020-7-10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('8','2011-9-20','2013-5-2','The scope of the project is a multiscientific view of semiconductor technologies','DEM-II-MED0','800000','76','2011-5-2','1','23','30','107');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('9','2002-2-10','2003-2-23','The scope of the project is to conduct a study that aims in the development of semiconductor technologies','SIFEM0','800000','90','2001-2-22','9','14','1','57');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','9','Deliverable 1','This is deliverable 1','2002-12-28');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('10','2004-11-26','2006-1-4','The project aims at the development of semiconductor technologies','EDURES0','900000','84','2004-6-9','8','30','2','100');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('11','1997-9-22','1999-11-16','Conducting innovative research in power distribution and smart energy production methods','HydroFSP0','200000','80','1996-9-25','13','22','31','75');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('12','2020-8-10','2024-2-12','Pushing the boundaries of technology in power distribution and smart energy production methods','VOC2DEAF0','700000','73','2019-11-28','4','3','21','44');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('13','2013-9-21','2016-7-5','It aims to create new technologies in power distribution and smart energy production methods','PHOTONIC0','200000','63','2012-10-11','9','4','13','7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','13','Deliverable 1','This is deliverable 1','2016-5-14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('14','2016-1-11','2019-10-22','The project aims at the design, implementation and evaluation of power distribution and smart energy production methods','ARES0','500000','68','2015-7-26','4','6','3','61');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','14','Deliverable 1','This is deliverable 1','2016-10-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('15','2000-5-18','2001-12-10','The project aims at the development of an Intelligent system in power distribution and smart energy production methods','PISCES0','300000','62','1999-12-6','4','16','29','7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','15','Deliverable 1','This is deliverable 1','2001-6-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','15','Deliverable 2','This is deliverable 2','2001-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','15','Deliverable 3','This is deliverable 3','2001-9-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('16','2021-12-23','2023-3-28','The goal of the project is to study, design and develop a novel system inpower distribution and smart energy production methods','QUEENS0','100000','90','2019-5-7','10','26','16','77');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('17','2021-12-23','2023-3-28','The goal of the project is to study, design and develop a novel system inpower distribution and smart energy production methods','QUEENS0','100000','91','2003-5-7','11','25','15','76');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','17','Deliverable 1','This is deliverable 1','2004-7-28');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('18','2022-1-16','2024-7-29','The scope of the project is a multiscientific view of power distribution and smart energy production methods','medINV0','100000','79','2021-1-24','12','22','22','44');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('19','2021-3-16','2023-8-23','The scope of the project is to conduct a study that aims in the development of power distribution and smart energy production methods','RAmONES0','600000','100','2020-5-13','5','28','21','98');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('20','2005-8-31','2009-3-26','The project aims at the development of power distribution and smart energy production methods','AlgoX0','300000','97','2005-3-22','5','7','9','47');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','20','Deliverable 1','This is deliverable 1','2005-10-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','20','Deliverable 2','This is deliverable 2','2008-6-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','20','Deliverable 3','This is deliverable 3','2006-2-1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('21','2021-9-18','2023-3-20','Conducting innovative research in seismic wave signal processing','ENDORSE1','500000','73','2019-6-16','10','14','26','52');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','21','Deliverable 1','This is deliverable 1','2016-10-7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','21','Deliverable 2','This is deliverable 2','2017-12-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','21','Deliverable 3','This is deliverable 3','2016-6-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('22','1998-1-29','2000-2-19','Pushing the boundaries of technology in seismic wave signal processing','smarty4covid1','400000','97','1997-4-6','7','4','27','79');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','22','Deliverable 1','This is deliverable 1','2000-1-29');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','22','Deliverable 2','This is deliverable 2','1999-11-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','22','Deliverable 3','This is deliverable 3','1998-4-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('23','2019-4-7','2022-5-21','It aims to create new technologies in seismic wave signal processing','CCHM1','600000','75','2018-6-1','5','30','18','63');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','23','Deliverable 1','This is deliverable 1','2019-4-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','23','Deliverable 2','This is deliverable 2','2020-3-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','23','Deliverable 3','This is deliverable 3','2019-10-31');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('24','2021-7-22','2025-5-7','The project aims at the design, implementation and evaluation of seismic wave signal processing','SMART-BLISTER1','400000','68','2021-5-6','10','10','10','34');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','24','Deliverable 1','This is deliverable 1','1991-11-8');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','24','Deliverable 2','This is deliverable 2','1992-12-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','24','Deliverable 3','This is deliverable 3','1991-9-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('25','2019-12-22','2023-4-1','The project aims at the development of an Intelligent system in seismic wave signal processing','EDUSAFE1','600000','85','2019-12-10','2','21','24','32');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','25','Deliverable 1','This is deliverable 1','2019-5-15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('26','2005-12-13','2007-10-31','The goal of the project is to study, design and develop a novel system inseismic wave signal processing','MOSAIC1','700000','85','2005-9-22','2','22','8','117');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('27','2006-6-29','2007-12-15','Aims to produce beyond state of the art multilevel research in seismic wave signal processing','mBioRF1','900000','93','2005-11-24','14','12','7','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('28','2021-10-11','2024-5-21','The scope of the project is a multiscientific view of seismic wave signal processing','DEM-II-MED1','200000','80','2021-7-3','14','2','32','4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','28','Deliverable 1','This is deliverable 1','2002-2-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','28','Deliverable 2','This is deliverable 2','2002-11-19');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('29','2005-10-17','2008-8-12','The scope of the project is to conduct a study that aims in the development of seismic wave signal processing','SIFEM1','800000','64','2005-3-24','14','5','20','2');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','29','Deliverable 1','This is deliverable 1','2008-5-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('30','2021-7-2','2023-4-19','The project aims at the development of seismic wave signal processing','EDURES1','500000','73','2020-3-14','9','20','21','13');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','30','Deliverable 1','This is deliverable 1','2010-2-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','30','Deliverable 2','This is deliverable 2','2009-5-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','30','Deliverable 3','This is deliverable 3','2008-8-4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('31','2021-10-4','2023-9-21','Conducting innovative research in solar energy production techniques','HydroFSP1','1000000','79','2020-4-3','5','28','10','31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','31','Deliverable 1','This is deliverable 1','1999-12-15');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','31','Deliverable 2','This is deliverable 2','1998-11-30');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('32','2021-10-4','2025-7-3','Pushing the boundaries of technology in solar energy production techniques','VOC2DEAF1','900000','87','2021-3-25','9','26','10','6');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','32','Deliverable 1','This is deliverable 1','1994-6-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','32','Deliverable 2','This is deliverable 2','1994-6-16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('33','2021-4-4','2023-7-5','It aims to create new technologies in solar energy production techniques','PHOTONIC1','400000','67','2019-4-26','8','1','4','33');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','33','Deliverable 1','This is deliverable 1','2010-7-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','33','Deliverable 2','This is deliverable 2','2010-9-25');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('34','2021-7-14','2023-5-17','The project aims at the design, implementation and evaluation of solar energy production techniques','ARES1','500000','71','2020-12-24','10','30','5','59');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','34','Deliverable 1','This is deliverable 1','2010-3-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','34','Deliverable 2','This is deliverable 2','2010-9-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('35','2016-12-24','2020-1-24','The project aims at the development of an Intelligent system in solar energy production techniques','PISCES1','400000','64','2016-11-3','11','18','1','102');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','35','Deliverable 1','This is deliverable 1','2017-8-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','35','Deliverable 2','This is deliverable 2','2018-12-18');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('36','2021-9-11','2023-12-7','The goal of the project is to study, design and develop a novel system insolar energy production techniques','QUEENS1','100000','96','2020-10-4','1','18','13','1');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','36','Deliverable 1','This is deliverable 1','1995-4-8');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','36','Deliverable 2','This is deliverable 2','1994-8-21');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','36','Deliverable 3','This is deliverable 3','1995-11-13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('37','2019-1-21','2022-1-31','Aims to produce beyond state of the art multilevel research in solar energy production techniques','uBio1','300000','68','2018-8-22','12','24','6','18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','37','Deliverable 1','This is deliverable 1','2019-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','37','Deliverable 2','This is deliverable 2','2021-3-10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('38','2009-4-11','2011-10-25','The scope of the project is a multiscientific view of solar energy production techniques','medINV1','600000','97','2009-3-18','11','26','12','6');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','38','Deliverable 1','This is deliverable 1','2011-2-18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','38','Deliverable 2','This is deliverable 2','2011-8-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','38','Deliverable 3','This is deliverable 3','2009-9-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('39','2021-5-16','2023-5-15','The scope of the project is to conduct a study that aims in the development of solar energy production techniques','RAmONES1','700000','76','2020-4-17','1','7','9','79');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','39','Deliverable 1','This is deliverable 1','1997-4-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('40','2021-9-30','2023-1-21','The project aims at the development of solar energy production techniques','AlgoX1','500000','65','2020-9-12','2','12','23','2');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','40','Deliverable 1','This is deliverable 1','1997-11-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','40','Deliverable 2','This is deliverable 2','1998-6-4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('41','2008-2-1','2009-9-27','Conducting innovative research in ancient artifact restoration methods','ENDORSE2','100000','89','2007-6-28','8','12','4','113');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','41','Deliverable 1','This is deliverable 1','2009-8-14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('42','2017-3-27','2020-7-5','Pushing the boundaries of technology in ancient artifact restoration methods','smarty4covid2','700000','83','2017-3-12','7','23','12','100');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','42','Deliverable 1','This is deliverable 1','2018-4-23');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('43','2013-2-15','2017-1-30','It aims to create new technologies in ancient artifact restoration methods','CCHM2','800000','61','2013-1-7','6','20','2','114');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','43','Deliverable 1','This is deliverable 1','2013-6-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','43','Deliverable 2','This is deliverable 2','2013-11-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('44','2022-3-12','2025-11-3','The project aims at the design, implementation and evaluation of ancient artifact restoration methods','SMART-BLISTER2','700000','75','2021-5-23','4','18','13','55');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','44','Deliverable 1','This is deliverable 1','1994-7-31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','44','Deliverable 2','This is deliverable 2','1995-7-17');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','44','Deliverable 3','This is deliverable 3','1995-7-23');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('45','2011-5-2','2015-3-21','The project aims at the development of an Intelligent system in ancient artifact restoration methods','EDUSAFE2','800000','84','2010-10-14','11','13','2','74');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('46','1997-7-17','1999-2-12','The goal of the project is to study, design and develop a novel system inancient artifact restoration methods','MOSAIC2','700000','91','1997-4-10','8','24','15','37');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('47','2021-9-15','2023-10-21','Aims to produce beyond state of the art multilevel research in ancient artifact restoration methods','mBioRF2','1000000','66','2020-5-1','9','19','24','69');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('48','2020-1-2','2021-2-21','The scope of the project is a multiscientific view of ancient artifact restoration methods','DEM-II-MED2','600000','70','2019-2-18','10','22','2','27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','48','Deliverable 1','This is deliverable 1','2021-1-21');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','48','Deliverable 2','This is deliverable 2','2020-10-17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('49','2021-2-21','2023-11-20','The scope of the project is to conduct a study that aims in the development of ancient artifact restoration methods','SIFEM2','500000','91','2020-10-17','5','15','1','104');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','49','Deliverable 1','This is deliverable 1','2024-3-15');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','49','Deliverable 2','This is deliverable 2','2023-5-15');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','49','Deliverable 3','This is deliverable 3','2024-4-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('50','2016-4-23','2018-11-15','The project aims at the development of ancient artifact restoration methods','EDURES2','1000000','88','2015-10-29','1','17','22','70');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','50','Deliverable 1','This is deliverable 1','2018-1-21');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','50','Deliverable 2','This is deliverable 2','2018-6-30');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','50','Deliverable 3','This is deliverable 3','2017-2-27');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('51','2004-8-10','2007-9-11','Conducting innovative research in molecular technologies','HydroFSP2','500000','64','2004-3-11','7','21','9','104');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('52','2010-7-13','2012-3-2','Pushing the boundaries of technology in molecular technologies','VOC2DEAF2','800000','99','2010-1-12','15','1','14','49');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','52','Deliverable 1','This is deliverable 1','2011-12-12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('53','2021-3-21','2023-8-20','It aims to create new technologies in molecular technologies','PHOTONIC2','500000','81','2020-12-27','2','4','12','33');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','53','Deliverable 1','This is deliverable 1','1993-8-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','53','Deliverable 2','This is deliverable 2','1992-10-13');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','53','Deliverable 3','This is deliverable 3','1992-7-12');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('54','2021-11-11','2023-6-24','The project aims at the design, implementation and evaluation of molecular technologies','ARES2','700000','84','2020-4-8','12','14','22','21');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','54','Deliverable 1','This is deliverable 1','2001-9-18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','54','Deliverable 2','This is deliverable 2','2002-8-5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('55','2004-5-7','2008-2-14','The project aims at the development of an Intelligent system in molecular technologies','PISCES2','200000','76','2003-6-8','7','15','3','35');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','55','Deliverable 1','This is deliverable 1','2007-1-28');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','55','Deliverable 2','This is deliverable 2','2007-10-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','55','Deliverable 3','This is deliverable 3','2004-12-26');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('56','2016-8-10','2020-8-4','The goal of the project is to study, design and develop a novel system inmolecular technologies','QUEENS2','100000','75','2016-4-22','13','23','28','58');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','56','Deliverable 1','This is deliverable 1','2018-7-13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('57','2004-9-23','2005-10-17','Aims to produce beyond state of the art multilevel research in molecular technologies','uBio2','700000','65','2003-10-20','3','23','4','102');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','57','Deliverable 1','This is deliverable 1','2005-2-25');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','57','Deliverable 2','This is deliverable 2','2004-11-7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('58','2018-8-28','2021-2-7','The scope of the project is a multiscientific view of molecular technologies','medINV2','800000','74','2017-9-7','3','17','5','40');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','58','Deliverable 1','This is deliverable 1','2019-7-7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('59','2014-3-15','2016-12-27','The scope of the project is to conduct a study that aims in the development of molecular technologies','RAmONES2','700000','100','2014-3-6','2','15','20','116');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','59','Deliverable 1','This is deliverable 1','2015-4-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','59','Deliverable 2','This is deliverable 2','2014-5-16');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','59','Deliverable 3','This is deliverable 3','2015-10-17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('60','2019-10-1','2022-8-26','The project aims at the development of molecular technologies','AlgoX2','400000','96','2018-10-21','9','24','4','14');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','60','Deliverable 1','This is deliverable 1','2020-5-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','60','Deliverable 2','This is deliverable 2','2019-12-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('61','2013-9-20','2016-2-5','Conducting innovative research in remote surgery technologies','ENDORSE3','600000','74','2012-10-14','6','28','23','4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','61','Deliverable 1','This is deliverable 1','2015-4-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','61','Deliverable 2','This is deliverable 2','2016-1-16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('62','2017-5-7','2019-6-5','Pushing the boundaries of technology in remote surgery technologies','smarty4covid3','400000','81','2017-1-26','4','30','19','82');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','62','Deliverable 1','This is deliverable 1','2019-4-16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('63','2020-4-12','2022-3-18','It aims to create new technologies in remote surgery technologies','CCHM3','400000','60','2019-7-11','14','3','23','105');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','63','Deliverable 1','This is deliverable 1','2020-8-24');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','63','Deliverable 2','This is deliverable 2','2022-3-16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('64','1994-9-24','1998-1-5','The project aims at the design, implementation and evaluation of remote surgery technologies','SMART-BLISTER3','400000','95','1994-6-27','11','27','4','16');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','64','Deliverable 1','This is deliverable 1','1996-8-13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('65','2012-9-25','2013-11-5','The project aims at the development of an Intelligent system in remote surgery technologies','EDUSAFE3','100000','95','2012-6-19','2','22','6','40');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','65','Deliverable 1','This is deliverable 1','2013-1-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','65','Deliverable 2','This is deliverable 2','2013-2-17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('66','1997-8-24','2000-6-23','The goal of the project is to study, design and develop a novel system inremote surgery technologies','MOSAIC3','700000','72','1996-12-25','4','14','29','8');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','66','Deliverable 1','This is deliverable 1','1999-6-15');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','66','Deliverable 2','This is deliverable 2','2000-5-27');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('67','2021-3-1','2022-7-26','Aims to produce beyond state of the art multilevel research in remote surgery technologies','mBioRF3','800000','87','2020-11-19','9','2','32','63');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('68','2016-1-3','2019-5-21','The scope of the project is a multiscientific view of remote surgery technologies','DEM-II-MED3','400000','67','2015-7-16','3','21','26','65');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('69','2021-1-3','2023-5-21','The scope of the project is a multiscientific view of remote surgery technologies','DEM-II-MED3','400000','65','2020-7-16','2','22','25','64');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','69','Deliverable 1','This is deliverable 1','2018-10-25');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','69','Deliverable 2','This is deliverable 2','2020-12-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','69','Deliverable 3','This is deliverable 3','2020-8-9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('70','2017-6-19','2020-3-18','The project aims at the development of remote surgery technologies','EDURES3','300000','69','2017-1-28','9','28','18','7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','70','Deliverable 1','This is deliverable 1','2018-10-6');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','70','Deliverable 2','This is deliverable 2','2019-3-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','70','Deliverable 3','This is deliverable 3','2018-8-17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('71','2006-6-20','2008-6-18','Conducting innovative research in broadband modulation techniques','HydroFSP3','800000','95','2005-8-27','13','6','29','96');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','71','Deliverable 1','This is deliverable 1','2007-9-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','71','Deliverable 2','This is deliverable 2','2007-1-2');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','71','Deliverable 3','This is deliverable 3','2007-11-7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('72','2001-2-5','2003-9-18','Pushing the boundaries of technology in broadband modulation techniques','VOC2DEAF3','900000','63','2000-12-20','1','22','4','31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','72','Deliverable 1','This is deliverable 1','2002-4-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','72','Deliverable 2','This is deliverable 2','2001-12-14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('73','1995-5-17','1998-6-22','It aims to create new technologies in broadband modulation techniques','PHOTONIC3','100000','72','1994-8-28','11','29','10','22');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('74','2008-5-1','2010-4-14','The project aims at the design, implementation and evaluation of broadband modulation techniques','ARES3','400000','66','2008-1-31','8','28','30','1');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','74','Deliverable 1','This is deliverable 1','2009-1-18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','74','Deliverable 2','This is deliverable 2','2008-9-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('75','1990-4-27','1992-10-25','The project aims at the development of an Intelligent system in broadband modulation techniques','PISCES3','500000','63','1990-3-25','4','4','26','31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','75','Deliverable 1','This is deliverable 1','1990-6-24');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','75','Deliverable 2','This is deliverable 2','1992-7-5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('76','2012-9-10','2013-12-11','The goal of the project is to study, design and develop a novel system inbroadband modulation techniques','QUEENS3','400000','79','2012-3-18','6','15','4','103');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','76','Deliverable 1','This is deliverable 1','2013-4-30');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('77','1993-11-24','1997-11-15','Aims to produce beyond state of the art multilevel research in broadband modulation techniques','uBio3','800000','86','1993-7-9','1','7','23','106');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('78','2000-6-5','2002-4-16','The scope of the project is a multiscientific view of broadband modulation techniques','medINV3','1000000','94','1999-8-22','1','18','12','105');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','78','Deliverable 1','This is deliverable 1','2001-9-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','78','Deliverable 2','This is deliverable 2','2001-12-5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('79','1990-8-2','1991-11-20','The scope of the project is to conduct a study that aims in the development of broadband modulation techniques','RAmONES3','400000','71','1990-7-13','4','22','23','64');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('80','1999-1-18','2000-7-15','The project aims at the development of broadband modulation techniques','AlgoX3','400000','78','1998-8-5','5','14','17','32');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','80','Deliverable 1','This is deliverable 1','1999-6-18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','80','Deliverable 2','This is deliverable 2','2000-6-13');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','80','Deliverable 3','This is deliverable 3','1999-8-4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('81','2003-11-13','2006-8-6','Conducting innovative research in automatic error correction generation techniques','ENDORSE4','300000','65','2003-9-14','2','6','19','98');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','81','Deliverable 1','This is deliverable 1','2004-5-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('82','1998-6-5','2000-9-20','Pushing the boundaries of technology in automatic error correction generation techniques','smarty4covid4','300000','67','1997-10-19','13','4','14','104');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('83','2014-9-19','2015-12-5','It aims to create new technologies in automatic error correction generation techniques','CCHM4','1000000','86','2014-3-12','6','15','10','56');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','83','Deliverable 1','This is deliverable 1','2014-11-28');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('84','2012-3-8','2013-7-12','The project aims at the design, implementation and evaluation of automatic error correction generation techniques','SMART-BLISTER4','700000','62','2011-7-7','2','17','26','42');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','84','Deliverable 1','This is deliverable 1','2013-3-12');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','84','Deliverable 2','This is deliverable 2','2012-6-17');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('85','1995-5-20','1998-4-28','The project aims at the development of an Intelligent system in automatic error correction generation techniques','EDUSAFE4','300000','82','1994-9-12','11','14','29','76');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','85','Deliverable 1','This is deliverable 1','1997-12-30');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('86','2013-4-8','2014-4-18','The goal of the project is to study, design and develop a novel system inautomatic error correction generation techniques','MOSAIC4','100000','82','2012-10-20','1','22','23','108');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','86','Deliverable 1','This is deliverable 1','2013-4-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','86','Deliverable 2','This is deliverable 2','2014-1-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('87','2015-3-12','2019-2-9','Aims to produce beyond state of the art multilevel research in automatic error correction generation techniques','mBioRF4','600000','77','2014-12-9','9','30','7','26');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('88','1991-7-7','1992-11-15','The scope of the project is a multiscientific view of automatic error correction generation techniques','DEM-II-MED4','500000','61','1990-8-27','7','7','28','4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','88','Deliverable 1','This is deliverable 1','1991-12-18');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('89','2022-7-30','2023-8-8','The scope of the project is to conduct a study that aims in the development of automatic error correction generation techniques','SIFEM4','200000','100','2021-12-12','13','18','4','3');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','89','Deliverable 1','This is deliverable 1','2023-7-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','89','Deliverable 2','This is deliverable 2','2022-9-7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','89','Deliverable 3','This is deliverable 3','2023-1-26');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('90','2017-5-31','2019-8-1','The project aims at the development of automatic error correction generation techniques','EDURES4','700000','73','2016-7-19','15','7','29','86');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('91','2014-7-9','2015-12-4','Conducting innovative research in algorithmic lower bound proof methods','HydroFSP4','1000000','91','2014-2-5','11','13','28','59');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','91','Deliverable 1','This is deliverable 1','2015-4-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('92','2010-8-3','2012-5-29','Pushing the boundaries of technology in algorithmic lower bound proof methods','VOC2DEAF4','400000','84','2010-5-16','3','9','9','26');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','92','Deliverable 1','This is deliverable 1','2012-4-5');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('93','2010-12-24','2014-6-6','It aims to create new technologies in algorithmic lower bound proof methods','PHOTONIC4','800000','63','2010-7-12','7','22','20','81');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','93','Deliverable 1','This is deliverable 1','2012-12-13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('94','2019-9-28','2023-3-30','The project aims at the design, implementation and evaluation of algorithmic lower bound proof methods','ARES4','100000','92','2019-5-30','2','3','30','83');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','94','Deliverable 1','This is deliverable 1','2022-8-1');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','94','Deliverable 2','This is deliverable 2','2022-5-28');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','94','Deliverable 3','This is deliverable 3','2022-2-7');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('95','2006-8-3','2010-7-3','The project aims at the development of an Intelligent system in algorithmic lower bound proof methods','PISCES4','700000','77','2006-1-10','3','20','16','41');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','95','Deliverable 1','This is deliverable 1','2006-10-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','95','Deliverable 2','This is deliverable 2','2010-2-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','95','Deliverable 3','This is deliverable 3','2008-5-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('96','2004-1-9','2006-5-29','The goal of the project is to study, design and develop a novel system inalgorithmic lower bound proof methods','QUEENS4','600000','91','2003-2-1','11','23','10','87');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','96','Deliverable 1','This is deliverable 1','2005-1-9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('97','1991-7-20','1995-7-2','Aims to produce beyond state of the art multilevel research in algorithmic lower bound proof methods','uBio4','800000','77','1990-8-4','3','13','9','44');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','97','Deliverable 1','This is deliverable 1','1994-7-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','97','Deliverable 2','This is deliverable 2','1995-1-31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','97','Deliverable 3','This is deliverable 3','1993-9-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('98','1998-1-24','1999-4-8','The scope of the project is a multiscientific view of algorithmic lower bound proof methods','medINV4','1000000','85','1997-7-3','13','5','5','40');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','98','Deliverable 1','This is deliverable 1','1998-3-28');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','98','Deliverable 2','This is deliverable 2','1998-1-31');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('99','1997-9-10','2000-7-3','The scope of the project is to conduct a study that aims in the development of algorithmic lower bound proof methods','RAmONES4','600000','88','1997-6-19','6','27','2','85');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('100','2018-11-12','2020-8-25','The project aims at the development of algorithmic lower bound proof methods','AlgoX4','800000','74','2018-9-18','2','26','24','8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('101','2014-2-16','2016-3-30','Pushing the boundaries of technology in semiconductor technologies','smarty4covid0','500000','88','2013-8-14','11','25','1','58');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','101','Deliverable 1','This is deliverable 1','2016-2-1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('102','2004-12-6','2006-6-14','It aims to create new technologies in semiconductor technologies','CCHM0','800000','85','2004-12-2','1','4','10','73');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','102','Deliverable 1','This is deliverable 1','2005-10-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','102','Deliverable 2','This is deliverable 2','2005-11-2');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('103','1991-9-30','1992-10-18','The project aims at the design, implementation and evaluation of semiconductor technologies','SMART-BLISTER0','800000','79','1991-1-11','11','22','12','56');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','103','Deliverable 1','This is deliverable 1','1992-5-29');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('104','1993-4-22','1996-6-22','The project aims at the development of an Intelligent system in semiconductor technologies','EDUSAFE0','1000000','65','1992-4-24','12','18','24','97');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','104','Deliverable 1','This is deliverable 1','1995-11-7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','104','Deliverable 2','This is deliverable 2','1993-10-8');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('105','2014-8-19','2016-3-19','The goal of the project is to study, design and develop a novel system insemiconductor technologies','MOSAIC0','700000','80','2014-1-18','13','8','31','75');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('106','1998-7-17','2001-7-24','Aims to produce beyond state of the art multilevel research in semiconductor technologies','mBioRF0','1000000','63','1998-5-5','7','13','5','109');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','106','Deliverable 1','This is deliverable 1','1999-6-24');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','106','Deliverable 2','This is deliverable 2','2001-1-27');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('107','2018-3-27','2020-9-29','The scope of the project is a multiscientific view of semiconductor technologies','DEM-II-MED0','900000','80','2017-7-24','9','1','12','66');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','107','Deliverable 1','This is deliverable 1','2018-5-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','107','Deliverable 2','This is deliverable 2','2018-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','107','Deliverable 3','This is deliverable 3','2020-7-10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('108','2011-9-20','2013-5-2','The scope of the project is to conduct a study that aims in the development of semiconductor technologies','SIFEM0','800000','76','2011-5-2','1','23','30','107');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('109','2002-2-10','2003-2-23','The project aims at the development of semiconductor technologies','EDURES0','800000','90','2001-2-22','9','14','1','57');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','109','Deliverable 1','This is deliverable 1','2002-12-28');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('110','2004-11-26','2006-1-4','Conducting innovative research in power distribution and smart energy production methods','HydroFSP0','900000','84','2004-6-9','8','30','2','100');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('111','1997-9-22','1999-11-16','Pushing the boundaries of technology in power distribution and smart energy production methods','VOC2DEAF0','200000','80','1996-9-25','13','22','31','75');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('112','2020-8-10','2024-2-12','It aims to create new technologies in power distribution and smart energy production methods','PHOTONIC0','700000','73','2019-11-28','4','3','21','44');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('113','2013-9-21','2016-7-5','The project aims at the design, implementation and evaluation of power distribution and smart energy production methods','ARES0','200000','63','2012-10-11','9','4','13','7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','113','Deliverable 1','This is deliverable 1','2016-5-14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('114','2016-1-11','2019-10-22','The project aims at the development of an Intelligent system in power distribution and smart energy production methods','PISCES0','500000','68','2015-7-26','4','6','3','61');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','114','Deliverable 1','This is deliverable 1','2016-10-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('115','2000-5-18','2001-12-10','The goal of the project is to study, design and develop a novel system inpower distribution and smart energy production methods','QUEENS0','300000','62','1999-12-6','4','16','29','7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','115','Deliverable 1','This is deliverable 1','2001-6-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','115','Deliverable 2','This is deliverable 2','2001-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','115','Deliverable 3','This is deliverable 3','2001-9-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('116','2003-12-23','2006-3-28','Aims to produce beyond state of the art multilevel research in power distribution and smart energy production methods','uBio0','100000','90','2003-5-7','10','26','16','77');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('117','2021-8-31','2023-3-26','Conducting innovative research in seismic wave signal processing','ENDORSE1','300000','97','2019-3-22','5','7','9','47');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','117','Deliverable 1','This is deliverable 1','2022-10-9');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('118','2020-1-16','2021-7-29','The scope of the project is to conduct a study that aims in the development of power distribution and smart energy production methods','RAmONES0','100000','79','2019-1-24','12','22','22','44');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('119','2019-3-16','2020-8-23','The project aims at the development of power distribution and smart energy production methods','AlgoX0','600000','100','2018-5-13','5','28','21','98');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('120','2005-8-31','2009-3-26','Conducting innovative research in seismic wave signal processing','ENDORSE1','300000','97','2005-3-22','5','7','9','47');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','120','Deliverable 1','This is deliverable 1','2005-10-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','120','Deliverable 2','This is deliverable 2','2008-6-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','120','Deliverable 3','This is deliverable 3','2006-2-1');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('121','2014-9-18','2018-3-20','Pushing the boundaries of technology in seismic wave signal processing','smarty4covid1','500000','73','2014-6-16','10','14','26','52');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','121','Deliverable 1','This is deliverable 1','2016-10-7');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','121','Deliverable 2','This is deliverable 2','2017-12-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','121','Deliverable 3','This is deliverable 3','2016-6-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('122','1998-1-29','2000-2-19','It aims to create new technologies in seismic wave signal processing','CCHM1','400000','97','1997-4-6','7','4','27','79');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','122','Deliverable 1','This is deliverable 1','2000-1-29');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','122','Deliverable 2','This is deliverable 2','1999-11-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','122','Deliverable 3','This is deliverable 3','1998-4-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('123','2019-4-7','2022-5-21','The project aims at the design, implementation and evaluation of seismic wave signal processing','SMART-BLISTER1','600000','75','2018-6-1','5','30','18','63');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','123','Deliverable 1','This is deliverable 1','2019-4-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','123','Deliverable 2','This is deliverable 2','2020-3-5');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','123','Deliverable 3','This is deliverable 3','2019-10-31');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('124','1991-7-22','1995-5-7','The project aims at the development of an Intelligent system in seismic wave signal processing','EDUSAFE1','400000','68','1991-5-6','10','10','10','34');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','124','Deliverable 1','This is deliverable 1','1991-11-8');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','124','Deliverable 2','This is deliverable 2','1992-12-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','124','Deliverable 3','This is deliverable 3','1991-9-24');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('125','2018-12-22','2022-4-1','The goal of the project is to study, design and develop a novel system inseismic wave signal processing','MOSAIC1','600000','85','2018-12-10','2','21','24','32');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','125','Deliverable 1','This is deliverable 1','2019-5-15');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('126','2005-12-13','2007-10-31','Aims to produce beyond state of the art multilevel research in seismic wave signal processing','mBioRF1','700000','85','2005-9-22','2','22','8','117');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('127','2006-6-29','2007-12-15','The scope of the project is a multiscientific view of seismic wave signal processing','DEM-II-MED1','900000','93','2005-11-24','14','12','7','14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('128','2001-10-11','2004-5-21','The scope of the project is to conduct a study that aims in the development of seismic wave signal processing','SIFEM1','200000','80','2001-7-3','14','2','32','4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','128','Deliverable 1','This is deliverable 1','2002-2-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','128','Deliverable 2','This is deliverable 2','2002-11-19');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('129','2005-10-17','2008-8-12','The project aims at the development of seismic wave signal processing','EDURES1','800000','64','2005-3-24','14','5','20','2');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','129','Deliverable 1','This is deliverable 1','2008-5-6');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('130','2007-7-2','2010-4-19','Conducting innovative research in solar energy production techniques','HydroFSP1','500000','73','2007-3-14','9','20','21','13');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','130','Deliverable 1','This is deliverable 1','2010-2-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','130','Deliverable 2','This is deliverable 2','2009-5-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','130','Deliverable 3','This is deliverable 3','2008-8-4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('131','1998-10-4','2000-9-21','Pushing the boundaries of technology in solar energy production techniques','VOC2DEAF1','1000000','79','1998-4-3','5','28','10','31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','131','Deliverable 1','This is deliverable 1','1999-12-15');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','131','Deliverable 2','This is deliverable 2','1998-11-30');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('132','1991-10-4','1995-7-3','It aims to create new technologies in solar energy production techniques','PHOTONIC1','900000','87','1991-3-25','9','26','10','6');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','132','Deliverable 1','This is deliverable 1','1994-6-27');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','132','Deliverable 2','This is deliverable 2','1994-6-16');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('133','2009-4-4','2011-7-5','The project aims at the design, implementation and evaluation of solar energy production techniques','ARES1','400000','67','2008-4-26','8','1','4','33');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','133','Deliverable 1','This is deliverable 1','2010-7-10');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','133','Deliverable 2','This is deliverable 2','2010-9-25');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('134','2009-7-14','2011-5-17','The project aims at the development of an Intelligent system in solar energy production techniques','PISCES1','500000','71','2008-12-24','10','30','5','59');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','134','Deliverable 1','This is deliverable 1','2010-3-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','134','Deliverable 2','This is deliverable 2','2010-9-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('135','2016-12-24','2020-1-24','The goal of the project is to study, design and develop a novel system insolar energy production techniques','QUEENS1','400000','64','2016-11-3','11','18','1','102');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','135','Deliverable 1','This is deliverable 1','2017-8-19');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','135','Deliverable 2','This is deliverable 2','2018-12-18');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('136','1992-9-11','1995-12-7','Aims to produce beyond state of the art multilevel research in solar energy production techniques','uBio1','100000','96','1991-10-4','1','18','13','1');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','136','Deliverable 1','This is deliverable 1','1995-4-8');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','136','Deliverable 2','This is deliverable 2','1994-8-21');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','136','Deliverable 3','This is deliverable 3','1995-11-13');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('137','2019-1-21','2022-1-31','The scope of the project is a multiscientific view of solar energy production techniques','medINV1','300000','68','2018-8-22','12','24','6','18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','137','Deliverable 1','This is deliverable 1','2019-5-20');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','137','Deliverable 2','This is deliverable 2','2021-3-10');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('138','2009-4-11','2011-10-25','The scope of the project is to conduct a study that aims in the development of solar energy production techniques','RAmONES1','600000','97','2009-3-18','11','26','12','6');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','138','Deliverable 1','This is deliverable 1','2011-2-18');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','138','Deliverable 2','This is deliverable 2','2011-8-4');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','138','Deliverable 3','This is deliverable 3','2009-9-11');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('139','1994-5-16','1998-5-15','The project aims at the development of solar energy production techniques','AlgoX1','700000','76','1994-4-17','1','7','9','79');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','139','Deliverable 1','This is deliverable 1','1997-4-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('140','1996-9-30','1999-1-21','Conducting innovative research in ancient artifact restoration methods','ENDORSE2','500000','65','1996-9-12','2','12','23','2');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','140','Deliverable 1','This is deliverable 1','1997-11-11');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','140','Deliverable 2','This is deliverable 2','1998-6-4');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('141','2008-2-1','2009-9-27','Pushing the boundaries of technology in ancient artifact restoration methods','smarty4covid2','100000','89','2007-6-28','8','12','4','113');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','141','Deliverable 1','This is deliverable 1','2009-8-14');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('142','2017-3-27','2020-7-5','It aims to create new technologies in ancient artifact restoration methods','CCHM2','700000','83','2017-3-12','7','23','12','100');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','142','Deliverable 1','This is deliverable 1','2018-4-23');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('143','2013-2-15','2017-1-30','The project aims at the design, implementation and evaluation of ancient artifact restoration methods','SMART-BLISTER2','800000','61','2013-1-7','6','20','2','114');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','143','Deliverable 1','This is deliverable 1','2013-6-9');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','143','Deliverable 2','This is deliverable 2','2013-11-3');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('144','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','EDUSAFE2','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('145','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project1','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('146','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project2','700000','75','1991-5-23','5','18','14','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('147','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project3','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('148','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project4','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('149','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project5','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('150','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project6','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('151','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project7','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('152','1992-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project8','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('153','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project1','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('154','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project2','700000','75','1991-5-23','5','18','14','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('155','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project3','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('156','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project4','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('157','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project5','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('158','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project6','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('159','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project7','700000','75','1991-5-23','4','18','13','55');

Insert into project
 (`project_id`,`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`program_id`,`grader_id`)
values('160','1993-3-12','1995-11-3','The project aims at the development of an Intelligent system in ancient artifact restoration methods','project8','700000','75','1991-5-23','4','18','13','55');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('1','144','Deliverable 1','This is deliverable 1','1994-7-31');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('2','144','Deliverable 2','This is deliverable 2','1995-7-17');

Insert into deliverable
 (`deliverable_id`,`project_id`,`title`,`deliverable_description`,`delivery_date`)
values('3','144','Deliverable 3','This is deliverable 3','1995-7-23');


Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','143');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','29');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','103');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','127');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('1','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','124');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','26');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','60');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','116');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('3','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','136');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','143');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('4','141');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','120');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','127');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','84');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','19');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('5','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('6','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('6','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','103');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','52');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','75');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','106');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('7','57');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('8','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('8','30');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('8','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('8','60');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('8','141');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('9','70');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('9','22');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('9','44');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','26');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','59');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','77');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('11','115');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('12','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('12','113');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','113');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','41');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','46');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','51');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','106');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('13','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('14','93');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('14','46');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('14','96');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('14','37');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('14','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('15','71');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('15','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('15','108');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('15','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('16','40');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('16','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('16','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('16','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('18','67');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('18','34');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('18','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('19','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('19','32');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('19','139');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('19','97');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','67');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','141');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('20','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','22');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','58');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','97');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','43');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('22','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('23','23');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('23','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('23','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('23','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('23','143');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('24','125');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','4');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','96');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','8');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','106');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','50');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('25','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','114');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','111');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','30');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','13');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('27','71');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('28','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','43');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','131');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','121');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','93');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('29','4');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','68');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','21');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('30','77');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','118');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','133');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','16');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','127');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('31','128');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','133');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','45');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','128');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','129');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('32','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','20');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','96');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','118');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','55');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('33','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('34','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('34','28');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('34','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('34','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','21');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','47');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','64');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('35','14');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','28');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','38');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','70');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','4');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('36','1');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('37','139');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('37','133');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('37','69');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('37','111');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('37','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','63');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','25');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','7');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','107');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','53');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('38','132');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','39');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','137');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('39','136');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','43');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','40');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','25');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','39');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('40','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('41','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','99');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','76');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','84');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','102');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('42','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','57');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','63');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','124');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('43','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','1');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','136');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','8');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','107');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('44','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','106');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','41');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','117');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('46','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','82');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','37');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','114');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','44');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('47','123');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('48','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('48','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('48','50');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('48','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('48','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('49','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('49','40');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','77');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','128');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','2');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','14');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','139');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','134');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','50');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('50','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('52','122');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('52','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('52','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('52','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('52','103');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','38');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','69');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','27');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','20');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('53','82');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','47');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('55','50');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','13');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','63');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','2');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','64');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('56','99');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','60');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','118');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','91');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','58');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('57','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','51');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','68');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','114');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','103');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('58','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('59','26');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('59','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('59','95');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('59','99');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('59','49');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','99');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','37');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','26');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('60','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('61','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('61','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('61','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('61','77');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','79');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','129');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','51');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','68');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','34');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('62','104');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','21');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','102');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','70');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','44');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','73');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','82');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','118');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('63','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','39');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','125');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('65','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('66','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('66','128');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('66','129');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('66','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('67','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('67','23');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('67','141');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','104');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','25');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','84');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','110');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','95');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','51');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('68','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('69','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('69','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('69','141');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','97');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','96');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','113');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('70','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('71','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('72','59');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('72','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('72','73');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('72','132');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('72','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','70');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','107');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','95');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','46');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','32');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','58');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','75');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','34');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('73','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','131');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','124');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','117');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('74','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('75','116');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('75','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('75','113');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('75','53');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('75','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('76','23');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('76','68');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('76','100');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','60');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','127');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','93');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','20');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','45');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('77','116');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','6');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','2');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','95');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','11');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('78','14');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('79','102');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('79','49');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('79','139');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('79','104');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('79','144');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','21');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','69');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','56');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','99');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('81','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','34');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','25');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','110');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','8');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','49');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','20');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('82','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('83','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('83','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','43');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','110');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','106');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('84','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','63');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','46');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','121');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','138');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('85','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','38');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','102');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','121');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('86','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','115');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','129');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','71');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','125');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','2');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','114');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('87','69');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('88','16');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('88','36');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('88','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('88','116');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('89','97');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('89','68');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('90','64');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('90','111');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('91','32');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('91','134');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('91','16');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('91','4');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('91','114');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','15');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','43');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','111');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','104');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','91');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('92','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('93','63');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('93','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('93','39');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('93','85');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('93','122');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('94','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','37');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','42');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','13');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','14');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','82');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','128');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','39');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('95','108');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','135');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','25');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','12');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','73');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','2');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('97','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('98','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','137');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','30');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','58');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','71');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','26');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('99','19');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','101');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','13');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','27');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','120');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('100','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('101','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('101','86');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('101','136');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('102','17');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('102','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('102','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('102','126');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','132');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','22');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','137');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','87');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('103','30');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','44');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','6');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','89');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','49');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','65');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','64');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('104','79');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','53');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','67');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','91');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('105','59');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','61');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','72');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','56');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('106','91');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','83');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','97');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','69');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','55');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','132');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','34');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('107','104');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('108','139');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('108','17');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('108','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('108','6');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('108','80');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','16');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','47');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','75');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','49');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','113');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','92');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('109','132');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','57');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','123');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','103');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','42');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','143');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('110','18');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','105');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','130');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','21');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','95');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','79');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('111','98');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','109');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','137');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','32');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','59');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','100');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','112');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('112','24');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','81');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','42');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','94');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','29');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','88');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('113','4');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','64');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','110');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','90');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','112');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','10');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','74');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','5');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','111');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('114','33');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','54');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','31');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','3');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','9');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','35');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('115','115');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','28');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','119');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','133');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','29');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','140');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','73');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('116','48');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','115');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','66');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','127');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','62');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','142');

Insert into researcher_project
 (`researcher_id`,`project_id`)
values('117','137');

Insert into project_field
 (`project_id`,`field_id`)
values('1','8');

Insert into project_field
 (`project_id`,`field_id`)
values('1','4');

Insert into project_field
 (`project_id`,`field_id`)
values('2','8');

Insert into project_field
 (`project_id`,`field_id`)
values('3','13');

Insert into project_field
 (`project_id`,`field_id`)
values('4','1');

Insert into project_field
 (`project_id`,`field_id`)
values('5','12');

Insert into project_field
 (`project_id`,`field_id`)
values('6','12');

Insert into project_field
 (`project_id`,`field_id`)
values('6','6');

Insert into project_field
 (`project_id`,`field_id`)
values('7','11');

Insert into project_field
 (`project_id`,`field_id`)
values('7','6');

Insert into project_field
 (`project_id`,`field_id`)
values('8','5');

Insert into project_field
 (`project_id`,`field_id`)
values('9','9');

Insert into project_field
 (`project_id`,`field_id`)
values('10','3');

Insert into project_field
 (`project_id`,`field_id`)
values('11','7');

Insert into project_field
 (`project_id`,`field_id`)
values('12','10');

Insert into project_field
 (`project_id`,`field_id`)
values('12','11');

Insert into project_field
 (`project_id`,`field_id`)
values('13','1');

Insert into project_field
 (`project_id`,`field_id`)
values('13','4');

Insert into project_field
 (`project_id`,`field_id`)
values('14','8');

Insert into project_field
 (`project_id`,`field_id`)
values('14','11');

Insert into project_field
 (`project_id`,`field_id`)
values('15','6');

Insert into project_field
 (`project_id`,`field_id`)
values('16','6');

Insert into project_field
 (`project_id`,`field_id`)
values('16','2');

Insert into project_field
 (`project_id`,`field_id`)
values('17','9');

Insert into project_field
 (`project_id`,`field_id`)
values('17','6');

Insert into project_field
 (`project_id`,`field_id`)
values('18','7');

Insert into project_field
 (`project_id`,`field_id`)
values('18','11');

Insert into project_field
 (`project_id`,`field_id`)
values('19','3');

Insert into project_field
 (`project_id`,`field_id`)
values('19','5');

Insert into project_field
 (`project_id`,`field_id`)
values('20','3');

Insert into project_field
 (`project_id`,`field_id`)
values('21','7');

Insert into project_field
 (`project_id`,`field_id`)
values('22','5');

Insert into project_field
 (`project_id`,`field_id`)
values('22','3');

Insert into project_field
 (`project_id`,`field_id`)
values('23','5');

Insert into project_field
 (`project_id`,`field_id`)
values('23','9');

Insert into project_field
 (`project_id`,`field_id`)
values('24','6');

Insert into project_field
 (`project_id`,`field_id`)
values('25','13');

Insert into project_field
 (`project_id`,`field_id`)
values('25','10');

Insert into project_field
 (`project_id`,`field_id`)
values('26','12');

Insert into project_field
 (`project_id`,`field_id`)
values('27','12');

Insert into project_field
 (`project_id`,`field_id`)
values('28','3');

Insert into project_field
 (`project_id`,`field_id`)
values('29','3');

Insert into project_field
 (`project_id`,`field_id`)
values('30','9');

Insert into project_field
 (`project_id`,`field_id`)
values('31','11');

Insert into project_field
 (`project_id`,`field_id`)
values('32','6');

Insert into project_field
 (`project_id`,`field_id`)
values('33','13');

Insert into project_field
 (`project_id`,`field_id`)
values('34','9');

Insert into project_field
 (`project_id`,`field_id`)
values('34','13');

Insert into project_field
 (`project_id`,`field_id`)
values('35','11');

Insert into project_field
 (`project_id`,`field_id`)
values('36','6');

Insert into project_field
 (`project_id`,`field_id`)
values('37','10');

Insert into project_field
 (`project_id`,`field_id`)
values('37','6');

Insert into project_field
 (`project_id`,`field_id`)
values('38','5');

Insert into project_field
 (`project_id`,`field_id`)
values('38','1');

Insert into project_field
 (`project_id`,`field_id`)
values('39','11');

Insert into project_field
 (`project_id`,`field_id`)
values('39','12');

Insert into project_field
 (`project_id`,`field_id`)
values('40','11');

Insert into project_field
 (`project_id`,`field_id`)
values('41','11');

Insert into project_field
 (`project_id`,`field_id`)
values('41','7');

Insert into project_field
 (`project_id`,`field_id`)
values('42','6');

Insert into project_field
 (`project_id`,`field_id`)
values('42','7');

Insert into project_field
 (`project_id`,`field_id`)
values('43','3');

Insert into project_field
 (`project_id`,`field_id`)
values('44','6');

Insert into project_field
 (`project_id`,`field_id`)
values('45','4');

Insert into project_field
 (`project_id`,`field_id`)
values('46','2');

Insert into project_field
 (`project_id`,`field_id`)
values('47','6');

Insert into project_field
 (`project_id`,`field_id`)
values('48','13');

Insert into project_field
 (`project_id`,`field_id`)
values('48','2');

Insert into project_field
 (`project_id`,`field_id`)
values('49','2');

Insert into project_field
 (`project_id`,`field_id`)
values('50','10');

Insert into project_field
 (`project_id`,`field_id`)
values('51','9');

Insert into project_field
 (`project_id`,`field_id`)
values('52','9');

Insert into project_field
 (`project_id`,`field_id`)
values('52','1');

Insert into project_field
 (`project_id`,`field_id`)
values('53','2');

Insert into project_field
 (`project_id`,`field_id`)
values('53','12');

Insert into project_field
 (`project_id`,`field_id`)
values('54','3');

Insert into project_field
 (`project_id`,`field_id`)
values('55','5');

Insert into project_field
 (`project_id`,`field_id`)
values('56','12');

Insert into project_field
 (`project_id`,`field_id`)
values('57','3');

Insert into project_field
 (`project_id`,`field_id`)
values('57','2');

Insert into project_field
 (`project_id`,`field_id`)
values('58','3');

Insert into project_field
 (`project_id`,`field_id`)
values('58','12');

Insert into project_field
 (`project_id`,`field_id`)
values('59','9');

Insert into project_field
 (`project_id`,`field_id`)
values('59','5');

Insert into project_field
 (`project_id`,`field_id`)
values('60','9');

Insert into project_field
 (`project_id`,`field_id`)
values('60','3');

Insert into project_field
 (`project_id`,`field_id`)
values('61','1');

Insert into project_field
 (`project_id`,`field_id`)
values('62','12');

Insert into project_field
 (`project_id`,`field_id`)
values('63','8');

Insert into project_field
 (`project_id`,`field_id`)
values('64','4');

Insert into project_field
 (`project_id`,`field_id`)
values('65','4');

Insert into project_field
 (`project_id`,`field_id`)
values('65','5');

Insert into project_field
 (`project_id`,`field_id`)
values('66','3');

Insert into project_field
 (`project_id`,`field_id`)
values('67','11');

Insert into project_field
 (`project_id`,`field_id`)
values('68','10');

Insert into project_field
 (`project_id`,`field_id`)
values('69','12');

Insert into project_field
 (`project_id`,`field_id`)
values('69','2');

Insert into project_field
 (`project_id`,`field_id`)
values('70','9');

Insert into project_field
 (`project_id`,`field_id`)
values('71','2');

Insert into project_field
 (`project_id`,`field_id`)
values('72','8');

Insert into project_field
 (`project_id`,`field_id`)
values('73','10');

Insert into project_field
 (`project_id`,`field_id`)
values('73','8');

Insert into project_field
 (`project_id`,`field_id`)
values('74','6');

Insert into project_field
 (`project_id`,`field_id`)
values('75','3');

Insert into project_field
 (`project_id`,`field_id`)
values('75','2');

Insert into project_field
 (`project_id`,`field_id`)
values('76','3');

Insert into project_field
 (`project_id`,`field_id`)
values('76','2');

Insert into project_field
 (`project_id`,`field_id`)
values('77','6');

Insert into project_field
 (`project_id`,`field_id`)
values('78','13');

Insert into project_field
 (`project_id`,`field_id`)
values('78','11');

Insert into project_field
 (`project_id`,`field_id`)
values('79','1');

Insert into project_field
 (`project_id`,`field_id`)
values('79','7');

Insert into project_field
 (`project_id`,`field_id`)
values('80','4');

Insert into project_field
 (`project_id`,`field_id`)
values('80','11');

Insert into project_field
 (`project_id`,`field_id`)
values('81','12');

Insert into project_field
 (`project_id`,`field_id`)
values('82','12');

Insert into project_field
 (`project_id`,`field_id`)
values('82','8');

Insert into project_field
 (`project_id`,`field_id`)
values('83','9');

Insert into project_field
 (`project_id`,`field_id`)
values('83','11');

Insert into project_field
 (`project_id`,`field_id`)
values('84','6');

Insert into project_field
 (`project_id`,`field_id`)
values('84','10');

Insert into project_field
 (`project_id`,`field_id`)
values('85','11');

Insert into project_field
 (`project_id`,`field_id`)
values('86','6');

Insert into project_field
 (`project_id`,`field_id`)
values('87','8');

Insert into project_field
 (`project_id`,`field_id`)
values('87','11');

Insert into project_field
 (`project_id`,`field_id`)
values('88','13');

Insert into project_field
 (`project_id`,`field_id`)
values('88','5');

Insert into project_field
 (`project_id`,`field_id`)
values('89','2');

Insert into project_field
 (`project_id`,`field_id`)
values('89','13');

Insert into project_field
 (`project_id`,`field_id`)
values('90','13');

Insert into project_field
 (`project_id`,`field_id`)
values('90','7');

Insert into project_field
 (`project_id`,`field_id`)
values('91','2');

Insert into project_field
 (`project_id`,`field_id`)
values('92','11');

Insert into project_field
 (`project_id`,`field_id`)
values('93','7');

Insert into project_field
 (`project_id`,`field_id`)
values('94','12');

Insert into project_field
 (`project_id`,`field_id`)
values('94','8');

Insert into project_field
 (`project_id`,`field_id`)
values('95','11');

Insert into project_field
 (`project_id`,`field_id`)
values('95','2');

Insert into project_field
 (`project_id`,`field_id`)
values('96','8');

Insert into project_field
 (`project_id`,`field_id`)
values('97','13');

Insert into project_field
 (`project_id`,`field_id`)
values('98','5');

Insert into project_field
 (`project_id`,`field_id`)
values('99','4');

Insert into project_field
 (`project_id`,`field_id`)
values('100','9');

Insert into project_field
 (`project_id`,`field_id`)
values('100','8');

Insert into project_field
 (`project_id`,`field_id`)
values('101','5');

Insert into project_field
 (`project_id`,`field_id`)
values('101','9');

Insert into project_field
 (`project_id`,`field_id`)
values('102','10');

Insert into project_field
 (`project_id`,`field_id`)
values('103','1');

Insert into project_field
 (`project_id`,`field_id`)
values('104','12');

Insert into project_field
 (`project_id`,`field_id`)
values('105','3');

Insert into project_field
 (`project_id`,`field_id`)
values('105','9');

Insert into project_field
 (`project_id`,`field_id`)
values('106','3');

Insert into project_field
 (`project_id`,`field_id`)
values('107','3');

Insert into project_field
 (`project_id`,`field_id`)
values('108','1');

Insert into project_field
 (`project_id`,`field_id`)
values('109','12');

Insert into project_field
 (`project_id`,`field_id`)
values('109','6');

Insert into project_field
 (`project_id`,`field_id`)
values('110','7');

Insert into project_field
 (`project_id`,`field_id`)
values('110','8');

Insert into project_field
 (`project_id`,`field_id`)
values('111','6');

Insert into project_field
 (`project_id`,`field_id`)
values('111','1');

Insert into project_field
 (`project_id`,`field_id`)
values('112','2');

Insert into project_field
 (`project_id`,`field_id`)
values('113','12');

Insert into project_field
 (`project_id`,`field_id`)
values('113','13');

Insert into project_field
 (`project_id`,`field_id`)
values('114','12');

Insert into project_field
 (`project_id`,`field_id`)
values('115','7');

Insert into project_field
 (`project_id`,`field_id`)
values('115','5');

Insert into project_field
 (`project_id`,`field_id`)
values('116','4');

Insert into project_field
 (`project_id`,`field_id`)
values('117','3');

Insert into project_field
 (`project_id`,`field_id`)
values('118','6');

Insert into project_field
 (`project_id`,`field_id`)
values('119','7');

Insert into project_field
 (`project_id`,`field_id`)
values('119','5');

Insert into project_field
 (`project_id`,`field_id`)
values('120','10');

Insert into project_field
 (`project_id`,`field_id`)
values('121','8');

Insert into project_field
 (`project_id`,`field_id`)
values('122','9');

Insert into project_field
 (`project_id`,`field_id`)
values('122','13');

Insert into project_field
 (`project_id`,`field_id`)
values('123','2');

Insert into project_field
 (`project_id`,`field_id`)
values('124','13');

Insert into project_field
 (`project_id`,`field_id`)
values('124','3');

Insert into project_field
 (`project_id`,`field_id`)
values('125','6');

Insert into project_field
 (`project_id`,`field_id`)
values('125','10');

Insert into project_field
 (`project_id`,`field_id`)
values('126','4');

Insert into project_field
 (`project_id`,`field_id`)
values('126','9');

Insert into project_field
 (`project_id`,`field_id`)
values('127','7');

Insert into project_field
 (`project_id`,`field_id`)
values('127','9');

Insert into project_field
 (`project_id`,`field_id`)
values('128','10');

Insert into project_field
 (`project_id`,`field_id`)
values('128','9');

Insert into project_field
 (`project_id`,`field_id`)
values('129','8');

Insert into project_field
 (`project_id`,`field_id`)
values('129','5');

Insert into project_field
 (`project_id`,`field_id`)
values('130','2');

Insert into project_field
 (`project_id`,`field_id`)
values('131','4');

Insert into project_field
 (`project_id`,`field_id`)
values('131','9');

Insert into project_field
 (`project_id`,`field_id`)
values('132','12');

Insert into project_field
 (`project_id`,`field_id`)
values('133','10');

Insert into project_field
 (`project_id`,`field_id`)
values('133','7');

Insert into project_field
 (`project_id`,`field_id`)
values('134','8');

Insert into project_field
 (`project_id`,`field_id`)
values('134','6');

Insert into project_field
 (`project_id`,`field_id`)
values('135','13');

Insert into project_field
 (`project_id`,`field_id`)
values('135','2');

Insert into project_field
 (`project_id`,`field_id`)
values('136','5');

Insert into project_field
 (`project_id`,`field_id`)
values('137','7');

Insert into project_field
 (`project_id`,`field_id`)
values('137','12');

Insert into project_field
 (`project_id`,`field_id`)
values('138','3');

Insert into project_field
 (`project_id`,`field_id`)
values('138','6');

Insert into project_field
 (`project_id`,`field_id`)
values('139','3');

Insert into project_field
 (`project_id`,`field_id`)
values('140','2');

Insert into project_field
 (`project_id`,`field_id`)
values('140','8');

Insert into project_field
 (`project_id`,`field_id`)
values('141','13');

Insert into project_field
 (`project_id`,`field_id`)
values('142','1');

Insert into project_field
 (`project_id`,`field_id`)
values('143','5');

Insert into project_field
 (`project_id`,`field_id`)
values('144','6');

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;