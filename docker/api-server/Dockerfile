# Use Python 3.11.4 image
FROM python:3.11.4-slim-buster

# Create and set the working directory
WORKDIR /app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry

# Copy only the dependencies file to optimize caching
COPY pyproject.toml poetry.lock /app

# Install project dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Copy the project files
COPY . /app/

# Make the start-dev-server.sh file executable
RUN chmod +x ./start-dev-server.sh
CMD ["./start-dev-server.sh"]

