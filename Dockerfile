# Step 1: Use the official Python image as the base image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements file to the working directory
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the entire app directory to the working directory
COPY . .

# Step 6: Expose the port that Streamlit uses (default is 8501)
EXPOSE 8501

# Step 7: Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]