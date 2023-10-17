insert into authdb.public."User" (id, name, email, hashed_password) 
values (1, 'John Doe', 'johndoe@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('99.99', '1970-01-01T00:00:00.000Z','very detailed bill 1', 1);
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('99.99', '1970-01-01T00:00:00.000Z','very detailed bill 2', 1);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('99.99', '1970-01-01T00:00:00.000Z','very detailed invoice 1', 1);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('99.99', '1970-01-01T00:00:00.000Z','very detailed invoice 2', 1);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (2, 'John Smith', 'johnsmith@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('199.99', '1970-01-01T00:00:00.000Z','very detailed bill 3', 2);
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('199.99', '1970-01-01T00:00:00.000Z','very detailed bill 4', 2);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('199.99', '1970-01-01T00:00:00.000Z','very detailed invoice 3', 2);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('199.99', '1970-01-01T00:00:00.000Z','very detailed invoice 4', 2);

insert into authdb.public."User" (id, name, email, hashed_password) 
values (3, 'Jean Claude', 'jeanclaude@email.com', '$argon2id$v=19$m=65536,t=3,p=4$ZSEft1sfbi/P7JfDHVI4mg$grNk3qQAy6SiaIvYzX6HEY3gd25B4l49t92uPDHEPg8');
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('299.99', '1970-01-01T00:00:00.000Z','very detailed bill 5', 3);
insert into authdb.public."Bill" (ammount, due_date, details, user_id)
values ('299.99', '1970-01-01T00:00:00.000Z','very detailed bill 6', 3);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('299.99', '1970-01-01T00:00:00.000Z','very detailed invoice 5', 3);
insert into authdb.public."Invoice" (ammount, due_date, details, user_id)
values ('299.99', '1970-01-01T00:00:00.000Z','very detailed invoice 6', 3);
