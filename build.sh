#!/bin/bash
python manage.py makemigrations attendance  # Ensure the attendance app has migrations
python manage.py migrate  # Apply all migrations
python manage.py collectstatic --noinput  # Collect static files
