#!/bin/bash
# When starting the django container, we need to wait until the postgress DB is ready to receive connections
# (docker-compose "depends_on: - postgres" is not enough to check that the postgres database is ready)
# This script also accepts a command to be executed after the DB is ready (i.e. migrate, runserver or a script..)
function postgres_ready(){
python << END
import sys
import psycopg2
try:
    conn = psycopg2.connect(dbname="$POSTGRES_DB", user="$POSTGRES_USER", password="$POSTGRES_PASSWORD", host="postgres")
except psycopg2.OperationalError:
    sys.exit(-1)
sys.exit(0)
END
}

until postgres_ready; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

# Apply database migrations and start the development server
python manage.py migrate
python manage.py runserver 0.0.0.0:8000