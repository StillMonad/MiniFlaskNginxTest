FROM python:3.11.4
COPY . /MiniFlaskNginxTest
WORKDIR /MiniFlaskNginxTest
RUN pip install uvicorn
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]