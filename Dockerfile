# Base image for Lambda with Python 3.9
FROM public.ecr.aws/lambda/python:3.9

# Set working directory
WORKDIR /var/task

# Copy files
COPY app.py ./
COPY requirements.txt ./

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Set the Lambda entrypoint
CMD ["app.lambda_handler"]