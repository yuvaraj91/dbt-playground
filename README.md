# dbt-playground


Run `make up` to spin up a local postgres db. The connection details:

```
port: 5439
host: localhost
database: mydb
user: admin
password: admin
```

# Installing dbt in venv

Run `make init-venv` to install the dependencies and activate the virtualenv by running `source ./venv/bin/activate`.

# Running dbt

Go to the dbt project folder via `cd playground`

1. Installing dependencies (if needed):

`dbt deps`

2. Seed sample data

`dbt seed --profiles-dir profiles`

or to load only one table:

`dbt seed --profiles-dir profiles --select people`

