insert into authdb.public."User" (id, name, email, hashed_password) 
values (1, 'Christine Chandler', 'CChandler@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-24','very detailed bill 1', 1, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-25','very detailed bill 2', 1, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-26','very detailed invoice 1', 1);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-24','very detailed invoice 2', 1);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (2, 'Sarah Mooney', 'smooney@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-25','very detailed bill 3', 2, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-26','very detailed bill 4', 2, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-24','very detailed invoice 3', 2);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-24','very detailed invoice 4', 2);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (3, 'Santiago Lynn', 'SLynn@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-25','very detailed bill 3', 3, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-26','very detailed bill 4', 3, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-24','very detailed invoice 3', 3);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-25','very detailed invoice 4', 3);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (4, 'Logan Cooke', 'LCooke@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-26','very detailed bill 5', 4, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-24','very detailed bill 6', 4, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-25','very detailed invoice 5', 4);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-26','very detailed invoice 6', 4);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (5, 'Tyrell Morrison', 'tmorrison@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-24','very detailed bill 7', 5, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-25','very detailed bill 8', 5, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-26','very detailed invoice 7', 5);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-24','very detailed invoice 8', 5);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (6, 'Tasneem Harper', 'tharper@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-25','very detailed bill 9', 6, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-26','very detailed bill 10', 6, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-24','very detailed invoice 9', 6);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-25','very detailed invoice 10', 6);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (7, 'Honor Davila', 'hdavila@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-26','very detailed bill 11', 7, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-24','very detailed bill 12', 7, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-25','very detailed invoice 11', 7);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-26','very detailed invoice 12', 7);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (8, 'Rico Richmond', 'rrichmond@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-24','very detailed bill 13', 8, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-25','very detailed bill 14', 8, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-26','very detailed invoice 13', 8);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-24','very detailed invoice 14', 8);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (9, 'Rufus Gould', 'rgould@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-25','very detailed bill 15', 9, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-26','very detailed bill 16', 9, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-24','very detailed invoice 15', 9);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-25','very detailed invoice 16', 9);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (10, 'Rebecca Gomez', 'rgomez@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-26','very detailed bill 17', 10, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-24','very detailed bill 18', 10, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-25','very detailed invoice 17', 10);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-26','very detailed invoice 18', 10);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (11, 'Harrison Savage', 'hsavage@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-24','very detailed bill 19', 11, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-25','very detailed bill 20', 11, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-26','very detailed invoice 19', 11);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-24','very detailed invoice 20', 11);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (12, 'Lachlan Goodman', 'lgoodman@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-25','very detailed bill 21', 12, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-26','very detailed bill 22', 12, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-24','very detailed invoice 21', 12);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-25','very detailed invoice 22', 12);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (13, 'Wilson Bridges', 'wbridges@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-26','very detailed bill 23', 13, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-24','very detailed bill 24', 13, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-25','very detailed invoice 23', 13);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-26','very detailed invoice 24', 13);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (14, 'Markus Chavez', 'mchavez@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-24','very detailed bill 25', 14, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-25','very detailed bill 26', 14, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-26','very detailed invoice 25', 14);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-24','very detailed invoice 26', 14);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (15, 'Ivan Montoya', 'imontoya@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-25','very detailed bill 27', 15, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-26','very detailed bill 28', 15, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-24','very detailed invoice 27', 15);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-25','very detailed invoice 28', 15);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (16, 'Catrin Martinez', 'cmartinez@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-26','very detailed bill 29', 16, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-24','very detailed bill 30', 16, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-25','very detailed invoice 29', 16);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-26','very detailed invoice 30', 16);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (17, 'Daniella Vang', 'dvang@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260', '2023-10-24','very detailed bill 31', 17, 'Expense');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('150', '2023-10-25','very detailed bill 32', 17, 'Revenue');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('400', '2023-10-26','very detailed invoice 31', 17);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('50', '2023-10-24','very detailed invoice 32', 17);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (18, 'Whitney Aguilar', 'waguilar@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('260.50', '2023-10-25','very detailed bill 33', 18, 'Cash');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('60.20', '2023-10-26','very detailed bill 34', 18, 'Expense');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('350.30', '2023-10-24','very detailed invoice 33', 18);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('100', '2023-10-25','very detailed invoice 34', 18);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (19, 'Ahmad Williamson', 'awilliamson@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('299.99', '2023-10-26','very detailed bill 35', 19, 'Revenue');
insert into authdb.public."Bill" (amount, due_date, details, user_id, account)
values ('299.99', '2023-10-24','very detailed bill 36', 19, 'Cash');
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('299.99', '2023-10-25','very detailed invoice 35', 19);
insert into authdb.public."Invoice" (amount, due_date, details, user_id)
values ('299.99', '2023-10-26','very detailed invoice 36', 19);
