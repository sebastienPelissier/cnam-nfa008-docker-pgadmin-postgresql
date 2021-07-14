# pg Admin #

## Installation ##
```
# .env.dist is versioned, don't forget to update it if you need to add a parameter to the application
cp .env.dist .env

#Run this command
make start
```

## Access to PgAdmin: 
[Interface pgAdmin](http://localhost:8080)

## Add a new server in PgAdmin:
Host name/address `db`

Port `5432`

Username as `POSTGRES_USER`, change value in .env

Password as `POSTGRES_PASSWORD`, change value in .env

## source ##
[medium docker postgresql](https://medium.com/analytics-vidhya/getting-started-with-postgresql-using-docker-compose-34d6b808c47c)

