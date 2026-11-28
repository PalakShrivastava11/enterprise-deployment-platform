
FROM python:3.13-slim

WORKDIR /app

# Update operating system packages
RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Copy application dependencies
COPY requirements.txt .

# Upgrade Python packaging tools and vulnerable packages
RUN python -m pip install --no-cache-dir --upgrade \
    pip setuptools wheel jaraco.context

# Install application dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app.app:app"]
