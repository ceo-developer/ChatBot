FROM python:3.11-slim

# Install system packages
RUN apt-get update && apt-get upgrade -y

# Set working directory
WORKDIR /bikash/

# Copy all bot files
COPY . /bikash/

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt  # Make sure Installer is renamed

# Start your Telegram bot
CMD ["python3", "Bikash.py"]
