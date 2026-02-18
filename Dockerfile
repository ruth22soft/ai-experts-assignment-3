FROM python:3.11-slim

WORKDIR /app

# Copy entire project
COPY . .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run tests by default
CMD ["pytest", "-v"]
