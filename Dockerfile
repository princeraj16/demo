# Use Red Hat Universal Base Image 8
FROM registry.access.redhat.com/ubi8/ubi

# Install Python 3 and pip
RUN yum install -y python3 python3-pip && \
    yum clean all

# Set working directory
WORKDIR /app

# Copy all files from local to container
COPY . .

# Install Python dependencies (Flask)
RUN pip3 install flask

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]

