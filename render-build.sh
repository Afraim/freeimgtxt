#!/usr/bin/env bash

# Update package list
apt-get update

# Install Tesseract OCR
apt-get install -y tesseract-ocr

# Install English language pack for Tesseract
apt-get install -y tesseract-ocr-eng

# Install Python dependencies
pip install -r requirements.txt

# Run Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
