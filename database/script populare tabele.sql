insert into roles values 
(1, "ROLE_ADMIN"),
(2, "ROLE_USER"),
(3, "ROLE_MANAGER");

-- Populare tabela institution
INSERT INTO institution (name, address, phone_number, website, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
VALUES
("Serviciul Public Comunitar Regim Permise de Conducere si Inmatriculare a Vehiculelor","Bld. Primăverii nr. 36, Iaşi","0232230254","http://www.permiseiasi.ro/","08:30 - 12:30, 13:00 - 18:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 12:30, 13:00 - 16:30","08:30 - 13:00","liber","liber"),
("Directia Locala de Evidenta a Populatiei","IULIUS MALL - et. 2, Bdul. Tudor Vladimirescu, fn","0332803160","https://www.dlep-iasi.ro/","08:30 - 16:00","08:30 - 16:00","08:30 - 16:00","10:30 - 18:00","08:30 - 14:00","liber","liber"),
("Directia Generala de Asistenta Sociala si Protectia Copilului Iasi","Strada Ateneului, nr. 1C, cod postal 700309","0232477731","https://www.dasiasi.ro/","07:30 - 16:00","07:30 - 16:00","07:30 - 16:00","07:30 - 16:00","07:30 - 13:30","liber","liber"),
("Primaria Municipiului Iasi","B-dul. Ştefan cel Mare Şi Sfânt, nr. 11, Iaşi","0232267582","https://www.primaria-iasi.ro","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","08:30 - 16:30","liber","liber"),
("Inspectoratul pentru Imigrări Iasi","Strada Elena Doamna nr. 28, cod postal 700032","0232221142","https://www.politiadefrontiera.ro/ro/iasi.html","08:00 - 16:00","08:00 - 16:00","08:00 - 16:00","08:00 - 16:00","08:00 - 14:00","liber","liber");

-- Populare tabela documents
INSERT INTO documents (name, description, price, institution_id, path)
VALUES
("Permis de conducere", "Obținere permis de conducere", 200.00, 1, "/documents/permis_conducere.pdf"),
("Certificat de înmatriculare", "Înmatriculare vehicul", 150.00, 1, "/documents/certif_inmatriculare.pdf"),
("Carte de identitate", "Eliberare carte de identitate", 100, 2, "/documents/carte_identitate.pdf"),
("Certificat de naștere", "Eliberare certificat de naștere", 50, 3, "/documents/certif_nastere.pdf"),
("Autorizație de construire", "Obținere autorizație de construire", 500, 4, "/documents/autorizatie_construire.pdf"),
("Viză de ședere", "Obținere viză de ședere", 250, 5, "/documents/viza_sedere.pdf");

-- Populare tabela tasks
INSERT INTO tasks (name, description, estimated_time)
VALUES
("Permis de conducere", "Se obtine de la 'Serviciul Public comunitar regim permise de conducere'", "2023-04-27 08:00:00"),
("Certificat de casatorie", "Se obtine la primaria Municipiului Iași", "2023-04-27 08:00:00"),
("Buletin provizoriu", "Act de identitate temporar valabil 1 an de zile.", "2023-04-27 08:00:00"),
("Pasaport", "Pasaport simplu electronic obtinut de la Sectia Pasapoarte", "2023-04-27 14:00:00");

-- Populare tabela task_documents
INSERT INTO task_documents (task_id, document_id)
VALUES
(1, 4),
(2, 2);

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
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (3, 5);

-- Populam tabela user_tasks
INSERT INTO user_tasks(task_id, user_id) VALUES 
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (1, 3);

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
