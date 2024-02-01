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
COPY ./main.py /app
COPY ./cookies.json /app
COPY ./promp.json /app
COPY ./app.log /app

COPY ./thumbnail /app
COPY ./output /app

COPY ./app /code/app


# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
