# 
FROM python:3.9

# 
WORKDIR /code
WORKDIR /app

# 
COPY ./requirements.txt /code/requirements.txt

#
RUN git clone https://github.com/xenzofficial/Fast-Api-Image
Run cd Fast-Api-Image
RUN virtualenv env
RUN source env/bin/activate
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
EXPOSE 80

ENV NAME World

COPY ./main.py /app/main.py
COPY ./cookies.json /app/cookies.json
COPY ./promp.json /promp.json
COPY ./app.log /app/app.log
COPY ./output /app/output
COPY ./thumbnail /app/thumbnail

# 
RUN python3 -m uvicorn app:app
#CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
