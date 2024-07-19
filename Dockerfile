# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container to /rentals
WORKDIR /rentals

# Copy the requirements file into the container at /rentals
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /rentals
COPY . .

# Specify the command to run on container start
CMD ["python", "main.py"]
