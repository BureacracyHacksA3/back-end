insert into roles values
(1, "ROLE_ADMIN"),
(2, "ROLE_USER"),
(3, "ROLE_MANAGER");
-- Populare tabela institution
INSERT INTO institution (institution_id, name, address, phone_number, website, monday, tuesday,
wednesday, thursday, friday, saturday, sunday)
VALUES
(1, "ANAF", "Str. Apolodor nr. 17", "031.403.91.60", "http://www.anaf.ro/", "08:30 - 16:30", "08:30 -
16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00", "liber"),
(2, "Se rviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor","Bld.
Primăverii nr. 36, Iaşi","0232230254","http://www.permiseiasi.ro/","08:30 - 12:30, 13:00 -
18:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 -
16:30","08:30 - 13:00","liber","liber"),
(3, "Directia Locala de Evidenta a Populatiei","IULIUS MALL - et. 2, Bdul. Tudor Vladimirescu,
fn","0332803160","https://www.dlep-iasi.ro/","08:30 - 16:00","08:30 - 16:00","08:30 - 16:00","10:30
- 18:00","08:30 - 14:00","liber","liber"),
(4, "Directia Generala de Asistenta Sociala si Protectia Copilului Iasi","Strada Ateneului, nr. 1C, cod
postal 700309","0232477731","https://www.dasiasi.ro/","07:30 - 16:00","07:30 - 16:00","07:30 -
16:00","07:30 - 16:00","07:30 - 13:30","liber","liber"),
(5, "Primaria Municipiului Iasi","B-dul. Ştefan cel Mare Şi Sfânt, nr. 11,
Iaşi","0232267582","https://www.primaria-iasi.ro","08:30 - 16:30","08:30 - 16:30","08:30 -
16:30","08:30 - 16:30","08:30 - 16:30","liber","liber"),
(6, "Inspectoratul pentru Imigrări Iasi","Strada Elena Doamna nr. 28, cod postal
700032","0232221142","https://www.politiadefrontiera.ro/ro/iasi.html","08:00 - 16:00","08:00 -
16:00","08:00 - 16:00","08:00 - 16:00","08:00 - 14:00","liber","liber"),
(7, "Registrul Comerțului", "Str. Ion C. Brătianu, nr. 46, Iași", "0232278088", "http://www.onrc.ro/",
"08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "liber", "liber"),
(8, "Institutul Național de Statistică", "Str. Palat, nr. 7, Iași", "0232225394",
"https://www.insse.ro/cms/ro", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30",
"08:30 - 16:30", "liber", "liber"),
(9, "Institutul Național de Sănătate Publică", "Str. Vasile Alecsandri, nr. 1, Iași", "0232221014",
"https://insp.gov.ro/", "08:00 - 16:00", "08:00 - 16:00", "08:00 - 16:00", "08:00 - 16:00", "08:00 -
16:00", "liber", "liber"),
(10, "Ministerul de Finanțe", "Str. Lăpușneanu, nr. 111, Iași", "0232211391",
"https://mfinante.gov.ro/", "08:00 - 16:30", "08:00 - 16:30", "08:00 - 16:30", "08:00 - 16:30", "08:00 -
16:30", "liber", "liber"),
(11, "Compania de asigurări", "Str. Carol I nr. 17", "0314039160", "http://www.asigurari.ro/", "08:30 -
16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00", "liber"),
(12, "Spitalul Municipal Iași", "Str. Vindecării nr. 1", "0777777777", "http://www.fii-sanatos.ro/",
"08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00",
"liber");

-- Populare tabela documents
INSERT INTO documents(document_id, name, description, price, institution_id, path, file)
VALUES
(1, "Cartea de identitate a vehiculului", "Eliberata de Serviciul Public Comunitar Regim Permise de
Conducere si Inmatriculare a Vehiculelor", NULL, 2, "link-catrea-de-identitate-a-vehiculului", '0x50616e64616d6f6e69756d'),
(2, "Adeverinta de la RAR", "Atesta verificarea tehnica periodica a vehiculului", NULL, 2, "linkadeverinta-rar", null),
(3, "Asigurarea RCA in termen de valabilitate", "Eliberata de compania de asigurari", NULL, 11, "linkasigurare-rca-valabila", null),
(4, "Cerere de inmatriculare provizorie a vehiculului", NULL, NULL, 2, "link-cerere-inmatriculareprovizorie", null),
(5, "Cerere de eliberare a certificatului de inmatriculare provizorie", NULL, NULL, 2, "link-cererecertificat-inmatriculare-provizorie", null),
(6, "Taxa pentru inmatricularea provizorie a vehiculului: 157 lei", "Taxa de plata pentru inmatricularea
provizorie a vehiculului", "157 lei", 2, "link-taxa-inmatriculare-provizorie", null),
(7, "Cerere de eliberare carte de identitate", NULL, NULL, 3, "link-cerere-identitate", null),
(8, "Cerere de schimbare nume (in cazul casatoriei sau a schimbarii numelui)", NULL, NULL, 3, "linkcerere-schimbare-nume", null),
(9, "Taxa pentru eliberarea cartii de identitate: 7 lei", "Taxa de plata pentru eliberarea cartii de
identitate", "7 lei", 3, "link-taxa-identitate", null),
(10, "Taxa pentru schimbarea numelui: 18 lei", "Taxa de plata pentru schimbarea numelui", "18 lei", 3,
"link-taxa-schimbare-nume", null),
(11, "Cerere pentru Eliberarea Certificatului de Nastere", NULL, NULL, 3, "link-cerere-certificatnastere", null),
(12, "Adeverinta de la maternitate/hospital", "Atesta nasterea copilului", NULL, 12, "link-adeverintamaternitate", null),
(13, "Certificatul de casatorie", "Eliberat de Primaria Municipiului Iasi", NULL, 5, "link-certificatcasatorie", null),
(14, "Certificatul de deces", NULL, NULL, 3, "link-certificat-deces", null),
(15, "Acte justificative care sa ateste cheltuielile solicitantului si ale membrilor familiei (facturi,
chitante, etc.)", NULL, NULL, 1, "link-acte-justificative-cheltuieli", null),
(16, "Adeverinta de la primarie care sa ateste ca solicitantul nu are proprietate imobiliara", "Atesta ca
solicitantul nu detine proprietati imobiliare", NULL, 5, "link-adeverinta-primarie", null),
(17, 'Adeverinta de la ANAF care sa ateste ca solicitantul nu are datorii la stat', 'Adeverinta de la
ANAF', NULL, 1, '/download/adeverinta_anaf.pdf', null),
(18, 'Cerere pentru acordarea ajutorului social', NULL, NULL, 4,
'/download/cerere_ajutor_social.pdf', null),
(19, 'Adeverinta de venit', NULL, NULL, 4, '/download/adeverinta_venit.pdf', null),
(20, 'Certificat de handicap', NULL, NULL, 3, '/download/certificat_handicap.pdf', null),
(21, 'Plan de situatie cu locatia imobilului', NULL, NULL, 5, '/download/plan_situatie_imobil.pdf', null),
(22, 'Certificat de cazier judiciar', NULL, NULL, 1, '/download/certificat_cazier_judiciar.pdf', null),
(23, 'Viza de intrare in Romania', NULL, '120 euro', 6, '/download/viza_intrare_romania.pdf', null),
(24, 'Taxa de viza', NULL, '120 euro', 6, '/download/taxa_viza.pdf', null),
(25, 'Certificat de inregistrare a cetatenilor din statele membre ale Uniunii Europene', NULL, NULL, 3,
'/download/certificat_inregistrare_cetateni_ue.pdf', null),
(26, 'Contract de munca', NULL, NULL, 10, '/download/contract_munca.pdf', null),
(27, 'Certificat Fiscal de la ANAF', NULL, NULL, 1, '/download/certificat_fiscal_anaf.pdf', null),
(28, 'Cerere de Inregistrare Fiscala', NULL, NULL, 10, '/download/cerere_inregistrare_fiscala.pdf', null),
(29, 'Cerere pentru Eliberarea Certificatului de Conformitate', NULL, NULL, 7,
'/download/cerere_certificat_de_conformitate.pdf', null),
(30, 'Documente care atesta conformitatea produselor/serviciilor', 'ANAF', NULL, 1,
'https://exemplu.com/document1.pdf', null),
(31, 'Cerere pentru Eliberarea Certificatului de Casatorie', 'Primaria Municipiului Iasi', NULL, 5,
'https://exemplu.com/document2.pdf', null),
(32, 'taxa de timbru pentru Certificatul de Casatorie', 'Primaria Municipiului Iasi', '10 lei', 5,
'https://exemplu.com/document3.pdf', null),
(33, 'Cerere pentru Eliberarea Autorizatiei Sanitare de Functionare', 'Directia Generala de Asistenta
Sociala si Protectia Copilului Iasi', NULL, 4, 'https://exemplu.com/document4.pdf', null),
(34, 'Plan de amenajare a spatiului', 'Directia Locala de Evidenta a Populatiei', NULL, 3,
'https://exemplu.com/document5.pdf', null),
(35, 'Fisa de securitate a produselor', 'Registrul Comertului', NULL, 7,
'https://exemplu.com/document6.pdf', null),
(36, 'Cerere pentru Eliberarea Adeverintei Medicale', 'Institutul National de Sanatate Publica', NULL,
9, 'https://exemplu.com/document7.pdf', null),
(37, 'Fisa medicala completa care sa ateste capacitatea fizica si psihica de a desfasura anumite
activitati (sofer, pilot, etc.)', 'Inspectoratul pentru Imigrari Iasi', NULL, 6,
'https://exemplu.com/document8.pdf', null),
(38, 'Cerere pentru Eliberarea Certificatului de Atestare Fiscala', 'Ministerul de Finante', NULL, 10,
'https://exemplu.com/document9.pdf', null),
(39, 'Certificat Fiscal de la ANAF', 'ANAF', NULL, 1, 'https://exemplu.com/document10.pdf', null),
(40, 'Carte de identitale', 'Eliberat de Directia Locala de Evidenta a Populatiei', '256 de lei', 2,
'https://exemplu.com/document10.pdf', null);

-- Populare tabela tasks
INSERT INTO tasks (name, description, estimated_time)
VALUES
("Permis de conducere", "Se obtine de la 'Serviciul Public comunitar regim permise de conducere'",
"2023-04-27 08:00:00"),
("Certificat de casatorie", "Se obtine la primaria Municipiului Iasi", "2023-04-27 08:00:00"),
("Buletin provizoriu", "Act de identitate temporar valabil 1 an de zile.", "2023-04-27 08:00:00"),
("Pasaport", "Pasaport simplu electronic obtinut de la Sectia Pasapoarte", "2023-04-27 14:00:00"),
('Carte de identitate a vehiculului (CIV)', 'Serviciul Public Comunitar Regim Permise de Conducere si
Inmatriculare a Vehiculelor', NOW()),
('Certificat de inmatriculare (numere de inmatriculare)', 'Serviciul Public Comunitar Regim Permise de
Conducere si Inmatriculare a Vehiculelor', NOW()),
('Certificat de inmatriculare provizorie', 'Serviciul Public Comunitar Regim Permise de Conducere si
Inmatriculare a Vehiculelor', NOW()),
('Carte de identitate', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Certificat de nastere', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Certificat de deces', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Adeverinta de domiciliu', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Adeverinta de venit', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Contract de asistenta sociala', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi',
NOW()),
('Decizia de acordare a ajutorului social', 'Directia Generala de Asistenta Sociala si Protectia Copilului
Iasi', NOW()),
('Decizie de plasament in regim de urgenta a copilului', 'Directia Generala de Asistenta Sociala si
Protectia Copilului Iasi', NOW()),
('Autorizatie de plasament familial', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi',
NOW()),
('Autorizatie de construire', 'Primaria Municipiului Iasi', NOW()),
('Certificat de urbanism', 'Primaria Municipiului Iasi', NOW()),
('Certificat de atestare a dreptului de proprietate', 'Primaria Municipiului Iasi', NOW()),
('Autorizatie de transport persoane', 'Primaria Municipiului Iasi', NOW()),
('Autorizatie de amplasare publicitati', 'Primaria Municipiului Iasi', NOW()),
('Autorizatie de parcare pentru persoane cu dizabilitati', 'Primaria Municipiului Iasi', NOW()),
('Carte de identitate pentru straini', 'Inspectoratul pentru Imigrari Iasi', '2023-05-05 12:00:00'),
('Permis de sedere', 'Inspectoratul pentru Imigrari Iasi', '2023-05-06 12:00:00'),
('Viza de intrare si resedinta', 'Inspectoratul pentru Imigrari Iasi', '2023-05-07 12:00:00'),
('Autorizatie de munca pentru straini', 'Inspectoratul pentru Imigrari Iasi', '2023-05-08 12:00:00'),
('Document de refugiat sau de azil', 'Inspectoratul pentru Imigrari Iasi', '2023-05-09 12:00:00'),
('Certificat de inregistrare a firmei', 'Registrul Comertului', '2023-05-11 12:00:00'),
('Certificat constatator', 'Registrul Comertului', '2023-05-12 12:00:00'),
('Certificat de radiere a firmei', 'Registrul Comertului', '2023-05-13 12:00:00'),
('Raport de cercetare statistica', 'Institutul National de Statistica', '2023-05-14 12:00:00'),
('Sondaj de opinie', 'Institutul National de Statistica', '2023-05-15 12:00:00'),
('Indicatori statistici privind economia, populatia, mediul inconjurator, etc.', 'Institutul National de
Statistica', '2023-05-16 12:00:00'),
('Adeverinte medicale', 'Institutul National de Sanatate Publica', '2023-05-17 12:00:00'),
('Rapoarte de analize si investigatii medicale', 'Institutul National de Sanatate Publica', '2023-05-18
12:00:00'),
('Autorizatii si avize pentru functionarea institutiilor medicale', 'Institutul National de Sanatate
Publica', '2023-05-19 12:00:00'),
('Declaratii fiscale', 'Ministerul de Finante', '2023-05-20 12:00:00'),
('Certificat de atestare fiscala', 'Ministerul de Finante', '2023-05-21 12:00:00'),
('Autorizatii de functionare a caselor de schimb valutar', 'Ministerul de Finante', '2023-05-22
12:00:00'),
('Autorizatii pentru vanzarea si cumpararea de valuta straina', 'Ministerul de Finante', '2023-05-21
12:00:00');

-- Populare tabela task_documents
INSERT INTO task_documents (task_id, document_id)
VALUES
(7, 40),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(8, 11),
(8, 40),
(8, 13),
(8, 14),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(14, 40),
(14, 13),
(14, 14),
(14, 15),
(14, 16),
(14, 17),
(14, 18);
-- Populare tabela users
INSERT INTO users (username, password, email, phone_number, city, created_at, name, surname)
VALUES
("ionut", "parola123", "ionut@example.com", "0740123456", "București", "2023-04-27 08:00:00",
"Ionuț", "Popescu"),
("andreea", "parola456", "andreea@example.com", "012345678", "Iași", "2023-04-26 08:30:00",
"Andreea", "Mirunescu"),
("alex", "parola789", "alex@example.com", "0712345678", "Cluj-Napoca", "2023-04-25 09:00:00",
"Alex", "Popa"),
("maria", "parola321", "maria@example.com", "0312345678", "Brașov", "2023-04-24 10:00:00",
"Maria", "Ionescu"),
("george", "parola654", "george@example.com", "0750123456", "Timișoara", "2023-04-23 11:00:00",
"George", "Vasilescu");
-- Populam tabela user_documents
INSERT INTO user_documents(user_id, document_id) VALUES
 (1, 1), -- Cartea de identitate a vehiculului
 (1, 2), -- Adeverinta de la RAR
 (2, 3), -- Asigurarea RCA in termen de valabilitate
 (3, 4), -- Cerere de inmatriculare provizorie a vehiculului
 (3, 5), -- Cerere de eliberare a certificatului de inmatriculare provizorie
(4, 6), -- Taxa pentru inmatricularea provizorie a vehiculului: 157 lei
 (4, 7), -- Cerere de eliberare carte de identitate
 (5, 8), -- Cerere de schimbare nume (in cazul casatoriei sau a schimbarii numelui)
 (5, 9), -- Taxa pentru eliberarea cartii de identitate: 7 lei
 (5, 12); -- Adeverinta de la maternitate/hospital

-- Populam tabela user_tasks
INSERT INTO user_tasks(task_id, user_id) VALUES
 (1, 1),
 (2, 1),
 (3, 2),
 (4, 3),
 (3, 3);
-- Populam tabela users_roles
INSERT INTO users_roles(user_id, role_id) VALUES
 (1, 1),
 (1, 2),
 (2, 2),
 (3, 3);
-- Populam tabela feedback
INSERT INTO feedback(rating, comment, created_at, user_id, institution_id) VALUES
 (4, 'Servicii excelente!', '2023-04-25 12:00:00', 1, 1),
 (3, 'Am avut unele probleme cu produsul.', '2023-04-23 09:30:00', 1, 2),
 (5, 'Totul a fost perfect.', '2023-04-24 15:45:00', 2, 1),
 (2, 'Nu sunt multumit de serviciile oferite.', '2023-04-23 17:20:00', 3, 2);
-- Populam doc_image
INSERT INTO `mydb`.`doc_image` (`name`, `type`, `image`, `id_user`)
VALUES ('document1', 'pdf', '0x546574677475794d656469756d', 1),
 ('document2', 'jpg', '0x457874656e73696f6e', 2),
 ('document3', 'png', '0x50616e64616d6f6e69756d', 1),
 ('document4', 'pdf', '0x5468697320697320612064756d6d7920746573742064696f', 3);
