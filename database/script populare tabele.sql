insert into roles values 
(1, "ROLE_ADMIN"),
(2, "ROLE_USER"),
(3, "ROLE_MANAGER");

-- Populare tabela institution
INSERT INTO institution (institution_id, name, address, phone_number, website, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
VALUES
(1, "ANAF", "Str. Apolodor nr. 17", "031.403.91.60", "http://www.anaf.ro/", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00", "liber"),
(2, "Se rviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor","Bld. Primăverii nr. 36, Iaşi","0232230254","http://www.permiseiasi.ro/","08:30 - 12:30, 13:00 - 18:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 13:00","liber","liber"),
(3, "Directia Locala de Evidenta a Populatiei","IULIUS MALL - et. 2, Bdul. Tudor Vladimirescu, fn","0332803160","https://www.dlep-iasi.ro/","08:30 - 16:00","08:30 - 16:00","08:30 - 16:00","10:30 - 18:00","08:30 - 14:00","liber","liber"),
(4, "Directia Generala de Asistenta Sociala si Protectia Copilului Iasi","Strada Ateneului, nr. 1C, cod postal 700309","0232477731","https://www.dasiasi.ro/","07:30 - 16:00","07:30 - 16:00","07:30 - 16:00","07:30 - 16:00","07:30 - 13:30","liber","liber"),
(5, "Primaria Municipiului Iasi","B-dul. Ştefan cel Mare Şi Sfânt, nr. 11, Iaşi","0232267582","https://www.primaria-iasi.ro","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","liber","liber"),
(6, "Inspectoratul pentru Imigrări Iasi","Strada Elena Doamna nr. 28, cod postal 700032","0232221142","https://www.politiadefrontiera.ro/ro/iasi.html","08:00 - 16:00","08:00 - 16:00","08:00 - 16:00","08:00 - 16:00","08:00 - 14:00","liber","liber"),
(7, "Registrul Comerțului", "Str. Ion C. Brătianu, nr. 46, Iași", "0232278088", "http://www.onrc.ro/", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "liber", "liber"),
(8, "Institutul Național de Statistică", "Str. Palat, nr. 7, Iași", "0232225394", "https://www.insse.ro/cms/ro", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "liber", "liber"),
(9, "Institutul Național de Sănătate Publică", "Str. Vasile Alecsandri, nr. 1, Iași", "0232221014", "https://insp.gov.ro/", "08:00 - 16:00", "08:00 - 16:00", "08:00 - 16:00", "08:00 - 16:00", "08:00 - 16:00", "liber", "liber"),
(10, "Ministerul de Finanțe", "Str. Lăpușneanu, nr. 111, Iași", "0232211391", "https://mfinante.gov.ro/", "08:00 - 16:30", "08:00 - 16:30", "08:00 - 16:30", "08:00 - 16:30", "08:00 - 16:30", "liber", "liber"),
(11, "Compania de asigurări", "Str. Carol I nr. 17", "0314039160", "http://www.asigurari.ro/", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00", "liber"),
(12, "Spitalul Municipal Iași", "Str. Vindecării nr. 1", "0777777777", "http://www.fii-sanatos.ro/", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "08:30 - 16:30", "09:00 - 13:00", "liber");

-- Populare tabela documents
INSERT INTO documents(document_id, name, description, price, institution_id, path)
VALUES
(1, "Cartea de identitate a vehiculului", "Eliberată de Serviciul Public Comunitar Regim Permise de Conducere și Inmatriculare a Vehiculelor", NULL, 2, "link-catrea-de-identitate-a-vehiculului"),
(2, "Adeverinta de la RAR", "Atestă verificarea tehnică periodică a vehiculului", NULL, 2, "link-adeverinta-rar"),
(3, "Asigurarea RCA in termen de valabilitate", "Eliberată de compania de asigurări", NULL, 11, "link-asigurare-rca-valabila"),
(4, "Cerere de inmatriculare provizorie a vehiculului", NULL, NULL, 2, "link-cerere-inmatriculare-provizorie"),
(5, "Cerere de eliberare a certificatului de inmatriculare provizorie", NULL, NULL, 2, "link-cerere-certificat-inmatriculare-provizorie"),
(6, "Taxa pentru inmatricularea provizorie a vehiculului: 157 lei", "Taxă de plată pentru inmatricularea provizorie a vehiculului", "157 lei", 2, "link-taxa-inmatriculare-provizorie"),
(7, "Cerere de eliberare carte de identitate", NULL, NULL, 3, "link-cerere-identitate"),
(8, "Cerere de schimbare nume (in cazul casatoriei sau a schimbarii numelui)", NULL, NULL, 3, "link-cerere-schimbare-nume"),
(9, "Taxa pentru eliberarea cartii de identitate: 7 lei", "Taxă de plată pentru eliberarea cărții de identitate", "7 lei", 3, "link-taxa-identitate"),
(10, "Taxa pentru schimbarea numelui: 18 lei", "Taxă de plată pentru schimbarea numelui", "18 lei", 3, "link-taxa-schimbare-nume"),
(11, "Cerere pentru Eliberarea Certificatului de Nastere", NULL, NULL, 3, "link-cerere-certificat-nastere"),
(12, "Adeverinta de la maternitate/hospital", "Atestă nașterea copilului", NULL, 12, "link-adeverinta-maternitate"),
(13, "Certificatul de casatorie", "Eliberat de Primăria Municipiului Iași", NULL, 5, "link-certificat-casatorie"),
(14, "Certificatul de deces", NULL, NULL, 3, "link-certificat-deces"),
(15, "Acte justificative care sa ateste cheltuielile solicitantului si ale membrilor familiei (facturi, chitante, etc.)", NULL, NULL, 1, "link-acte-justificative-cheltuieli"),
(16, "Adeverinta de la primarie care sa ateste ca solicitantul nu are proprietate imobiliara", "Atestă că solicitantul nu deține proprietăți imobiliare", NULL, 5, "link-adeverinta-primarie"),
(17, 'Adeverinta de la ANAF care sa ateste ca solicitantul nu are datorii la stat', 'Adeverinta de la ANAF', NULL, 1, '/download/adeverinta_anaf.pdf'),
(18, 'Cerere pentru acordarea ajutorului social', NULL, NULL, 4, '/download/cerere_ajutor_social.pdf'),
(19, 'Adeverinta de venit', NULL, NULL, 4, '/download/adeverinta_venit.pdf'),
(20, 'Certificat de handicap', NULL, NULL, 3, '/download/certificat_handicap.pdf'),
(21, 'Plan de situație cu locația imobilului', NULL, NULL, 5, '/download/plan_situatie_imobil.pdf'),
(22, 'Certificat de cazier judiciar', NULL, NULL, 1, '/download/certificat_cazier_judiciar.pdf'),
(23, 'Viza de intrare in Romania', NULL, '120 euro', 6, '/download/viza_intrare_romania.pdf'),
(24, 'Taxa de viza', NULL, '120 euro', 6, '/download/taxa_viza.pdf'),
(25, 'Certificat de inregistrare a cetatenilor din statele membre ale Uniunii Europene', NULL, NULL, 3, '/download/certificat_inregistrare_cetateni_ue.pdf'),
(26, 'Contract de munca', NULL, NULL, 10, '/download/contract_munca.pdf'),
(27, 'Certificat Fiscal de la ANAF', NULL, NULL, 1, '/download/certificat_fiscal_anaf.pdf'),
(28, 'Cerere de Înregistrare Fiscală', NULL, NULL, 10, '/download/cerere_inregistrare_fiscala.pdf'),
(29, 'Cerere pentru Eliberarea Certificatului de Conformitate', NULL, NULL, 7, '/download/cerere_certificat_de_conformitate.pdf'),
(30, 'Documente care atesta conformitatea produselor/serviciilor', 'ANAF', NULL, 1, 'https://exemplu.com/document1.pdf'),
(31, 'Cerere pentru Eliberarea Certificatului de Căsătorie', 'Primaria Municipiului Iasi', NULL, 5, 'https://exemplu.com/document2.pdf'),
(32, 'taxa de timbru pentru Certificatul de Căsătorie', 'Primaria Municipiului Iasi', '10 lei', 5, 'https://exemplu.com/document3.pdf'),
(33, 'Cerere pentru Eliberarea Autorizatiei Sanitare de Functionare', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NULL, 4, 'https://exemplu.com/document4.pdf'),
(34, 'Plan de amenajare a spatiului', 'Directia Locala de Evidenta a Populatiei', NULL, 3, 'https://exemplu.com/document5.pdf'),
(35, 'Fisa de securitate a produselor', 'Registrul Comertului', NULL, 7, 'https://exemplu.com/document6.pdf'),
(36, 'Cerere pentru Eliberarea Adeverintei Medicale', 'Institutul National de Sanatate Publica', NULL, 9, 'https://exemplu.com/document7.pdf'),
(37, 'Fisa medicala completa care sa ateste capacitatea fizica si psihica de a desfasura anumite activitati (sofer, pilot, etc.)', 'Inspectoratul pentru Imigrari Iasi', NULL, 6, 'https://exemplu.com/document8.pdf'),
(38, 'Cerere pentru Eliberarea Certificatului de Atestare Fiscala', 'Ministerul de Finante', NULL, 10, 'https://exemplu.com/document9.pdf'),
(39, 'Certificat Fiscal de la ANAF', 'ANAF', NULL, 1, 'https://exemplu.com/document10.pdf'),
(40, 'Carte de identitale', 'Eliberat de Directia Locala de Evidenta a Populatiei', '256 de lei', 2, 'https://exemplu.com/document10.pdf');

-- Populare tabela tasks
INSERT INTO tasks (name, description, estimated_time)
VALUES
("Permis de conducere", "Se obtine de la 'Serviciul Public comunitar regim permise de conducere'", "2023-04-27 08:00:00"),
("Certificat de casatorie", "Se obtine la primaria Municipiului Iași", "2023-04-27 08:00:00"),
("Buletin provizoriu", "Act de identitate temporar valabil 1 an de zile.", "2023-04-27 08:00:00"),
("Pasaport", "Pasaport simplu electronic obtinut de la Sectia Pasapoarte", "2023-04-27 14:00:00"),
('Carte de identitate a vehiculului (CIV)', 'Serviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor', NOW()),
('Certificat de înmatriculare (numere de înmatriculare)', 'Serviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor', NOW()),
('Certificat de inmatriculare provizorie', 'Serviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor', NOW()),
('Carte de identitate', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Certificat de naștere', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Certificat de deces', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Adeverință de domiciliu', 'Directia Locala de Evidenta a Populatiei', NOW()),
('Adeverință de venit', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Contract de asistență socială', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Decizia de acordare a ajutorului social', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Decizie de plasament în regim de urgență a copilului', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Autorizație de plasament familial', 'Directia Generala de Asistenta Sociala si Protectia Copilului Iasi', NOW()),
('Autorizație de construire', 'Primaria Municipiului Iasi', NOW()),
('Certificat de urbanism', 'Primaria Municipiului Iasi', NOW()),
('Certificat de atestare a dreptului de proprietate', 'Primaria Municipiului Iasi', NOW()),
('Autorizație de transport persoane', 'Primaria Municipiului Iasi', NOW()),
('Autorizație de amplasare publicități', 'Primaria Municipiului Iasi', NOW()),
('Autorizație de parcare pentru persoane cu dizabilități', 'Primaria Municipiului Iasi', NOW()),
('Carte de identitate pentru străini', 'Inspectoratul pentru Imigrări Iasi', '2023-05-05 12:00:00'),
('Permis de ședere', 'Inspectoratul pentru Imigrări Iasi', '2023-05-06 12:00:00'),
('Viză de intrare și reședință', 'Inspectoratul pentru Imigrări Iasi', '2023-05-07 12:00:00'),
('Autorizație de muncă pentru străini', 'Inspectoratul pentru Imigrări Iasi', '2023-05-08 12:00:00'),
('Document de refugiat sau de azil', 'Inspectoratul pentru Imigrări Iasi', '2023-05-09 12:00:00'),
('Permisiune de ședere pe teritoriul României pentru cetățenii din statele membre ale Uniunii Europene', 'Inspectoratul pentru Imigrări Iasi', '2023-05-10 12:00:00'),
('Certificat de înregistrare a firmei', 'Registrul Comerțului', '2023-05-11 12:00:00'),
('Certificat constatator', 'Registrul Comerțului', '2023-05-12 12:00:00'),
('Certificat de radiere a firmei', 'Registrul Comerțului', '2023-05-13 12:00:00'),
('Raport de cercetare statistica', 'Institutul Național de Statistică', '2023-05-14 12:00:00'),
('Sondaj de opinie', 'Institutul Național de Statistică', '2023-05-15 12:00:00'),
('Indicatori statistici privind economia, populația, mediul înconjurător, etc.', 'Institutul Național de Statistică', '2023-05-16 12:00:00'),
('Adeverințe medicale', 'Institutul Național de Sănătate Publică', '2023-05-17 12:00:00'),
('Rapoarte de analize și investigații medicale', 'Institutul Național de Sănătate Publică', '2023-05-18 12:00:00'),
('Autorizații și avize pentru funcționarea instituțiilor medicale', 'Institutul Național de Sănătate Publică', '2023-05-19 12:00:00'),
('Declarații fiscale', 'Ministerul de Finanțe', '2023-05-20 12:00:00'),
('Certificat de atestare fiscala', 'Ministerul de Finanțe', '2023-05-21 12:00:00'),
('Autorizații de funcționare a caselor de schimb valutar', 'Ministerul de Finanțe', '2023-05-22 12:00:00'),
('Autorizații pentru vânzarea și cumpărarea de valută străină', 'Ministerul de Finanțe', '2023-05-21 12:00:00');


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
("ionut", "parola123", "ionut@example.com", "0740123456", "București", "2023-04-27 08:00:00", "Ionuț", "Popescu"),
("andreea", "parola456", "andreea@example.com", "012345678", "Iași", "2023-04-26 08:30:00", "Andreea", "Mirunescu"),
("alex", "parola789", "alex@example.com", "0712345678", "Cluj-Napoca", "2023-04-25 09:00:00", "Alex", "Popa"),
("maria", "parola321", "maria@example.com", "0312345678", "Brașov", "2023-04-24 10:00:00", "Maria", "Ionescu"),
("george", "parola654", "george@example.com", "0750123456", "Timișoara", "2023-04-23 11:00:00", "George", "Vasilescu");

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
