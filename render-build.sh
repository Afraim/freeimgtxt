#!/usr/bin/env bash
set -e

# Update package list
apt-get update

# Install Tesseract OCR
apt-get install -y tesseract-ocr tesseract-ocr-eng

# Install Python dependencies
pip install -r requirements.txt

# Run Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

echo "Build complete: Tesseract installed at $(which tesseract)"
