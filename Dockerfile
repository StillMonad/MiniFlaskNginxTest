FROM python:3.11.4
COPY . /MiniFlaskNginxTest
WORKDIR /MiniFlaskNginxTest
RUN pip install uvicorn
RUN pip install poetry
RUN poetry install
RUN poetry shell
CMD ["uvicorn", "main:app", "--reload"]