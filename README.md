# dbt-playground

Trying out dbt SQL and Python models (via dbt-fal) in a local Postgres db.

Run `make up` to spin up a local postgres db. The connection details:

```
port: 5439
host: localhost
database: mydb
user: admin
password: admin
```

## Installing dbt in venv

Run `make init-venv` to install the dependencies and activate the virtualenv by running `source ./venv/bin/activate`.
This also installs the [dbt fal adapter](https://github.com/fal-ai/fal).

Activate the virtualenv by running `source ./venv/bin/activate`

## Running dbt

Go to the dbt project folder via `cd playground` and run `dbt build`. Or in steps:

1. Installing dependencies (if needed):

`dbt deps`

2. Seed sample data

```
dbt seed
```

or to load only one table:

```
dbt seed --select people
```

3. Run an SQL model

```
dbt run --select models/average_age.sql
```

4. Run a Python model

```
dbt run --select models/people.py
```