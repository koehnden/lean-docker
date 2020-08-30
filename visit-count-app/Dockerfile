FROM python:3.8.5-alpine3.12

WORKDIR /usr/app

# install dependencies
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

# define running command
COPY ./ ./
ENTRYPOINT ["python"]
CMD ["app.py"]