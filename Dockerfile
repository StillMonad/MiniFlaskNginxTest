FROM python:3.11.4
COPY . /MiniFlaskNginxTest
WORKDIR /MiniFlaskNginxTest
RUN pip install poetry
RUN poetry
CMD ["python3", "__main__.py"]