# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    curl

# Clone the repository
RUN git clone https://github.com/microsoft/autogen.git

# Define environment variables (these can be overridden at runtime)
ENV AGENTS_FILE_URL="http://default-url-for-agents.py"
ENV OAI_CONFIG_URL="http://default-url-for-OAI_CONFIG_LIST"
ENV AGENTS_FILE_PATH="/usr/src/app/autogen/test/agents.py"
ENV OAI_CONFIG_FILE_PATH="/usr/src/app/OAI_CONFIG_LIST"

# Download the aidevteamnew.py file from the specified URL
RUN curl -o $AGENTS_FILE_PATH $AGENTS_FILE_URL

# Download the OAI_CONFIG_LIST file from the specified URL
RUN curl -o $OAI_CONFIG_FILE_PATH $OAI_CONFIG_URL

# Install Python packages
RUN pip install pyautogen \
    panel \
    scikit-learn \
    xgboost \
    chromadb

# Expose port 80 for the application
EXPOSE 80

# Set additional environment variables
ENV PYTHONUNBUFFERED=1

# Start the Panel server on port 80 when the container starts, using the customizable filename
CMD ["sh", "-c", "panel serve $AGENTS_FILE_PATH --port 80 --address 0.0.0.0"]
