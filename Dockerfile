# This is a sample Dockerfile for containers based on itwinai containers

FROM ghcr.io/intertwin-eu/itwinai:torch-slim-latest

# Set working directory
WORKDIR /app

# Copy application dependencies
COPY pyproject.toml pyproject.toml
COPY src src

# Install dependencies
RUN pip install --no-cache-dir .

# Set entrypoint
CMD ["python", "main.py"]
