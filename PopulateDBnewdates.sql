insert into authdb.public."User" (id, name, email, hashed_password) 
values (21, 'Christine Chandler', 'CChandler@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-27','very detailed bill 1', 21, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-28','very detailed bill 2', 21, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-29','very detailed invoice 1', 21);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-27','very detailed invoice 2', 21);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (22, 'Sarah Mooney', 'smooney@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-28','very detailed bill 3', 22, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-29','very detailed bill 4', 22, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-27','very detailed invoice 3', 22);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-27','very detailed invoice 4', 22);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (23, 'Santiago Lynn', 'SLynn@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-28','very detailed bill 3', 23, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-29','very detailed bill 4', 23, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-27','very detailed invoice 3', 23);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-28','very detailed invoice 4', 23);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (24, 'Logan Cooke', 'LCooke@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-29','very detailed bill 5', 24, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-27','very detailed bill 6', 24, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-28','very detailed invoice 5', 24);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-29','very detailed invoice 6', 24);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (25, 'Tyrell Morrison', 'tmorrison@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-27','very detailed bill 7', 25, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-28','very detailed bill 8', 25, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-29','very detailed invoice 7', 25);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-27','very detailed invoice 8', 25);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (26, 'Tasneem Harper', 'tharper@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-28','very detailed bill 9', 26, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-29','very detailed bill 10', 26, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-27','very detailed invoice 9', 26);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-28','very detailed invoice 10', 26);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (27, 'Honor Davila', 'hdavila@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-29','very detailed bill 11', 27, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-27','very detailed bill 12', 27, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-28','very detailed invoice 11', 27);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-29','very detailed invoice 12', 27);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (28, 'Rico Richmond', 'rrichmond@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-27','very detailed bill 13', 28, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-28','very detailed bill 14', 28, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-29','very detailed invoice 13', 28);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-27','very detailed invoice 14', 28);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (29, 'Rufus Gould', 'rgould@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-28','very detailed bill 15', 29, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-29','very detailed bill 16', 29, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-27','very detailed invoice 15', 29);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-28','very detailed invoice 16', 29);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (30, 'Rebecca Gomez', 'rgomez@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-29','very detailed bill 17', 30, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-27','very detailed bill 18', 30, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-28','very detailed invoice 17', 30);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-29','very detailed invoice 18', 30);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (31, 'Harrison Savage', 'hsavage@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-27','very detailed bill 19', 31, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-28','very detailed bill 20', 31, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-29','very detailed invoice 19', 31);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-27','very detailed invoice 20', 31);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (32, 'Lachlan Goodman', 'lgoodman@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-28','very detailed bill 21', 32, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-29','very detailed bill 22', 32, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-27','very detailed invoice 21', 32);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-28','very detailed invoice 22', 32);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (33, 'Wilson Bridges', 'wbridges@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-29','very detailed bill 23', 33, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-27','very detailed bill 24', 33, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-28','very detailed invoice 23', 33);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-29','very detailed invoice 24', 33);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (34, 'Markus Chavez', 'mchavez@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-27','very detailed bill 25', 34, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-28','very detailed bill 26', 34, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-29','very detailed invoice 25', 34);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-27','very detailed invoice 26', 34);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (35, 'Ivan Montoya', 'imontoya@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-28','very detailed bill 27', 35, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('350', '2023-10-29','very detailed bill 28', 35, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-27','very detailed invoice 27', 35);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-28','very detailed invoice 28', 35);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (36, 'Catrin Martinez', 'cmartinez@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-29','very detailed bill 29', 36, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-27','very detailed bill 30', 36, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-28','very detailed invoice 29', 36);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-29','very detailed invoice 30', 36);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (37, 'Daniella Vang', 'dvang@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-27','very detailed bill 31', 37, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-28','very detailed bill 32', 37, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-29','very detailed invoice 31', 37);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-27','very detailed invoice 32', 37);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (38, 'Whitney Aguilar', 'waguilar@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-28','very detailed bill 33', 38, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-29','very detailed bill 34', 38, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-27','very detailed invoice 33', 38);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-28','very detailed invoice 34', 38);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (39, 'Ahmad Williamson', 'awilliamson@email2.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('299.99', '2023-10-29','very detailed bill 35', 39, 'Revenue');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('299.99', '2023-10-27','very detailed bill 36', 39, 'Cash');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('299.99', '2023-10-28','very detailed invoice 35', 39);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('299.99', '2023-10-29','very detailed invoice 36', 39);