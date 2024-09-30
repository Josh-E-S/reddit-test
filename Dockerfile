
# Use the selected base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Custom build commands


# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Explicitly install Streamlit
RUN pip install --no-cache-dir streamlit

# Expose the specified port for Streamlit
EXPOSE 8501

# Set environment variables


# Run the Streamlit app
CMD ["streamlit", "run", "st_app.py", "--server.port=8501", "--server.address=0.0.0.0"]
