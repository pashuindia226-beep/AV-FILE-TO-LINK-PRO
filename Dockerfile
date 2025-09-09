FROM python:3.10.8-slim-buster

# Maintainer Info
LABEL maintainer="@AV_BOTz_UPDATE - @BOT_OWNER26"

# Install system dependencies
RUN apt-get update -y && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip3 install --no-cache-dir -U pip && pip3 install --no-cache-dir -r /requirements.txt

# Create working directory
WORKDIR /app
COPY . /app

# Start the bot
CMD ["python3", "bot.py"]
