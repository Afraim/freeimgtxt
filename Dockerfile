FROM python:3.11-slim

WORKDIR /app

# Install system dependencies including Tesseract
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    tesseract-ocr \
    tesseract-ocr-eng && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Run migrations
RUN python manage.py migrate

# Expose port
EXPOSE 10000

# Start Gunicorn
CMD ["gunicorn", "image2text.wsgi:application", "--bind", "0.0.0.0:10000"]
