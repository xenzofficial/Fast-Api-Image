# 
FROM python:3.9

# 
WORKDIR /code
WORKDIR /app

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
EXPOSE 8081

ENV NAME World

# 
CMD ["uvicorn", "routes.main", "--host", "0.0.0.0", "--port", "8081"]
