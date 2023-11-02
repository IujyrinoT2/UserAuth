# UserAuth NestJS Auth project  
This Node.js-based application leverages Prisma, NestJS, and GraphQL to handle user authentication, 
invoice management, and bill tracking.

```mermaid
erDiagram
    User ||--o{ Bill : has
    User ||--o{ Invoice : has
```

## Tech stack
- Javascript + Typescript  
- Nodejs  
- Nestjs
- PostgreSQL under Docker
- GraphQL
- Prisma

## Install and run  
1. clone repo   
2. ```$ npm install```  
3. create a "docker-compose.yml" file and add the postgress details, for example:  
```
services:  
  db:  
    image: postgres:latest  
    ports:  
      - "5432:5432"  
    environment:  
      - POSTGRES_USER=root  
      - POSTGRES_PASSWORD=123  
      - POSTGRES_DB=authdb 
```
4. create a ".env" file with all the postgres credential to help prisma connect to the DB and add the secret
generation strings for the access token and refresh token like so: 
```
DATABASE_URL="postgresql://root:123@localhost:5432/authdb?schema=public"

ACCESS_TOKEN_SECRET="Y4iQeqvcSWkjptmq1cDyph7An6rvjcvoDiRufPGiYJOnxeU7NjBwcV9UG9PtGvyD"
REFRESH_TOKEN_SECRET="m5RxEUwabdYc0KQXdPKNt3wjRhAkdUno70Y44NVkPP5it7POnyZHHzcTJFlILR6Z"
```  
5. start the database server with ```# docker-compose up```  
6. generate prisma client with ```$ npx prisma generate```  
7. generate database tables with ```$ npx prisma migrate dev --name init```   
8. copy the populate and empty scripts on the container with ```docker cp PopulateDB.sql <cont_id>:/PopulateDB.sql``` and  
```docker cp EmptyDB.sql <cont_id>:/EmptyDB.sql```  
run the scripts form outside the container like this:  
```docker-compose exec db env PGPASSWORD=123 psql -h localhost -U root -p 5432 -d authdb -a -q -f /PopulateDB.sql``` 
or add new entries with new dates using: 
```
docker cp PopulateDBnewdates.sql <cont_id>:/PopulateDBnewdates.sql
docker-compose exec db env PGPASSWORD=123 psql -h localhost -U root -p 5432 -d authdb -a -q -f /PopulateDBnewdates.sql or add
```
or empty the db with ```PGPASSWORD=123 psql -h localhost -U root -p 5432 -d authdb -a -q -f /EmptyDB.sql```
9. run the nest server with either ```$ npm start``` or ```$ npm run dev```, server listens to port 3001  
10. Prisma Studio can be started with ```$ npx prisma studio``` and opens on localhost:5555  

## Mapped routes
### REST
__POST__ ```/auth/login``` generates and updates the DB with an access token, and a refresh token for the logged-in user.
It doesn't require a header, and the request body must contain the email and password of a registered user.  

__GET__ ```/bills``` returns all the bills of an authenticated user. An authenticated user has a valid refresh token in  
the request header like this: ```{'authentication': 'Bearer <refresh_token>'}```  

__GET__ ```/bills/<bill_id>``` return a specific bill of an authenticated user  

__GET__ ```/invoices``` returns all the invoices for the authenticated user  

__GET__ ```/invoices/<invoice_id>``` returns a specific invoice for an authenticated  

### GraphQL
The graphql endpoint opens on ```/graphql```. The authentication is done through a header like this:  
```"authorization":"Bearer <refresh_token>"```, and the endpoint accepts queries and mutations such as:

__Display all users and their bills and invoices__  
```{users {id name email bills{id} invoices{id}}}```  

__SignUp new user__
```
mutation SignUp($input: SignUpInput!) {
  signup(signUpInput: $input) {
    access_token refresh_token user {name}
  }
}
```  
with the following graphql variable: 
```
{"input": {
 "name": "Jean Claude",
 "email": "jeanclaude@email.com",
 "password": "123" 
}} 
```

__SignIn user__
```
mutation SignIn($input: SignInInput!) {
  signin(signInInput: $input) {
    access_token refresh_token user {name}
  }
}
```
with the following graphql variable:
```
{"input": {
 "email": "jeanclaude@email.com",
 "password": "123" 
}}
```

__Refresh auth tokens__  
```
mutation Refresh {
  getNewTokens{access_token, refresh_token}
}
```

__Get all the bills of the authenticated user__
```
{bills{id details}}
```

__Get a specific bill of the authenticated user__  
```
query getBill($input: Int!) {
  bill(id: $input) { id, details }
}
```
with the following graphql variable:
```
{"input":<bill_id>}
```

__Get all the invoices for the authenticated user__
```
{invoices{id details}}
```

__Get a specific invoice of the authenticated user__  
```
query getInvoice($input: Int!) {
  invoice(id: $input) { id, details }
}

```
with the following graphql variable:
```
{"input":<invoice_id>}
```
