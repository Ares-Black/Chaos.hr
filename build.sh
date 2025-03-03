#!/bin/bash

#!/bin/bash
set -o errexit  # Exit on error

# Install dependencies using Poetry
poetry install  

# Apply migrations
poetry run python manage.py makemigrations attendance
poetry run python manage.py migrate  

# Collect static files
poetry run python manage.py collectstatic --noinput  


