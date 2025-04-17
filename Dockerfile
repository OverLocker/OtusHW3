#Сборка: docker build -t otushw3 .
#Запуск: sudo docker run -p -d 8000:8000 otushw3
#Проверка: curl 127.0.0.1:8000/ping

FROM python:3.9-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY main.py .
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
