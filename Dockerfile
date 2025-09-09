FROM python:3.10-slim

# Maintainer Info
LABEL maintainer="@AV_BOTz_UPDATE - @BOT_OWNER26"

# Copy requirements
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -U pip && pip install --no-cache-dir -r /requirements.txt

# Create working directory
WORKDIR /app
COPY . /app

# Start the bot
CMD ["python", "bot.py"]
